/* Copyright (C) 2016+ AzerothCore, GNU AGPL v3. */

#include "Battleground.h"
#include "BattlegroundMgr.h"
#include "Chat.h"
#include "Config.h"
#include "CreatureScript.h"
#include "DBCStores.h"
#include "MapMgr.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "PlayerScript.h"
#include "ScriptedGossip.h"
#include "WorldPacket.h"
#include "WorldScript.h"
#include "WorldSession.h"

#include <algorithm>
#include <array>
#include <atomic>
#include <chrono>
#include <mutex>
#include <optional>
#include <string>
#include <unordered_map>
#include <vector>

namespace
{
    enum WarGamesGossip : uint32
    {
        MenuTeri = 900031,
        MenuInvitation = 900032,
        TextInvitation = 900032,
        TextExplanation = 900033,
        SenderTeri = 1,
        ActionExplain = 100,
        ActionBack = 101,
        ActionCancel = 102,
        ActionAccept = 103,
        ActionDecline = 104
    };

    struct ArenaChoice
    {
        char const* Name;
        BattlegroundTypeId Type;
    };

    // Labels and order of the original War Games destination list. BATTLEGROUND_TYPE_NONE marks a
    // destination that has not been restored; another map is never substituted for it.
    constexpr std::array<ArenaChoice, 15> ArenaChoices = {{
        {"随机竞技场", BATTLEGROUND_TYPE_NONE}, {"纳格兰竞技场", BATTLEGROUND_NA},
        {"刀锋山竞技场", BATTLEGROUND_BE}, {"洛丹伦废墟竞技场", BATTLEGROUND_RL},
        {"虎踞峰竞技场", BATTLEGROUND_TYPE_NONE}, {"守护者大厅", BATTLEGROUND_TYPE_NONE},
        {"阿莎曼之陨", BATTLEGROUND_TYPE_NONE}, {"托尔维隆竞技场", BATTLEGROUND_TYPE_NONE},
        {"往昔回响竞技场", BATTLEGROUND_TYPE_NONE}, {"玛卓克萨斯竞技场", BATTLEGROUND_TYPE_NONE},
        {"纳格兰竞技场（高清）", BATTLEGROUND_TYPE_NONE}, {"刀锋山竞技场（高清）", BATTLEGROUND_TYPE_NONE},
        {"扭曲虚空", BATTLEGROUND_TYPE_NONE}, {"萨克雷帝国竞技场", BATTLEGROUND_TYPE_NONE},
        {"黑鸦堡垒", BATTLEGROUND_TYPE_NONE}
    }};

    struct PendingInvitation
    {
        ObjectGuid Challenger;
        std::string ChallengerName;
        uint64 Token;
        uint32 Choice;
        bool Shown = false;
    };

    struct AcceptedInvitation
    {
        ObjectGuid Opponent;
        uint64 Token;
    };

    std::atomic<bool> enabled{true};

    // Leaders answer from their own map threads, which update in parallel.
    std::mutex invitationMutex;
    std::unordered_map<ObjectGuid, PendingInvitation> pendingInvitations;
    std::atomic<bool> unshownInvitations{false};

    // Matches are created on the world thread, like every other battleground instance.
    std::mutex acceptedMutex;
    std::vector<AcceptedInvitation> acceptedInvitations;

    void Notice(Player* player, char const* text)
    {
        if (player && player->GetSession())
            ChatHandler(player->GetSession()).SendSysMessage(text);
    }

    void CancelPending(Player* player)
    {
        std::lock_guard<std::mutex> lock(invitationMutex);
        for (auto itr = pendingInvitations.begin(); itr != pendingInvitations.end();)
        {
            if (itr->first == player->GetGUID() || itr->second.Challenger == player->GetGUID())
            {
                sBattlegroundMgr->CancelWargame(player, itr->second.Token);
                itr = pendingInvitations.erase(itr);
            }
            else
                ++itr;
        }

        unshownInvitations.store(std::any_of(pendingInvitations.begin(), pendingInvitations.end(),
            [](auto const& entry) { return !entry.second.Shown; }));
    }

    bool AbortMatch(uint32 instance)
    {
        Battleground* battleground = sBattlegroundMgr->GetBattleground(instance, BATTLEGROUND_TYPE_NONE);
        if (!battleground || !battleground->IsWargame())
            return false;

        battleground->SetStatus(STATUS_WAIT_LEAVE);
        battleground->SetEndTime(0);
        return true;
    }

    void ReleasePlayer(Player* player)
    {
        player->SetBattlegroundId(0, BATTLEGROUND_TYPE_NONE, PLAYER_MAX_BATTLEGROUND_QUEUES, false, false,
            TEAM_NEUTRAL);
    }

