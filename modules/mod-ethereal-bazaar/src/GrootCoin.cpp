#include "GrootCoin.h"
#include "GrootCoinInternal.h"

#include "Chat.h"
#include "Configuration/Config.h"
#include "CryptoRandom.h"
#include "DBCStores.h"
#include "DatabaseEnv.h"
#include "EtherealBazaar.h"
#include "Log.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "QueryCallback.h"
#include "AsyncCallbackProcessor.h"

namespace GrootCoin
{
    namespace
    {
        Settings settings;
        std::vector<std::string> failures;
        bool validated = false;
        std::string exchangeBlocked;
        std::vector<std::string> reconciliations;
        QueryCallbackProcessor queryCallbacks;
        AsyncCallbackProcessor<TransactionCallback> transactionCallbacks;

        constexpr char const* TIRAXIS_SCRIPT = "npc_tiraxis";

        void Fail(std::string reason)
        {
            LOG_ERROR("module.bazaar", "Groot Coin: {}", reason);
            failures.push_back(std::move(reason));
        }

        void ValidateCoinTemplate()
        {
            ItemTemplate const* coin = sObjectMgr->GetItemTemplate(COIN_ITEM);
            if (!coin)
            {
                Fail(Acore::StringFormat("item_template 中缺少物品 {}。", COIN_ITEM));
                return;
            }

            if (coin->Class != ITEM_CLASS_MISC || coin->SubClass != 0)
                Fail(Acore::StringFormat("物品 {} 的类别必须是 15、子类别必须是 0。", COIN_ITEM));
            if (coin->Bonding != BIND_WHEN_PICKED_UP)
                Fail(Acore::StringFormat("物品 {} 必须是拾取绑定。", COIN_ITEM));
            if (coin->BuyPrice || coin->SellPrice)
                Fail(Acore::StringFormat("物品 {} 的买入价与卖出价都必须为 0。", COIN_ITEM));
            if (coin->GetMaxStackSize() < settings.maxAward)
                Fail(Acore::StringFormat("物品 {} 的堆叠上限是 {}，小于 GrootCoin.MaxAward {}。", COIN_ITEM,
                    coin->GetMaxStackSize(), settings.maxAward));
            if (coin->MaxCount || coin->Duration || coin->ItemLimitCategory)
                Fail(Acore::StringFormat("物品 {} 不能有唯一数量限制或持续时间。", COIN_ITEM));

            ItemEntry const* client = sItemStore.LookupEntry(COIN_ITEM);
            if (!client)
                Fail(Acore::StringFormat("item_dbc 中没有 {} 对应的行，客户端无法显示这种货币。", COIN_ITEM));
            else if (client->ClassID != coin->Class || client->SubclassID != coin->SubClass
                || client->DisplayInfoID != coin->DisplayInfoID || client->InventoryType != coin->InventoryType)
                Fail(Acore::StringFormat("item_dbc 的 {} 与 item_template 不一致。", COIN_ITEM));
        }

        void ValidateTokenTemplate()
        {
            if (BAZAAR_TOKEN_ITEM == COIN_ITEM)
            {
                Fail("货币与市集代币使用了同一个物品编号。");
                return;
            }

            ItemTemplate const* token = sObjectMgr->GetItemTemplate(BAZAAR_TOKEN_ITEM);
            if (!token)
            {
                Fail(Acore::StringFormat("缺少市集代币物品 {}。", BAZAAR_TOKEN_ITEM));
                return;
            }

            if (token->MaxCount)
                Fail(Acore::StringFormat("市集代币 {} 设有唯一数量限制。", BAZAAR_TOKEN_ITEM));
            if (!IsValidRate(settings.tokensPerCoin, token->GetMaxStackSize()))
                Fail(Acore::StringFormat("GrootCoin.TokensPerCoin 为 {}，放不进堆叠上限 {} 的市集代币。",
                    settings.tokensPerCoin, token->GetMaxStackSize()));
        }

