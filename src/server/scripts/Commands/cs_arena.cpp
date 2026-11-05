/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ArenaSeasonMgr.h"
#include "ArenaTeamFilter.h"
#include "ArenaTeamMgr.h"
#include "Chat.h"
#include "CommandScript.h"
#include "Player.h"
#include "RBAC.h"

using namespace Acore::ChatCommands;

class arena_commandscript : public CommandScript
{
public:
    arena_commandscript() : CommandScript("arena_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable arenaSeasonSetCommandTable =
        {
            { "state",          HandleArenaSeasonSetStateCommand, rbac::RBAC_PERM_COMMAND_ARENA_SEASON, Console::Yes }
        };

        static ChatCommandTable arenaSeasonCommandTable =
        {
            { "reward",         HandleArenaSeasonRewardCommand,      rbac::RBAC_PERM_COMMAND_ARENA_SEASON_REWARD,      Console::Yes },
            { "deleteteams",    HandleArenaSeasonDeleteTeamsCommand, rbac::RBAC_PERM_COMMAND_ARENA_SEASON_DELETETEAMS,  Console::Yes },
            { "start",          HandleArenaSeasonStartCommand,       rbac::RBAC_PERM_COMMAND_ARENA_SEASON_START,        Console::Yes },
            { "set",            arenaSeasonSetCommandTable }
        };

        static ChatCommandTable arenaCommandTable =
        {
            { "create",         HandleArenaCreateCommand,   rbac::RBAC_PERM_COMMAND_ARENA_CREATE,  Console::Yes },
            { "disband",        HandleArenaDisbandCommand,  rbac::RBAC_PERM_COMMAND_ARENA_DISBAND, Console::Yes },
            { "rename",         HandleArenaRenameCommand,   rbac::RBAC_PERM_COMMAND_ARENA_RENAME,  Console::Yes },
            { "captain",        HandleArenaCaptainCommand,  rbac::RBAC_PERM_COMMAND_ARENA_CAPTAIN, Console::No  },
            { "info",           HandleArenaInfoCommand,     rbac::RBAC_PERM_COMMAND_ARENA_INFO,    Console::Yes },
            { "lookup",         HandleArenaLookupCommand,   rbac::RBAC_PERM_COMMAND_ARENA_LOOKUP,  Console::Yes },
            { "season",         arenaSeasonCommandTable  }
        };

        static ChatCommandTable commandTable =
        {
            { "arena", arenaCommandTable }
        };

        return commandTable;
    }