    uint32 StartAcceptedMatch(Player* opponent, uint64 invitation)
    {
        std::optional<WargameAdmission> admission = sBattlegroundMgr->AcceptWargame(opponent, invitation);
        if (!admission)
            return 0;

        Battleground* original = sBattlegroundMgr->GetBattlegroundTemplate(admission->Type);
        if (!original)
            return 0;

        PvPDifficultyEntry const* bracket = GetBattlegroundBracketByLevel(original->GetMapId(), opponent->GetLevel());
        Battleground* battleground = sBattlegroundMgr->CreateNewWargame(admission->Type, bracket);
        if (!battleground)
            return 0;

        battleground->StartBattleground();

        for (uint8 side = 0; side < PVP_TEAMS_COUNT; ++side)
        {
            for (ObjectGuid guid : admission->Rosters[side])
            {
                Player* player = ObjectAccessor::FindPlayer(guid);
                if (!player)
                {
                    AbortMatch(battleground->GetInstanceID());
                    return 0;
                }

                TeamId const team = static_cast<TeamId>(side);
                player->SetEntryPoint();
                player->SetBattlegroundId(battleground->GetInstanceID(), battleground->GetBgTypeID(), 0, true,
                    false, team);

                // The destination map must exist before any transfer can be cancelled: a worldport
                // acknowledgement cannot create an instance that is already leaving.
                if (!sMapMgr->CreateMap(battleground->GetMapId(), player))
                {
                    ReleasePlayer(player);
                    AbortMatch(battleground->GetInstanceID());
                    return 0;
                }

                battleground->IncreaseInvitedCount(team);
                if (!sBattlegroundMgr->SendToBattleground(player, battleground->GetInstanceID(), admission->Type))
                {
                    battleground->DecreaseInvitedCount(team);
                    ReleasePlayer(player);
                    AbortMatch(battleground->GetInstanceID());
                    return 0;
                }

                WorldPacket status;
                sBattlegroundMgr->BuildBattlegroundStatusPacket(&status, battleground, 0, STATUS_IN_PROGRESS, 0,
                    battleground->GetStartTime(), battleground->GetArenaType(), team, false);
                player->SendDirectMessage(&status);
            }
        }

        return battleground->GetInstanceID();
    }

    std::optional<PendingInvitation> TakeUnshownInvitation(Player* player)
    {
        std::lock_guard<std::mutex> lock(invitationMutex);
        auto const found = pendingInvitations.find(player->GetGUID());
        if (found == pendingInvitations.end() || found->second.Shown)
            return std::nullopt;

        found->second.Shown = true;
        unshownInvitations.store(std::any_of(pendingInvitations.begin(), pendingInvitations.end(),
            [](auto const& entry) { return !entry.second.Shown; }));
        return found->second;
    }

    std::optional<PendingInvitation> FindInvitation(Player* player)
    {
        std::lock_guard<std::mutex> lock(invitationMutex);
        auto const found = pendingInvitations.find(player->GetGUID());
        return found == pendingInvitations.end() ? std::nullopt : std::optional<PendingInvitation>(found->second);
    }

    void ShowInvitation(Player* player, PendingInvitation const& invitation)
    {
        ClearGossipMenuFor(player);
        player->PlayerTalkClass->GetGossipMenu().SetMenuId(MenuInvitation);
        std::string const arena = ArenaChoices[invitation.Choice].Name;
        std::string const prompt = invitation.ChallengerName + " 向你和你所在的小队发起战争游戏挑战，地点："
            + arena + "。\n\n准备应战了吗？接受即可进入比赛。";
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "接受挑战：" + invitation.ChallengerName + " - " + arena,
            SenderTeri, ActionAccept, prompt, 0, false);
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "拒绝挑战。", SenderTeri, ActionDecline);
        SendGossipMenuFor(player, TextInvitation, player->GetGUID());
    }
}

class npc_war_games_teri_glozilk final : public CreatureScript
{
public:
    npc_war_games_teri_glozilk() : CreatureScript("npc_coa_teri_glozilk") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (!enabled.load())
            return false;

        creature->SetFacingToObject(player);
        if (std::optional<PendingInvitation> const incoming = FindInvitation(player))
        {
            ShowInvitation(player, *incoming);
            return true;
        }

