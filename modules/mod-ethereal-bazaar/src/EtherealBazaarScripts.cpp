/*
 * Tiraxis himself: the gossip that leads to his three inventories, and the
 * world hook that keeps the rotation turning.
 */

#include "EtherealBazaar.h"
#include "GrootCoin.h"

#include "Chat.h"
#include "Configuration/Config.h"
#include "Creature.h"
#include "GameTime.h"
#include "Log.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedGossip.h"
#include "StringFormat.h"
#include "WorldSession.h"

namespace
{
    enum BazaarGossip : uint32
    {
        GOSSIP_SENDER = 0,
        GOSSIP_BAZAAR = 1,
        GOSSIP_CONVENIENCE = 2,
        GOSSIP_LOST_CACHES = 3,
        GOSSIP_STONES = 4,
        GOSSIP_HEIRLOOMS = 5,
        GOSSIP_CONSUMABLES = 6,
        GOSSIP_TOKENS = 7,
        GOSSIP_BACK = 8
    };

    // Tiraxis' own text, from the client's npccache. Kept as he said it,
    // including the missing word in the third line - that is how it shipped.
    constexpr uint32 GOSSIP_TEXT_ID = 900007;
    // "我该如何获得集市代币？": the live answer is not in any client cache, so this one names this realm's sources.
    constexpr uint32 GOSSIP_TOKENS_TEXT_ID = 900012;

    // The live menu shows a large icon in front of each option, as an inline texture in the option text.
    std::string IconOption(char const* icon, char const* label)
    {
        return Acore::StringFormat("|TInterface/ICONS/{}:40:40:-22:0|t|r{}", icon, label);
    }

    void SendMainMenu(Player* player, Creature* creature)
    {
        ClearGossipMenuFor(player);
        AddGossipItemFor(player, GOSSIP_ICON_VENDOR, IconOption("Spell_Shadow_Teleport", "探索集市"),
                         GOSSIP_SENDER, GOSSIP_BAZAAR);
        AddGossipItemFor(player, GOSSIP_ICON_VENDOR, IconOption("inv_legion_chest_legionfall", "失落宝箱"),
                         GOSSIP_SENDER, GOSSIP_LOST_CACHES);
        AddGossipItemFor(player, GOSSIP_ICON_VENDOR, IconOption("inv_chest_awakening", "便利物品"),
                         GOSSIP_SENDER, GOSSIP_CONVENIENCE);
        AddGossipItemFor(player, GOSSIP_ICON_VENDOR, IconOption("inv_misc_scrollrolled02c", "消耗品"),
                         GOSSIP_SENDER, GOSSIP_CONSUMABLES);
        AddGossipItemFor(player, GOSSIP_ICON_VENDOR, IconOption("inv_sword_39", "传家宝"),
                         GOSSIP_SENDER, GOSSIP_HEIRLOOMS);
        AddGossipItemFor(player, GOSSIP_ICON_VENDOR, IconOption("inv_item_stonen", "退避之石"),
                         GOSSIP_SENDER, GOSSIP_STONES);
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "我该如何获得集市代币？", GOSSIP_SENDER, GOSSIP_TOKENS);
        GrootCoin::TiraxisMenu::AddEntry(player);
        SendGossipMenuFor(player, GOSSIP_TEXT_ID, creature);
    }

    bool Enabled()
    {
        return sConfigMgr->GetOption<bool>("EtherealBazaar.Enable", true);
    }
}

class npc_tiraxis : public CreatureScript
{
public:
    npc_tiraxis() : CreatureScript("npc_tiraxis") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (!Enabled())
            return false;

