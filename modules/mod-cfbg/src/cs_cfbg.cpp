/*
 * Copyright (С) since 2019+ AzerothCore <www.azerothcore.org>
 * Licence MIT https://opensource.org/MIT
 */

#include "Battlefield.h"
#include "BattlefieldMgr.h"
#include "Chat.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "CFBG.h"

using namespace Acore::ChatCommands;

class cfbg_commandscript : public CommandScript
{
public:
    cfbg_commandscript() : CommandScript("cfbg_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable cfbgCommands =
        {
            { "race",  HandleCFBGChooseRace, SEC_PLAYER,        Console::No  },
            { "debug", HandleCFBGDebug,      SEC_MODERATOR,     Console::Yes },
        };

        static ChatCommandTable commandTable =
        {
            { "cfbg",  cfbgCommands },
        };

        return commandTable;
    }

    static bool HandleCFBGChooseRace(ChatHandler* handler, std::string raceInput)
    {
        Player* player = handler->GetPlayer();

        uint8 raceId = 0;

        if (sCFBG->RandomizeRaces() || sCFBG->KeepRace())
        {
            handler->SendSysMessage("当前已禁用种族选择。");
            handler->SetSentErrorMessage(true);
            return true;
        }

        for (auto const& raceVariable : *sCFBG->GetRaceInfo())
        {
            if (raceInput == raceVariable.RaceName)
            {
                if (player->GetTeamId(true) == raceVariable.TeamId)
                {
                    raceId = raceVariable.RaceId;
                }
                else
                {
                    handler->SendSysMessage("你的阵营无法使用该种族。");
                    handler->SetSentErrorMessage(true);
                    return true;
                }

                if (!IsRaceValidForClass(player, raceId))
                {
                    handler->SendSysMessage("你的职业无法使用该种族。");
                    handler->SetSentErrorMessage(true);
                    return true;
                }

                if (raceId == RACE_NIGHTELF)
                {
                    handler->SendSysMessage("暗夜精灵模型不可用：女性模型缺失，男性模型会导致客户端崩溃。");
                    handler->SetSentErrorMessage(true);
                    return true;
                }

                if (player->getGender() == GENDER_FEMALE && (raceId == RACE_TROLL || raceId == RACE_DWARF))
                {
                    handler->SendSysMessage("以下种族没有可用的女性模型：巨魔、矮人。");
                    handler->SetSentErrorMessage(true);
                    return true;
                }
            }
        }

        player->UpdatePlayerSetting("mod-cfbg", SETTING_CFBG_RACE, raceId);

        if (!raceId)
        {
            handler->SendSysMessage("该种族不可用。CFBG 已把选定种族设为随机；当你以对方阵营进入战场时，会被变成随机种族。");
        }
        else
        {
            handler->PSendSysMessage("CFBG 选定种族已设为 {}", raceInput);
        }

        return true;
    }

    static char const* TeamIdName(TeamId t)
    {
        switch (t)
        {
            case TEAM_ALLIANCE: return "Alliance";
            case TEAM_HORDE:    return "Horde";
            default:            return "Neutral";
        }
    }

    static char const* YesNo(bool v) { return v ? "是" : "否"; }
    static char const* MarkYN(bool v) { return v ? "Y" : "-"; }