        ClearGossipMenuFor(player);
        player->PlayerTalkClass->GetGossipMenu().SetMenuId(MenuTeri);
        for (uint32 i = 0; i < ArenaChoices.size(); ++i)
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, ArenaChoices[i].Name, SenderTeri, i, "", 0, true);
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, "给我讲讲战争游戏。", SenderTeri, ActionExplain);

        bool challenging = false;
        {
            std::lock_guard<std::mutex> lock(invitationMutex);
            challenging = std::any_of(pendingInvitations.begin(), pendingInvitations.end(),
                [player](auto const& entry) { return entry.second.Challenger == player->GetGUID(); });
        }
        if (challenging)
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "取消我待处理的挑战。", SenderTeri, ActionCancel);

        SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, creature);
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action) override
    {
        if (sender != SenderTeri)
            return true;

        if (action == ActionExplain)
        {
            ClearGossipMenuFor(player);
            player->PlayerTalkClass->GetGossipMenu().SetMenuId(MenuTeri);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "选择竞技场。", SenderTeri, ActionBack);
            SendGossipMenuFor(player, TextExplanation, creature);
        }
        else if (action == ActionBack || action == ActionCancel)
        {
            if (action == ActionCancel)
                CancelPending(player);
            OnGossipHello(player, creature);
        }

        return true;
    }

    bool OnGossipSelectCode(Player* player, Creature* /*creature*/, uint32 sender, uint32 action,
        char const* code) override
    {
        if (sender != SenderTeri || action >= ArenaChoices.size() || !code)
            return true;

        if (ArenaChoices[action].Type == BATTLEGROUND_TYPE_NONE)
        {
            Notice(player, "那个战场还没有准备好开打。");
            return true;
        }

        std::string name(code);
        Player* opponent = normalizePlayerName(name) ? ObjectAccessor::FindPlayerByName(name) : nullptr;
        uint64 const token = sBattlegroundMgr->RequestWargame(player, opponent, ArenaChoices[action].Type,
            std::chrono::steady_clock::time_point::max());
        if (!token)
        {
            Notice(player, "我现在无法安排这场比赛。请确认两位队长和他们的队伍"
                "都已就绪，然后再试一次。");
            return true;
        }

        {
            std::lock_guard<std::mutex> lock(invitationMutex);
            pendingInvitations[opponent->GetGUID()] = { player->GetGUID(), player->GetName(), token, action };
            unshownInvitations.store(true);
        }

        CloseGossipMenuFor(player);
        Notice(player, "挑战已经发出。看看他们是否敢应战！");
        return true;
    }
};

class WarGamesConsent final : public PlayerScript
{
public:
    WarGamesConsent() : PlayerScript("WarGamesConsent",
        { PLAYERHOOK_ON_GOSSIP_SELECT, PLAYERHOOK_ON_LOGOUT, PLAYERHOOK_ON_UPDATE }) { }

    void OnPlayerGossipSelect(Player* player, uint32 menu, uint32 sender, uint32 action) override
    {
        if (menu != MenuInvitation || sender != SenderTeri || (action != ActionAccept && action != ActionDecline))
            return;

        PendingInvitation invitation{};
        {
            std::lock_guard<std::mutex> lock(invitationMutex);
            auto const found = pendingInvitations.find(player->GetGUID());
            if (found == pendingInvitations.end())
                return;

            invitation = found->second;
            pendingInvitations.erase(found);
        }

        CloseGossipMenuFor(player);
        ClearGossipMenuFor(player);

        if (action == ActionDecline)
        {
            sBattlegroundMgr->CancelWargame(player, invitation.Token);
            Notice(ObjectAccessor::FindPlayer(invitation.Challenger),
                "对方这一次拒绝了。换个对手，我们再试一次。");
            return;
        }

        std::lock_guard<std::mutex> lock(acceptedMutex);
        acceptedInvitations.push_back({ player->GetGUID(), invitation.Token });
    }

    void OnPlayerUpdate(Player* player, uint32 /*diff*/) override
    {
        if (!unshownInvitations.load() || !player->IsInWorld())
            return;

        if (std::optional<PendingInvitation> const invitation = TakeUnshownInvitation(player))
            ShowInvitation(player, *invitation);
    }

    void OnPlayerLogout(Player* player) override
    {
        CancelPending(player);
    }
};

class WarGamesWorld final : public WorldScript
{
public:
    WarGamesWorld() : WorldScript("WarGamesWorld", { WORLDHOOK_ON_AFTER_CONFIG_LOAD, WORLDHOOK_ON_UPDATE }) { }

    void OnAfterConfigLoad(bool /*reload*/) override
    {
        enabled.store(sConfigMgr->GetOption<bool>("WarGames.Enable", true));
    }

    void OnUpdate(uint32 /*diff*/) override
    {
        std::vector<AcceptedInvitation> accepted;
        {
            std::lock_guard<std::mutex> lock(acceptedMutex);
            accepted.swap(acceptedInvitations);
        }

        for (AcceptedInvitation const& invitation : accepted)
        {
            Player* opponent = ObjectAccessor::FindPlayer(invitation.Opponent);
            if (opponent && !StartAcceptedMatch(opponent, invitation.Token))
                Notice(opponent, "该挑战已失效。");
        }
    }
};

void AddWarGamesScripts()
{
    new npc_war_games_teri_glozilk();
    new WarGamesConsent();
    new WarGamesWorld();
}
