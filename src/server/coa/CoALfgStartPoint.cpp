/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "Chat.h"
#include "ChatCommand.h"
#include "CommandScript.h"
#include "DBCStores.h"
#include "DatabaseEnv.h"
#include "LFGMgr.h"
#include "Log.h"
#include "Player.h"
#include "WorldSession.h"

using namespace Acore::ChatCommands;

namespace
{
    std::string Escaped(std::string text)
    {
        WorldDatabase.EscapeString(text);
        return text;
    }

    void SuggestStartPoint(ChatHandler* handler, Player* player, LFGDungeonEntry const* dungeon)
    {
        WorldSession* session = handler->GetSession();
        std::string const name = dungeon->Name[0];
        WorldDatabase.Execute("REPLACE INTO coa_lfg_teleport_suggestion (dungeon_id, account_id, name, map_id, position_x, "
            "position_y, position_z, orientation, player, created) VALUES ({}, {}, '{}', {}, {}, {}, {}, {}, '{}', NOW())",
            dungeon->ID, session->GetAccountId(), Escaped(name), dungeon->MapID, player->GetPositionX(),
            player->GetPositionY(), player->GetPositionZ(), player->GetOrientation(), Escaped(player->GetName()));
        LOG_INFO("module", "LFG start point suggestion {} '{}' {} {} {} {} by {} (account {})", dungeon->ID, name,
            player->GetPositionX(), player->GetPositionY(), player->GetPositionZ(), player->GetOrientation(),
            player->GetName(), session->GetAccountId());
        handler->PSendSysMessage("谢谢！你记录的 {} 起点已作为建议保存。", name);
    }

    void ApplyStartPoint(ChatHandler* handler, Player* player, LFGDungeonEntry const* dungeon)
    {
        std::string const name = dungeon->Name[0];
        uint32 difficulties = 0;
        for (LFGDungeonEntry const* entry : sLFGDungeonStore)
        {
            if (!entry || entry->MapID != dungeon->MapID || name != entry->Name[0])
                continue;
            WorldDatabase.Execute("REPLACE INTO lfg_dungeon_template (dungeonId, name, position_x, position_y, position_z, "
                "orientation, VerifiedBuild) VALUES ({}, '{}', {}, {}, {}, {}, 0)", entry->ID, Escaped(name),
                player->GetPositionX(), player->GetPositionY(), player->GetPositionZ(), player->GetOrientation());
            LOG_INFO("module", "LFG start point {} '{}' {} {} {} {}", entry->ID, name, player->GetPositionX(),
                player->GetPositionY(), player->GetPositionZ(), player->GetOrientation());
            ++difficulties;
        }
        sLFGMgr->LoadLFGDungeons(true);
        handler->PSendSysMessage("地下城查找器：{} 现在从这里开始（{} 个难度）。", name, difficulties);
    }
}

class coa_lfg_start_point_commandscript : public CommandScript
{
public:
    coa_lfg_start_point_commandscript() : CommandScript("coa_lfg_start_point_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable mythicTable =
        {
            { "lfgpos", HandleLfgPos, SEC_PLAYER, Console::No },
        };
        static ChatCommandTable commandTable =
        {
            { "mythic", mythicTable },
        };
        return commandTable;
    }

    static bool HandleLfgPos(ChatHandler* handler, uint32 dungeonId)
    {
        Player* player = handler->GetPlayer();
        LFGDungeonEntry const* dungeon = sLFGDungeonStore.LookupEntry(dungeonId);
        if (!player || !dungeon)
        {
            handler->SendErrorMessage("未知的地下城查找器 ID {}。", dungeonId);
            return false;
        }
        if (player->GetMapId() != dungeon->MapID)
        {
            handler->SendErrorMessage("{} 位于地图 {}，你当前在地图 {}。", dungeon->Name[0], dungeon->MapID,
                player->GetMapId());
            return false;
        }

        if (handler->GetSession()->GetSecurity() < SEC_GAMEMASTER)
            SuggestStartPoint(handler, player, dungeon);
        else
            ApplyStartPoint(handler, player, dungeon);
        return true;
    }
};

void AddSC_CoALfgStartPoint()
{
    new coa_lfg_start_point_commandscript();
}