        void ValidateEnvironment()
        {
            if (!sConfigMgr->GetOption<bool>("EtherealBazaar.Enable", true))
                Fail("EtherealBazaar.Enable 处于关闭状态。");
            if (!sConfigMgr->GetOption<bool>("CoA.SendDisplayPatches", true))
                Fail("CoA.SendDisplayPatches 处于关闭状态，客户端无法获知这个货币物品。");

            CreatureTemplate const* tiraxis = sObjectMgr->GetCreatureTemplate(BAZAAR_NPC_TIRAXIS);
            if (!tiraxis || tiraxis->ScriptID != sObjectMgr->GetScriptId(TIRAXIS_SCRIPT))
                Fail(Acore::StringFormat("生物 {} 没有使用 {}。", BAZAAR_NPC_TIRAXIS, TIRAXIS_SCRIPT));

            if (settings.maxAward == 0 || settings.maxAward > COIN_STACK_SIZE)
                Fail(Acore::StringFormat("GrootCoin.MaxAward 必须在 1 到 {} 之间。", COIN_STACK_SIZE));

            CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_GROOTCOIN_SCHEMA);
            PreparedQueryResult result = CharacterDatabase.Query(stmt);
            if (!result || result->Fetch()[0].Get<uint64>() != 4)
                Fail("characters 库中缺少 grootcoin_* 审计表。");
        }
    }

    Settings const& GetSettings()
    {
        return settings;
    }

    void LoadSettings()
    {
        settings.enable = sConfigMgr->GetOption<bool>("GrootCoin.Enable", false);
        settings.exchangeEnable = sConfigMgr->GetOption<bool>("GrootCoin.ExchangeEnable", false);
        settings.tokensPerCoin = sConfigMgr->GetOption<uint32>("GrootCoin.TokensPerCoin", DEFAULT_TOKENS_PER_COIN);
        settings.maxAward = sConfigMgr->GetOption<uint32>("GrootCoin.MaxAward", DEFAULT_MAX_AWARD);
        settings.externalAwardsEnable = sConfigMgr->GetOption<bool>("GrootCoin.ExternalAwardsEnable", false);
        settings.queuePollSeconds = QueuePollSeconds(
            sConfigMgr->GetOption<uint32>("GrootCoin.QueuePollInterval", DEFAULT_QUEUE_POLL_SECONDS));
        settings.characterDbWorkers = sConfigMgr->GetOption<uint32>("CharacterDatabase.WorkerThreads",
            REQUIRED_CHARACTER_DB_WORKERS, false);
    }

    void Validate()
    {
        failures.clear();
        exchangeBlocked.clear();
        validated = true;
        if (!settings.enable && !settings.exchangeEnable)
            return;

        ValidateCoinTemplate();
        ValidateTokenTemplate();
        ValidateEnvironment();

        if (settings.exchangeEnable && !ExchangeSafeWithWorkers(settings.characterDbWorkers))
        {
            exchangeBlocked = Acore::StringFormat("CharacterDatabase.WorkerThreads 为 {}，而兑换功能需要 {}。"
                "GrootCoin.ExchangeEnable 将按 0 处理。", settings.characterDbWorkers, REQUIRED_CHARACTER_DB_WORKERS);
            LOG_ERROR("module.bazaar", "Groot Coin: {}", exchangeBlocked);
        }

        if (failures.empty())
            LOG_INFO("module.bazaar", "Groot Coin: awards {}, exchange {}, {} tokens per coin, external awards {}.",
                settings.enable ? "on" : "off", ExchangeAvailable() ? "on" : "off", settings.tokensPerCoin,
                ShouldPollQueue(settings.enable, settings.externalAwardsEnable) ? "on" : "off");
        else
            LOG_ERROR("module.bazaar", "Groot Coin: disabled after {} failed startup check(s).", failures.size());
    }

    std::vector<std::string> const& StartupFailures()
    {
        return failures;
    }

    bool AwardsAvailable()
    {
        return validated && settings.enable && failures.empty();
    }

    bool ExchangeAvailable()
    {
        return validated && settings.exchangeEnable && failures.empty() && exchangeBlocked.empty();
    }

    void Update()
    {
        queryCallbacks.ProcessReadyCallbacks();
        transactionCallbacks.ProcessReadyCallbacks();
        Internal::UpdateExchanges();
        Internal::UpdateQueue();
    }

    std::string NewOperationId()
    {
        return FormatUuid(Acore::Crypto::GetRandomBytes<16>());
    }

    void ShowStatus(ChatHandler* handler)
    {
        handler->PSendSysMessage("格鲁特币：发放 {}，兑换 {}。",
            AwardsAvailable() ? "已启用" : "已禁用", ExchangeAvailable() ? "已启用" : "已禁用");
        handler->PSendSysMessage("配置：GrootCoin.Enable={} GrootCoin.ExchangeEnable={} TokensPerCoin={} MaxAward={}。",
            settings.enable ? 1 : 0, settings.exchangeEnable ? 1 : 0, settings.tokensPerCoin, settings.maxAward);
        handler->PSendSysMessage("物品：货币 {}（显示 {}），市集代币 {}。",
            COIN_ITEM, COIN_DISPLAY, BAZAAR_TOKEN_ITEM);
        handler->PSendSysMessage("外部发放（groot_coin_award_queue）：{}，每 {} 秒轮询一次。",
            ShouldPollQueue(AwardsAvailable(), settings.externalAwardsEnable) ? "开启" : "关闭", settings.queuePollSeconds);
        handler->PSendSysMessage("待处理：{} 笔发放（其中 {} 笔来自队列）。", Internal::PendingAwards(),
            Internal::QueuedInFlight());
        if (!exchangeBlocked.empty())
            handler->PSendSysMessage("兑换已被阻断：{}", exchangeBlocked);

        for (std::string const& failure : failures)
            handler->PSendSysMessage("启动检查失败：{}", failure);
        for (std::string const& line : reconciliations)
            handler->PSendSysMessage("需要核对：{}", line);
    }

    void ShowHistory(ChatHandler* handler, ObjectGuid character, std::string const& name, uint32 count)
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_GROOTCOIN_AWARD_HISTORY);
        stmt->SetData(0, character.GetCounter());
        stmt->SetData(1, count);
        PreparedQueryResult result = CharacterDatabase.Query(stmt);
        if (!result)
        {
            handler->PSendSysMessage("{} 没有格鲁特币发放记录。", name);
            return;
        }

        handler->PSendSysMessage("{} 的格鲁特币发放记录（从新到旧）：", name);
        do
        {
            Field const* fields = result->Fetch();
            std::string const subject = fields[1].IsNull()
                ? Acore::StringFormat("{} {}", fields[5].Get<std::string>(), fields[6].Get<std::string>())
                : Acore::StringFormat("议题 #{}", fields[1].Get<uint32>());
            handler->PSendSysMessage("{} | {} | {} 枚 | {} | 由账号 {} 发放", fields[0].Get<std::string>(), subject,
                fields[2].Get<uint32>(), fields[3].Get<std::string>(), fields[4].Get<uint32>());
        } while (result->NextRow());
    }

    void ShowRecord(ChatHandler* handler, std::string const& id)
    {
        CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_GROOTCOIN_AWARD);
        stmt->SetData(0, id);
        if (PreparedQueryResult award = CharacterDatabase.Query(stmt))
        {
            Field const* f = award->Fetch();
            std::string const subject = f[1].IsNull()
                ? Acore::StringFormat("{} {}", f[13].Get<std::string>(), f[14].Get<std::string>())
                : Acore::StringFormat("议题 #{}", f[1].Get<uint32>());
            handler->PSendSysMessage("发放 {}：{}，{} 枚，创建于 {}。", f[0].Get<std::string>(), subject,
                f[6].Get<uint32>(), f[9].Get<std::string>());
            handler->PSendSysMessage("接收账号 {} 角色 {}；发放账号 {} 角色 {}。",
                f[2].Get<uint32>(), f[3].Get<uint32>(), f[4].Get<uint32>(), f[5].Get<uint32>());
            handler->PSendSysMessage("理由：{}", f[7].Get<std::string>());
            handler->PSendSysMessage("归属：{}", f[8].Get<std::string>());
            if (f[10].IsNull())
                handler->PSendSysMessage("没有投递记录。");
            else
                handler->PSendSysMessage("邮件 {} 携带 {} 枚货币：{}。", f[10].Get<uint32>(), f[11].Get<uint32>(),
                    f[12].Get<uint64>() ? "仍在邮箱中" : "已领取、退回、删除或过期");
            return;
        }

        stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_GROOTCOIN_EXCHANGE);
        stmt->SetData(0, id);
        if (PreparedQueryResult exchange = CharacterDatabase.Query(stmt))
        {
            Field const* f = exchange->Fetch();
            handler->PSendSysMessage("兑换 {}：账号 {} 角色 {} 于 {}，{} 枚货币 → {} 枚代币（每枚货币 {} 枚），{}。",
                f[0].Get<std::string>(), f[1].Get<uint32>(), f[2].Get<uint32>(), f[6].Get<std::string>(),
                f[3].Get<uint32>(), f[4].Get<uint32>(), f[5].Get<uint32>(), f[7].Get<std::string>());
            return;
        }

        handler->PSendSysMessage("找不到发放或兑换记录 {}。", id);
    }

    namespace Internal
    {
        void AddQueryCallback(QueryCallback&& callback)
        {
            queryCallbacks.AddCallback(std::move(callback));
        }

        void AddTransactionCallback(TransactionCallback&& callback)
        {
            transactionCallbacks.AddCallback(std::move(callback));
        }

        void RecordReconciliation(std::string line)
        {
            LOG_ERROR("module.bazaar", "格鲁特币：需要核对：{}", line);
            reconciliations.push_back(std::move(line));
        }

        std::vector<std::string> const& Reconciliations()
        {
            return reconciliations;
        }

        void Notify(ObjectGuid character, std::string const& text)
        {
            if (Player* player = ObjectAccessor::FindPlayer(character))
                ChatHandler(player->GetSession()).SendSysMessage(text);
        }
    }
}
