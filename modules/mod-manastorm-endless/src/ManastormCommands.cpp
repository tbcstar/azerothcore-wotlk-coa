#include "ManastormMgr.h"
#include "ManastormGreedyDemon.h"

#include "Chat.h"
#include "CommandScript.h"
#include "Creature.h"
#include "DatabaseEnv.h"
#include "Player.h"
#include "Group.h"
#include "ManastormProgression.h"
#include "ManastormDataStore.h"
#include "ObjectMgr.h"
#include "World.h"

#include <algorithm>
#include <string>

using namespace Acore::ChatCommands;

namespace
{
    struct ManastormAuthoringSegment
    {
        uint32 SegmentId = 0;
        uint32 MapId = 0;
        uint32 ObjectiveCreatureEntry = 0;
        uint8 ChaoticLinkStacks = 0;
    };

    bool GetAuthoringSegment(
        uint32 segmentId,
        ManastormAuthoringSegment& segment)
    {
        QueryResult result = WorldDatabase.Query(
            "SELECT "
            "`segment_id`, "
            "CASE "
            "WHEN `runtime_map_override_enabled` <> 0 "
            "THEN `runtime_map_id` "
            "ELSE `map_id` "
            "END, "
            "COALESCE(NULLIF(`runtime_objective_creature_entry`, 0), "
            "`objective_creature_entry`), "
            "`chaotic_link_stacks` "
            "FROM `manastorm_segment` "
            "WHERE `segment_id` = {} "
            "LIMIT 1",
            segmentId);

        if (!result)
            return false;

        Field* fields = result->Fetch();

        segment.SegmentId =
            fields[0].Get<uint32>();

        segment.MapId =
            fields[1].Get<uint32>();

        segment.ObjectiveCreatureEntry =
            fields[2].Get<uint32>();

        segment.ChaoticLinkStacks =
            fields[3].Get<uint8>();

        return true;
    }

    uint32 GetChaoticLinkCount(
        uint32 segmentId)
    {
        QueryResult result = WorldDatabase.Query(
            "SELECT COUNT(*) "
            "FROM `manastorm_segment_spawn` "
            "WHERE `segment_id` = {} "
            "AND (`flags` & {}) <> 0 "
            "AND `enabled` = 1",
            segmentId,
            ManastormSegmentSpawnFlags::ChaoticLinkEligible);

        if (!result)
            return 0;

        return uint32(
            result->Fetch()[0].Get<uint64>());
    }

    bool ReloadAfterAuthoring(
        ChatHandler* handler)
    {
        if (ManastormMgr::Instance().ReloadData())
            return true;

        handler->SendErrorMessage(
            "法力风暴：数据库修改已成功，但数据存储重载失败。请查看 worldserver 日志。");

        return false;
    }

    bool SetSelectedSpawnRole(
        ChatHandler* handler,
        uint32 segmentId,
        uint32 roleFlag,
        bool enable,
        char const* roleName)
    {
        ManastormAuthoringSegment segment;

        if (!GetAuthoringSegment(
            segmentId,
            segment))
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);

            return true;
        }

        Creature* creature =
            handler->getSelectedCreature();

        if (!creature)
        {
            handler->SendErrorMessage(
                "法力风暴：请先选择一个生物。");

            return false;
        }

        ObjectGuid::LowType const spawnId =
            creature->GetSpawnId();

        if (!spawnId)
        {
            handler->SendErrorMessage(
                "法力风暴：所选生物没有稳定的数据库刷新 ID。临时或召唤出来的生物无法获得作者定义的分段刷新角色。");

            return false;
        }

        if (creature->GetMapId() !=
            segment.MapId)
        {
            handler->PSendSysMessage(
                "法力风暴：刷新 {} 位于地图 {}，但分段 {} 使用的是地图 {}。",
                spawnId,
                creature->GetMapId(),
                segmentId,
                segment.MapId);

            return true;
        }

        if (creature->GetEntry() ==
            segment.ObjectiveCreatureEntry)
        {
            handler->PSendSysMessage(
                "法力风暴：生物 entry {} 是分段 {} 的固定目标，不能同时作为小怪随机化或来源池刷新点。",
                creature->GetEntry(),
                segmentId);

            return true;
        }

        if (enable)
        {
            uint32 const flags =
                ManastormSegmentSpawnFlags::RouteCreature |
                roleFlag;

            WorldDatabase.DirectExecute(
                "INSERT INTO `manastorm_segment_spawn` "
                "(`segment_id`, `spawn_guid`, `flags`, `enabled`) "
                "VALUES ({}, {}, {}, 1) "
                "ON DUPLICATE KEY UPDATE "
                "`flags` = (`flags` | VALUES(`flags`)), "
                "`enabled` = 1",
                segmentId,
                spawnId,
                flags);
        }
        else
        {
            WorldDatabase.DirectExecute(
                "UPDATE `manastorm_segment_spawn` "
                "SET `flags` = (`flags` & ~{}) "
                "WHERE `segment_id` = {} "
                "AND `spawn_guid` = {}",
                roleFlag,
                segmentId,
                spawnId);
        }

        if (!ReloadAfterAuthoring(handler))
            return false;

        handler->PSendSysMessage(
            "法力风暴：{} {} | 分段={} 刷新={} entry={} 名称='{}'。",
            roleName,
            enable ? "启用": "停用",
            segmentId,
            spawnId,
            creature->GetEntry(),
            creature->GetName());

        return true;
    }

    void SendRunStatus(ChatHandler* handler, ManastormRun const& run)
    {
        ManastormSegment const& segment = run.GetSegment();
        ManastormScalingPoint const& scaling = run.GetScaling();

        handler->PSendSysMessage(
            "法力风暴进程 {} | 状态={} | 模式={} | 成员={} | 深度={} | 生物等级={} | 种子={}",
            run.GetRunId(),
            ManastormRunStateName(run.GetState()),
            ManastormModeName(run.GetMode()),
            run.GetMembers().size(),
            run.GetDepth(),
            uint32(run.GetCreatureLevel()),
            run.GetSeed());

        handler->PSendSysMessage(
            "阶段：分段={} 地图={} 实例={} 难度={} 遭遇={} 目标={} 传送={} 权重={} 奖励={:.3f}倍",
            segment.SegmentId,
            segment.MapId,
            run.GetInstanceId(),
            segment.Difficulty,
            segment.DungeonEncounterId,
            segment.ObjectiveCreatureEntry,
            segment.StartGameTeleId,
            segment.Weight,
            segment.RewardMultiplier);

        handler->PSendSysMessage(
            "实际缩放（深度 × {} 名成员）：生命={:.3f}倍 全局伤害={:.3f}倍 近战={:.3f}倍 法术={:.3f}倍",
            run.GetMembers().size(),
            scaling.HealthMultiplier,
            scaling.GlobalDamageMultiplier,
            scaling.MeleeMultiplier,
            scaling.SpellMultiplier);

        ObjectGuid const objectiveGuid = run.GetObjectiveCreatureGuid();

        handler->PSendSysMessage(
            "运行时：阶段生物={} 目标GUID={} 计数={} 混沌链接={} 未使用的链接刷新点={} 复活={}/{} 已完成={}", run.GetStageCreatureCount(),
            objectiveGuid.GetRawValue(),
            objectiveGuid.GetCounter(),
            uint32(run.GetChaoticLinkStacks()),
            run.GetUnusedChaoticLinkSpawnCount(),
            uint32(run.GetResurrectionCharges()),
            uint32(ManastormResurrection::MaxCharges),
            run.GetState() == ManastormRunState::StageComplete
            ? "是": "no");
    }
}