    static bool HandleCFBGDebug(ChatHandler* handler, Optional<PlayerIdentifier> player)
    {
        if (!player)
            player = PlayerIdentifier::FromTargetOrSelf(handler);

        if (!player || !player->IsConnected())
        {
            handler->SendErrorMessage(LANG_PLAYER_NOT_FOUND);
            return false;
        }

        Player* target = player->GetConnectedPlayer();
        ObjectGuid const guid = target->GetGUID();

        bool const isFake     = sCFBG->IsPlayerFake(target);
        bool const native     = sCFBG->IsPlayingNative(target);
        bool const forgetBG   = sCFBG->ShouldForgetBGPlayers(target);
        bool const inBG       = target->InBattleground();
        uint8 const preferredRace = target->GetPlayerSetting("mod-cfbg", SETTING_CFBG_RACE).value;
        FakePlayer const* fake = sCFBG->GetFakePlayer(target);

        // === Header ===
        handler->PSendSysMessage("=== CFBG 调试：{} ===", target->GetName());
        handler->PSendSysMessage("  GUID：{}", guid.ToString());
        handler->PSendSysMessage("  配置：  系统={}  冬拥湖={}",
            YesNo(sCFBG->IsEnableSystem()), YesNo(sCFBG->IsEnableWGSystem()));

        // === Faction / appearance ===
        handler->SendSysMessage(" ");
        handler->SendSysMessage("  阵营");
        handler->PSendSysMessage("    原生       {:<8}  (种族 {})",
            TeamIdName(target->GetTeamId(true)), uint32(target->getRace(true)));
        handler->PSendSysMessage("    当前       {:<8}  (种族 {})",
            TeamIdName(target->GetTeamId()), uint32(target->getRace()));
        handler->PSendSysMessage("    战场队伍   {}", TeamIdName(target->GetBgTeamId()));
        handler->PSendSysMessage("    外观       {}（当前）/ {}（原生）",
            target->GetDisplayId(), target->GetNativeDisplayId());

        // === CFBG state ===
        handler->SendSysMessage(" ");
        handler->SendSysMessage("  状态");
        handler->PSendSysMessage("    已伪装             {}", YesNo(isFake));
        handler->PSendSysMessage("    以原生身份战斗     {}", YesNo(native));
        handler->PSendSysMessage("    在战场中           {}", YesNo(inBG));
        handler->PSendSysMessage("    职业 / 性别        {} / {}",
            uint32(target->getClass()), uint32(target->getGender()));
        handler->PSendSysMessage("    首选种族           {}", uint32(preferredRace));
        handler->PSendSysMessage("    遗忘战场玩家       {}", YesNo(forgetBG));

        // === Fake record ===
        if (fake)
        {
            handler->SendSysMessage(" ");
            handler->SendSysMessage("  伪装记录");
            handler->PSendSysMessage("    伪装  队伍={:<8}  种族={}  变形={}",
                TeamIdName(fake->FakeTeamID), uint32(fake->FakeRace), fake->FakeMorph);
            handler->PSendSysMessage("    真实  队伍={:<8}  种族={}  变形={}  原生变形={}",
                TeamIdName(fake->RealTeamID), uint32(fake->RealRace),
                fake->RealMorph, fake->RealNativeMorph);
        }

        // === Wintergrasp ===
        uint32 const zoneId = target->GetZoneId();
        Battlefield* bf = sBattlefieldMgr->GetBattlefieldToZoneId(zoneId);
        bool const inWGZone = bf && bf->GetTypeId() == BATTLEFIELD_WG;

        // Look up the WG battlefield even when the player is elsewhere, so we
        // can still flag stale fakes outside the zone. 4197 is Wintergrasp.
        Battlefield* wg = inWGZone ? bf : nullptr;
        if (!wg)
            if (Battlefield* candidate = sBattlefieldMgr->GetBattlefieldToZoneId(4197))
                if (candidate->GetTypeId() == BATTLEFIELD_WG)
                    wg = candidate;

        handler->SendSysMessage(" ");
        handler->SendSysMessage("  冬拥湖");
        handler->PSendSysMessage("    在冬拥湖区域 {}（区域 {}）", YesNo(inWGZone), zoneId);

        if (!wg)
        {
            handler->SendSysMessage("    战争时间     不适用（无冬拥湖战场）");
        }
        else
        {
            handler->PSendSysMessage("    战争时间     {}", YesNo(wg->IsWarTime()));

            bool const inQueueA = wg->GetPlayersQueueSet(TEAM_ALLIANCE).count(guid) > 0;
            bool const inQueueH = wg->GetPlayersQueueSet(TEAM_HORDE).count(guid)    > 0;
            bool const invitedA = wg->GetInvitedPlayersMap(TEAM_ALLIANCE).count(guid) > 0;
            bool const invitedH = wg->GetInvitedPlayersMap(TEAM_HORDE).count(guid)    > 0;
            bool const inWarA   = wg->GetPlayersInWarSet(TEAM_ALLIANCE).count(guid)   > 0;
            bool const inWarH   = wg->GetPlayersInWarSet(TEAM_HORDE).count(guid)      > 0;

            handler->SendSysMessage("    玩家所在集合：");
            handler->PSendSysMessage("                   联盟      部落");
            handler->PSendSysMessage("      排队            {}        {}", MarkYN(inQueueA), MarkYN(inQueueH));
            handler->PSendSysMessage("      已邀请          {}        {}", MarkYN(invitedA), MarkYN(invitedH));
            handler->PSendSysMessage("      战斗中          {}        {}", MarkYN(inWarA),   MarkYN(inWarH));

            // Which side does core track this player on, if any?
            bool const onA = inWarA || invitedA || inQueueA;
            bool const onH = inWarH || invitedH || inQueueH;
            std::optional<TeamId> coreTeam;
            if (onA) coreTeam = TEAM_ALLIANCE;
            if (onH) coreTeam = TEAM_HORDE;
            bool const inBothSides = onA && onH;

            // ---- Oddity scan ----
            std::vector<std::string> issues;

            if (inBothSides)
                issues.emplace_back("同时被联盟与部落的冬拥湖集合追踪（集合泄漏）");

            if (fake && fake->FakeTeamID == fake->RealTeamID)
                issues.emplace_back(Acore::StringFormat(
                    "过期伪装记录：伪装队伍 == 真实队伍（{}）",
                    TeamIdName(fake->FakeTeamID)));

            if (coreTeam && !inBothSides && target->GetTeamId() != *coreTeam)
                issues.emplace_back(Acore::StringFormat(
                    "当前队伍（{}）与核心冬拥湖阵营（{}）不一致",
                    TeamIdName(target->GetTeamId()), TeamIdName(*coreTeam)));

            if (fake && coreTeam && !inBothSides && fake->FakeTeamID != *coreTeam)
                issues.emplace_back(Acore::StringFormat(
                    "伪装队伍（{}）与核心冬拥湖阵营（{}）不一致",
                    TeamIdName(fake->FakeTeamID), TeamIdName(*coreTeam)));

            if (isFake && fake)
            {
                bool const inRealWarSet = (fake->RealTeamID == TEAM_ALLIANCE) ? inWarA : inWarH;
                bool const inFakeWarSet = (fake->FakeTeamID == TEAM_ALLIANCE) ? inWarA : inWarH;
                if (inRealWarSet && !inFakeWarSet && fake->FakeTeamID != fake->RealTeamID)
                    issues.emplace_back(Acore::StringFormat(
                        "已伪装为 {}，却处于核心 {} 的战斗集合中（战场组不同步）",
                        TeamIdName(fake->FakeTeamID), TeamIdName(fake->RealTeamID)));
            }

            if (inWGZone && wg->IsWarTime() && isFake && !inWarA && !inWarH && !invitedA && !invitedH)
                issues.emplace_back("战争期间在冬拥湖区域伪装，但不在战斗/邀请集合中");

            if (isFake && !inWGZone && !inBG)
                issues.emplace_back("在冬拥湖区域外伪装且不在战场中（清理泄漏）");

            if (inWGZone && isFake && !sCFBG->IsEnableWGSystem())
                issues.emplace_back("在冬拥湖区域伪装，但 CFBG.Battlefield.Enable=0");

            handler->SendSysMessage(" ");
            if (issues.empty())
            {
                handler->SendSysMessage("  异常：无");
            }
            else
            {
                handler->PSendSysMessage("  异常（{}）：", uint32(issues.size()));
                for (std::string const& msg : issues)
                    handler->PSendSysMessage("    ! {}", msg);
            }
        }

        return true;
    }

