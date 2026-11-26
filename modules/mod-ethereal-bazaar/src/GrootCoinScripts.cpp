/*
 * Groot Coin commands, the Tiraxis submenu and the world hooks.
 */

#include "GrootCoin.h"

#include "AscensionClientSpellPatches.h"
#include "Chat.h"
#include "ChatCommand.h"
#include "Creature.h"
#include "Player.h"
#include "RBAC.h"
#include "ScriptMgr.h"
#include "ScriptedGossip.h"
#include "WorldSession.h"

#include <limits>

namespace GrootCoin::TiraxisMenu
{
    namespace
    {
        enum GrootGossip : uint32
        {
            GOSSIP_GROOT_FIRST = 9100,
            GOSSIP_GROOT_MENU = 9100,
            GOSSIP_GROOT_BALANCE = 9101,
            GOSSIP_GROOT_BUNDLE_1 = 9111,
            GOSSIP_GROOT_BUNDLE_5 = 9115,
            GOSSIP_GROOT_BUNDLE_10 = 9120,
            GOSSIP_GROOT_ALL = 9130,
            GOSSIP_GROOT_CONFIRM = 9150,
            GOSSIP_GROOT_CANCEL = 9151,
            GOSSIP_GROOT_BACK = 9152,
            GOSSIP_GROOT_LAST = 9199
        };

        constexpr uint32 GOSSIP_SENDER_GROOT = 0;
        constexpr uint32 TIRAXIS_TEXT_ID = 900007;
        constexpr std::string_view SOURCE = "tiraxis";

        uint32 BundleCoins(uint32 action)
        {
            switch (action)
            {
                case GOSSIP_GROOT_BUNDLE_1: return 1;
                case GOSSIP_GROOT_BUNDLE_5: return 5;
                case GOSSIP_GROOT_BUNDLE_10: return 10;
                default: return 0;
            }
        }

        uint32 BundleAction(uint32 coins)
        {
            switch (coins)
            {
                case 1: return GOSSIP_GROOT_BUNDLE_1;
                case 5: return GOSSIP_GROOT_BUNDLE_5;
                default: return GOSSIP_GROOT_BUNDLE_10;
            }
        }

        std::string Coins(uint32 coins)
        {
            return Acore::StringFormat("{} 枚格鲁特币", coins);
        }

        // One option per amount. The client's own pop-up is the only confirmation;
        // the sender carries the token payout the pop-up named, re-checked on OK.
        void AddOffer(Player* player, std::string const& label, uint32 coins, uint32 rate, uint32 action)
        {
            uint64 const tokens = uint64(coins) * rate;
            if (tokens > std::numeric_limits<uint32>::max())
                return;
            AddGossipItemFor(player, GOSSIP_ICON_VENDOR, label, uint32(tokens), action,
                Acore::StringFormat("用 {} 兑换 {} 枚集市代币？", Coins(coins), tokens), 0, false);
        }

        void ShowExchange(Player* player, Creature* creature)
        {
            uint32 const carried = CarriedCoins(player);
            uint32 const rate = GetSettings().tokensPerCoin;

            ClearGossipMenuFor(player);
            for (uint32 const coins : EXCHANGE_BUNDLES)
                if (carried >= coins)
                    AddOffer(player, Acore::StringFormat("用 {} 兑换 {} 枚集市代币。", Coins(coins),
                        uint64(coins) * rate), coins, rate, BundleAction(coins));
            if (carried >= 1)
                AddOffer(player, Acore::StringFormat("用全部 {} 兑换 {} 枚集市代币。", Coins(carried),
                    uint64(carried) * rate), carried, rate, GOSSIP_GROOT_ALL);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "返回。", GOSSIP_SENDER_GROOT, GOSSIP_GROOT_BACK);
            player->PlayerTalkClass->SendDynamicGossipMenu(Acore::StringFormat("你携带了 {} 枚格鲁特币。一枚币"
                "价值 {} 枚集市代币。", carried, rate), creature->GetGUID());
        }

        void Tell(Player* player, std::string_view text)
        {
            ChatHandler(player->GetSession()).SendSysMessage(std::string(text));
        }
    }

    bool IsAction(uint32 action)
    {
        return action >= GOSSIP_GROOT_FIRST && action <= GOSSIP_GROOT_LAST;
    }

    void AddEntry(Player* player)
    {
        if (ExchangeAvailable())
            AddGossipItemFor(player, GOSSIP_ICON_MONEY_BAG, "我想兑换格鲁特币。", GOSSIP_SENDER_GROOT,
                GOSSIP_GROOT_MENU);
    }

    void OnSelect(Player* player, Creature* creature, uint32 sender, uint32 action)
    {
        Vendor const vendor{ creature, SOURCE };
        switch (action)
        {
            case GOSSIP_GROOT_MENU:
            case GOSSIP_GROOT_BALANCE:
                ShowExchange(player, creature);
                return;
            case GOSSIP_GROOT_CANCEL:
                CancelQuote(player);
                ShowExchange(player, creature);
                return;
            case GOSSIP_GROOT_BACK:
                CancelQuote(player);
                sScriptMgr->OnGossipHello(player, creature);
                return;
            default:
                break;
        }

        CloseGossipMenuFor(player);
        uint32 const coins = action == GOSSIP_GROOT_ALL ? CarriedCoins(player) : BundleCoins(action);
        if (!coins)
            return;

        // The player already accepted the pop-up. Coins carried, rate and payout
        // must still match what it showed; TryExchange re-validates and rolls back.
        ExchangeResult const result = MatchesOffer(coins, GetSettings().tokensPerCoin, sender)
            ? TryExchange(player, vendor, coins) : ExchangeResult::InvalidQuote;
        if (result != ExchangeResult::Ok)
            Tell(player, Describe(result));
    }
}