    static bool HandleArenaCreateCommand(ChatHandler* handler, Optional<PlayerIdentifier> captain, QuotedString name, ArenaTeamTypes type)
    {
        if (sArenaTeamMgr->GetArenaTeamByName(name))
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_NAME_EXISTS, name);
            return false;
        }

        if (!captain)
            captain = PlayerIdentifier::FromTargetOrSelf(handler);

        if (!captain)
            return false;

        if (Player::GetArenaTeamIdFromDB(captain->GetGUID(), type) != 0)
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_SIZE, captain->GetName());
            return false;
        }

        ArenaTeam* arena = new ArenaTeam();

        if (!arena->Create(captain->GetGUID(), type, name, 4293102085, 101, 4293253939, 4, 4284049911))
        {
            delete arena;
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        sArenaTeamMgr->AddArenaTeam(arena);
        handler->PSendSysMessage(LANG_ARENA_CREATE, arena->GetName(), arena->GetId(), arena->GetType(), arena->GetCaptain().ToString());

        return true;
    }

    static bool HandleArenaDisbandCommand(ChatHandler* handler, uint32 teamId)
    {
        ArenaTeam* arena = sArenaTeamMgr->GetArenaTeamById(teamId);

        if (!arena)
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_NOT_FOUND, teamId);
            return false;
        }

        if (arena->IsFighting())
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_COMBAT);
            return false;
        }

        std::string name = arena->GetName();
        arena->Disband();

        delete(arena);

        handler->PSendSysMessage(LANG_ARENA_DISBAND, name, teamId);
        return true;
    }

    static bool HandleArenaRenameCommand(ChatHandler* handler, QuotedString oldName, QuotedString newName)
    {
        ArenaTeam* arena = sArenaTeamMgr->GetArenaTeamByName(oldName);
        if (!arena)
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_NAME_NOT_FOUND, oldName);
            return false;
        }

        if (sArenaTeamMgr->GetArenaTeamByName(newName))
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_NAME_EXISTS, oldName);
            return false;
        }

        if (arena->IsFighting())
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_COMBAT);
            return false;
        }

        if (!arena->SetName(newName))
        {
            handler->SendErrorMessage(LANG_BAD_VALUE);
            return false;
        }

        handler->PSendSysMessage(LANG_ARENA_RENAME, arena->GetId(), oldName, newName);

        return true;
    }

    static bool HandleArenaCaptainCommand(ChatHandler* handler, uint32 teamId, Optional<PlayerIdentifier> target)
    {
        ArenaTeam* arena = sArenaTeamMgr->GetArenaTeamById(teamId);
        if (!arena)
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_NOT_FOUND, teamId);
            return false;
        }

        if (arena->IsFighting())
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_COMBAT);
            return false;
        }

        if (!target)
            target = PlayerIdentifier::FromTargetOrSelf(handler);

        if (!target)
            return false;

        if (!arena->IsMember(target->GetGUID()))
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_NOT_MEMBER, target->GetName(), arena->GetName());
            return false;
        }

        if (arena->GetCaptain() == target->GetGUID())
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_CAPTAIN, target->GetName(), arena->GetName());
            return false;
        }

        std::string oldCaptainName;
        sCharacterCache->GetCharacterNameByGuid(arena->GetCaptain(), oldCaptainName);
        arena->SetCaptain(target->GetGUID());

        handler->PSendSysMessage(LANG_ARENA_CAPTAIN, arena->GetName(), arena->GetId(), oldCaptainName, target->GetName());

        return true;
    }

    static bool HandleArenaInfoCommand(ChatHandler* handler, uint32 teamId)
    {
        ArenaTeam* arena = sArenaTeamMgr->GetArenaTeamById(teamId);
        if (!arena)
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_NOT_FOUND, teamId);
            return false;
        }

        handler->PSendSysMessage(LANG_ARENA_INFO_HEADER, arena->GetName(), arena->GetId(), arena->GetRating(), arena->GetType(), arena->GetType());

        for (auto const& itr : arena->GetMembers())
            handler->PSendSysMessage(LANG_ARENA_INFO_MEMBERS, itr.Name, itr.Guid.GetCounter(), itr.PersonalRating, (arena->GetCaptain() == itr.Guid ? "队长" : ""));

        return true;
    }

    static bool HandleArenaLookupCommand(ChatHandler* handler, Tail needle)
    {
        if (needle.empty())
            return false;

        bool found = false;
        for (auto [teamId, team] : sArenaTeamMgr->GetArenaTeams())
        {
            if (StringContainsStringI(team->GetName(), needle))
            {
                handler->PSendSysMessage(LANG_ARENA_LOOKUP, team->GetName(), team->GetId(), team->GetType(), team->GetType());
                found = true;
                continue;
            }
        }

        if (!found)
        {
            handler->SendErrorMessage(LANG_ARENA_ERROR_NAME_NOT_FOUND, std::string(needle));
            return false;
        }

        return true;
    }

    static bool HandleArenaSeasonRewardCommand(ChatHandler* handler, std::string teamsFilterStr)
    {
        std::unique_ptr<ArenaTeamFilter> uniqueFilter = ArenaTeamFilterFactoryByUserInput().CreateFilterByUserInput(teamsFilterStr);
        if (!uniqueFilter)
        {
            handler->PSendSysMessage("过滤条件无效。请检查你的输入。");
            return false;
        }

        std::shared_ptr<ArenaTeamFilter> sharedFilter = std::move(uniqueFilter);

        if (!sArenaSeasonMgr->CanDeleteArenaTeams())
        {
            handler->PSendSysMessage("无法继续。请确保没有正在进行的竞技场，且当前赛季存在奖励。");
            handler->PSendSysMessage("提示：你可以使用以下命令关闭竞技场队列：.arena season set state 0");
            return false;
        }

        handler->PSendSysMessage("正在为竞技场队伍发放奖励（类型："+teamsFilterStr+")...");
        sArenaSeasonMgr->RewardTeamsForTheSeason(sharedFilter);
        handler->PSendSysMessage("奖励已发放。");
        return true;
    }

    static bool HandleArenaSeasonDeleteTeamsCommand(ChatHandler* handler)
    {
        handler->PSendSysMessage("正在删除竞技场队伍…");
        sArenaSeasonMgr->DeleteArenaTeams();
        handler->PSendSysMessage("竞技场队伍已删除。");
        return true;
    }

    static bool HandleArenaSeasonStartCommand(ChatHandler* handler, uint8 seasonId)
    {
        if (seasonId == sArenaSeasonMgr->GetCurrentSeason())
        {
            sArenaSeasonMgr->SetSeasonState(ARENA_SEASON_STATE_IN_PROGRESS);
            handler->PSendSysMessage("竞技场赛季已更新。");
            return true;
        }

        const uint8 maxSeasonId = 8;
        if (seasonId > maxSeasonId)
        {
            handler->PSendSysMessage("赛季 ID 无效。");
            return false;
        }

        sArenaSeasonMgr->ChangeCurrentSeason(seasonId);
        handler->PSendSysMessage("竞技场赛季已切换到第 {} 赛季。", seasonId);
        return true;
    }

    static bool HandleArenaSeasonSetStateCommand(ChatHandler* handler, uint8 state)
    {
        ArenaSeasonState seasonState;
        switch (state) {
            case ARENA_SEASON_STATE_DISABLED:
                seasonState = ARENA_SEASON_STATE_DISABLED;
                break;
            case ARENA_SEASON_STATE_IN_PROGRESS:
                seasonState = ARENA_SEASON_STATE_IN_PROGRESS;
                break;
            default:
                handler->PSendSysMessage("状态无效。");
                return false;
        }

        sArenaSeasonMgr->SetSeasonState(seasonState);
        handler->PSendSysMessage("竞技场赛季已更新。");
        return true;
    }

};

void AddSC_arena_commandscript()
{
    new arena_commandscript();
}