class manastorm_commandscript : public CommandScript
{
public:
    manastorm_commandscript()
        : CommandScript("manastorm_commandscript")
    {
    }

    ChatCommandTable GetCommands() const override
    {

        static ChatCommandTable linkCommandTable =
        {
            { "add",    HandleLinkAddCommand,    SEC_GAMEMASTER, Console::No },
            { "remove", HandleLinkRemoveCommand, SEC_GAMEMASTER, Console::No },
            { "list",   HandleLinkListCommand,   SEC_GAMEMASTER, Console::No },
            { "clear",  HandleLinkClearCommand,  SEC_GAMEMASTER, Console::No },
            { "stacks", HandleLinkStacksCommand, SEC_GAMEMASTER, Console::No },
        };

        static ChatCommandTable spawnCommandTable =
        {
            { "randomslot", HandleSpawnRandomSlotCommand, SEC_GAMEMASTER, Console::No },
            { "poolsource", HandleSpawnPoolSourceCommand, SEC_GAMEMASTER, Console::No },
            { "affix",      HandleSpawnAffixCommand,      SEC_GAMEMASTER, Console::No },
            { "info",       HandleSpawnInfoCommand,       SEC_GAMEMASTER, Console::No },
            { "list",       HandleSpawnListCommand,       SEC_GAMEMASTER, Console::No },
        };

        static ChatCommandTable poolCommandTable =
        {
            { "info", HandlePoolInfoCommand, SEC_GAMEMASTER, Console::No },
        };

        static ChatCommandTable segmentCommandTable =
        {
            { "info",      HandleSegmentInfoCommand,             SEC_GAMEMASTER, Console::No },
            { "runtime",   HandleSegmentRuntimeMapCommand,       SEC_GAMEMASTER, Console::No },
            { "objective", HandleSegmentRuntimeObjectiveCommand, SEC_GAMEMASTER, Console::No },
            { "enable",    HandleSegmentEnableCommand,           SEC_GAMEMASTER, Console::No },
            { "test",      HandleSegmentTestCommand,             SEC_GAMEMASTER, Console::No },
        };

        static ChatCommandTable affixCommandTable =
        {
            { "force", HandleAffixForceCommand, SEC_GAMEMASTER, Console::No },
        };

        static ChatCommandTable greedyCommandTable =
        {
            { "spawn", HandleGreedySpawnCommand, SEC_GAMEMASTER, Console::No },
        };

        static ChatCommandTable endlessCommandTable =
        {
            { "ui",          HandleUICommand,          SEC_PLAYER,     Console::No },
            { "start",       HandleStartCommand,       SEC_GAMEMASTER, Console::No },
            { "startforce",  HandleStartForceCommand,  SEC_GAMEMASTER, Console::No },
            { "checkpoints", HandleCheckpointsCommand, SEC_GAMEMASTER, Console::No },
            { "status",      HandleStatusCommand,      SEC_GAMEMASTER, Console::No },
            { "stop",        HandleStopCommand,        SEC_GAMEMASTER, Console::No },

            { "link",    linkCommandTable },
            { "spawn",   spawnCommandTable },
            { "pool",    poolCommandTable },
            { "segment", segmentCommandTable },
            { "affix",   affixCommandTable },
            { "greedy",  greedyCommandTable },

            { "reload", HandleReloadCommand, SEC_ADMINISTRATOR, Console::Yes },
        };

        static ChatCommandTable commandTable =
        {
            { "manastorm", endlessCommandTable },
        };

        return commandTable;
    }

    static bool HandleUICommand(
        ChatHandler* handler)
    {
        Player* player =
            handler->GetSession()
            ? handler->GetSession()->GetPlayer()
            : nullptr;

        if (!player)
        {
            handler->SendErrorMessage(
                "法力风暴：此命令需要在游戏内由玩家执行。");

            return false;
        }

        ManastormMgr::Instance()
            .OpenClientUI(player);

        return true;
    }