namespace
{
    using namespace GrootCoin;
    using namespace Acore::ChatCommands;

    constexpr char const* AWARD_USAGE =
        "用法：.groot award <角色名> <数量> <议题编号> \"<理由>\" \"<归属引用>\"";

    class groot_coin_commands : public CommandScript
    {
    public:
        groot_coin_commands() : CommandScript("groot_coin_commands") { }

        ChatCommandTable GetCommands() const override
        {
            static ChatCommandTable grootTable =
            {
                { "award",   HandleAward,   rbac::RBAC_PERM_COMMAND_GROOT_AWARD, Console::No },
                { "history", HandleHistory, rbac::RBAC_PERM_COMMAND_GROOT_AUDIT, Console::Yes },
                { "inspect", HandleInspect, rbac::RBAC_PERM_COMMAND_GROOT_AUDIT, Console::Yes },
                { "status",  HandleStatus,  rbac::RBAC_PERM_COMMAND_GROOT_AUDIT, Console::Yes },
            };
            static ChatCommandTable root =
            {
                { "groot", grootTable },
            };
            return root;
        }

        static bool HandleAward(ChatHandler* handler, Optional<PlayerIdentifier> target, Optional<std::string> amountText,
            Optional<std::string> issueText, Optional<QuotedString> reason, Optional<QuotedString> attribution)
        {
            WorldSession* session = handler->GetSession();
            if (!session || !session->GetPlayer())
            {
                handler->SendSysMessage("格鲁特币发放需要在游戏内由工作人员角色执行。");
                return true;
            }
            if (!AwardsAvailable())
            {
                handler->SendSysMessage("格鲁特币发放已被禁用。请查看 .groot status。");
                return true;
            }
            if (session->GetSecurity() < SEC_GAMEMASTER)
            {
                handler->SendSysMessage("格鲁特币发放需要游戏管理员权限。");
                return true;
            }
            if (!target || !amountText || !issueText || !reason || !attribution)
            {
                handler->SendSysMessage(AWARD_USAGE);
                return true;
            }

            Optional<uint32> const amount = ParseAwardAmount(*amountText, GetSettings().maxAward);
            Optional<uint32> const issue = ParseIssueNumber(*issueText);
            if (!amount || !issue)
            {
                handler->PSendSysMessage("数量必须是 1 到 {} 之间的整数，议题参数应为 "
                    "azerothcore-wotlk-coa 仓库议题的纯编号。", GetSettings().maxAward);
                handler->SendSysMessage(AWARD_USAGE);
                return true;
            }
            if (!IsValidAuditText(*reason, REASON_MAX) || !IsValidAuditText(*attribution, ATTRIBUTION_MAX))
            {
                handler->PSendSysMessage("必须提供理由（最多 {} 个字符）与归属引用（最多 {} 个字符）。", REASON_MAX, ATTRIBUTION_MAX);
                handler->SendSysMessage(AWARD_USAGE);
                return true;
            }

            ObjectGuid const recipient = target->GetGUID();

            AwardRequest request;
            request.recipient = recipient;
            request.amount = *amount;
            request.issueNumber = *issue;
            request.reason = *reason;
            request.attributionRef = *attribution;
            request.actorAccountId = session->GetAccountId();
            request.actor = session->GetPlayer()->GetGUID();
            IssueAward(std::move(request));

            handler->PSendSysMessage("格鲁特币：发放 {} 枚给 {}（议题 #{}）……", *amount,
                target->GetName(), *issue);
            return true;
        }

        static bool HandleHistory(ChatHandler* handler, Optional<PlayerIdentifier> target, Optional<std::string> count)
        {
            if (!target)
            {
                handler->PSendSysMessage("用法：.groot history <角色名> [最多条数 {}]", HISTORY_MAX);
                return true;
            }

            Optional<uint32> const limit = ParseHistoryCount(count ? std::string_view(*count) : std::string_view());
            if (!limit)
            {
                handler->PSendSysMessage("用法：.groot history <角色名> [最多条数 {}]", HISTORY_MAX);
                return true;
            }

            ShowHistory(handler, target->GetGUID(), target->GetName(), *limit);
            return true;
        }

        static bool HandleInspect(ChatHandler* handler, Optional<std::string> id)
        {
            if (!id || !IsUuid(*id))
            {
                handler->SendSysMessage("用法：.groot inspect <发放ID 或 兑换ID>");
                return true;
            }

            ShowRecord(handler, *id);
            return true;
        }

        static bool HandleStatus(ChatHandler* handler)
        {
            ShowStatus(handler);
            return true;
        }
    };

    class groot_coin_world : public WorldScript
    {
    public:
        groot_coin_world() : WorldScript("groot_coin_world") { }

        void OnAfterConfigLoad(bool reload) override
        {
            if (!reload)
                LoadSettings();
        }

        void OnStartup() override
        {
            Validate();
        }

        void OnUpdate(uint32 /*diff*/) override
        {
            Update();
        }
    };
}

void AddGrootCoinScripts()
{
    Ascension::ClientItemPatches::Instance().Register(COIN_ITEM);
    new groot_coin_commands();
    new groot_coin_world();
}
