/* Copyright (C) 2016+ AzerothCore, GNU AGPL v3. */

#include "Player.h"
#include "PlayerScript.h"
#include "ScriptMgr.h"
#include "WorldPacket.h"
#include <array>
#include <cstring>

namespace PowerTooltips
{
constexpr uint16 PatchGlobalStringsOpcode = 0x0676;
constexpr uint32 AppliesInGame = 0x1;
constexpr uint32 AppliesAtLogin = 0x2;

struct ClientString
{
    uint32 id;
    char const* key;
    char const* text;
};

constexpr std::array<ClientString, 8> PowerStrings = { {
    { 9700101, "PVE_POWER_TOOLTIP1", "对生物造成的伤害提高：%g%%。" },
    { 9700102, "PVE_POWER_TOOLTIP2", "受到生物造成的伤害降低：%g%%。" },
    { 9700103, "PVE_POWER_TOOLTIP3", "在副本中造成的治疗与吸收效果提高：%g%%。" },
    { 9700104, "PVP_POWER_TOOLTIP1", "对玩家造成的伤害提高：%g%%。" },
    { 9700105, "PVP_POWER_TOOLTIP2", "精神主属性使你在战争模式或高风险状态的野外、竞技场与战场中"
        "造成的治疗与吸收效果提高：%g%%。" },
    { 9700106, "PVP_POWER_TOOLTIP2_ALT", "使你在战争模式或高风险状态的野外、竞技场与战场中"
        "造成的治疗与吸收效果提高：%g%%。" },
    { 9700107, "PVP_POWER_TOOLTIP4", "对生物造成的伤害提高：%g%%。" },
    { 9700108, "PVP_POWER_TOOLTIP5", "受到生物造成的伤害降低：%g%%。" },
} };

class DecimalPercentages : public PlayerScript
{
public:
    DecimalPercentages() : PlayerScript("PowerTooltipDecimals", { PLAYERHOOK_ON_LOGIN }) { }

    void OnPlayerLogin(Player* player) override
    {
        for (ClientString const& string : PowerStrings)
        {
            WorldPacket data(PatchGlobalStringsOpcode, 32 + std::strlen(string.key) + std::strlen(string.text));
            data << string.id << uint32(AppliesInGame | AppliesAtLogin) << uint32(0) << uint32(0);
            data << string.key << string.text;
            player->SendDirectMessage(&data);
        }
    }
};
}

void AddSC_AscensionPowerTooltips()
{
    new PowerTooltips::DecimalPercentages();
}