    static bool HandleStartCommand(ChatHandler* handler, uint32 depth)
    {
        Player* player = handler->GetSession()
            ? handler->GetSession()->GetPlayer()
            : nullptr;

        if (!player)
        {
            handler->SendErrorMessage("法力风暴：此命令需要在游戏内由玩家执行。");
            return false;
        }

        std::string error;
        ManastormRun* run = ManastormMgr::Instance().StartRun(
            player, depth, error);

        if (!run)
        {
            handler->PSendSysMessage("法力风暴：{}", error);
            return true;
        }

        handler->PSendSysMessage(
            "法力风暴：已准备第二阶段 A 的进程，正在将你传送到实例 {} 中的分段 {}。",
            run->GetSegment().SegmentId,
            run->GetInstanceId());

        SendRunStatus(handler, *run);
        return true;
    }

    static bool HandleStartForceCommand(
        ChatHandler* handler,
        uint32 depth)
    {
        Player* player =
            handler->GetSession()
            ? handler->GetSession()->GetPlayer()
            : nullptr;

        if (!player)
        {
            handler->SendErrorMessage(
                "法力风暴：此命令需要在游戏内由玩家执行。");

            return false;
        }

        std::string error;

        ManastormRun* run =
            ManastormMgr::Instance().StartRun(
                player,
                depth,
                error,
                true);

        if (!run)
        {
            handler->PSendSysMessage(
                "法力风暴：{}",
                error);

            return true;
        }

        handler->PSendSysMessage(
            "法力风暴：为制作/调试强制启动深度 {}。分段={} 实例={}。",
            depth,
            run->GetSegment().SegmentId,
            run->GetInstanceId());

        SendRunStatus(
            handler,
            *run);

        return true;
    }

    static bool HandleCheckpointsCommand(
        ChatHandler* handler)
    {
        Player* player =
            handler->GetSession()
            ? handler->GetSession()->GetPlayer()
            : nullptr;

        if (!player)
        {
            handler->SendErrorMessage(
                "法力风暴：此命令需要在游戏内由玩家执行。");

            return false;
        }

        uint32 memberCount = 1;

        if (Group* group =
            player->GetGroup())
        {
            memberCount =
                std::max<uint32>(
                    1,
                    group->GetMembersCount());
        }

        ManastormMode const mode =
            ManastormModeForMemberCount(
                memberCount);

        ManastormProgressionSnapshot snapshot;
        std::string error;

        uint32 const endgameLevel =
            std::max(
                60u,
                sWorld->getIntConfig(
                    CONFIG_MAX_PLAYER_LEVEL));

        bool const endgame =
            player->GetLevel() >=
                endgameLevel;

        if (!ManastormProgression::LoadSnapshot(
            player->GetGUID().GetCounter(),
            mode,
            endgame,
            snapshot,
            error))
        {
            handler->PSendSysMessage(
                "法力风暴：{}",
                error);

            return true;
        }

        std::vector<uint32> depths;

        ManastormProgression::BuildEnterableDepths(
            snapshot,
            depths);

        handler->PSendSysMessage(
            "法力风暴检查点 | 模式={} | 最高已完成={} | 待解锁={} | 待进入深度={} | 待进入分段={}",
            ManastormModeName(mode),
            snapshot.BestCompletedDepth,
            snapshot.PendingUnlockId,
            snapshot.PendingIntroDepth,
            snapshot.PendingIntroSegmentId);

        if (depths.empty())
        {
            handler->SendSysMessage(
                "可进入的深度：无。");

            return true;
        }

        std::string list;

        for (std::size_t index = 0;
            index < depths.size();
            ++index)
        {
            if (index)
                list += ", ";

            list +=
                std::to_string(
                    depths[index]);
        }

        handler->PSendSysMessage(
            "可进入的深度（由高到低）：{}",
            list);

        return true;
    }

    static bool HandleStatusCommand(ChatHandler* handler)
    {
        Player* player = handler->GetSession()
            ? handler->GetSession()->GetPlayer()
            : nullptr;

        if (!player)
        {
            handler->SendErrorMessage("法力风暴：此命令需要在游戏内由玩家执行。");
            return false;
        }

        ManastormRun const* run =
            ManastormMgr::Instance().GetRunFor(player);

        if (!run)
        {
            handler->SendSysMessage(
                "法力风暴：你不在任何进行中的进程内。");
            return true;
        }

        SendRunStatus(handler, *run);
        return true;
    }

    static bool HandleStopCommand(ChatHandler* handler)
    {
        Player* player = handler->GetSession()
            ? handler->GetSession()->GetPlayer()
            : nullptr;

        if (!player)
        {
            handler->SendErrorMessage("法力风暴：此命令需要在游戏内由玩家执行。");
            return false;
        }

        std::string error;
        if (!ManastormMgr::Instance().StopRun(player, error))
        {
            handler->PSendSysMessage("法力风暴：{}", error);
            return true;
        }

        handler->SendSysMessage("法力风暴：进程已停止。");
        return true;
    }

    static bool HandleSpawnRandomSlotCommand(
        ChatHandler* handler,
        uint32 segmentId,
        uint32 enabled)
    {
        if (enabled > 1)
        {
            handler->SendErrorMessage(
                "法力风暴：randomslot 的取值必须是 0 或 1。");

            return false;
        }

        return SetSelectedSpawnRole(
            handler,
            segmentId,
            ManastormSegmentSpawnFlags::RandomizationSlot,
            enabled != 0,
            "RandomizationSlot");
    }

    static bool HandleSpawnPoolSourceCommand(
        ChatHandler* handler,
        uint32 segmentId,
        uint32 enabled)
    {
        if (enabled > 1)
        {
            handler->SendErrorMessage(
                "法力风暴：poolsource 的取值必须是 0 或 1。");

            return false;
        }

        return SetSelectedSpawnRole(
            handler,
            segmentId,
            ManastormSegmentSpawnFlags::CreaturePoolSource,
            enabled != 0,
            "CreaturePoolSource");
    }

