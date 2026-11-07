#include "CoALotteryRules.h"
#include "CoALotteryAdvertising.h"
#include "Chat.h"
#include "CommandScript.h"
#include "CharacterCache.h"
#include "Config.h"
#include "CreatureScript.h"
#include "DatabaseEnv.h"
#include "GameTime.h"
#include "GameObject.h"
#include "GossipDef.h"
#include "Item.h"
#include "Log.h"
#include "Mail.h"
#include "MailMgr.h"
#include "Map.h"
#include "MapMgr.h"
#include "CellImpl.h"
#include "CreatureTextMgr.h"
#include "TemporarySummon.h"
#include "TaskScheduler.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "Random.h"
#include "ScriptedGossip.h"
#include "StringFormat.h"
#include "WorldScript.h"
#include "WorldSession.h"
#include "WorldSessionMgr.h"

#include <algorithm>
#include <map>
#include <memory>
#include <mutex>

namespace
{
    using namespace CoALottery;

    struct LotterySettings
    {
        bool enabled = true;
        bool announceWinners = true;
        bool spawnGallywix = true;
        bool spawnGoldilocks = true;
        bool advertise = true;
        uint32 advertisementInterval = 1800;
        uint32 advertisementPlayerRadius = 60;
        uint32 duration = 604800;
        uint32 seed = 0;
        uint32 contribution = 100;
        uint32 fakeTickets = 100;
        std::vector<uint32> bonusItems = { 97393 };
    };

    struct LotteryRound
    {
        uint64 id = 0;
        uint64 ends = 0;
        bool paused = false;
        uint64 pausedRemaining = 0;
        uint32 pot = 0;
        uint32 seed = 0;
        uint32 contribution = 100;
        uint32 fakeTickets = 0;
        uint32 duration = 604800;
        uint32 bonusItem = 0;
        uint32 totalTickets = 0;
        std::map<uint32, uint32> entries;
    };

    constexpr uint32 GallywixMenuId = 0xC0A08054;
    constexpr uint32 GallywixRulesAction = 10001;
    constexpr uint32 GallywixWinnersAction = 10002;

    std::string HouseWinnerName()
    {
        return "贸易亲王加里维克斯";
    }

    std::mutex lotteryMutex;
    LotterySettings settings;
    LotteryRound round;
    bool ready = false;
    bool storageReady = false;
    bool automaticStart = true;
    uint64 nextDrawAttempt = 0;

    uint64 Now()
    {
        return GameTime::GetGameTime().count();
    }

    bool Commit(CharacterDatabaseTransaction transaction)
    {
        return CharacterDatabase.AsyncCommitTransaction(transaction).m_future.get();
    }

    LotteryRound NewRound(uint64 id)
    {
        LotteryRound next;
        next.id = id;
        next.ends = Now() + settings.duration;
        next.fakeTickets = HouseTickets(settings.seed, settings.fakeTickets);
        next.pot = settings.seed + next.fakeTickets * TicketCost;
        next.seed = settings.seed;
        next.contribution = settings.contribution;
        next.duration = settings.duration;
        std::vector<uint32> validItems;
        for (uint32 item : settings.bonusItems)
            if (sObjectMgr->GetItemTemplate(item))
                validItems.push_back(item);
            else
                LOG_ERROR("module.coa_lottery", "Configured bonus item {} does not exist; skipping it", item);
        if (!validItems.empty())
            next.bonusItem = validItems[urand(0, uint32(validItems.size() - 1))];
        return next;
    }

