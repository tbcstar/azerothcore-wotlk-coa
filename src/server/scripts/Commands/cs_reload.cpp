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

#include "AccountMgr.h"
#include "AchievementMgr.h"
#include "AuctionHouseMgr.h"
#include "AutobroadcastMgr.h"
#include "BattlegroundMgr.h"
#include "Chat.h"
#include "CommandScript.h"
#include "CreatureTextMgr.h"
#include "DisableMgr.h"
#include "GameGraveyard.h"
#include "ItemEnchantmentMgr.h"
#include "LFGMgr.h"
#include "Language.h"
#include "MapMgr.h"
#include "MotdMgr.h"
#include "ObjectMgr.h"
#include "PoolMgr.h"
#include "RBAC.h"
#include "ScriptMgr.h"
#include "ServerMailMgr.h"
#include "SkillDiscovery.h"
#include "SkillExtraItems.h"
#include "SmartAI.h"
#include "SpellMgr.h"
#include "StringConvert.h"
#include "TicketMgr.h"
#include "Tokenize.h"
#include "WardenCheckMgr.h"
#include "WaypointMgr.h"
#include "WorldGlobals.h"

using namespace Acore::ChatCommands;

class reload_commandscript : public CommandScript
{
public:
    reload_commandscript() : CommandScript("reload_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable reloadAllCommandTable =
        {
            { "achievement",                   HandleReloadAllAchievementCommand,             rbac::RBAC_PERM_COMMAND_RELOAD_ALL_ACHIEVEMENT, Console::Yes },
            { "area",                          HandleReloadAllAreaCommand,                    rbac::RBAC_PERM_COMMAND_RELOAD_ALL_AREA, Console::Yes },
            { "gossips",                       HandleReloadAllGossipsCommand,                 rbac::RBAC_PERM_COMMAND_RELOAD_ALL_GOSSIP, Console::Yes },
            { "item",                          HandleReloadAllItemCommand,                    rbac::RBAC_PERM_COMMAND_RELOAD_ALL_ITEM, Console::Yes },
            { "locales",                       HandleReloadAllLocalesCommand,                 rbac::RBAC_PERM_COMMAND_RELOAD_ALL_LOCALES, Console::Yes },
            { "loot",                          HandleReloadAllLootCommand,                    rbac::RBAC_PERM_COMMAND_RELOAD_ALL_LOOT, Console::Yes },
            { "npc",                           HandleReloadAllNpcCommand,                     rbac::RBAC_PERM_COMMAND_RELOAD_ALL_NPC, Console::Yes },
            { "quest",                         HandleReloadAllQuestCommand,                   rbac::RBAC_PERM_COMMAND_RELOAD_ALL_QUEST, Console::Yes },
            { "scripts",                       HandleReloadAllScriptsCommand,                 rbac::RBAC_PERM_COMMAND_RELOAD_ALL_SCRIPTS, Console::Yes },
            { "spell",                         HandleReloadAllSpellCommand,                   rbac::RBAC_PERM_COMMAND_RELOAD_ALL_SPELL, Console::Yes },
            { "",                              HandleReloadAllCommand,                        rbac::RBAC_PERM_COMMAND_RELOAD_ALL, Console::Yes },
        };
        static ChatCommandTable reloadCommandTable =
        {
            { "antidos_opcode_policies",       HandleReloadAntiDosOpcodePoliciesCommand,      rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "auctions",                      HandleReloadAuctionsCommand,                   rbac::RBAC_PERM_COMMAND_RELOAD_AUCTIONS, Console::Yes },
            { "dungeon_access_template",       HandleReloadDungeonAccessCommand,              rbac::RBAC_PERM_COMMAND_RELOAD_ACCESS_REQUIREMENT, Console::Yes },
            { "dungeon_access_requirements",   HandleReloadDungeonAccessCommand,              rbac::RBAC_PERM_COMMAND_RELOAD_ACCESS_REQUIREMENT, Console::Yes },
            { "achievement_criteria_data",     HandleReloadAchievementCriteriaDataCommand,    rbac::RBAC_PERM_COMMAND_RELOAD_ACHIEVEMENT_CRITERIA_DATA, Console::Yes },
            { "achievement_reward",            HandleReloadAchievementRewardCommand,          rbac::RBAC_PERM_COMMAND_RELOAD_ACHIEVEMENT_REWARD, Console::Yes },
            { "all", reloadAllCommandTable },
            { "areatrigger",                   HandleReloadQuestAreaTriggersCommand,          rbac::RBAC_PERM_COMMAND_RELOAD_AREATRIGGER_INVOLVEDRELATION, Console::Yes },
            { "areatrigger_involvedrelation",  HandleReloadQuestAreaTriggersCommand,          rbac::RBAC_PERM_COMMAND_RELOAD_AREATRIGGER_INVOLVEDRELATION, Console::Yes },
            { "areatrigger_tavern",            HandleReloadAreaTriggerTavernCommand,          rbac::RBAC_PERM_COMMAND_RELOAD_AREATRIGGER_TAVERN, Console::Yes },
            { "areatrigger_teleport",          HandleReloadAreaTriggerTeleportCommand,        rbac::RBAC_PERM_COMMAND_RELOAD_AREATRIGGER_TELEPORT, Console::Yes },
            { "autobroadcast",                 HandleReloadAutobroadcastCommand,              rbac::RBAC_PERM_COMMAND_RELOAD_AUTOBROADCAST, Console::Yes },
            { "motd",                          HandleReloadMotdCommand,                       rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "broadcast_text",                HandleReloadBroadcastTextCommand,              rbac::RBAC_PERM_COMMAND_RELOAD_BROADCAST_TEXT, Console::Yes },
            { "battleground_template",         HandleReloadBattlegroundTemplate,              rbac::RBAC_PERM_COMMAND_RELOAD_BATTLEGROUND_TEMPLATE, Console::Yes },
            { "command",                       HandleReloadCommandCommand,                    rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "conditions",                    HandleReloadConditions,                        rbac::RBAC_PERM_COMMAND_RELOAD_CONDITIONS, Console::Yes },
            { "config",                        HandleReloadConfigCommand,                     rbac::RBAC_PERM_COMMAND_RELOAD_CONFIG, Console::Yes },
            { "creature_text",                 HandleReloadCreatureText,                      rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_TEXT, Console::Yes },
            { "creature_questender",           HandleReloadCreatureQuestEnderCommand,         rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_QUESTENDER, Console::Yes },
            { "creature_linked_respawn",       HandleReloadLinkedRespawnCommand,              rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_LINKED_RESPAWN, Console::Yes },
            { "creature_loot_template",        HandleReloadLootTemplatesCreatureCommand,      rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_LOOT_TEMPLATE, Console::Yes },
            { "creature_movement_override",     HandleReloadCreatureMovementOverrideCommand,    rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_MOVEMENT_OVERRIDE, Console::Yes},
            { "creature_onkill_reputation",     HandleReloadOnKillReputationCommand,           rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_ONKILL_REPUTATION, Console::Yes },
            { "creature_queststarter",         HandleReloadCreatureQuestStarterCommand,       rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_QUESTSTARTER, Console::Yes },
            { "creature_template",             HandleReloadCreatureTemplateCommand,           rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_TEMPLATE, Console::Yes },
            { "disables",                      HandleReloadDisablesCommand,                   rbac::RBAC_PERM_COMMAND_RELOAD_DISABLES, Console::Yes },
            { "disenchant_loot_template",      HandleReloadLootTemplatesDisenchantCommand,    rbac::RBAC_PERM_COMMAND_RELOAD_DISENCHANT_LOOT_TEMPLATE, Console::Yes },
            { "event_scripts",                 HandleReloadEventScriptsCommand,               rbac::RBAC_PERM_COMMAND_RELOAD_EVENT_SCRIPTS, Console::Yes },
            { "fishing_loot_template",         HandleReloadLootTemplatesFishingCommand,       rbac::RBAC_PERM_COMMAND_RELOAD_FISHING_LOOT_TEMPLATE, Console::Yes },
            { "game_graveyard",                HandleReloadGameGraveyardCommand,              rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "graveyard_zone",                HandleReloadGameGraveyardZoneCommand,          rbac::RBAC_PERM_COMMAND_RELOAD_GRAVEYARD_ZONE, Console::Yes },
            { "game_tele",                     HandleReloadGameTeleCommand,                   rbac::RBAC_PERM_COMMAND_RELOAD_GAME_TELE, Console::Yes },
            { "gameobject_questender",         HandleReloadGOQuestEnderCommand,               rbac::RBAC_PERM_COMMAND_RELOAD_GAMEOBJECT_QUESTENDER, Console::Yes },
            { "gameobject_loot_template",      HandleReloadLootTemplatesGameobjectCommand,    rbac::RBAC_PERM_COMMAND_RELOAD_GAMEOBJECT_QUEST_LOOT_TEMPLATE, Console::Yes },
            { "gameobject_queststarter",       HandleReloadGOQuestStarterCommand,             rbac::RBAC_PERM_COMMAND_RELOAD_GAMEOBJECT_QUESTSTARTER, Console::Yes },
            { "gm_tickets",                    HandleReloadGMTicketsCommand,                  rbac::RBAC_PERM_COMMAND_RELOAD_GM_TICKETS, Console::Yes },
            { "gossip_menu",                   HandleReloadGossipMenuCommand,                 rbac::RBAC_PERM_COMMAND_RELOAD_GOSSIP_MENU, Console::Yes },
            { "gossip_menu_option",            HandleReloadGossipMenuOptionCommand,           rbac::RBAC_PERM_COMMAND_RELOAD_GOSSIP_MENU_OPTION, Console::Yes },
            { "item_enchantment_template",     HandleReloadItemEnchantementsCommand,          rbac::RBAC_PERM_COMMAND_RELOAD_ITEM_ENCHANTMENT_TEMPLATE, Console::Yes },
            { "item_loot_template",            HandleReloadLootTemplatesItemCommand,          rbac::RBAC_PERM_COMMAND_RELOAD_ITEM_LOOT_TEMPLATE, Console::Yes },
            { "item_set_names",                HandleReloadItemSetNamesCommand,               rbac::RBAC_PERM_COMMAND_RELOAD_ITEM_SET_NAMES, Console::Yes },
            { "lfg_dungeon_rewards",           HandleReloadLfgRewardsCommand,                 rbac::RBAC_PERM_COMMAND_RELOAD_LFG_DUNGEON_REWARDS, Console::Yes },
            { "achievement_reward_locale",     HandleReloadLocalesAchievementRewardCommand,   rbac::RBAC_PERM_COMMAND_RELOAD_ACHIEVEMENT_REWARD_LOCALE, Console::Yes },
            { "creature_template_locale",      HandleReloadLocalesCreatureCommand,            rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_TEMPLATE_LOCALE, Console::Yes },
            { "creature_text_locale",          HandleReloadLocalesCreatureTextCommand,        rbac::RBAC_PERM_COMMAND_RELOAD_CREATURE_TEXT_LOCALE, Console::Yes },
            { "gameobject_template_locale",    HandleReloadLocalesGameobjectCommand,          rbac::RBAC_PERM_COMMAND_RELOAD_GAMEOBJECT_TEMPLATE_LOCALE, Console::Yes },
            { "gossip_menu_option_locale",     HandleReloadLocalesGossipMenuOptionCommand,    rbac::RBAC_PERM_COMMAND_RELOAD_GOSSIP_MENU_OPTION_LOCALE, Console::Yes },
            { "item_template_locale",          HandleReloadLocalesItemCommand,                rbac::RBAC_PERM_COMMAND_RELOAD_ITEM_TEMPLATE_LOCALE, Console::Yes },
            { "item_set_name_locale",          HandleReloadLocalesItemSetNameCommand,         rbac::RBAC_PERM_COMMAND_RELOAD_ITEM_SET_NAME_LOCALE, Console::Yes },
            { "npc_text_locale",               HandleReloadLocalesNpcTextCommand,             rbac::RBAC_PERM_COMMAND_RELOAD_NPC_TEXT_LOCALE, Console::Yes },
            { "page_text_locale",              HandleReloadLocalesPageTextCommand,            rbac::RBAC_PERM_COMMAND_RELOAD_PAGE_TEXT_LOCALE, Console::Yes },
            { "points_of_interest_locale",     HandleReloadLocalesPointsOfInterestCommand,    rbac::RBAC_PERM_COMMAND_RELOAD_POINTS_OF_INTEREST_LOCALE, Console::Yes },
            { "quest_template_locale",         HandleReloadLocalesQuestCommand,               rbac::RBAC_PERM_COMMAND_RELOAD_QUEST_TEMPLATE_LOCALE, Console::Yes },
            { "quest_offer_reward_locale",     HandleReloadLocalesQuestOfferRewardCommand,    rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "quest_request_item_locale",     HandleReloadLocalesQuestRequestItemsCommand,   rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "mail_level_reward",             HandleReloadMailLevelRewardCommand,            rbac::RBAC_PERM_COMMAND_RELOAD_MAIL_LEVEL_REWARD, Console::Yes },
            { "mail_loot_template",            HandleReloadLootTemplatesMailCommand,          rbac::RBAC_PERM_COMMAND_RELOAD_MAIL_LOOT_TEMPLATE, Console::Yes },
            { "mail_server_template",          HandleReloadMailServerTemplateCommand,         rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "milling_loot_template",         HandleReloadLootTemplatesMillingCommand,       rbac::RBAC_PERM_COMMAND_RELOAD_MILLING_LOOT_TEMPLATE, Console::Yes },
            { "npc_spellclick_spells",         HandleReloadSpellClickSpellsCommand,           rbac::RBAC_PERM_COMMAND_RELOAD_NPC_SPELLCLICK_SPELLS, Console::Yes },
            { "trainer",                       HandleReloadTrainerCommand,                    rbac::RBAC_PERM_COMMAND_RELOAD_TRAINER, Console::Yes },
            { "npc_vendor",                    HandleReloadNpcVendorCommand,                  rbac::RBAC_PERM_COMMAND_RELOAD_NPC_VENDOR, Console::Yes },
            { "game_event_npc_vendor",         HandleReloadGameEventNPCVendorCommand,         rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "page_text",                     HandleReloadPageTextsCommand,                  rbac::RBAC_PERM_COMMAND_RELOAD_PAGE_TEXT, Console::Yes },
            { "pickpocketing_loot_template",   HandleReloadLootTemplatesPickpocketingCommand, rbac::RBAC_PERM_COMMAND_RELOAD_PICKPOCKETING_LOOT_TEMPLATE, Console::Yes },
            { "points_of_interest",            HandleReloadPointsOfInterestCommand,           rbac::RBAC_PERM_COMMAND_RELOAD_POINTS_OF_INTEREST, Console::Yes },
            { "prospecting_loot_template",     HandleReloadLootTemplatesProspectingCommand,   rbac::RBAC_PERM_COMMAND_RELOAD_PROSPECTING_LOOT_TEMPLATE, Console::Yes },
            { "quest_greeting",                HandleReloadQuestGreetingCommand,              rbac::RBAC_PERM_COMMAND_RELOAD_QUEST_GREETING, Console::Yes },
            { "quest_poi",                     HandleReloadQuestPOICommand,                   rbac::RBAC_PERM_COMMAND_RELOAD_QUEST_POI, Console::Yes },
            { "quest_template",                HandleReloadQuestTemplateCommand,              rbac::RBAC_PERM_COMMAND_RELOAD_QUEST_TEMPLATE, Console::Yes },
            { "rbac",                          HandleReloadRBACCommand,                       rbac::RBAC_PERM_COMMAND_RELOAD_RBAC, Console::Yes },
            { "reference_loot_template",       HandleReloadLootTemplatesReferenceCommand,     rbac::RBAC_PERM_COMMAND_RELOAD_REFERENCE_LOOT_TEMPLATE, Console::Yes },
            { "reserved_name",                 HandleReloadReservedNameCommand,               rbac::RBAC_PERM_COMMAND_RELOAD_RESERVED_NAME, Console::Yes },
            { "profanity_name",                HandleReloadProfanityNameCommand,              rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "chat_filter",                   HandleReloadChatFilterCommand,                 rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "reputation_reward_rate",        HandleReloadReputationRewardRateCommand,       rbac::RBAC_PERM_COMMAND_RELOAD_REPUTATION_REWARD_RATE, Console::Yes },
            { "reputation_spillover_template", HandleReloadReputationRewardRateCommand,       rbac::RBAC_PERM_COMMAND_RELOAD_SPILLOVER_TEMPLATE, Console::Yes },
            { "skill_discovery_template",      HandleReloadSkillDiscoveryTemplateCommand,     rbac::RBAC_PERM_COMMAND_RELOAD_SKILL_DISCOVERY_TEMPLATE, Console::Yes },
            { "skill_extra_item_template",     HandleReloadSkillExtraItemTemplateCommand,     rbac::RBAC_PERM_COMMAND_RELOAD_SKILL_EXTRA_ITEM_TEMPLATE, Console::Yes },
            { "skill_fishing_base_level",      HandleReloadSkillFishingBaseLevelCommand,      rbac::RBAC_PERM_COMMAND_RELOAD_SKILL_FISHING_BASE_LEVEL, Console::Yes },
            { "skinning_loot_template",        HandleReloadLootTemplatesSkinningCommand,      rbac::RBAC_PERM_COMMAND_RELOAD_SKINNING_LOOT_TEMPLATE, Console::Yes },
            { "smart_scripts",                 HandleReloadSmartScripts,                      rbac::RBAC_PERM_COMMAND_RELOAD_SMART_SCRIPTS, Console::Yes },
            { "spawn_group",                   HandleReloadSpawnGroupCommand,                 rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "spell_required",                HandleReloadSpellRequiredCommand,              rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_REQUIRED, Console::Yes },
            { "spell_area",                    HandleReloadSpellAreaCommand,                  rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_AREA, Console::Yes },
            { "spell_bonus_data",              HandleReloadSpellBonusesCommand,               rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_BONUS_DATA, Console::Yes },
            { "spell_group",                   HandleReloadSpellGroupsCommand,                rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_GROUP, Console::Yes },
            { "spell_loot_template",           HandleReloadLootTemplatesSpellCommand,         rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_LOOT_TEMPLATE, Console::Yes },
            { "spell_linked_spell",            HandleReloadSpellLinkedSpellCommand,           rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_LINKED_SPELL, Console::Yes },
            { "spell_pet_auras",               HandleReloadSpellPetAurasCommand,              rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_PET_AURAS, Console::Yes },
            { "spell_proc",                    HandleReloadSpellProcsCommand,                 rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_PROC, Console::Yes },
            { "spell_scripts",                 HandleReloadSpellScriptsCommand,               rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "spell_target_position",         HandleReloadSpellTargetPositionCommand,        rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_TARGET_POSITION, Console::Yes },
            { "spell_cone",                    HandleReloadSpellConeCommand,                  rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_TARGET_POSITION, Console::Yes },
            { "spell_threats",                 HandleReloadSpellThreatsCommand,               rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_THREATS, Console::Yes },
            { "spell_group_stack_rules",       HandleReloadSpellGroupStackRulesCommand,       rbac::RBAC_PERM_COMMAND_RELOAD_SPELL_GROUP_STACK_RULES, Console::Yes },
            { "player_loot_template",          HandleReloadLootTemplatesPlayerCommand,        rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "module_string",                 HandleReloadModuleStringCommand,               rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "acore_string",                  HandleReloadAcoreStringCommand,                rbac::RBAC_PERM_COMMAND_RELOAD_ACORE_STRING, Console::Yes },
            { "warden_action",                 HandleReloadWardenactionCommand,               rbac::RBAC_PERM_COMMAND_RELOAD, Console::Yes },
            { "waypoint_scripts",              HandleReloadWpScriptsCommand,                  rbac::RBAC_PERM_COMMAND_RELOAD_WAYPOINT_SCRIPTS, Console::Yes },
            { "waypoint_data",                 HandleReloadWpCommand,                         rbac::RBAC_PERM_COMMAND_RELOAD_WAYPOINT_DATA, Console::Yes },
            { "vehicle_accessory",             HandleReloadVehicleAccessoryCommand,           rbac::RBAC_PERM_COMMAND_RELOAD_VEHICLE_ACCESSORY, Console::Yes },
            { "vehicle_template_accessory",    HandleReloadVehicleTemplateAccessoryCommand,   rbac::RBAC_PERM_COMMAND_RELOAD_VEHICLE_TEMPLATE_ACCESSORY, Console::Yes },
        };
        static ChatCommandTable commandTable =
        {
            { "reload", reloadCommandTable }
        };
        return commandTable;
    }