    static bool HandleSpawnAffixCommand(
        ChatHandler* handler,
        uint32 segmentId,
        uint32 enabled)
    {
        if (enabled > 1)
        {
            handler->SendErrorMessage(
                "法力风暴：affix 的取值必须是 0 或 1。");

            return false;
        }

        return SetSelectedSpawnRole(
            handler,
            segmentId,
            ManastormSegmentSpawnFlags::AffixEligible,
            enabled != 0,
            "AffixEligible");
    }

    static bool HandleSpawnInfoCommand(
        ChatHandler* handler,
        uint32 segmentId)
    {
        Creature* creature =
            handler->getSelectedCreature();

        if (!creature)
        {
            handler->SendErrorMessage(
                "法力风暴：请先选择一个生物。");

            return false;
        }

        ObjectGuid::LowType const spawnId =
            creature->GetSpawnId();

        if (!spawnId)
        {
            handler->SendErrorMessage(
                "法力风暴：所选生物没有稳定的数据库刷新 ID。");

            return false;
        }

        QueryResult result = WorldDatabase.Query(
            "SELECT `flags`, `enabled` "
            "FROM `manastorm_segment_spawn` "
            "WHERE `segment_id` = {} "
            "AND `spawn_guid` = {} "
            "LIMIT 1",
            segmentId,
            spawnId);

        if (!result)
        {
            handler->PSendSysMessage(
                "法力风暴：刷新 {} 在分段 {} 中没有任何作者定义的角色。",
                spawnId,
                segmentId);

            return true;
        }

        Field* fields =
            result->Fetch();

        uint32 const flags =
            fields[0].Get<uint32>();

        bool const enabled =
            fields[1].Get<uint8>() != 0;

        handler->PSendSysMessage(
            "法力风暴刷新角色 | 分段={} 刷新={} entry={} 标志=0x{:X} 已启用={} 路线={} 链接={} 随机槽位={} 来源池={} 词缀={}",
            segmentId,
            spawnId,
            creature->GetEntry(),
            flags,
            enabled ? "是": "no",
            (flags & ManastormSegmentSpawnFlags::RouteCreature) ? "是": "no",
            (flags & ManastormSegmentSpawnFlags::ChaoticLinkEligible) ? "是": "no",
            (flags & ManastormSegmentSpawnFlags::RandomizationSlot) ? "是": "no",
            (flags & ManastormSegmentSpawnFlags::CreaturePoolSource) ? "是": "no",
            (flags & ManastormSegmentSpawnFlags::AffixEligible) ? "是": "no");

        return true;
    }

    static bool HandleSpawnListCommand(
        ChatHandler* handler,
        uint32 segmentId)
    {
        QueryResult result = WorldDatabase.Query(
            "SELECT "
            "s.`spawn_guid`, "
            "COALESCE(c.`id`, 0), "
            "s.`flags`, "
            "s.`enabled` "
            "FROM `manastorm_segment_spawn` s "
            "LEFT JOIN `creature` c "
            "ON c.`guid` = s.`spawn_guid` "
            "WHERE s.`segment_id` = {} "
            "ORDER BY s.`spawn_guid`",
            segmentId);

        if (!result)
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 没有任何作者定义的刷新角色。",
                segmentId);

