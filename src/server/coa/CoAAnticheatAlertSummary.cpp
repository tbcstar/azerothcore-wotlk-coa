/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license:
 * https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#include "Chat.h"
#include "Common.h"
#include "Config.h"
#include "DatabaseEnv.h"
#include "Log.h"
#include "Player.h"
#include "QueryResult.h"
#include "RBAC.h"
#include "ScriptMgr.h"
#include "StringFormat.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "WorldSessionMgr.h"

#include <algorithm>
#include <string>
#include <vector>

namespace
{
    uint32 constexpr AlertSummaryDefaultSeconds = 300;
    uint32 constexpr AlertSummarySuspectLimit = 6;

    struct AlertAggregate
    {
        uint32 Account = 0;
        std::string Name;
        std::string Reason;
        uint32 Count = 0;
        uint32 NewestId = 0;
    };
}

class CoAAnticheatAlertSummary final : public WorldScript
{
public:
    CoAAnticheatAlertSummary() : WorldScript("CoAAnticheatAlertSummary", {
        WORLDHOOK_ON_AFTER_CONFIG_LOAD, WORLDHOOK_ON_STARTUP, WORLDHOOK_ON_UPDATE }) { }

    void OnAfterConfigLoad(bool) override
    {
        IntervalSeconds = sConfigMgr->GetOption<uint32>("CoA.Anticheat.AlertSummarySeconds", AlertSummaryDefaultSeconds);
        ElapsedMs = 0;
    }

    void OnStartup() override
    {
        LastReportedId = 0;
        BaselinePending = true;
        ElapsedMs = 0;
    }

    void OnUpdate(uint32 diff) override
    {
        if (!IntervalSeconds)
            return;

        ElapsedMs += diff;
        if (ElapsedMs < IntervalSeconds * IN_MILLISECONDS)
            return;

        ElapsedMs = 0;
        Report(Collect());
    }

private:
    std::vector<AlertAggregate> Collect()
    {
        std::vector<AlertAggregate> aggregates;

        if (BaselinePending)
        {
            BaselinePending = false;
            if (QueryResult baseline = CharacterDatabase.Query("SELECT MAX(id) FROM player_anticheat_alert"))
                LastReportedId = baseline->Fetch()[0].Get<uint32>();
            return aggregates;
        }

        QueryResult result = CharacterDatabase.Query(Acore::StringFormat(
            "SELECT account, MAX(name), reason, COUNT(*), MAX(id) FROM player_anticheat_alert "
            "WHERE id > {} GROUP BY account, reason ORDER BY COUNT(*) DESC, MAX(id) DESC LIMIT {}",
            LastReportedId, AlertSummarySuspectLimit));

        if (!result)
            return aggregates;

        do
        {
            Field* fields = result->Fetch();
            AlertAggregate& aggregate = aggregates.emplace_back();
            aggregate.Account = fields[0].Get<uint32>();
            aggregate.Name = fields[1].Get<std::string>();
            aggregate.Reason = fields[2].Get<std::string>();
            aggregate.Count = fields[3].Get<uint32>();
            aggregate.NewestId = fields[4].Get<uint32>();
            LastReportedId = std::max(LastReportedId, aggregate.NewestId);
        } while (result->NextRow());

        return aggregates;
    }

    void Report(std::vector<AlertAggregate> const& aggregates)
    {
        if (aggregates.empty())
            return;

        uint32 const minutes = std::max<uint32>(IntervalSeconds / 60, 1);

        Announce(Acore::StringFormat("|cffff6060[反作弊]|r 最近 {} 分钟内新增 {} 组客户端告警：",
            minutes, uint32(aggregates.size())));

        for (AlertAggregate const& aggregate : aggregates)
        {
            Announce(Acore::StringFormat("  |cffffffff{}|r 账号 {} 原因 {} 共 {} 次",
                aggregate.Name, aggregate.Account, aggregate.Reason, aggregate.Count));

            LOG_INFO("anticheat", "alert summary: account={} name={} reason={} count={} newest={}",
                aggregate.Account, aggregate.Name, aggregate.Reason, aggregate.Count, aggregate.NewestId);
        }
    }

    void Announce(std::string const& text)
    {
        WorldPacket packet;
        ChatHandler::BuildChatPacket(packet, CHAT_MSG_SYSTEM, LANG_UNIVERSAL, nullptr, nullptr, text);

        for (auto const& itr : sWorldSessionMgr->GetAllSessions())
        {
            WorldSession* session = itr.second;
            if (session && session->GetPlayer() && session->GetPlayer()->IsInWorld() &&
                session->GetSecurity() >= SEC_GAMEMASTER)
                session->SendPacket(&packet);
        }
    }

    uint32 IntervalSeconds = AlertSummaryDefaultSeconds;
    uint32 ElapsedMs = 0;
    uint32 LastReportedId = 0;
    bool BaselinePending = true;
};

void AddSC_CoAAnticheatAlertSummary()
{
    new CoAAnticheatAlertSummary();
}
