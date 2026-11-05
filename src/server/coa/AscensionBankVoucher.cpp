/* Copyright (C) 2016+ AzerothCore, GNU AGPL v3. */
#include "Chat.h"
#include "Guild.h"
#include "Item.h"
#include "ItemScript.h"
#include "Player.h"
#include "ScriptMgr.h"

namespace
{
enum BankVoucher : uint32
{
    OrnateBankVoucher = 102130,
    GuildVaultVoucher = 102131,
    UnlockVisual = 47292
};

class item_ascension_bank_voucher : public ItemScript
{
public:
    item_ascension_bank_voucher() : ItemScript("item_ascension_bank_voucher") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const&) override
    {
        if (item->GetEntry() != OrnateBankVoucher)
            return false;

        player->SendEquipError(EQUIP_ERR_NONE, item, nullptr);
        constexpr uint8 bankSlots = BANK_SLOT_BAG_END - BANK_SLOT_BAG_START;
        if (!player->IsAlive() || player->IsInCombat() || player->GetBankBagSlotCount() >= bankSlots)
            return true;

        player->SetBankBagSlotCount(bankSlots);
        player->UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BUY_BANK_SLOT);
        uint32 count = 1;
        player->DestroyItemCount(item, count, true);

        player->CastSpell(player, UnlockVisual, true);
        return true;
    }
};

class item_ascension_guild_vault_voucher : public ItemScript
{
public:
    item_ascension_guild_vault_voucher() : ItemScript("item_ascension_guild_vault_voucher") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const&) override
    {
        if (item->GetEntry() != GuildVaultVoucher)
            return false;

        player->SendEquipError(EQUIP_ERR_NONE, item, nullptr);

        ChatHandler handler(player->GetSession());
        Guild* guild = player->GetGuild();
        if (!guild || guild->GetLeaderGUID() != player->GetGUID())
        {
            handler.SendSysMessage("只有公会会长才能解锁公会仓库分页。");
            return true;
        }

        if (!guild->HandleUnlockBankTab(player->GetSession()))
        {
            handler.SendSysMessage("你的公会仓库已经拥有所有分页。");
            return true;
        }

        handler.SendSysMessage("你的公会仓库已解锁一个新的分页。");
        uint32 count = 1;
        player->DestroyItemCount(item, count, true);
        return true;
    }
};
}

void AddSC_AscensionBankVoucher()
{
    new item_ascension_bank_voucher();
    new item_ascension_guild_vault_voucher();
}