            return true;
        }

        handler->PSendSysMessage(
            "分段 {} 的作者定义刷新点：",
            segmentId);

        do
        {
            Field* fields =
                result->Fetch();

            handler->PSendSysMessage(
                "  刷新={} entry={} 标志=0x{:X} 已启用={}",
                fields[0].Get<uint32>(),
                fields[1].Get<uint32>(),
                fields[2].Get<uint32>(),
                fields[3].Get<uint8>() ? "是": "no");
        } while (result->NextRow());

        return true;
    }

    static bool HandlePoolInfoCommand(
        ChatHandler* handler,
        uint32 poolId)
    {
        ManastormCreaturePoolDefinition const* pool =
            ManastormDataStore::Instance()
            .GetCreaturePoolById(poolId);

        if (!pool)
        {
            handler->PSendSysMessage(
                "法力风暴：生物池 {} 未加载或未启用。",
                poolId);

            return true;
        }

        handler->PSendSysMessage(
            "法力风暴生物池 {} '{}' | 来源分段={} 派生生物 entry={} | 运行时替换=未启用",
            pool->PoolId,
            pool->Name,
            pool->SourceSegmentIds.size(),
            pool->CreatureEntries.size());

        for (uint32 segmentId :
            pool->SourceSegmentIds)
        {
            handler->PSendSysMessage(
                "  来源分段={}",
                segmentId);
        }

        for (uint32 creatureEntry :
            pool->CreatureEntries)
        {
            CreatureTemplate const* creatureTemplate =
                sObjectMgr->GetCreatureTemplate(
                    creatureEntry);

            handler->PSendSysMessage(
                "  生物 entry={} 名称='{}'",
                creatureEntry,
                creatureTemplate
                    ? creatureTemplate->Name
                    : "<缺少模板>");
        }

        return true;
    }

    static bool HandleLinkAddCommand(
        ChatHandler* handler,
        uint32 segmentId)
    {
        if (!segmentId)
        {
            handler->SendErrorMessage(
                "法力风暴：分段 ID 必须大于 0。");

            return false;
        }

        ManastormAuthoringSegment segment;

        if (!GetAuthoringSegment(
            segmentId,
            segment))
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);

            return true;
        }

        Creature* creature =
            handler->getSelectedCreature();

        if (!creature)
        {
            handler->SendErrorMessage(
                "法力风暴：请先选择一个生物。");

            return false;
        }

        ObjectGuid::LowType const spawnId =
            creature->GetSpawnId();

        if (!spawnId)
        {
            handler->SendErrorMessage(
                "法力风暴：所选生物没有稳定的数据库刷新 ID。临时、召唤或动态创建的生物不能作为混沌链接。");

            return false;
        }

        if (creature->GetMapId() !=
            segment.MapId)
        {
            handler->PSendSysMessage(
                "法力风暴：刷新 {} 位于地图 {}，但分段 {} 使用的是地图 {}。",
                spawnId,
                creature->GetMapId(),
                segmentId,
                segment.MapId);

            return true;
        }

        if (creature->GetEntry() ==
            segment.ObjectiveCreatureEntry)
        {
            handler->PSendSysMessage(
                "法力风暴：生物 entry {} 是分段 {} 的目标首领，不能同时作为混沌链接路线的刷新点。",
                creature->GetEntry(),
                segmentId);

            return true;
        }

        QueryResult existing = WorldDatabase.Query(
            "SELECT `flags`, `enabled` "
            "FROM `manastorm_segment_spawn` "
            "WHERE `segment_id` = {} "
            "AND `spawn_guid` = {} "
            "LIMIT 1",
            segmentId,
            spawnId);

        if (existing)
        {
            Field* fields =
                existing->Fetch();

            uint32 const flags =
                fields[0].Get<uint32>();

            bool const enabled =
                fields[1].Get<uint8>() != 0;

            uint32 const requiredFlags =
                ManastormSegmentSpawnFlags::RouteCreature |
                ManastormSegmentSpawnFlags::ChaoticLinkEligible |
                ManastormSegmentSpawnFlags::AffixEligible;

            if (enabled && (flags & requiredFlags) == requiredFlags)
            {
                handler->PSendSysMessage(
                    "法力风暴：刷新 {} 已经是分段 {} 的混沌链接。",
                    spawnId,
                    segmentId);

                return true;
            }
        }

        uint32 const addFlags =
            ManastormSegmentSpawnFlags::RouteCreature |
            ManastormSegmentSpawnFlags::ChaoticLinkEligible |
            ManastormSegmentSpawnFlags::AffixEligible;

        WorldDatabase.DirectExecute(
            "INSERT INTO `manastorm_segment_spawn` "
            "(`segment_id`, `spawn_guid`, `flags`, `enabled`) "
            "VALUES ({}, {}, {}, 1) "
            "ON DUPLICATE KEY UPDATE "
            "`flags` = (`flags` | VALUES(`flags`)), "
            "`enabled` = 1",
            segmentId,
            spawnId,
            addFlags);

        if (!ReloadAfterAuthoring(handler))
            return false;

        uint32 const newCount =
            GetChaoticLinkCount(segmentId);

        handler->PSendSysMessage(
            "法力风暴：已添加混沌链接候选 | 分段={} 刷新={} entry={} 名称='{}' | 候选数={} 所需首领链接数={}。",
            segmentId,
            spawnId,
            creature->GetEntry(),
            creature->GetName(),
            newCount,
            uint32(segment.ChaoticLinkStacks));

        return true;
    }

    static bool HandleLinkRemoveCommand(
        ChatHandler* handler,
        uint32 segmentId)
    {
        if (!segmentId)
        {
            handler->SendErrorMessage(
                "法力风暴：分段 ID 必须大于 0。");

            return false;
        }

        ManastormAuthoringSegment segment;

        if (!GetAuthoringSegment(
            segmentId,
            segment))
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);

            return true;
        }

        Creature* creature =
            handler->getSelectedCreature();

        if (!creature)
        {
            handler->SendErrorMessage(
                "法力风暴：请先选择一个生物。");

            return false;
        }

        ObjectGuid::LowType const spawnId =
            creature->GetSpawnId();

        if (!spawnId)
        {
            handler->SendErrorMessage(
                "法力风暴：所选生物没有稳定的数据库刷新 ID。");

            return false;
        }

        QueryResult existing = WorldDatabase.Query(
            "SELECT `flags`, `enabled` "
            "FROM `manastorm_segment_spawn` "
            "WHERE `segment_id` = {} "
            "AND `spawn_guid` = {} "
            "LIMIT 1",
            segmentId,
            spawnId);

        if (!existing)
        {
            handler->PSendSysMessage(
                "法力风暴：刷新 {} 未注册到分段 {}。",
                spawnId,
                segmentId);

            return true;
        }

        Field* existingFields =
            existing->Fetch();

        uint32 const existingFlags =
            existingFields[0].Get<uint32>();

        bool const existingEnabled =
            existingFields[1].Get<uint8>() != 0;

        if (!existingEnabled ||
            !(existingFlags &
                ManastormSegmentSpawnFlags::ChaoticLinkEligible))
        {
            handler->PSendSysMessage(
                "法力风暴：刷新 {} 不是分段 {} 的已启用混沌链接候选。",
                spawnId,
                segmentId);

            return true;
        }

        uint32 const currentCandidateCount =
            GetChaoticLinkCount(segmentId);

        uint32 const remainingCandidateCount =
            currentCandidateCount > 0
            ? currentCandidateCount - 1
            : 0;

        if (remainingCandidateCount <
            uint32(segment.ChaoticLinkStacks))
        {
            handler->PSendSysMessage(
                "法力风暴：无法移除此候选。分段 {} 需要打破 {} 个首领链接，但移除后只会剩下 {} 个候选。请先用 `.manastorm link stacks {} <数量>` 降低所需的链接数。",
                segmentId,
                uint32(segment.ChaoticLinkStacks),
                remainingCandidateCount,
                segmentId);

            return true;
        }

        uint32 const nonRouteRoles =
            existingFlags &
            (ManastormSegmentSpawnFlags::RandomizationSlot |
                ManastormSegmentSpawnFlags::CreaturePoolSource);

        if (nonRouteRoles)
        {
            // Other evidence-backed roles still depend on this authored route
            // spawn. Remove only Chaotic Link eligibility.
            WorldDatabase.DirectExecute(
                "UPDATE `manastorm_segment_spawn` "
                "SET `flags` = (`flags` & ~{}) "
                "WHERE `segment_id` = {} "
                "AND `spawn_guid` = {}",
                ManastormSegmentSpawnFlags::ChaoticLinkEligible,
                segmentId,
                spawnId);
        }
        else
        {
            // A row authored only through .manastorm link add carries
            // RouteCreature|ChaoticLinkEligible. Preserve the old intuitive
            // remove behavior and remove that authoring row completely.
            WorldDatabase.DirectExecute(
                "DELETE FROM `manastorm_segment_spawn` "
                "WHERE `segment_id` = {} "
                "AND `spawn_guid` = {}",
                segmentId,
                spawnId);
        }

        if (!ReloadAfterAuthoring(handler))
            return false;

        handler->PSendSysMessage(
            "法力风暴：已移除混沌链接候选 | 分段={} 刷新={} entry={} | 候选数={} 所需首领链接数={}。",
            segmentId,
            spawnId,
            creature->GetEntry(),
            GetChaoticLinkCount(segmentId),
            uint32(segment.ChaoticLinkStacks));

        return true;
    }

    static bool HandleLinkListCommand(
        ChatHandler* handler,
        uint32 segmentId)
    {
        ManastormAuthoringSegment segment;

        if (!GetAuthoringSegment(
            segmentId,
            segment))
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);

            return true;
        }

        QueryResult result = WorldDatabase.Query(
            "SELECT "
            "s.`spawn_guid`, "
            "COALESCE(c.`id`, 0), "
            "s.`flags`, "
            "s.`enabled` "
            "FROM `manastorm_segment_spawn` s "
            "LEFT JOIN `creature` c "
            "ON c.`guid` = s.`spawn_guid` "
            "WHERE s.`segment_id` = {} "
            "AND (s.`flags` & {}) <> 0 "
            "ORDER BY s.`spawn_guid`",
            segmentId,
            ManastormSegmentSpawnFlags::ChaoticLinkEligible);

        handler->PSendSysMessage(
            "分段 {} 的混沌链接路线（地图={}，候选数={}，所需首领链接数={}）：",
            segmentId,
            segment.MapId,
            GetChaoticLinkCount(segmentId),
            uint32(segment.ChaoticLinkStacks));

        if (!result)
        {
            handler->SendSysMessage(
                "  尚未配置任何混沌链接刷新点。");

            return true;
        }

        do
        {
            Field* fields =
                result->Fetch();

            ObjectGuid::LowType const spawnId =
                fields[0].Get<uint32>();

            uint32 const entry =
                fields[1].Get<uint32>();

            uint32 const flags =
                fields[2].Get<uint32>();

            bool const enabled =
                fields[3].Get<uint8>() != 0;

            handler->PSendSysMessage(
                "  刷新={} entry={} 标志=0x{:X} 已启用={}",
                spawnId,
                entry,
                flags,
                enabled ? "是": "no");
        } while (result->NextRow());

        return true;
    }

    static bool HandleLinkClearCommand(
        ChatHandler* handler,
        uint32 segmentId)
    {
        ManastormAuthoringSegment segment;

        if (!GetAuthoringSegment(
            segmentId,
            segment))
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);

            return true;
        }

        if (segment.ChaoticLinkStacks)
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 仍需要打破 {} 个首领链接。请先用 `.manastorm link stacks {} 0` 将其链接层数设为 0，然后再清除所有路线候选。",
                segmentId,
                uint32(segment.ChaoticLinkStacks),
                segmentId);

            return true;
        }

        uint32 const oldCount =
            GetChaoticLinkCount(segmentId);

        // Rows with future randomization/pool-source roles remain authored
        // route members; rows that only existed for Chaotic Link authoring
        // are removed entirely.
        WorldDatabase.DirectExecute(
            "DELETE FROM `manastorm_segment_spawn` "
            "WHERE `segment_id` = {} "
            "AND (`flags` & {}) <> 0 "
            "AND (`flags` & {}) = 0",
            segmentId,
            ManastormSegmentSpawnFlags::ChaoticLinkEligible,
            ManastormSegmentSpawnFlags::RandomizationSlot |
                ManastormSegmentSpawnFlags::CreaturePoolSource);

        WorldDatabase.DirectExecute(
            "UPDATE `manastorm_segment_spawn` "
            "SET `flags` = (`flags` & ~{}) "
            "WHERE `segment_id` = {} "
            "AND (`flags` & {}) <> 0",
            ManastormSegmentSpawnFlags::ChaoticLinkEligible,
            segmentId,
            ManastormSegmentSpawnFlags::ChaoticLinkEligible);

        if (!ReloadAfterAuthoring(handler))
            return false;

        handler->PSendSysMessage(
            "法力风暴：已从分段 {} 清除 {} 个混沌链接候选刷新点。所需首领链接数=0。",
            oldCount,
            segmentId);

        return true;
    }

    static bool HandleLinkStacksCommand(
        ChatHandler* handler,
        uint32 segmentId,
        uint32 stacks)
    {
        if (!segmentId)
        {
            handler->SendErrorMessage(
                "法力风暴：分段 ID 必须大于 0。");

            return false;
        }

        ManastormAuthoringSegment segment;

        if (!GetAuthoringSegment(
            segmentId,
            segment))
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);

            return true;
        }

        if (stacks > 254)
        {
            handler->SendErrorMessage(
                "法力风暴：混沌链接层数不能超过 254。");

            return false;
        }

        uint32 const candidateCount =
            GetChaoticLinkCount(segmentId);

        if (stacks > candidateCount)
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 只配置了 {} 个混沌链接候选，因此所需首领链接数不能设为 {}。",
                segmentId,
                candidateCount,
                stacks);

            return true;
        }

        WorldDatabase.DirectExecute(
            "UPDATE `manastorm_segment` "
            "SET `chaotic_link_stacks` = {} "
            "WHERE `segment_id` = {}",
            stacks,
            segmentId);

        if (!ReloadAfterAuthoring(handler))
            return false;

        handler->PSendSysMessage(
            "法力风暴：分段 {} 现在配置了 {} 个候选，需要杀死 {} 个候选才能移除所有首领身上的混沌链接。",
            segmentId,
            candidateCount,
            stacks);

        return true;
    }

    static bool HandleSegmentEnableCommand(
        ChatHandler* handler,
        uint32 segmentId,
        uint32 enabled)
    {
        if (!segmentId || enabled > 1)
        {
            handler->SendErrorMessage(
                "用法：.manastorm segment enable <分段ID> <0|1>");
            return false;
        }

        QueryResult result =
            WorldDatabase.Query(
                "SELECT 1 "
                "FROM `manastorm_segment` "
                "WHERE `segment_id` = {} "
                "LIMIT 1",
                segmentId);

        if (!result)
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);
            return true;
        }

        WorldDatabase.DirectExecute(
            "UPDATE `manastorm_segment` "
            "SET `enabled` = {} "
            "WHERE `segment_id` = {}",
            enabled,
            segmentId);

        if (enabled)
        {
            if (!ReloadAfterAuthoring(handler))
            {
                handler->PSendSysMessage(
                    "法力风暴：分段 {} 已在 SQL 中启用，但数据存储校验拒绝了它。请查看 worldserver 日志。",
                    segmentId);
                return true;
            }
        }
        else
        {
            // Reload when possible. If this was the final enabled segment the
            // datastore may intentionally report that no valid rows remain.
            ManastormMgr::Instance().ReloadData();
        }

        handler->PSendSysMessage(
            "法力风暴：分段 {} {}。",
            segmentId,
            enabled ? "启用": "停用");

        return true;
    }

    static bool HandleSegmentTestCommand(
        ChatHandler* handler,
        uint32 segmentId,
        Optional<uint32> requestedDepth)
    {
        Player* player =
            handler->GetSession()
            ? handler->GetSession()->GetPlayer()
            : nullptr;

        if (!player)
        {
            handler->SendErrorMessage(
                "法力风暴：此命令需要在游戏内由玩家执行。");
            return false;
        }

        ManastormSegment const* segment =
            ManastormDataStore::Instance().GetSegmentById(
                segmentId);

        if (!segment)
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 未启用或无效。请使用 `.manastorm segment enable {} 1`，若校验仍拒绝，请查看 worldserver 日志。",
                segmentId,
                segmentId);
            return true;
        }

        uint32 const depth =
            requestedDepth
            ? *requestedDepth
            : std::max<uint32>(
                1,
                segment->MinDepth);

        std::string error;

        ManastormRun* run =
            ManastormMgr::Instance().StartRun(
                player,
                depth,
                error,
                true,
                segmentId);

        if (!run)
        {
            handler->PSendSysMessage(
                "法力风暴：精确分段测试失败：{}",
                error);
            return true;
        }

        handler->PSendSysMessage(
            "法力风暴：测试已启动精确分段 {}，深度 {} | 原生地图={} 运行时地图={} 实例={}。",
            segmentId,
            depth,
            run->GetSegment().NativeMapId,
            run->GetSegment().MapId,
            run->GetInstanceId());

        SendRunStatus(
            handler,
            *run);

        return true;
    }

    static bool HandleSegmentRuntimeMapCommand(
        ChatHandler* handler,
        uint32 segmentId,
        uint32 mapId)
    {
        QueryResult segmentResult =
            WorldDatabase.Query(
                "SELECT `map_id` "
                "FROM `manastorm_segment` "
                "WHERE `segment_id` = {} "
                "LIMIT 1",
                segmentId);

        if (!segmentResult)
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);
            return true;
        }

        uint32 const nativeMapId =
            segmentResult->Fetch()[0].Get<uint32>();

        if (mapId)
        {
            MapEntry const* mapEntry =
                sMapStore.LookupEntry(mapId);

            if (!mapEntry)
            {
                handler->PSendSysMessage(
                    "法力风暴：运行时地图 {} 不存在。",
                    mapId);
                return true;
            }

            if (mapEntry->IsBattlegroundOrArena())
            {
                handler->PSendSysMessage(
                    "法力风暴：战场/竞技场地图 {} 不能用作运行时阶段地图。",
                    mapId);
                return true;
            }
        }

        WorldDatabase.DirectExecute(
            "UPDATE `manastorm_segment` "
            "SET `runtime_map_id` = {} "
            "WHERE `segment_id` = {}",
            mapId,
            segmentId);

        if (!ReloadAfterAuthoring(handler))
            return false;

        handler->PSendSysMessage(
            "法力风暴：分段 {} 原生地图={} 运行时地图={}{}。",
            segmentId,
            nativeMapId,
            mapId ? mapId : nativeMapId,
            mapId ? "（覆盖）": "（原生）");

        return true;
    }

    static bool HandleSegmentRuntimeObjectiveCommand(
        ChatHandler* handler,
        uint32 segmentId,
        uint32 creatureEntry)
    {
        QueryResult segmentResult =
            WorldDatabase.Query(
                "SELECT `objective_creature_entry` "
                "FROM `manastorm_segment` "
                "WHERE `segment_id` = {} "
                "LIMIT 1",
                segmentId);

        if (!segmentResult)
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);
            return true;
        }

        uint32 const nativeObjectiveEntry =
            segmentResult->Fetch()[0].Get<uint32>();

        if (creatureEntry &&
            !sObjectMgr->GetCreatureTemplate(creatureEntry))
        {
            handler->PSendSysMessage(
                "法力风暴：运行时目标生物 entry {} 在 creature_template 中不存在。",
                creatureEntry);
            return true;
        }

        WorldDatabase.DirectExecute(
            "UPDATE `manastorm_segment` "
            "SET `runtime_objective_creature_entry` = {} "
            "WHERE `segment_id` = {}",
            creatureEntry,
            segmentId);

        if (!ReloadAfterAuthoring(handler))
            return false;

        handler->PSendSysMessage(
            "法力风暴：分段 {} 原生目标={} 运行时目标={}{}。",
            segmentId,
            nativeObjectiveEntry,
            creatureEntry
                ? creatureEntry
                : nativeObjectiveEntry,
            creatureEntry
                ? "（覆盖）": "（原生）");

        return true;
    }

    static bool HandleSegmentInfoCommand(
        ChatHandler* handler,
        uint32 segmentId)
    {
        QueryResult result = WorldDatabase.Query(
            "SELECT "
            "`map_id`, "
            "`runtime_map_id`, "
            "`difficulty`, "
            "`dungeon_encounter_id`, "
            "`objective_creature_entry`, "
            "`runtime_objective_creature_entry`, "
            "`start_game_tele_id`, "
            "`weight`, "
            "`min_depth`, "
            "`max_depth`, "
            "`reward_multiplier`, "
            "`chaotic_link_stacks`, "
            "`enabled` "
            "FROM `manastorm_segment` "
            "WHERE `segment_id` = {} "
            "LIMIT 1",
            segmentId);

        if (!result)
        {
            handler->PSendSysMessage(
                "法力风暴：分段 {} 不存在。",
                segmentId);

            return true;
        }

        Field* fields =
            result->Fetch();

        uint32 const nativeMapId =
            fields[0].Get<uint32>();

        uint32 const runtimeMapOverride =
            fields[1].Get<uint32>();

        uint32 const runtimeMapId =
            runtimeMapOverride
            ? runtimeMapOverride
            : nativeMapId;

        uint8 const difficulty =
            fields[2].Get<uint8>();

        uint32 const encounterId =
            fields[3].Get<uint32>();

        uint32 const nativeObjectiveEntry =
            fields[4].Get<uint32>();

        uint32 const runtimeObjectiveOverride =
            fields[5].Get<uint32>();

        uint32 const runtimeObjectiveEntry =
            runtimeObjectiveOverride
            ? runtimeObjectiveOverride
            : nativeObjectiveEntry;

        uint32 const teleId =
            fields[6].Get<uint32>();

        uint32 const weight =
            fields[7].Get<uint32>();

        uint32 const minDepth =
            fields[8].Get<uint32>();

        uint32 const maxDepth =
            fields[9].Get<uint32>();

        float const rewardMultiplier =
            fields[10].Get<float>();

        uint8 const configuredStacks =
            fields[11].Get<uint8>();

        bool const enabled =
            fields[12].Get<uint8>() != 0;

        uint32 const routeSpawnCount =
            GetChaoticLinkCount(segmentId);

        handler->PSendSysMessage(
            "法力风暴分段 {}：",
            segmentId);

        handler->PSendSysMessage(
            "  原生地图={} 运行时地图={}{} 难度={} 遭遇={}",
            nativeMapId,
            runtimeMapId,
            runtimeMapOverride ? "（覆盖）": "",
            uint32(difficulty),
            encounterId);

        handler->PSendSysMessage(
            "  目标原生={} 目标运行时={}{} 起始传送={}",
            nativeObjectiveEntry,
            runtimeObjectiveEntry,
            runtimeObjectiveOverride ? "（覆盖）": "",
            teleId);

        handler->PSendSysMessage(
            "  深度={}..{} 权重={} 奖励={:.3f}倍",
            minDepth,
            maxDepth,
            weight,
            rewardMultiplier);

        handler->PSendSysMessage(
            "  混沌链接={} 路线刷新点={} 已启用={}",
            uint32(configuredStacks),
            routeSpawnCount,
            enabled ? "是": "no");

        return true;
    }

    static bool HandleReloadCommand(ChatHandler* handler)
    {
        bool const ok = ManastormMgr::Instance().ReloadData();

        ManastormDataStore const& store = ManastormDataStore::Instance();

        if (!ok)
        {
            handler->SendErrorMessage(
                "法力风暴：数据存储重载失败。请查看 worldserver 日志。");
            return false;
        }

        handler->PSendSysMessage(
            "法力风暴：数据存储已重载。分段={} 缩放点={} 活动进程={}。已有的进程会保留其阶段与缩放快照。",
            store.GetSegmentCount(),
            store.GetScalingPointCount(),
            ManastormMgr::Instance().GetActiveRunCount());

        return true;
    }

    static bool HandleGreedySpawnCommand(
        ChatHandler* handler)
    {
        Player* player =
            handler->GetSession()
            ? handler->GetSession()->GetPlayer()
            : nullptr;

        if (!player)
        {
            handler->SendErrorMessage(
                "法力风暴：此命令需要在游戏内由玩家执行。");

            return false;
        }

        std::string error;

        if (!ManastormGreedyDemon::Instance()
            .ForceSpawn(
                player,
                error))
        {
            handler->PSendSysMessage(
                "法力风暴：{}",
                error);

            return true;
        }

        handler->SendSysMessage(
            "法力风暴：已强制触发贪婪恶魔遭遇。");

        return true;
    }

    static bool HandleAffixForceCommand(
        ChatHandler* handler,
        uint32 affixId)
    {
        Player* player =
            handler->GetSession()
            ? handler->GetSession()->GetPlayer()
            : nullptr;

        if (!player)
        {
            handler->SendErrorMessage(
                "法力风暴：此命令需要在游戏内由玩家执行。");

            return false;
        }

        std::string error;

        if (!ManastormMgr::Instance()
            .ForceStageAffix(
                player,
                affixId,
                error))
        {
            handler->PSendSysMessage(
                "法力风暴：{}",
                error);

            return true;
        }

        handler->PSendSysMessage(
            "法力风暴：已为当前阶段强制附加词缀 {}。",
            affixId);

        ManastormRun const* run =
            ManastormMgr::Instance()
            .GetRunFor(player);

        if (run)
        {
            SendRunStatus(
                handler,
                *run);
        }

        return true;
    }
};

void AddSC_manastorm_commandscript()
{
    new manastorm_commandscript();
}