    //reload commands
    static bool HandleReloadGMTicketsCommand(ChatHandler* /*handler*/)
    {
        sTicketMgr->LoadTickets();
        return true;
    }

    static bool HandleReloadAllCommand(ChatHandler* handler)
    {
        HandleReloadSkillFishingBaseLevelCommand(handler);

        HandleReloadAllAchievementCommand(handler);
        HandleReloadAllAreaCommand(handler);
        HandleReloadAllLootCommand(handler);
        HandleReloadAllNpcCommand(handler);
        HandleReloadAllQuestCommand(handler);
        HandleReloadAllSpellCommand(handler);
        HandleReloadAllItemCommand(handler);
        HandleReloadAllGossipsCommand(handler);
        HandleReloadAllLocalesCommand(handler);

        HandleReloadDungeonAccessCommand(handler);
        HandleReloadMailLevelRewardCommand(handler);
        HandleReloadMailServerTemplateCommand(handler);
        HandleReloadCommandCommand(handler);
        HandleReloadReservedNameCommand(handler);
        HandleReloadProfanityNameCommand(handler);
        HandleReloadChatFilterCommand(handler);
        HandleReloadAcoreStringCommand(handler);
        HandleReloadGameTeleCommand(handler);
        HandleReloadCreatureMovementOverrideCommand(handler);

        HandleReloadVehicleAccessoryCommand(handler);
        HandleReloadVehicleTemplateAccessoryCommand(handler);

        HandleReloadAutobroadcastCommand(handler);
        HandleReloadMotdCommand(handler);
        HandleReloadBroadcastTextCommand(handler);
        HandleReloadBattlegroundTemplate(handler);
        return true;
    }

