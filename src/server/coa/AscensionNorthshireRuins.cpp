/* Copyright (C) 2016+ AzerothCore, GNU AGPL v3. */
#include "GameObject.h"
#include "GameObjectScript.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "Random.h"
#include "TemporarySummon.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellScriptLoader.h"
#include <algorithm>
#include <array>
#include <chrono>

namespace
{
constexpr uint32 QUEST_ACCURSED_SISTERHOOD = 1660003;
constexpr uint32 QUEST_WORM_EATEN_APPLE = 1660058;
constexpr uint32 NPC_KOBOLD_PROSPECTOR = 162915;
constexpr uint32 AmbusherIdleLifetimeMs = 30000;

struct Relic
{
    uint32 gameObject;
    uint32 spell;
    uint32 credit;
    uint32 quest;
    std::chrono::seconds respawn;
    uint32 ambusher;
};

constexpr std::array<Relic, 5> Relics = {{
    {2300520, 256701, 161715, QUEST_ACCURSED_SISTERHOOD, std::chrono::seconds(120), 0},
    {2300521, 256726, 161824, QUEST_ACCURSED_SISTERHOOD, std::chrono::seconds(120), 0},
    {2300522, 256701, 161825, QUEST_ACCURSED_SISTERHOOD, std::chrono::seconds(120), 0},
    {2300523, 256726, 161826, QUEST_ACCURSED_SISTERHOOD, std::chrono::seconds(120), 0},
    {2300579, 256726, 162940, QUEST_WORM_EATEN_APPLE, std::chrono::seconds(60), NPC_KOBOLD_PROSPECTOR},
}};

struct RopeLanding
{
    ObjectGuid::LowType spawn;
    float x;
    float y;
    float z;
    float orientation;
};

constexpr std::array<RopeLanding, 3> RopeLandings = {{
    {7910011, -8613.5f, -566.9f, 149.652f, 2.094f},
    {7910012, -8603.1f, -580.0f, 150.34f, 3.142f},
    {7910013, -8597.5f, -564.5f, 150.81f, 0.0f},
}};

Relic const* FindRelic(uint32 gameObject)
{
    auto relic = std::find_if(Relics.begin(), Relics.end(), [gameObject](Relic const& r) { return r.gameObject == gameObject; });
    return relic == Relics.end() ? nullptr : &*relic;
}

bool ObjectiveOpen(Player* player, Relic const& relic)
{
    Quest const* quest = sObjectMgr->GetQuestTemplate(relic.quest);
    if (!quest || player->GetQuestStatus(relic.quest) != QUEST_STATUS_INCOMPLETE)
        return false;
    for (uint8 i = 0; i < QUEST_OBJECTIVES_COUNT; ++i)
        if (quest->RequiredNpcOrGo[i] == int32(relic.credit))
            return player->GetReqKillOrCastCurrentCount(relic.quest, int32(relic.credit)) < quest->RequiredNpcOrGoCount[i];
    return false;
}

class go_coa_abbess_relic : public GameObjectScript
{
public:
    go_coa_abbess_relic() : GameObjectScript("go_coa_abbess_relic") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        Relic const* relic = FindRelic(go->GetEntry());
        if (relic && ObjectiveOpen(player, *relic) && !player->IsNonMeleeSpellCast(false))
            player->CastSpell(go, relic->spell, false);
        return true;
    }
};

class go_coa_theologian_rope : public GameObjectScript
{
public:
    go_coa_theologian_rope() : GameObjectScript("go_coa_theologian_rope") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        auto rope = std::find_if(RopeLandings.begin(), RopeLandings.end(),
            [go](RopeLanding const& r) { return r.spawn == go->GetSpawnId(); });
        if (rope != RopeLandings.end())
            player->NearTeleportTo(rope->x, rope->y, rope->z, rope->orientation);
        return true;
    }
};

class spell_coa_abbess_relic_prayer : public SpellScript
{
    PrepareSpellScript(spell_coa_abbess_relic_prayer);

    void HandlePrayer(SpellEffIndex)
    {
        Player* player = GetCaster() ? GetCaster()->ToPlayer() : nullptr;
        GameObject* go = GetHitGObj();
        Relic const* relic = go ? FindRelic(go->GetEntry()) : nullptr;
        if (!player || !relic || !ObjectiveOpen(player, *relic))
            return;

        player->KilledMonsterCredit(relic->credit);
        if (relic->ambusher && roll_chance_i(50))
            if (TempSummon* ambusher = go->SummonCreature(relic->ambusher, *go, TEMPSUMMON_TIMED_DESPAWN_OOC_ALIVE,
                                                          AmbusherIdleLifetimeMs))
                ambusher->AI()->AttackStart(player);
        go->DespawnOrUnsummon(0ms, relic->respawn);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_coa_abbess_relic_prayer::HandlePrayer, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};
}

void AddSC_AscensionNorthshireRuins()
{
    new go_coa_abbess_relic();
    new go_coa_theologian_rope();
    RegisterSpellScript(spell_coa_abbess_relic_prayer);
}