    void AppendRound(CharacterDatabaseTransaction transaction, LotteryRound const& next)
    {
        auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_LOTTERY_ROUND);
        stmt->SetData(0, next.id);
        stmt->SetData(1, next.ends);
        stmt->SetData(2, next.pot);
        stmt->SetData(3, next.seed);
        stmt->SetData(4, next.contribution);
        stmt->SetData(5, next.duration);
        stmt->SetData(6, next.bonusItem);
        stmt->SetData(7, next.fakeTickets);
        transaction->Append(stmt);
    }

    void AppendControl(CharacterDatabaseTransaction transaction, bool enabled, bool autoStart)
    {
        auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_LOTTERY_CONTROL);
        stmt->SetData(0, uint8(enabled));
        stmt->SetData(1, uint8(autoStart));
        transaction->Append(stmt);
    }

    void AppendPause(CharacterDatabaseTransaction transaction, LotteryRound const& next)
    {
        auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_LOTTERY_PAUSE);
        stmt->SetData(0, uint8(next.paused));
        stmt->SetData(1, next.pausedRemaining);
        stmt->SetData(2, next.ends);
        stmt->SetData(3, next.id);
        transaction->Append(stmt);
    }

    uint64 Remaining()
    {
        return round.paused ? round.pausedRemaining : (round.ends > Now() ? round.ends - Now() : 0);
    }

    void Initialize()
    {
        ready = false;
        storageReady = false;
        round = LotteryRound{};
        auto storage = CharacterDatabase.Query(CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_STORAGE));
        if (!storage || storage->Fetch()[0].Get<uint64>() != 4)
        {
            LOG_ERROR("module.coa_lottery", "Lottery tables are missing; apply the pending character migration");
            return;
        }

        auto control = CharacterDatabase.Query(CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_CONTROL));
        if (!control)
            return;
        if (!control->Fetch()[0].IsNull())
            settings.enabled = control->Fetch()[0].Get<uint8>() != 0;
        automaticStart = control->Fetch()[1].Get<uint8>() != 0;
        storageReady = true;
        auto result = CharacterDatabase.Query(CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_ROUND));
        if (!result)
        {
            if (!settings.enabled || !automaticStart)
                return;
            auto id = CharacterDatabase.Query(CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_NEXT_ID));
            if (!id)
                return;
            auto next = NewRound(id->Fetch()[0].Get<uint64>());
            auto transaction = CharacterDatabase.BeginTransaction();
            AppendRound(transaction, next);
            if (!Commit(transaction))
                return;
            round = std::move(next);
        }
        else
        {
            Field* fields = result->Fetch();
            round.id = fields[0].Get<uint64>();
            round.ends = fields[1].Get<uint64>();
            round.pot = fields[2].Get<uint32>();
            round.seed = fields[3].Get<uint32>();
            round.contribution = fields[4].Get<uint32>();
            round.duration = fields[5].Get<uint32>();
            round.bonusItem = fields[6].Get<uint32>();
            round.fakeTickets = fields[7].Get<uint32>();
            round.paused = fields[8].Get<uint8>() != 0;
            round.pausedRemaining = fields[9].Get<uint64>();
            if (round.fakeTickets > MaximumTickets)
                return;
            auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_ENTRIES);
            stmt->SetData(0, round.id);
            auto entries = CharacterDatabase.Query(stmt);
            if (!entries)
            {
                storageReady = false;
                LOG_ERROR("module.coa_lottery", "Could not load tickets for lottery round {}; lottery unavailable", round.id);
                return;
            }
            do
            {
                fields = entries->Fetch();
                if (fields[0].IsNull() && fields[1].IsNull())
                    continue;
                uint32 guid = fields[0].Get<uint32>();
                uint32 tickets = fields[1].Get<uint32>();
                if (!tickets || uint64(round.totalTickets) + round.fakeTickets + tickets > MaximumTickets)
                    return;
                round.entries[guid] = tickets;
                round.totalTickets += tickets;
            } while (entries->NextRow());
        }
        ready = round.pot <= MaximumPot && round.contribution <= 100 && round.duration >= 60;
        if (ready && round.paused == settings.enabled)
        {
            auto next = round;
            next.paused = !settings.enabled;
            next.pausedRemaining = settings.enabled ? 0 : Remaining();
            if (settings.enabled)
                next.ends = Now() + round.pausedRemaining;
            auto transaction = CharacterDatabase.BeginTransaction();
            AppendPause(transaction, next);
            if (!Commit(transaction))
            {
                ready = false;
                return;
            }
            round = std::move(next);
        }
        LOG_INFO("module.coa_lottery", "Lottery round {}: {} tickets, {} copper, ends at {}",
            round.id, round.totalTickets, round.pot, round.ends);
    }

    void PublishMail(uint32 guid, uint32 mailId, uint32 pot, uint64 now, std::unique_ptr<Item> bonus,
        bool refund = false)
    {
        sMailMgr->OnMailSent(guid);
        if (Player* player = ObjectAccessor::FindPlayerByLowGUID(guid))
        {
            auto* mail = new Mail{};
            mail->messageID = mailId;
            mail->messageType = MAIL_CREATURE;
            mail->stationery = MAIL_STATIONERY_DEFAULT;
            mail->sender = GallywixEntry;
            mail->receiver = guid;
            mail->subject = refund ? "加里维克斯的彩票退款": "加里维克斯的彩票头奖";
            mail->body = refund ? "你的彩票已被退款，随信附上你支付的全部金币。": "你的黄金彩票赢得了本周彩票的头奖，随信附上奖金！";
            mail->money = pot;
            mail->deliver_time = now;
            mail->expire_time = now + 90 * DAY;
            mail->state = MAIL_STATE_UNCHANGED;
            if (bonus)
            {
                mail->AddItem(bonus->GetGUID().GetCounter(), bonus->GetEntry());
                player->AddMItem(bonus.release());
            }
            player->AddMail(mail);
            player->AddNewMailDeliverTime(now);
        }
    }

    void AnnounceDraw(std::string const& name, uint32 copper, bool houseWin);

    bool DrawIfDue(uint32 forcedWinner = 0, bool immediate = false)
    {
        uint64 now = Now();
        if (!ready)
            return false;
        if (!immediate && (!settings.enabled || round.paused || now < round.ends))
            return settings.enabled && !round.paused;
        if (!immediate && now < nextDrawAttempt)
            return false;
        nextDrawAttempt = now + 5;

        auto* eligibleStatement = CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_ENTRIES);
        eligibleStatement->SetData(0, round.id);
        auto eligible = CharacterDatabase.Query(eligibleStatement);
        if (!eligible)
        {
            LOG_ERROR("module.coa_lottery", "Could not load eligible entries for round {}; drawing is suspended",
                round.id);
            return false;
        }
        round.entries.clear();
        round.totalTickets = 0;
        if (eligible)
            do
            {
                Field* fields = eligible->Fetch();
                if (fields[0].IsNull() && fields[1].IsNull())
                    continue;
                uint32 tickets = fields[1].Get<uint32>();
                if (!tickets || uint64(round.totalTickets) + round.fakeTickets + tickets > MaximumTickets)
                    return false;
                round.entries[fields[0].Get<uint32>()] = tickets;
                round.totalTickets += tickets;
            } while (eligible->NextRow());
        if (!round.totalTickets && !round.fakeTickets && !forcedWinner)
        {
            if (immediate)
                return false;
            auto transaction = CharacterDatabase.BeginTransaction();
            auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_LOTTERY_END);
            stmt->SetData(0, now + round.duration);
            stmt->SetData(1, round.id);
            transaction->Append(stmt);
            if (!Commit(transaction))
                return false;
            round.ends = now + round.duration;
            return true;
        }

        auto drawRound = round;
        bool complimentary = forcedWinner && !drawRound.entries.count(forcedWinner);
        if (complimentary)
        {
            if (uint64(drawRound.pot) + TicketCost > MaximumPot ||
                drawRound.totalTickets + drawRound.fakeTickets >= MaximumTickets)
                return false;
            drawRound.entries[forcedWinner] = 1;
            ++drawRound.totalTickets;
            drawRound.pot += TicketCost;
        }
        uint32 drawnTickets = drawRound.totalTickets + drawRound.fakeTickets;
        uint32 winningTicket = urand(0, drawnTickets - 1);
        bool houseWin = !forcedWinner && winningTicket < drawRound.fakeTickets;
        uint32 winner = forcedWinner ? forcedWinner :
            SelectDrawWinner(drawRound.entries, drawRound.fakeTickets, winningTicket);
        if (!houseWin && !winner)
            return false;
        std::string winnerName = HouseWinnerName();
        uint32 winnerAccount = 0;
        if (!houseWin)
        {
            auto* identityStatement = CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_WINNER_IDENTITY);
            identityStatement->SetData(0, winner);
            auto identity = CharacterDatabase.Query(identityStatement);
            if (!identity)
            {
                LOG_INFO("module.coa_lottery", "Skipping unavailable lottery recipient {} in round {}; no mail sent",
                    winner, drawRound.id);
                return false;
            }
            winnerName = identity->Fetch()[0].Get<std::string>();
            winnerAccount = identity->Fetch()[1].Get<uint32>();
            if (!sCharacterCache->GetCharacterAccountIdByGuid(ObjectGuid(HighGuid::Player, winner)))
            {
                LOG_INFO("module.coa_lottery", "Skipping deleted lottery recipient {} in round {}; no mail sent",
                    winner, drawRound.id);
                return false;
            }
        }
        std::unique_ptr<Item> bonus;
        if (!houseWin && drawRound.bonusItem)
        {
            if (!sObjectMgr->GetItemTemplate(drawRound.bonusItem))
            {
                LOG_ERROR("module.coa_lottery", "Round {} bonus item {} is missing; payout suspended",
                    drawRound.id, drawRound.bonusItem);
                return false;
            }
            bonus.reset(Item::CreateItem(drawRound.bonusItem, 1));
            if (!bonus)
                return false;
            bonus->SetOwnerGUID(ObjectGuid(HighGuid::Player, winner));
        }
        uint32 mailId = houseWin ? 0 : sObjectMgr->GenerateMailID();
        auto next = NewRound(drawRound.id + 1);
        auto transaction = CharacterDatabase.BeginTransaction();
        if (complimentary)
        {
            auto* entry = CharacterDatabase.GetPreparedStatement(CHAR_UPSERT_LOTTERY_ENTRY);
            entry->SetData(0, drawRound.id);
            entry->SetData(1, forcedWinner);
            entry->SetData(2, uint32(1));
            entry->SetData(3, uint32(0));
            entry->SetData(4, TicketCost);
            transaction->Append(entry);
            auto* pot = CharacterDatabase.GetPreparedStatement(CHAR_UPD_LOTTERY_POT);
            pot->SetData(0, drawRound.pot);
            pot->SetData(1, drawRound.id);
            transaction->Append(pot);
        }
        if (immediate)
            AppendControl(transaction, true, true);
        CharacterDatabasePreparedStatement* stmt = nullptr;
        if (!houseWin)
        {
            stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_MAIL);
            stmt->SetData(0, mailId);
            stmt->SetData(1, uint8(MAIL_CREATURE));
            stmt->SetData(2, int8(MAIL_STATIONERY_DEFAULT));
            stmt->SetData(3, uint16(0));
            stmt->SetData(4, GallywixEntry);
            stmt->SetData(5, winner);
            stmt->SetData(6, std::string("加里维克斯的彩票头奖"));
            stmt->SetData(7, std::string("你的黄金彩票赢得了本周彩票的头奖，随信附上奖金！"));
            stmt->SetData(8, bool(bonus));
            stmt->SetData(9, uint32(now + 90 * DAY));
            stmt->SetData(10, uint32(now));
            stmt->SetData(11, drawRound.pot);
            stmt->SetData(12, uint32(0));
            stmt->SetData(13, uint8(MAIL_CHECK_MASK_NONE));
            transaction->Append(stmt);
            if (bonus)
            {
                bonus->SaveToDB(transaction);
                stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_MAIL_ITEM);
                stmt->SetData(0, mailId);
                stmt->SetData(1, bonus->GetGUID().GetCounter());
                stmt->SetData(2, winner);
                transaction->Append(stmt);
            }
        }
        stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_LOTTERY_WINNER);
        stmt->SetData(0, drawRound.id);
        stmt->SetData(1, now);
        stmt->SetData(2, winner);
        stmt->SetData(3, winnerAccount);
        stmt->SetData(4, winnerName);
        stmt->SetData(5, drawRound.pot);
        stmt->SetData(6, houseWin ? uint32(0) : drawRound.bonusItem);
        stmt->SetData(7, bonus ? bonus->GetTemplate()->Name1 : std::string());
        stmt->SetData(8, houseWin ? drawRound.fakeTickets : drawRound.entries.at(winner));
        stmt->SetData(9, drawnTickets);
        stmt->SetData(10, mailId);
        stmt->SetData(11, uint8(houseWin));
        stmt->SetData(12, houseWin ? drawRound.pot : uint32(0));
        stmt->SetData(13, uint8(forcedWinner != 0));
        stmt->SetData(14, uint32(complimentary));
        transaction->Append(stmt);
        stmt = CharacterDatabase.GetPreparedStatement(CHAR_COMPLETE_LOTTERY_ROUND);
        stmt->SetData(0, winner);
        stmt->SetData(1, mailId);
        stmt->SetData(2, drawRound.id);
        transaction->Append(stmt);
        AppendRound(transaction, next);
        if (!Commit(transaction))
        {
            LOG_ERROR("module.coa_lottery", "Lottery draw {} failed; no payout was published", drawRound.id);
            return false;
        }
        if (houseWin)
            LOG_INFO("module.coa_lottery", "Lottery round {} won by Trade Prince Gallywix; destroyed {} copper",
                drawRound.id, drawRound.pot);
        else
        {
            PublishMail(winner, mailId, drawRound.pot, now, std::move(bonus));
            LOG_INFO("module.coa_lottery", "Lottery round {} paid {} copper to character {} through mail {}",
                drawRound.id, drawRound.pot, winner, mailId);
        }
        if (settings.announceWinners)
        {
            std::string message = Acore::StringFormat("加里维克斯的彩票：{} 赢得了 {}金{}银{}铜 的头奖！{}",
                winnerName, drawRound.pot / 10000, drawRound.pot / 100 % 100, drawRound.pot % 100,
                houseWin ? " 奖池已被销毁。": " 奖金已通过邮件寄给中奖者。");
            sWorldSessionMgr->SendServerMessage(SERVER_MSG_STRING, message);
        }
        round = std::move(next);
        if (immediate)
        {
            settings.enabled = true;
            automaticStart = true;
        }
        nextDrawAttempt = 0;
        AnnounceDraw(winnerName, drawRound.pot, houseWin);
        return true;
    }

    void Show(Player* player, Creature* creature)
    {
        ClearGossipMenuFor(player);
        player->PlayerTalkClass->GetGossipMenu().SetMenuId(uint32(round.id));
        uint32 guid = player->GetGUID().GetCounter();
        auto entry = round.entries.find(guid);
        uint32 tickets = entry == round.entries.end() ? 0 : entry->second;
        uint64 remaining = round.ends > Now() ? round.ends - Now() : 0;
        std::string text = Acore::StringFormat(
            "头奖总额：{}金{}银{}铜\n奖励物品：{}\n你的黄金彩票：{}\n金币彩票结束倒计时：{}天{}时{}分{}秒",
            round.pot / 10000, round.pot / 100 % 100, round.pot % 100,
            round.bonusItem ? round.bonusItem : NoBonusItem, tickets,
            remaining / DAY, remaining / HOUR % 24, remaining / MINUTE % 60, remaining % MINUTE);
        for (uint32 i = 0; i < Options.size(); ++i)
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, std::string(Options[i].text), GOSSIP_SENDER_MAIN, i + 1);
        player->PlayerTalkClass->SendDynamicGossipMenu(text, creature->GetGUID());
    }

    class LotteryAdvertiser
    {
    public:
        explicit LotteryAdvertiser(LotteryLocation location = StormwindLotteryLocation) : _location(location) { }

        void Configure()
        {
            _scheduler.CancelAll();
            _scheduler.Schedule(std::chrono::seconds(30), [this](TaskContext context)
            {
                SyncSpawn();
                context.Repeat();
            });
            _scheduler.Schedule(std::chrono::seconds(settings.advertisementInterval), [this](TaskContext context)
            {
                Advertise();
                context.Repeat();
            });
            SyncSpawn();
        }

        void Update(uint32 diff)
        {
            if (settings.enabled && ready && (_scaledRound != round.id || _scaledEnds != round.ends))
                UpdateGoldilocksScale();
            _scheduler.Update(diff);
        }

        void SyncGoldilocks()
        {
            Map* map = sMapMgr->FindMap(_location.map, 0);
            Creature* creature = map && !_goldilocksGuid.IsEmpty() ? map->GetCreature(_goldilocksGuid) : nullptr;
            if (!settings.enabled || !ready || !settings.spawnGoldilocks)
            {
                if (creature)
                    creature->DespawnOrUnsummon();
                _goldilocksGuid.Clear();
                return;
            }
            if (creature && creature->IsAlive())
                return;
            if (creature)
                creature->DespawnOrUnsummon();
            _goldilocksGuid.Clear();
            if (!sObjectMgr->GetCreatureTemplate(GoldilocksEntry))
                return;
            map = sMapMgr->CreateBaseMap(_location.map);
            if (!map)
                return;
            map->LoadGrid(_location.goldilocksX, _location.goldilocksY);
            if (TempSummon* summon = map->SummonCreature(GoldilocksEntry,
                Position(_location.goldilocksX, _location.goldilocksY, _location.goldilocksZ, _location.orientation)))
            {
                summon->setActive(true);
                summon->SetReactState(REACT_PASSIVE);
                summon->SetLootRewardDisabled(true);
                summon->SetReputationRewardDisabled(true);
                _goldilocksGuid = summon->GetGUID();
                UpdateGoldilocksScale();
            }
        }

        void UpdateGoldilocksScale()
        {
            if (!settings.enabled || !ready)
                return;
            Map* map = sMapMgr->FindMap(_location.map, 0);
            Creature* creature = map && !_goldilocksGuid.IsEmpty() ? map->GetCreature(_goldilocksGuid) : nullptr;
            if (creature)
            {
                uint64 remaining = round.ends > Now() ? round.ends - Now() : 0;
                creature->SetObjectScale(GoldilocksScale(round.duration, remaining));
                _scaledRound = round.id;
                _scaledEnds = round.ends;
            }
        }

        void SyncSpawn()
        {
            SyncGoldilocks();
            Map* map = sMapMgr->FindMap(_location.map, 0);
            Creature* creature = map && !_guid.IsEmpty() ? map->GetCreature(_guid) : nullptr;
            if (!settings.enabled || !ready || !settings.spawnGallywix)
            {
                if (creature)
                    creature->DespawnOrUnsummon();
                _guid.Clear();
                return;
            }
            if (creature && creature->IsAlive())
                return;
            if (creature)
                creature->DespawnOrUnsummon();
            _guid.Clear();
            if (!sObjectMgr->GetCreatureTemplate(GallywixEntry))
                return;
            map = sMapMgr->CreateBaseMap(_location.map);
            if (!map)
                return;
            map->LoadGrid(_location.gallywixX, _location.gallywixY);
            if (TempSummon* summon = map->SummonCreature(GallywixEntry,
                Position(_location.gallywixX, _location.gallywixY, _location.gallywixZ, _location.orientation)))
            {
                summon->setActive(true);
                summon->SetReactState(REACT_PASSIVE);
                summon->SetLootRewardDisabled(true);
                summon->SetReputationRewardDisabled(true);
                _guid = summon->GetGUID();
            }
        }

        void AnnounceResult(std::string const& name, uint32 copper, bool houseWin)
        {
            SyncSpawn();
            if (!settings.enabled || !ready || !settings.spawnGallywix)
                return;
            Map* map = sMapMgr->FindMap(_location.map, 0);
            Creature* creature = map && !_guid.IsEmpty() ? map->GetCreature(_guid) : nullptr;
            if (!creature || !creature->IsAlive())
                return;
            std::string message = houseWin
                ? Acore::StringFormat("内部票中奖了！贸易亲王加里维克斯拿走了 {} 金币的头奖！整池奖金全部销毁！下次好运，伙计！",
                    copper / 10000)
                : Acore::StringFormat("我们有一位中奖者！{} 刚刚赢得了 {} 金币的头奖！奖品已在邮箱里，伙计！其他人，下一轮彩票已经开始了！",
                    name, copper / 10000);
            auto builder = [creature, &message](WorldPacket* packet, LocaleConstant locale)
            {
                return ChatHandler::BuildChatPacket(*packet, CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL,
                    creature, nullptr, message, 0, "", locale);
            };
            sCreatureTextMgr->SendChatPacket(creature, builder, CHAT_MSG_MONSTER_YELL, nullptr, TEXT_RANGE_ZONE);
            constexpr std::array<uint32, 5> fireworks = { 180737, 180726, 180737, 180726, 180737 };
            for (uint32 i = 0; i < fireworks.size(); ++i)
            {
                if (!sObjectMgr->GetGameObjectTemplate(fireworks[i]))
                    continue;
                float x = creature->GetPositionX() + float(int32(i % 3) - 1) * 2.0f;
                float y = creature->GetPositionY() + float(int32(i / 3) - 1) * 2.0f;
                float z = creature->GetPositionZ() + 6.0f + float(i);
                if (GameObject* firework = creature->SummonGameObject(fireworks[i], x, y, z, 0.0f,
                    0.0f, 0.0f, 0.0f, 1.0f, 0))
                {
                    firework->setActive(true);
                    firework->DespawnOrUnsummon();
                    firework->AddObjectToRemoveList();
                }
            }
        }

        bool Advertise(bool force = false)
        {
            UpdateGoldilocksScale();
            if (!settings.enabled || !ready || (!force && !settings.advertise) || !settings.spawnGallywix || Now() >= round.ends)
                return false;
            SyncSpawn();
            Map* map = sMapMgr->FindMap(_location.map, 0);
            Creature* creature = map && !_guid.IsEmpty() ? map->GetCreature(_guid) : nullptr;
            if (!creature || !creature->IsAlive())
                return false;
            std::vector<std::string> names;
            for (auto const& reference : map->GetPlayers())
            {
                Player* player = reference.GetSource();
                if (player->IsInWorld() && player->isGMVisible() && !player->GetSession()->IsBot() &&
                    player->GetZoneId() == creature->GetZoneId() &&
                    player->IsWithinDistInMap(creature, float(settings.advertisementPlayerRadius)))
                    names.push_back(player->GetName());
            }
            std::string name = names.empty() ? std::string() : names[urand(0, uint32(names.size() - 1))];
            if (_nextLine == _order.size())
            {
                for (uint32 i = 0; i < _order.size(); ++i)
                    _order[i] = i;
                for (uint32 i = uint32(_order.size() - 1); i > 0; --i)
                    std::swap(_order[i], _order[urand(0, i)]);
                if (_lastLine == _order.front())
                    std::swap(_order.front(), _order.back());
                _nextLine = 0;
            }
            _lastLine = _order[_nextLine++];
            std::string message = BuildAdvertisement(_lastLine, round.pot, round.ends - Now(), name,
                _location.map == 1 ? "Orgrimmar" : "Stormwind");
            auto builder = [creature, &message](WorldPacket* packet, LocaleConstant locale)
            {
                return ChatHandler::BuildChatPacket(*packet, CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL,
                    creature, nullptr, message, 0, "", locale);
            };
            sCreatureTextMgr->SendChatPacket(creature, builder, CHAT_MSG_MONSTER_YELL, nullptr, TEXT_RANGE_ZONE);
            return true;
        }

    private:
        LotteryLocation _location;
        TaskScheduler _scheduler;
        ObjectGuid _guid;
        ObjectGuid _goldilocksGuid;
        uint64 _scaledRound = 0;
        uint64 _scaledEnds = 0;
        std::array<uint32, AdvertisementLines.size()> _order{};
        size_t _nextLine = AdvertisementLines.size();
        uint32 _lastLine = uint32(AdvertisementLines.size());
    };

    class LotteryCities
    {
    public:
        void Configure()
        {
            for (auto& city : _cities)
                city.Configure();
        }

        void SyncSpawn()
        {
            for (auto& city : _cities)
                city.SyncSpawn();
        }

        void UpdateGoldilocksScale()
        {
            for (auto& city : _cities)
                city.UpdateGoldilocksScale();
        }

        void Update(uint32 diff)
        {
            for (auto& city : _cities)
                city.Update(diff);
        }

        void AnnounceResult(std::string const& name, uint32 copper, bool houseWin)
        {
            for (auto& city : _cities)
                city.AnnounceResult(name, copper, houseWin);
        }
        bool Advertise(bool force = false)
        {
            bool advertised = false;
            for (auto& city : _cities)
                advertised = city.Advertise(force) || advertised;
            return advertised;
        }

    private:
        std::array<LotteryAdvertiser, 2> _cities =
            { LotteryAdvertiser(), LotteryAdvertiser(OrgrimmarLotteryLocation) };
    };

    void ShowGallywix(Player* player, Creature* creature, uint32 action = 0)
    {
        ClearGossipMenuFor(player);
        player->PlayerTalkClass->GetGossipMenu().SetMenuId(GallywixMenuId);
        std::string text = "时间就是金钱，伙计！想了解我的彩票，然后想买票就去找金发姑娘。";
        if (action == GallywixRulesAction)
        {
            uint32 duration = ready ? round.duration : settings.duration;
            uint32 contribution = ready ? round.contribution : settings.contribution;
            uint32 fakeTickets = ready ? round.fakeTickets : HouseTickets(settings.seed, settings.fakeTickets);
            text = Acore::StringFormat(
                "听好了，伙计！金发姑娘以每张 10 金的价格出售黄金彩票。买得越多，机会越多！你买票的钱有 {}% 进入头奖奖池。我们每 {} 天 {} 小时 {} 分钟开一次奖。每张票的中奖机会完全相同，一张票就能拿走整池奖金。\n\n庄家自己也持有 {} 张票，每张为起始奖池增加 10 金。我的票和你的票中奖概率完全一样。如果内部票中奖，中奖者就是贸易亲王加里维克斯——也就是我！整池奖金将被销毁，没人能得到金币或奖励物品。嘿，是你自己要听规则的！\n\n如果你的票中奖，全部金币头奖会通过邮件寄给你的角色，还会附上该轮的奖励物品（如果有的话）。记得常看看邮箱！彩票只在本轮有效，下一次开奖会用新的奖池和新的内部票重新开始。如果既没有玩家的票也没有内部票，我们会延长本轮而不是开奖。\n\n想参与吗？去找金发姑娘谈。重要的事由我来办。",
                contribution, duration / DAY, duration / HOUR % 24, duration / MINUTE % 60, fakeTickets);
            if (!settings.enabled || !ready)
                text += "\n\n彩票现在不接受投注，伙计。以上是最新的条款。";
        }
        else if (action == GallywixWinnersAction)
        {
            text = "这是我中奖者账本的最新记录，伙计。看看它，做个好梦吧！\n";
            auto winners = CharacterDatabase.Query(
                CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_RECENT_WINNERS));
            if (!winners)
                text += "\n账本中还没有近期中奖记录。";
            else
                do
                {
                    Field* fields = winners->Fetch();
                    std::string name = fields[0].Get<std::string>();
                    if (name == "Trade Prince Gallywix")
                        name = HouseWinnerName();
                    uint32 copper = fields[1].Get<uint32>();
                    uint32 tickets = fields[2].Get<uint32>();
                    uint32 complimentary = fields[4].Get<uint32>();
                    bool houseWin = fields[3].Get<uint8>() != 0;
                    uint32 total = fields[5].Get<uint32>();
                    if (houseWin)
                        text += Acore::StringFormat("\n{}：头奖 {}金{}银{}铜，内部票 {}，购买票 {}。奖池已被销毁！\n",
                            name, copper / 10000, copper / 100 % 100, copper % 100, tickets,
                            total > tickets ? total - tickets : 0);
                    else if (complimentary)
                        text += Acore::StringFormat("\n{} 用 {} 张票（其中 {} 张赠送）赢得了 {}金{}银{}铜。\n",
                            name, copper / 10000, copper / 100 % 100, copper % 100, tickets, complimentary);
                    else
                        text += Acore::StringFormat("\n{} 用 {} 张购买的票赢得了 {}金{}银{}铜。\n",
                            name, copper / 10000, copper / 100 % 100, copper % 100, tickets);
                } while (winners->NextRow());
        }
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "规则是什么？", GOSSIP_SENDER_MAIN, GallywixRulesAction);
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "最近有谁中奖？", GOSSIP_SENDER_MAIN, GallywixWinnersAction);
        player->PlayerTalkClass->SendDynamicGossipMenu(text, creature->GetGUID());
    }

    LotteryCities advertiser;

    class LotteryWorld : public WorldScript
    {
    public:
        LotteryWorld() : WorldScript("coa_lottery_world",
            { WORLDHOOK_ON_AFTER_CONFIG_LOAD, WORLDHOOK_ON_STARTUP, WORLDHOOK_ON_UPDATE }) { }

        void OnAfterConfigLoad(bool reload) override
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            settings.enabled = sConfigMgr->GetOption<bool>("CoALottery.Enable", true);
            settings.announceWinners = sConfigMgr->GetOption<bool>("CoALottery.AnnounceWinners", true);
            settings.spawnGoldilocks = sConfigMgr->GetOption<bool>("CoALottery.SpawnGoldilocks", true);
            settings.spawnGallywix = sConfigMgr->GetOption<bool>("CoALottery.SpawnGallywix", true);
            settings.advertise = sConfigMgr->GetOption<bool>("CoALottery.Advertise", true);
            settings.advertisementInterval = std::clamp(
                sConfigMgr->GetOption<uint32>("CoALottery.AdvertisementIntervalSeconds", 1800),
                uint32(60), uint32(DAY));
            settings.advertisementPlayerRadius = std::clamp(
                sConfigMgr->GetOption<uint32>("CoALottery.AdvertisementPlayerRadius", 60), uint32(1), uint32(500));
            settings.duration = std::clamp(sConfigMgr->GetOption<uint32>("CoALottery.DrawIntervalSeconds", 604800),
                uint32(60), uint32(365 * DAY));
            settings.seed = std::min(sConfigMgr->GetOption<uint32>("CoALottery.StartingJackpotGold", 0),
                MaximumPot / 10000) * 10000;
            settings.fakeTickets = sConfigMgr->GetOption<uint32>("CoALottery.FakeTickets", 100);
            settings.contribution = std::min(sConfigMgr->GetOption<uint32>("CoALottery.PotContributionPercent", 100),
                uint32(100));
            auto bonusCsv = sConfigMgr->GetOption<std::string>("CoALottery.BonusItems", "97393");
            if (!ParseBonusItems(bonusCsv, settings.bonusItems))
                LOG_ERROR("module.coa_lottery", "Invalid CoALottery.BonusItems CSV; keeping the previous prize pool");
            if (reload)
                Initialize();
            advertiser.Configure();
        }

        void OnStartup() override
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            Initialize();
            advertiser.SyncSpawn();
        }

        void OnUpdate(uint32 diff) override
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            if (settings.enabled && ready && Now() >= round.ends)
            {
                advertiser.UpdateGoldilocksScale();
                DrawIfDue();
            }
            advertiser.Update(diff);
        }

    };

    void AnnounceDraw(std::string const& name, uint32 copper, bool houseWin)
    {
        advertiser.AnnounceResult(name, copper, houseWin);
    }

    struct LotteryAdminEntry
    {
        uint32 guid = 0;
        uint32 tickets = 0;
        uint32 spent = 0;
        uint32 contribution = 0;
        std::string name;
        bool recipient = false;
        uint32 mailId = 0;
    };

    bool LoadAdminEntries(std::vector<LotteryAdminEntry>& entries)
    {
        auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_ADMIN_ENTRIES);
        stmt->SetData(0, round.id);
        auto result = CharacterDatabase.Query(stmt);
        if (!result)
            return false;
        do
        {
            Field* fields = result->Fetch();
            if (fields[0].IsNull())
                continue;
            LotteryAdminEntry entry;
            entry.guid = fields[0].Get<uint32>();
            entry.tickets = fields[1].Get<uint32>();
            entry.spent = fields[2].Get<uint32>();
            entry.contribution = fields[3].Get<uint32>();
            if (!fields[4].IsNull() && !fields[5].IsNull() && fields[6].IsNull())
            {
                entry.name = fields[4].Get<std::string>();
                entry.recipient = !entry.name.empty() && fields[5].Get<uint32>() != 0 &&
                    sCharacterCache->GetCharacterAccountIdByGuid(ObjectGuid(HighGuid::Player, entry.guid)) != 0;
            }
            entries.push_back(std::move(entry));
        } while (result->NextRow());
        return true;
    }

    bool PrepareRefunds(CharacterDatabaseTransaction transaction, uint32 guid,
        std::vector<LotteryAdminEntry>& refunds, uint32& nextPot)
    {
        std::vector<LotteryAdminEntry> entries;
        if (!LoadAdminEntries(entries))
            return false;
        uint64 deduction = 0;
        uint64 now = Now();
        for (auto entry : entries)
        {
            if (guid && entry.guid != guid)
                continue;
            deduction += entry.contribution;
            if (entry.recipient && entry.spent)
            {
                entry.mailId = sObjectMgr->GenerateMailID();
                auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_INS_MAIL);
                stmt->SetData(0, entry.mailId);
                stmt->SetData(1, uint8(MAIL_CREATURE));
                stmt->SetData(2, int8(MAIL_STATIONERY_DEFAULT));
                stmt->SetData(3, uint16(0));
                stmt->SetData(4, GallywixEntry);
                stmt->SetData(5, entry.guid);
                stmt->SetData(6, std::string("加里维克斯的彩票退款"));
                stmt->SetData(7, std::string("你的彩票已被退款，随信附上你支付的全部金币。"));
                stmt->SetData(8, false);
                stmt->SetData(9, uint32(now + 90 * DAY));
                stmt->SetData(10, uint32(now));
                stmt->SetData(11, entry.spent);
                stmt->SetData(12, uint32(0));
                stmt->SetData(13, uint8(MAIL_CHECK_MASK_NONE));
                transaction->Append(stmt);
            }
            auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_LOTTERY_ENTRY);
            stmt->SetData(0, round.id);
            stmt->SetData(1, entry.guid);
            transaction->Append(stmt);
            refunds.push_back(std::move(entry));
        }
        if (deduction > round.pot)
            return false;
        nextPot = round.pot - uint32(deduction);
        auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_LOTTERY_POT);
        stmt->SetData(0, nextPot);
        stmt->SetData(1, round.id);
        transaction->Append(stmt);
        return true;
    }

    void PublishRefunds(ChatHandler* handler, std::vector<LotteryAdminEntry> const& refunds)
    {
        uint64 copper = 0;
        uint32 recipients = 0;
        uint32 skipped = 0;
        for (auto const& entry : refunds)
        {
            if (entry.mailId)
            {
                PublishMail(entry.guid, entry.mailId, entry.spent, Now(), nullptr, true);
                copper += entry.spent;
                ++recipients;
            }
            else if (!entry.recipient && entry.spent)
                ++skipped;
            round.entries.erase(entry.guid);
        }
        round.totalTickets = 0;
        for (auto const& [guid, tickets] : round.entries)
            round.totalTickets += tickets;
        handler->PSendSysMessage("已通过邮件退还 {} 金 {} 银 {} 铜给 {} 个角色；跳过 {} 个已删除的接收者。",
            copper / 10000, copper / 100 % 100, copper % 100, recipients, skipped);
    }

    class LotteryCommands : public CommandScript
    {
    public:
        LotteryCommands() : CommandScript("coa_lottery_commands") { }

        Acore::ChatCommands::ChatCommandTable GetCommands() const override
        {
            using namespace Acore::ChatCommands;
            static ChatCommandTable lotteryCommands =
            {
                { "refund", HandleRefund, SEC_GAMEMASTER, Console::Yes },
                { "info", HandleInfo, SEC_GAMEMASTER, Console::Yes },
                { "enable", HandleEnable, SEC_GAMEMASTER, Console::Yes },
                { "disable", HandleDisable, SEC_GAMEMASTER, Console::Yes },
                { "start", HandleStart, SEC_GAMEMASTER, Console::Yes },
                { "stop", HandleStop, SEC_GAMEMASTER, Console::Yes },
                { "restart", HandleRestart, SEC_GAMEMASTER, Console::Yes },
                { "draw", HandleDraw, SEC_GAMEMASTER, Console::Yes },
                { "advertise", HandleAdvertise, SEC_GAMEMASTER, Console::Yes },
                { "help", HandleHelp, SEC_GAMEMASTER, Console::Yes }
            };
            static ChatCommandTable commands = { { "lottery", lotteryCommands } };
            return commands;
        }

        static bool Error(ChatHandler* handler, std::string_view message)
        {
            handler->SendErrorMessage(message, true);
            return false;
        }

        static bool Storage(ChatHandler* handler)
        {
            if (!storageReady)
                Initialize();
            return storageReady || Error(handler, "彩票存储不可用；请应用角色库迁移。");
        }

        static uint32 Character(ChatHandler* handler, std::string name)
        {
            if (!normalizePlayerName(name))
            {
                Error(handler, "角色名无效。");
                return 0;
            }
            ObjectGuid guid = sCharacterCache->GetCharacterGuidByName(name);
            if (guid.IsEmpty() || !sCharacterCache->GetCharacterAccountIdByGuid(guid))
            {
                Error(handler, "找不到该角色或角色已被删除。");
                return 0;
            }
            return guid.GetCounter();
        }

        static bool HandleHelp(ChatHandler* handler)
        {
            handler->SendSysMessage(".lottery advertise：让加里维克斯立刻喊出一段随机彩票广告，即使自动广告已关闭。必须有正在进行的轮次。");
            handler->SendSysMessage(".lottery refund *|<角色名>：通过邮件退还当前已付费的票据并将其移除；内部票保留，轮次继续进行。");
            handler->SendSysMessage(".lottery info [角色名]：当前时长/剩余时间、内部票、奖池与前十名持票者；指定角色名时显示该角色的票据。");
            handler->SendSysMessage(".lottery enable：恢复已暂停的轮次或按配置开启新轮次。 .lottery disable：暂停倒计时并隐藏彩票 NPC。");
            handler->SendSysMessage(".lottery start [时长] [内部票数] [奖励物品ID]：仅在没有轮次时启动。时长可用秒或 Ns/Nm/Nh/Nd/Nw（60 秒至 365 天）；省略则使用配置值；物品 0 = 无。");
            handler->SendSysMessage(".lottery stop：退还当前所有已付费票据，取消轮次并停用。 .lottery restart：退款/取消后，按配置条款开始一个全新的已启用轮次。");
            handler->SendSysMessage(".lottery draw [角色名]：立即开奖，可指定中奖者。被指定但未参与的角色会获得一张赠送票，为奖池增加 10 金；随后开始一个按配置的新轮次。");
            return true;
        }

        static bool HandleRefund(ChatHandler* handler, std::string const& name)
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            if (!Storage(handler))
                return false;
            if (!ready)
                return Error(handler, "当前没有可退款的彩票轮次。");
            uint32 guid = name == "*" ? 0 : Character(handler, name);
            if (name != "*" && !guid)
                return false;
            auto transaction = CharacterDatabase.BeginTransaction();
            std::vector<LotteryAdminEntry> refunds;
            uint32 pot = 0;
            if (!PrepareRefunds(transaction, guid, refunds, pot) || !Commit(transaction))
                return Error(handler, "退款失败；票据与金币均未被修改。");
            round.pot = pot;
            PublishRefunds(handler, refunds);
            return true;
        }

        static bool HandleInfo(ChatHandler* handler, Optional<std::string> const& name)
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            if (!Storage(handler))
                return false;
            uint32 guid = name ? Character(handler, *name) : 0;
            if (name && !guid)
                return false;
            if (!ready)
            {
                if (name)
                    handler->PSendSysMessage("{} 没有票据；当前也没有进行中的轮次。", *name);
                else
                    handler->SendSysMessage("彩票已停止；当前没有进行中的轮次。");
                return true;
            }
            std::vector<LotteryAdminEntry> entries;
            if (!LoadAdminEntries(entries))
                return Error(handler, "无法读取彩票条目。");
            if (name)
            {
                auto found = std::find_if(entries.begin(), entries.end(),
                    [guid](auto const& entry) { return entry.guid == guid; });
                handler->PSendSysMessage("{} 在第 {} 轮有 {} 张票。", *name,
                    found == entries.end() ? 0 : found->tickets, round.id);
                return true;
            }
            uint64 remaining = Remaining();
            handler->PSendSysMessage("彩票第 {} 轮：{}。时长 {} 秒（{}天 {}时 {}分）；剩余 {} 秒（{}天 {}时 {}分 {}秒）。",
                round.id, round.paused ? "已暂停" : "进行中", round.duration,
                round.duration / DAY, round.duration / HOUR % 24, round.duration / MINUTE % 60,
                remaining, remaining / DAY, remaining / HOUR % 24, remaining / MINUTE % 60, remaining % MINUTE);
            handler->PSendSysMessage("内部票：{}。奖池：{}金{}银{}铜。奖励物品：{}。", round.fakeTickets,
                round.pot / 10000, round.pot / 100 % 100, round.pot % 100, round.bonusItem);
            uint32 rank = 0;
            for (auto const& entry : entries)
                if (entry.recipient && rank < 10)
                    handler->PSendSysMessage("{}。{}：{} 张票，已支付 {}金{}银{}铜。", ++rank,
                        entry.name, entry.tickets, entry.spent / 10000, entry.spent / 100 % 100, entry.spent % 100);
            if (!rank)
                handler->SendSysMessage("尚无角色购买票据。");
            return true;
        }

        static bool SetEnabled(ChatHandler* handler, bool enabled)
        {
            if (!Storage(handler))
                return false;
            if (enabled && !ready)
                return Start(handler, settings.duration,
                    HouseTickets(settings.seed, settings.fakeTickets), std::nullopt);
            auto next = round;
            if (ready && next.paused == enabled)
            {
                next.paused = !enabled;
                next.pausedRemaining = enabled ? 0 : Remaining();
                if (enabled)
                    next.ends = Now() + round.pausedRemaining;
            }
            auto transaction = CharacterDatabase.BeginTransaction();
            AppendControl(transaction, enabled, automaticStart);
            if (ready)
                AppendPause(transaction, next);
            if (!Commit(transaction))
                return Error(handler, "彩票状态更新失败；原状态保持不变。");
            round = std::move(next);
            settings.enabled = enabled;
            nextDrawAttempt = 0;
            advertiser.Configure();
            handler->SendSysMessage(enabled ? "彩票已启用；倒计时继续。": "彩票已停用；倒计时已暂停。");
            return true;
        }

        static bool HandleEnable(ChatHandler* handler)
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            return SetEnabled(handler, true);
        }

        static bool HandleDisable(ChatHandler* handler)
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            return SetEnabled(handler, false);
        }

        static bool Start(ChatHandler* handler, uint32 duration, uint32 fakeTickets, Optional<uint32> bonusItem)
        {
            if (!Storage(handler))
                return false;
            if (ready)
                return Error(handler, "已有彩票正在进行（包括暂停中的轮次）。请先使用 stop 或 restart。");
            if (fakeTickets != HouseTickets(settings.seed, fakeTickets))
                return Error(handler, "内部票会超出奖池或票据数量上限。");
            if (bonusItem && *bonusItem && !sObjectMgr->GetItemTemplate(*bonusItem))
                return Error(handler, "指定的奖励物品不存在。");
            auto id = CharacterDatabase.Query(CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_NEXT_ID));
            if (!id)
                return Error(handler, "无法分配下一个彩票轮次。");
            auto next = NewRound(id->Fetch()[0].Get<uint64>());
            next.duration = duration;
            next.ends = Now() + duration;
            next.fakeTickets = fakeTickets;
            next.pot = settings.seed + fakeTickets * TicketCost;
            if (bonusItem)
                next.bonusItem = *bonusItem;
            auto transaction = CharacterDatabase.BeginTransaction();
            AppendRound(transaction, next);
            AppendControl(transaction, true, true);
            if (!Commit(transaction))
                return Error(handler, "无法启动彩票；没有提交新轮次。");
            round = std::move(next);
            ready = settings.enabled = automaticStart = true;
            nextDrawAttempt = 0;
            advertiser.Configure();
            handler->PSendSysMessage("已启动彩票第 {} 轮：{} 秒，{} 张内部票，奖励物品 {}。",
                round.id, round.duration, round.fakeTickets, round.bonusItem);
            return true;
        }

        static bool HandleStart(ChatHandler* handler, Optional<std::string> const& duration,
            Optional<uint32> fakeTickets, Optional<uint32> bonusItem)
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            uint32 seconds = settings.duration;
            if (duration && !ParseDuration(*duration, seconds))
                return Error(handler, "时长无效：请使用秒或 Ns/Nm/Nh/Nd/Nw，范围 60 秒至 365 天。");
            return Start(handler, seconds,
                fakeTickets.value_or(HouseTickets(settings.seed, settings.fakeTickets)), bonusItem);
        }

        static bool Cancel(ChatHandler* handler, bool restart)
        {
            if (!Storage(handler))
                return false;
            auto transaction = CharacterDatabase.BeginTransaction();
            std::vector<LotteryAdminEntry> refunds;
            uint32 pot = 0;
            if (ready)
            {
                if (!PrepareRefunds(transaction, 0, refunds, pot))
                    return Error(handler, "无法准备票据退款；轮次保持不变。");
                auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_CANCEL_LOTTERY_ROUND);
                stmt->SetData(0, round.id);
                transaction->Append(stmt);
            }
            LotteryRound next;
            if (restart)
            {
                auto id = CharacterDatabase.Query(CharacterDatabase.GetPreparedStatement(CHAR_SEL_LOTTERY_NEXT_ID));
                if (!id)
                    return Error(handler, "无法分配下一个彩票轮次；没有任何改动。");
                next = NewRound(id->Fetch()[0].Get<uint64>());
                AppendRound(transaction, next);
            }
            AppendControl(transaction, restart, restart);
            if (!Commit(transaction))
                return Error(handler, "彩票取消失败；没有提交退款或状态变更。");
            PublishRefunds(handler, refunds);
            round = std::move(next);
            ready = settings.enabled = automaticStart = restart;
            nextDrawAttempt = 0;
            advertiser.Configure();
            handler->SendSysMessage(restart ? "彩票已按配置条款重新开始。": "彩票已停止并停用。");
            return true;
        }

        static bool HandleStop(ChatHandler* handler)
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            return Cancel(handler, false);
        }

        static bool HandleRestart(ChatHandler* handler)
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            return Cancel(handler, true);
        }

        static bool HandleAdvertise(ChatHandler* handler)
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            if (!Storage(handler))
                return false;
            if (!advertiser.Advertise(true))
                return Error(handler, "彩票广告不可用：轮次必须正在进行，且加里维克斯的生成必须已启用。");
            handler->SendSysMessage("加里维克斯已在全区域宣传彩票。");
            return true;
        }

        static bool HandleDraw(ChatHandler* handler, Optional<std::string> const& name)
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            if (!Storage(handler))
                return false;
            if (!ready)
                return Error(handler, "当前没有可开奖的轮次。");
            uint32 guid = name ? Character(handler, *name) : 0;
            if (name && !guid)
                return false;
            if (!DrawIfDue(guid, true))
                return Error(handler, "开奖失败：请检查是否没有参与者、奖池/票据上限、被删除的收件人或数据库错误。");
            advertiser.Configure();
            handler->PSendSysMessage("彩票已开奖；按配置的第 {} 轮正在进行。", round.id);
            return true;
        }
    };

    class LotteryNPC : public CreatureScript
    {
    public:
        LotteryNPC() : CreatureScript("npc_coa_lottery") { }

        bool OnGossipHello(Player* player, Creature* creature) override
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            if (creature->GetEntry() == GallywixEntry)
            {
                ShowGallywix(player, creature);
                return true;
            }
            if (!settings.enabled || !ready || round.paused || Now() >= round.ends)
            {
                ChatHandler(player->GetSession()).SendSysMessage("彩票当前不可用。");
                CloseGossipMenuFor(player);
                return true;
            }
            Show(player, creature);
            return true;
        }

        bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action) override
        {
            std::lock_guard<std::mutex> guard(lotteryMutex);
            if (creature->GetEntry() == GallywixEntry)
            {
                if (sender == GOSSIP_SENDER_MAIN &&
                    player->PlayerTalkClass->GetGossipMenu().GetMenuId() == GallywixMenuId &&
                    (action == GallywixRulesAction || action == GallywixWinnersAction))
                    ShowGallywix(player, creature, action);
                return true;
            }
            if (!settings.enabled || !ready || round.paused ||
                sender != GOSSIP_SENDER_MAIN || !action || action > Options.size())
                return true;
            if (Now() >= round.ends ||
                player->PlayerTalkClass->GetGossipMenu().GetMenuId() != uint32(round.id))
            {
                if (Now() < round.ends)
                {
                    ChatHandler(player->GetSession()).SendSysMessage(
                        "本期已变更，请重新选择你的彩票。");
                    Show(player, creature);
                }
                else
                    CloseGossipMenuFor(player);
                return true;
            }
            uint32 tickets = Options[action - 1].tickets;
            if (!CanPurchase(player->GetMoney(), round.pot, round.totalTickets + round.fakeTickets,
                tickets, round.contribution))
            {
                ChatHandler(player->GetSession()).SendSysMessage(
                    "你的金币不足，或本次购买超过了彩票上限。");
                Show(player, creature);
                return true;
            }
            uint32 guid = player->GetGUID().GetCounter();
            uint32 money = player->GetMoney();
            uint32 newPot = round.pot + Contribution(tickets, round.contribution);
            player->SetMoney(money - tickets * TicketCost);
            auto transaction = CharacterDatabase.BeginTransaction();
            player->SaveGoldToDB(transaction);
            auto* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPSERT_LOTTERY_ENTRY);
            stmt->SetData(0, round.id);
            stmt->SetData(1, guid);
            stmt->SetData(2, tickets);
            stmt->SetData(3, tickets * TicketCost);
            stmt->SetData(4, Contribution(tickets, round.contribution));
            transaction->Append(stmt);
            stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_LOTTERY_POT);
            stmt->SetData(0, newPot);
            stmt->SetData(1, round.id);
            transaction->Append(stmt);
            if (!Commit(transaction))
            {
                player->SetMoney(money);
                ChatHandler(player->GetSession()).SendSysMessage("购买失败，你的金币已退还。");
                LOG_ERROR("module.coa_lottery", "Lottery purchase failed for character {}", guid);
            }
            else
            {
                round.pot = newPot;
                round.totalTickets += tickets;
                round.entries[guid] += tickets;
            }
            Show(player, creature);
            return true;
        }
    };
}

void AddSC_coa_lottery()
{
    new LotteryWorld();
    new LotteryNPC();
    new LotteryCommands();
}