    static bool HandleReloadBattlegroundTemplate(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载战场模板…");
        sBattlegroundMgr->LoadBattlegroundTemplates();
        handler->SendGlobalGMSysMessage("数据库表 `battleground_template` 已重新加载。");
        return true;
    }

    static bool HandleReloadAllAchievementCommand(ChatHandler* handler)
    {
        HandleReloadAchievementCriteriaDataCommand(handler);
        HandleReloadAchievementRewardCommand(handler);
        return true;
    }

    static bool HandleReloadAllAreaCommand(ChatHandler* handler)
    {
        //HandleReloadQuestAreaTriggersCommand(handler); -- reloaded in HandleReloadAllQuestCommand
        HandleReloadAreaTriggerTeleportCommand(handler);
        HandleReloadAreaTriggerTavernCommand(handler);
        HandleReloadGameGraveyardZoneCommand(handler);
        return true;
    }

    static bool HandleReloadAllLootCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表…");
        LoadLootTables();
        handler->SendGlobalGMSysMessage("数据库表 `*_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadAllNpcCommand(ChatHandler* handler)
    {
        HandleReloadTrainerCommand(handler);
        HandleReloadNpcVendorCommand(handler);
        HandleReloadPointsOfInterestCommand(handler);
        HandleReloadSpellClickSpellsCommand(handler);
        return true;
    }

    static bool HandleReloadAllQuestCommand(ChatHandler* handler)
    {
        HandleReloadQuestGreetingCommand(handler);
        HandleReloadQuestAreaTriggersCommand(handler);
        HandleReloadQuestPOICommand(handler);
        HandleReloadQuestTemplateCommand(handler);

        LOG_INFO("server.loading", "正在重新加载任务关联…");
        sObjectMgr->LoadQuestStartersAndEnders();
        sPoolMgr->ReSpawnPoolQuests();
        handler->SendGlobalGMSysMessage("数据库表 `*_queststarter` 与 `*_questender` 已重新加载。");
        return true;
    }

    static bool HandleReloadAllScriptsCommand(ChatHandler* handler)
    {
        if (sScriptMgr->IsScriptScheduled())
        {
            handler->SendErrorMessage("当前有数据库脚本正在使用，请稍后再尝试重新加载。");
            return false;
        }

        LOG_INFO("server.loading", "正在重新加载脚本…");
        HandleReloadEventScriptsCommand(handler);
        HandleReloadSpellScriptsCommand(handler);
        handler->SendGlobalGMSysMessage("数据库表 `*_scripts` 已重新加载。");
        HandleReloadWpScriptsCommand(handler);
        HandleReloadWpCommand(handler);
        return true;
    }

    static bool HandleReloadAllSpellCommand(ChatHandler* handler)
    {
        HandleReloadSkillDiscoveryTemplateCommand(handler);
        HandleReloadSkillExtraItemTemplateCommand(handler);
        HandleReloadSpellRequiredCommand(handler);
        HandleReloadSpellAreaCommand(handler);
        HandleReloadSpellGroupsCommand(handler);
        HandleReloadSpellLinkedSpellCommand(handler);
        HandleReloadSpellProcsCommand(handler);
        HandleReloadSpellBonusesCommand(handler);
        HandleReloadSpellTargetPositionCommand(handler);
        HandleReloadSpellThreatsCommand(handler);
        HandleReloadSpellGroupStackRulesCommand(handler);
        HandleReloadSpellPetAurasCommand(handler);
        return true;
    }

    static bool HandleReloadAllGossipsCommand(ChatHandler* handler)
    {
        HandleReloadGossipMenuCommand(handler);
        HandleReloadGossipMenuOptionCommand(handler);
        HandleReloadPointsOfInterestCommand(handler);
        return true;
    }

    static bool HandleReloadAllItemCommand(ChatHandler* handler)
    {
        HandleReloadPageTextsCommand(handler);
        HandleReloadItemEnchantementsCommand(handler);
        return true;
    }

    static bool HandleReloadAllLocalesCommand(ChatHandler* handler)
    {
        HandleReloadLocalesAchievementRewardCommand(handler);
        HandleReloadLocalesCreatureCommand(handler);
        HandleReloadLocalesCreatureTextCommand(handler);
        HandleReloadLocalesGameobjectCommand(handler);
        HandleReloadLocalesGossipMenuOptionCommand(handler);
        HandleReloadLocalesItemCommand(handler);
        HandleReloadLocalesNpcTextCommand(handler);
        HandleReloadLocalesPageTextCommand(handler);
        HandleReloadLocalesPointsOfInterestCommand(handler);
        HandleReloadLocalesQuestCommand(handler);
        HandleReloadLocalesQuestOfferRewardCommand(handler);
        HandleReloadLocalesQuestRequestItemsCommand(handler);
        return true;
    }

    static bool HandleReloadConfigCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载配置设置…");
        sWorld->LoadConfigSettings(true);
        sMapMgr->InitializeVisibilityDistanceInfo();
        handler->SendGlobalGMSysMessage("世界配置设置已重新加载。");
        return true;
    }

    static bool HandleReloadDungeonAccessCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载副本准入需求定义…");
        sObjectMgr->LoadAccessRequirements();
        handler->SendGlobalGMSysMessage("数据库表 `dungeon_access_template` 与 `dungeon_access_requirements` 已重新加载。");
        return true;
    }

    static bool HandleReloadAchievementCriteriaDataCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载额外成就条件数据…");
        sAchievementMgr->LoadAchievementCriteriaData();
        handler->SendGlobalGMSysMessage("数据库表 `achievement_criteria_data` 已重新加载。");
        return true;
    }

    static bool HandleReloadAchievementRewardCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载成就奖励数据…");
        sAchievementMgr->LoadRewards();
        handler->SendGlobalGMSysMessage("数据库表 `achievement_reward` 已重新加载。");
        return true;
    }

    static bool HandleReloadAreaTriggerTavernCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载旅店区域触发器…");
        sObjectMgr->LoadTavernAreaTriggers();
        handler->SendGlobalGMSysMessage("数据库表 `areatrigger_tavern` 已重新加载。");
        return true;
    }

    static bool HandleReloadAreaTriggerCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载区域触发器定义…");
        sObjectMgr->LoadAreaTriggers();
        handler->SendGlobalGMSysMessage("数据库表 `areatrigger` 已重新加载。");
        return true;
    }

    static bool HandleReloadAreaTriggerTeleportCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载区域触发器传送定义…");
        sObjectMgr->LoadAreaTriggerTeleports();
        handler->SendGlobalGMSysMessage("数据库表 `areatrigger_teleport` 已重新加载。");
        return true;
    }

    static bool HandleReloadAutobroadcastCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载自动广播…");
        sAutobroadcastMgr->LoadAutobroadcasts();
        handler->SendGlobalGMSysMessage("数据库表 `autobroadcast` 已重新加载。");
        return true;
    }

    static bool HandleReloadMotdCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载每日消息…");
        sMotdMgr->LoadMotd();
        handler->SendGlobalGMSysMessage("数据库表 `motd` 已重新加载。");
        LocaleConstant locale = DEFAULT_LOCALE;

        if (Player* player = handler->GetPlayer())
            locale = player->GetSession()->GetSessionDbLocaleIndex();

        handler->SendGlobalSysMessage(sMotdMgr->GetMotd(locale));
        return true;
    }

    static bool HandleReloadBroadcastTextCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载广播文本…");
        sObjectMgr->LoadBroadcastTexts();
        sObjectMgr->LoadBroadcastTextLocales();
        handler->SendGlobalGMSysMessage("数据库表 `broadcast_text` 已重新加载。");
        return true;
    }

    static bool HandleReloadCommandCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载.command 信息…");
        Acore::ChatCommands::LoadCommandMap();
        handler->SendGlobalGMSysMessage("数据库表 `command` 已重新加载。");

        // do not log this invocation, otherwise we might crash (the command table we used to get here is no longer valid!)
        handler->SetSentErrorMessage(true);
        return false;
    }

    static bool HandleReloadOnKillReputationCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载生物击杀声望奖励定义…");
        sObjectMgr->LoadReputationOnKill();
        handler->SendGlobalGMSysMessage("数据库表 `creature_onkill_reputation` 已重新加载。");
        return true;
    }

    static bool HandleReloadCreatureTemplateCommand(ChatHandler* handler, std::string_view args)
    {
        if (args.empty())
            return false;

        for (std::string_view entryStr : Acore::Tokenize(args, ' ', false))
        {
            uint32 entry = Acore::StringTo<uint32>(entryStr).value_or(0);

            WorldDatabasePreparedStatement* stmt = WorldDatabase.GetPreparedStatement(WORLD_SEL_CREATURE_TEMPLATE);
            stmt->SetData(0, entry);
            PreparedQueryResult result = WorldDatabase.Query(stmt);

            if (!result)
            {
                handler->PSendSysMessage(LANG_COMMAND_CREATURETEMPLATE_NOTFOUND, entry);
                continue;
            }

            CreatureTemplate* cInfo = const_cast<CreatureTemplate*>(sObjectMgr->GetCreatureTemplate(entry));
            if (!cInfo)
            {
                handler->PSendSysMessage(LANG_COMMAND_CREATURESTORAGE_NOTFOUND, entry);
                continue;
            }

            LOG_INFO("server.loading", "正在重新加载生物模板条目 {}", entry);

            Field* fields = result->Fetch();

            sObjectMgr->LoadCreatureTemplate(fields, true);
            sObjectMgr->CheckCreatureTemplate(cInfo);
        }

        handler->SendGlobalGMSysMessage("Creature template 已重新加载。");
        return true;
    }

    static bool HandleReloadCreatureQuestStarterCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在加载任务关联（`creature_queststarter`）…");
        sObjectMgr->LoadCreatureQuestStarters();
        sPoolMgr->ReSpawnPoolQuests();
        handler->SendGlobalGMSysMessage("数据库表 `creature_queststarter` 已重新加载。");
        return true;
    }

    static bool HandleReloadLinkedRespawnCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在加载关联重生（`creature_linked_respawn`）…");
        sObjectMgr->LoadLinkedRespawn();
        handler->SendGlobalGMSysMessage("数据库表 `creature_linked_respawn` （生物关联重生） 已重新加载。");
        return true;
    }

    static bool HandleReloadCreatureQuestEnderCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在加载任务关联（`creature_questender`）…");
        sObjectMgr->LoadCreatureQuestEnders();
        handler->SendGlobalGMSysMessage("数据库表 `creature_questender` 已重新加载。");
        return true;
    }

    static bool HandleReloadGossipMenuCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`gossip_menu` 表…");
        sObjectMgr->LoadGossipMenu();
        handler->SendGlobalGMSysMessage("数据库表 `gossip_menu` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadGossipMenuOptionCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`gossip_menu_option` 表…");
        sObjectMgr->LoadGossipMenuItems();
        handler->SendGlobalGMSysMessage("数据库表 `gossip_menu_option` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadGOQuestStarterCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在加载任务关联（`gameobject_queststarter`）…");
        sObjectMgr->LoadGameobjectQuestStarters();
        sPoolMgr->ReSpawnPoolQuests();
        handler->SendGlobalGMSysMessage("数据库表 `gameobject_queststarter` 已重新加载。");
        return true;
    }

    static bool HandleReloadGOQuestEnderCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在加载任务关联（`gameobject_questender`）…");
        sObjectMgr->LoadGameobjectQuestEnders();
        handler->SendGlobalGMSysMessage("数据库表 `gameobject_questender` 已重新加载。");
        return true;
    }

    static bool HandleReloadQuestAreaTriggersCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载任务区域触发器…");
        sObjectMgr->LoadQuestAreaTriggers();
        handler->SendGlobalGMSysMessage("数据库表 `areatrigger_involvedrelation` （任务区域触发器） 已重新加载。");
        return true;
    }

    static bool HandleReloadQuestGreetingCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载任务问候语…");
        sObjectMgr->LoadQuestGreetings();
        handler->SendGlobalGMSysMessage("数据库表 `quest_greeting` 已重新加载。");
        LOG_INFO("server.loading", "正在重新加载任务问候语本地化…");
        sObjectMgr->LoadQuestGreetingsLocales(); // Must be after LoadQuestGreetings()
        handler->SendGlobalGMSysMessage("数据库表 `quest_greeting_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadQuestTemplateCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载任务模板…");
        sObjectMgr->LoadQuests();
        handler->SendGlobalGMSysMessage("数据库表 `quest_template` （任务定义） 已重新加载。");

        /// dependent also from `gameobject` but this table not reloaded anyway
        LOG_INFO("server.loading", "正在重新加载任务游戏对象…");
        sObjectMgr->LoadGameObjectForQuests();
        handler->SendGlobalGMSysMessage("任务相关的游戏对象数据已重新加载。");
        return true;
    }

    static bool HandleReloadRBACCommand(ChatHandler* handler)
    {
        LOG_INFO("rbac", "正在重新加载RBAC 表…");
        sAccountMgr->LoadRBAC();
        sWorld->ReloadRBAC();
        handler->SendGlobalGMSysMessage("RBAC 数据已重新加载。");
        return true;
    }

    static bool HandleReloadLootTemplatesCreatureCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`creature_loot_template`）…");
        LoadLootTemplates_Creature();
        LootTemplates_Creature.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `creature_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadCreatureMovementOverrideCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载生物移动覆盖…");
        sObjectMgr->LoadCreatureMovementOverrides();
        handler->SendGlobalGMSysMessage("数据库表 `creature_movement_override` 已重新加载。");
        return true;
    }

    static bool HandleReloadLootTemplatesDisenchantCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`disenchant_loot_template`）…");
        LoadLootTemplates_Disenchant();
        LootTemplates_Disenchant.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `disenchant_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesFishingCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`fishing_loot_template`）…");
        LoadLootTemplates_Fishing();
        LootTemplates_Fishing.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `fishing_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesGameobjectCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`gameobject_loot_template`）…");
        LoadLootTemplates_Gameobject();
        LootTemplates_Gameobject.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `gameobject_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesItemCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`item_loot_template`）…");
        LoadLootTemplates_Item();
        LootTemplates_Item.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `item_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesMillingCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`milling_loot_template`）…");
        LoadLootTemplates_Milling();
        LootTemplates_Milling.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `milling_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesPickpocketingCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`pickpocketing_loot_template`）…");
        LoadLootTemplates_Pickpocketing();
        LootTemplates_Pickpocketing.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `pickpocketing_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesProspectingCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`prospecting_loot_template`）…");
        LoadLootTemplates_Prospecting();
        LootTemplates_Prospecting.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `prospecting_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesMailCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`mail_loot_template`）…");
        LoadLootTemplates_Mail();
        LootTemplates_Mail.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `mail_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesReferenceCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`reference_loot_template`）…");
        LoadLootTemplates_Reference();
        handler->SendGlobalGMSysMessage("数据库表 `reference_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesSkinningCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`skinning_loot_template`）…");
        LoadLootTemplates_Skinning();
        LootTemplates_Skinning.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `skinning_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesSpellCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`spell_loot_template`）…");
        LoadLootTemplates_Spell();
        LootTemplates_Spell.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `spell_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadLootTemplatesPlayerCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载掉落表（`player_loot_template`）…");
        LoadLootTemplates_Player();
        LootTemplates_Player.CheckLootRefs();
        handler->SendGlobalGMSysMessage("数据库表 `player_loot_template` 已重新加载。");
        sConditionMgr->LoadConditions(true);
        return true;
    }

    static bool HandleReloadModuleStringCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载module_string 表…");
        sObjectMgr->LoadModuleStrings();
        handler->SendGlobalGMSysMessage("数据库表 `module_string` 已重新加载。");
        LOG_INFO("server.loading", "正在重新加载module_string_locale 表…");
        sObjectMgr->LoadModuleStringsLocale();
        handler->SendGlobalGMSysMessage("数据库表 `module_string_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadAcoreStringCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载acore_string 表…");
        sObjectMgr->LoadAcoreStrings();
        handler->SendGlobalGMSysMessage("数据库表 `acore_string` 已重新加载。");
        return true;
    }

    static bool HandleReloadWardenactionCommand(ChatHandler* handler)
    {
        if (!sWorld->getBoolConfig(CONFIG_WARDEN_ENABLED))
        {
            handler->SendErrorMessage("守卫者系统已在配置中禁用，已跳过 warden_action 的重新加载。");
            return false;
        }

        LOG_INFO("server.loading", "正在重新加载warden_action 表…");
        sWardenCheckMgr->LoadWardenOverrides();
        handler->SendGlobalGMSysMessage("数据库表 `warden_action` 已重新加载。");
        return true;
    }

    static bool HandleReloadTrainerCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`trainer` 表…");
        sObjectMgr->LoadTrainers();
        sObjectMgr->LoadCreatureDefaultTrainers();
        handler->SendGlobalGMSysMessage("数据库表 `trainer` 已重新加载。");
        handler->SendGlobalGMSysMessage("数据库表 `trainer_locale` 已重新加载。");
        handler->SendGlobalGMSysMessage("数据库表 `trainer_spell` 已重新加载。");
        handler->SendGlobalGMSysMessage("数据库表 `creature_default_trainer` 已重新加载。");
        return true;
    }

    static bool HandleReloadNpcVendorCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`npc_vendor` 表…");
        sObjectMgr->LoadVendors();
        handler->SendGlobalGMSysMessage("数据库表 `npc_vendor` 已重新加载。");
        return true;
    }

    static bool HandleReloadGameEventNPCVendorCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`game_event_npc_vendor` 表…");
        sGameEventMgr->LoadEventVendors();
        handler->SendGlobalGMSysMessage("数据库表 `game_event_npc_vendor` 已重新加载。");
        return true;
    }

    static bool HandleReloadPointsOfInterestCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`points_of_interest` 表…");
        sObjectMgr->LoadPointsOfInterest();
        handler->SendGlobalGMSysMessage("数据库表 `points_of_interest` 已重新加载。");
        return true;
    }

    static bool HandleReloadQuestPOICommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载任务兴趣点…" );
        sObjectMgr->LoadQuestPOI();
        handler->SendGlobalGMSysMessage("数据库表 `quest_poi` 与 `quest_poi_points` 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellClickSpellsCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`npc_spellclick_spells` 表…");
        sObjectMgr->LoadNPCSpellClickSpells();
        handler->SendGlobalGMSysMessage("数据库表 `npc_spellclick_spells` 已重新加载。");
        return true;
    }

    static bool HandleReloadReservedNameCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载保留名称…");
        sObjectMgr->LoadReservedPlayerNamesDB();
        sObjectMgr->LoadReservedPlayerNamesDBC(); // Needed because we clear the store in LoadReservedPlayerNamesDB()
        handler->SendGlobalGMSysMessage("保留名称已重新加载。");
        return true;
    }

    static bool HandleReloadProfanityNameCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载违禁名称…");
        sObjectMgr->LoadProfanityNamesFromDB();
        sObjectMgr->LoadProfanityNamesFromDBC(); // Needed because we clear the store in LoadProfanityNamesFromDB()
        sObjectMgr->LoadCoANameFilter();
        handler->SendGlobalGMSysMessage("违禁名称已重新加载。");
        return true;
    }

    static bool HandleReloadChatFilterCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载聊天过滤器…");
        sObjectMgr->LoadChatFilter();
        handler->SendGlobalGMSysMessage("聊天过滤器已重新加载。");
        return true;
    }

    static bool HandleReloadReputationRewardRateCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`reputation_reward_rate` 表…" );
        sObjectMgr->LoadReputationRewardRate();
        handler->SendGlobalGMSysMessage("数据库表 `reputation_reward_rate` 已重新加载。");
        return true;
    }

    static bool HandleReloadReputationSpilloverTemplateCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`reputation_spillover_template` 表…" );
        sObjectMgr->LoadReputationSpilloverTemplate();
        handler->SendGlobalGMSysMessage("数据库表 `reputation_spillover_template` 已重新加载。");
        return true;
    }

    static bool HandleReloadSkillDiscoveryTemplateCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能探索表…");
        LoadSkillDiscoveryTable();
        handler->SendGlobalGMSysMessage("数据库表 `skill_discovery_template` （合成时发现的配方） 已重新加载。");
        return true;
    }

    static bool HandleReloadSkillPerfectItemTemplateCommand(ChatHandler* handler)
    {
        // latched onto HandleReloadSkillExtraItemTemplateCommand as it's part of that table group (and i don't want to chance all the command IDs)
        LOG_INFO("server.loading", "正在重新加载技能完美数据表…");
        LoadSkillPerfectItemTable();
        handler->SendGlobalGMSysMessage("数据库表 `skill_perfect_item_template` （合成时的完美物品触发） 已重新加载。");
        return true;
    }

    static bool HandleReloadSkillExtraItemTemplateCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能额外物品表…");
        LoadSkillExtraItemTable();
        handler->SendGlobalGMSysMessage("数据库表 `skill_extra_item_template` （合成时的额外物品产出） 已重新加载。");
        return HandleReloadSkillPerfectItemTemplateCommand(handler);
    }

    static bool HandleReloadSkillFishingBaseLevelCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载钓鱼等级基础需求…");
        sObjectMgr->LoadFishingBaseSkillLevel();
        handler->SendGlobalGMSysMessage("数据库表 `skill_fishing_base_level` （区域/子区域的钓鱼基础等级） 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellAreaCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能区域数据…");
        sSpellMgr->LoadSpellAreas();
        handler->SendGlobalGMSysMessage("数据库表 `spell_area` （依赖区域/任务/光环状态的技能） 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellRequiredCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Spell Required Data...…");
        sSpellMgr->LoadSpellRequired();
        handler->SendGlobalGMSysMessage("数据库表 `spell_required` 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellGroupsCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能组…");
        sSpellMgr->LoadSpellGroups();
        handler->SendGlobalGMSysMessage("数据库表 `spell_group` （技能组） 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellLinkedSpellCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能关联技能…");
        sSpellMgr->LoadSpellLinked();
        handler->SendGlobalGMSysMessage("数据库表 `spell_linked_spell` 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellProcsCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能触发条件与数据…");
        sSpellMgr->LoadSpellProcs();
        handler->SendGlobalGMSysMessage("数据库表 `spell_proc` （技能触发条件与数据） 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellBonusesCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能加成数据…");
        sSpellMgr->LoadSpellBonuses();
        handler->SendGlobalGMSysMessage("数据库表 `spell_bonus_data` （技能伤害/治疗系数） 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellTargetPositionCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能目标坐标…");
        sSpellMgr->LoadSpellTargetPositions();
        handler->SendGlobalGMSysMessage("数据库表 `spell_target_position` （技能目标的终点坐标） 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellConeCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能锥形定义…");
        sSpellMgr->LoadSpellCones();
        handler->SendGlobalGMSysMessage("数据库表 `spell_cone` 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellThreatsCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载仇恨技能定义…");
        sSpellMgr->LoadSpellThreats();
        handler->SendGlobalGMSysMessage("数据库表 `spell_threat` （技能仇恨定义） 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellGroupStackRulesCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能组叠加规则…");
        sSpellMgr->LoadSpellGroupStackRules();
        handler->SendGlobalGMSysMessage("数据库表 `spell_group_stack_rules` （技能叠加定义） 已重新加载。");
        return true;
    }

    static bool HandleReloadSpellPetAurasCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载技能宠物光环…");
        sSpellMgr->LoadSpellPetAuras();
        handler->SendGlobalGMSysMessage("数据库表 `spell_pet_auras` 已重新加载。");
        return true;
    }

    static bool HandleReloadPageTextsCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载页面文本…");
        sObjectMgr->LoadPageTexts();
        handler->SendGlobalGMSysMessage("数据库表 `page_texts` 已重新加载。");
        handler->SendGlobalGMSysMessage("你需要删除客户端缓存，或在配置中修改缓存编号，玩家才能看到这些改动。");
        return true;
    }

    static bool HandleReloadItemEnchantementsCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载物品随机附魔表…");
        LoadRandomEnchantmentsTable();
        handler->SendGlobalGMSysMessage("数据库表 `item_enchantment_template` 已重新加载。");
        return true;
    }

    static bool HandleReloadItemSetNamesCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载物品套装名称…");
        sObjectMgr->LoadItemSetNames();
        handler->SendGlobalGMSysMessage("数据库表 `item_set_names` 已重新加载。");
        return true;
    }

    static bool HandleReloadEventScriptsCommand(ChatHandler* handler)
    {
        if (sScriptMgr->IsScriptScheduled())
        {
            handler->SendErrorMessage("当前有数据库脚本正在使用，请稍后再尝试重新加载。");
            return false;
        }

        LOG_INFO("server.loading", "正在重新加载Scripts from `event_scripts`…");

        sObjectMgr->LoadEventScripts();

        handler->SendGlobalGMSysMessage("数据库表 `event_scripts` 已重新加载。");

        return true;
    }

    static bool HandleReloadWpScriptsCommand(ChatHandler* handler)
    {
        if (sScriptMgr->IsScriptScheduled())
        {
            handler->SendErrorMessage("当前有数据库脚本正在使用，请稍后再尝试重新加载。");
            return false;
        }

        LOG_INFO("server.loading", "正在重新加载Scripts from `waypoint_scripts`…");

        sObjectMgr->LoadWaypointScripts();

        handler->SendGlobalGMSysMessage("数据库表 `waypoint_scripts` 已重新加载。");

        return true;
    }

    static bool HandleReloadWpCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载来自 'waypoints_data' 的路径点数据…");
        sWaypointMgr->Load();
        handler->SendGlobalGMSysMessage("数据库表 'waypoint_data' 已重新加载。");

        return true;
    }

    static bool HandleReloadSpellScriptsCommand(ChatHandler* handler)
    {
        if (sScriptMgr->IsScriptScheduled())
        {
            handler->SendErrorMessage("当前有数据库脚本正在使用，请稍后再尝试重新加载。");
            return false;
        }

        LOG_INFO("server.loading", "正在重新加载Scripts from `spell_scripts`…");

        sObjectMgr->LoadSpellScripts();

        handler->SendGlobalGMSysMessage("数据库表 `spell_scripts` 已重新加载。");

        return true;
    }

    static bool HandleReloadGameGraveyardZoneCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载墓地-区域关联…");

        sGraveyard->LoadGraveyardZones();

        handler->SendGlobalGMSysMessage("数据库表 `graveyard_zone` 已重新加载。");

        return true;
    }

    static bool HandleReloadGameTeleCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载游戏传送坐标…");

        sObjectMgr->LoadGameTele();

        handler->SendGlobalGMSysMessage("数据库表 `game_tele` 已重新加载。");

        return true;
    }

    static bool HandleReloadDisablesCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载禁用表…");
        sDisableMgr->LoadDisables();
        LOG_INFO("server.loading", "正在检查任务禁用…");
        sDisableMgr->CheckQuestDisables();
        handler->SendGlobalGMSysMessage("数据库表 `disables` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesAchievementRewardCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载成就奖励数据本地化…");
        sAchievementMgr->LoadRewardLocales();
        handler->SendGlobalGMSysMessage("数据库表 `achievement_reward_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLfgRewardsCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载随机副本奖励…");
        sLFGMgr->LoadRewards();
        handler->SendGlobalGMSysMessage("数据库表 `lfg_dungeon_rewards` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesCreatureCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载生物模板本地化…");
        sObjectMgr->LoadCreatureLocales();
        handler->SendGlobalGMSysMessage("数据库表 `creature_template_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesCreatureTextCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载生物文本本地化…");
        sCreatureTextMgr->LoadCreatureTextLocales();
        handler->SendGlobalGMSysMessage("数据库表 `creature_text_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesGameobjectCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Gameobject Template Locale ...…");
        sObjectMgr->LoadGameObjectLocales();
        handler->SendGlobalGMSysMessage("数据库表 `gameobject_template_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesGossipMenuOptionCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Gossip Menu Option Locale ...…");
        sObjectMgr->LoadGossipMenuItemsLocales();
        handler->SendGlobalGMSysMessage("数据库表 `gossip_menu_option_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesItemCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Item Template Locale ...…");
        sObjectMgr->LoadItemLocales();
        handler->SendGlobalGMSysMessage("数据库表 `item_template_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesItemSetNameCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Item set name Locale...…");
        sObjectMgr->LoadItemSetNameLocales();
        handler->SendGlobalGMSysMessage("数据库表 `item_set_name_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesNpcTextCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载NPC Text Locale ...…");
        sObjectMgr->LoadNpcTextLocales();
        handler->SendGlobalGMSysMessage("数据库表 `npc_text_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesPageTextCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Page Text Locale ...…");
        sObjectMgr->LoadPageTextLocales();
        handler->SendGlobalGMSysMessage("数据库表 `page_text_locale` 已重新加载。");
        handler->SendGlobalGMSysMessage("你需要删除客户端缓存，或在配置中修改缓存编号，玩家才能看到这些改动。");
        return true;
    }

    static bool HandleReloadLocalesPointsOfInterestCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Points Of Interest Locale ...…");
        sObjectMgr->LoadPointOfInterestLocales();
        handler->SendGlobalGMSysMessage("数据库表 `points_of_interest_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesQuestCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Locales Quest ...…");
        sObjectMgr->LoadQuestLocales();
        handler->SendGlobalGMSysMessage("数据库表 `quest_template_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesQuestOfferRewardCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Quest Offer Reward Locale...…");
        sObjectMgr->LoadQuestOfferRewardLocale();
        handler->SendGlobalGMSysMessage("数据库表 `quest_offer_reward_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadLocalesQuestRequestItemsCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载Quest Request Item Locale...…");
        sObjectMgr->LoadQuestRequestItemsLocale();
        handler->SendGlobalGMSysMessage("数据库表 `quest_request_item_locale` 已重新加载。");
        return true;
    }

    static bool HandleReloadMailLevelRewardCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载玩家等级相关邮件奖励…");
        sObjectMgr->LoadMailLevelRewards();
        handler->SendGlobalGMSysMessage("数据库表 `mail_level_reward` 已重新加载。");
        return true;
    }

    static bool HandleReloadMailServerTemplateCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载`server_mail_template` 表…");
        sServerMailMgr->LoadMailServerTemplates();
        handler->SendGlobalGMSysMessage("数据库表 `server_mail_template` 已重新加载。");
        return true;
    }

    static bool HandleReloadAntiDosOpcodePoliciesCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载防洪水操作码策略…");
        sWorldGlobals->LoadAntiDosOpcodePolicies();
        handler->SendGlobalGMSysMessage("防洪水操作码策略已重新加载。");
        return true;
    }

    static bool HandleReloadAuctionsCommand(ChatHandler* handler)
    {
        ///- Reload dynamic data tables from the database
        LOG_INFO("server.loading", "正在重新加载拍卖…");
        sAuctionMgr->LoadAuctionItems();
        sAuctionMgr->LoadAuctions();
        handler->SendGlobalGMSysMessage("拍卖已重新加载。");
        return true;
    }

    static bool HandleReloadConditions(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载条件…");
        sConditionMgr->LoadConditions(true);
        handler->SendGlobalGMSysMessage("条件已重新加载。");
        return true;
    }

    static bool HandleReloadCreatureText(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载生物文本…");
        sCreatureTextMgr->LoadCreatureTexts();
        handler->SendGlobalGMSysMessage("生物文本已重新加载。");
        return true;
    }

    static bool HandleReloadSmartScripts(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载智能脚本…");
        sSmartScriptMgr->LoadSmartAIFromDB();
        handler->SendGlobalGMSysMessage("智能脚本已重新加载。");
        return true;
    }

    static bool HandleReloadVehicleAccessoryCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载载具附属表…");
        sObjectMgr->LoadVehicleAccessories();
        handler->SendGlobalGMSysMessage("载具附属已重新加载。");
        return true;
    }

    static bool HandleReloadVehicleTemplateAccessoryCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载载具模板附属表…");
        sObjectMgr->LoadVehicleTemplateAccessories();
        handler->SendGlobalGMSysMessage("载具模板附属已重新加载。");
        return true;
    }

    static bool HandleReloadGameGraveyardCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载game_graveyard 表…");
        sGraveyard->LoadGraveyardFromDB();
        handler->SendGlobalGMSysMessage("数据库表 `game_graveyard` 已重新加载。");
        return true;
    }

    static bool HandleReloadSpawnGroupCommand(ChatHandler* handler)
    {
        LOG_INFO("server.loading", "正在重新加载spawn_group_template 与 spawn_group 表…");
        sObjectMgr->LoadSpawnGroupTemplates();
        sObjectMgr->LoadSpawnGroups();
        handler->SendGlobalGMSysMessage("数据库表 `spawn_group_template` 与 `spawn_group` 已重新加载。");
        return true;
    }
};

void AddSC_reload_commandscript()
{
    new reload_commandscript();
}