        SendMainMenu(player, creature);
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action) override
    {
        if (!Enabled())
            return false;

        if (GrootCoin::TiraxisMenu::IsAction(action))
        {
            GrootCoin::TiraxisMenu::OnSelect(player, creature, sender, action);
            return true;
        }

        // The rotating list lives on the creature's own entry, so it opens with
        // no vendor entry at all. The two fixed lists carry their own entries;
        // nothing is spawned for them, they exist only in npc_vendor.
        switch (action)
        {
            case GOSSIP_BAZAAR:
                player->GetSession()->SendListInventory(creature->GetGUID());
                break;
            case GOSSIP_CONVENIENCE:
                player->GetSession()->SendListInventory(creature->GetGUID(), BAZAAR_VENDOR_CONVENIENCE);
                break;
            case GOSSIP_LOST_CACHES:
                player->GetSession()->SendListInventory(creature->GetGUID(), BAZAAR_VENDOR_LOST_CACHES);
                break;
            case GOSSIP_STONES:
                player->GetSession()->SendListInventory(creature->GetGUID(), BAZAAR_VENDOR_STONES);
                break;
            case GOSSIP_HEIRLOOMS:
                player->GetSession()->SendListInventory(creature->GetGUID(), BAZAAR_VENDOR_HEIRLOOMS);
                break;
            case GOSSIP_CONSUMABLES:
                player->GetSession()->SendListInventory(creature->GetGUID(), BAZAAR_VENDOR_CONSUMABLES);
                break;
            case GOSSIP_TOKENS:
                ClearGossipMenuFor(player);
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, "返回", GOSSIP_SENDER, GOSSIP_BACK);
                SendGossipMenuFor(player, GOSSIP_TOKENS_TEXT_ID, creature);
                break;
            case GOSSIP_BACK:
                SendMainMenu(player, creature);
                break;
            default:
                CloseGossipMenuFor(player);
                break;
        }
        return true;
    }
};

class ethereal_bazaar_world : public WorldScript
{
public:
    ethereal_bazaar_world() : WorldScript("ethereal_bazaar_world") { }

    void OnStartup() override
    {
        if (!Enabled())
        {
            LOG_INFO("module.bazaar", "Ethereal Bazaar: disabled by configuration.");
            return;
        }
        sBazaarStock->Load();
    }

    void OnUpdate(uint32 diff) override
    {
        if (!Enabled())
            return;
        sBazaarStock->Update(diff);
    }
};

class ethereal_bazaar_commands : public CommandScript
{
public:
    ethereal_bazaar_commands() : CommandScript("ethereal_bazaar_commands") { }

    Acore::ChatCommands::ChatCommandTable GetCommands() const override
    {
        using namespace Acore::ChatCommands;

        static ChatCommandTable bazaarTable =
        {
            { "rotate", HandleRotate, SEC_ADMINISTRATOR, Console::Yes },
            { "status", HandleStatus, SEC_GAMEMASTER,    Console::Yes },
        };
        static ChatCommandTable root =
        {
            { "bazaar", bazaarTable },
        };
        return root;
    }

    // Forcing a rotation is how you test the thing without waiting three hours.
    static bool HandleRotate(ChatHandler* handler)
    {
        if (!Enabled())
        {
            handler->PSendSysMessage("集市已停用。");
            return true;
        }
        sBazaarStock->Rotate();
        handler->PSendSysMessage("集市：已轮换，当前上架 {} 件物品。",
                                 sBazaarStock->StockSize());
        return true;
    }

    static bool HandleStatus(ChatHandler* handler)
    {
        uint64 const now = static_cast<uint64>(GameTime::GetGameTime().count());
        uint64 const next = sBazaarStock->NextRotation();
        handler->PSendSysMessage("集市：当前上架 {} 件物品。", sBazaarStock->StockSize());
        handler->PSendSysMessage("奖池：{} 件低价、{} 件中价、{} 件高价。",
                                 sBazaarStock->PoolSize(BazaarBand::Cheap),
                                 sBazaarStock->PoolSize(BazaarBand::Mid),
                                 sBazaarStock->PoolSize(BazaarBand::Expensive));
        if (next > now)
            handler->PSendSysMessage("距离下次轮换还有 {} 分钟。", (next - now) / MINUTE);
        else
            handler->PSendSysMessage("下次轮换已到期。");
        return true;
    }
};

void AddEtherealBazaarCacheScripts();
void AddEtherealBazaarSetCacheScripts();
void AddEtherealBazaarTokenScripts();
void AddEtherealBazaarDispenserScripts();

void AddEtherealBazaarScripts()
{
    new npc_tiraxis();
    new ethereal_bazaar_world();
    new ethereal_bazaar_commands();
    AddEtherealBazaarCacheScripts();
    AddEtherealBazaarSetCacheScripts();
    AddEtherealBazaarTokenScripts();
    AddEtherealBazaarDispenserScripts();
}