    static bool IsRaceValidForClass(Player* player, uint8 fakeRace)
    {
        RaceData const& raceData = sCFBG->GetRaceDataForClass(player->getClass());

        std::vector<uint8> const& availableRacesForClass = player->GetTeamId(true) == TEAM_HORDE ?
            raceData.availableRacesA : raceData.availableRacesH;

        for (auto const& races : availableRacesForClass)
        {
            if (races == fakeRace)
            {
                return true;
            }
        }

        return false;
    }
};

void AddSC_cfbg_commandscript()
{
    new cfbg_commandscript();
}

class cfbg_bf_commandscript : public CommandScript
{
public:
    cfbg_bf_commandscript() : CommandScript("cfbg_bf_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable bfSubCommands =
        {
            { "list", HandleBFList, SEC_ADMINISTRATOR, Console::No },
        };

        static ChatCommandTable commandTable =
        {
            { "bf", bfSubCommands },
        };

        return commandTable;
    }

    static bool HandleBFList(ChatHandler* handler, uint32 battleId)
    {
        Battlefield* bf = sBattlefieldMgr->GetBattlefieldByBattleId(battleId);

        if (!bf)
        {
            handler->SendErrorMessage("未找到战场 {}。", battleId);
            return false;
        }

        uint32 const allianceZone = bf->GetPlayersInZoneCount(TEAM_ALLIANCE);
        uint32 const hordeZone    = bf->GetPlayersInZoneCount(TEAM_HORDE);
        uint32 const allianceWar  = bf->GetPlayersInWarCount(TEAM_ALLIANCE);
        uint32 const hordeWar     = bf->GetPlayersInWarCount(TEAM_HORDE);
        uint32 const maxPerTeam   = bf->GetMaxPlayersPerTeam();

        handler->SendSysMessage(Acore::StringFormat("战场 {} | {}", battleId,
            bf->IsWarTime() ? "战争" : "和平").c_str());
        handler->SendSysMessage(Acore::StringFormat("  联盟：{} 在区域内，{} 在战斗中 / 上限 {}",
            allianceZone, allianceWar, maxPerTeam).c_str());
        handler->SendSysMessage(Acore::StringFormat("  部落：{} 在区域内，{} 在战斗中 / 上限 {}",
            hordeZone, hordeWar, maxPerTeam).c_str());

        return true;
    }
};

void AddSC_cfbg_bf_commandscript()
{
    new cfbg_bf_commandscript();
}
