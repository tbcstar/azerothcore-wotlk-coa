-- 清理 `spell_proc` 里被启动日志报出的无效数据。只改被忽略或无效的列，
-- 不触碰任何有效的触发条件，也不处理缺少 `ProcFlags`/`SpellPhaseMask` 导致 proc 不触发的行。

SET @@SESSION.`innodb_lock_wait_timeout` = 600;

START TRANSACTION;

-- `HitMask` 写成 32767（0x7FFF）：超出有效位 PROC_HIT_MASK_ALL（0x2FFF）。
-- 触发事件本身不支持命中掩码（`ProcFlags` 与命中标志无交集）时直接清零，
-- 否则收敛到全部有效位，保留「任意命中」的原意。
UPDATE `spell_proc`
SET `HitMask` = 0
WHERE `HitMask` = 32767 AND (`ProcFlags` & 0xFFFFFC) = 0;

UPDATE `spell_proc`
SET `HitMask` = 0x2FFF
WHERE `HitMask` = 32767;

-- 效果位 1 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~2
WHERE `SpellId` = 92109 AND (`DisableEffectsMask` & 2) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 272989 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~4
WHERE `SpellId` = 277160 AND (`DisableEffectsMask` & 4) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 277471 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 277485 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 277588 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~4
WHERE `SpellId` = 278135 AND (`DisableEffectsMask` & 4) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 280040 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 280055 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 281110 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~4
WHERE `SpellId` = 281701 AND (`DisableEffectsMask` & 4) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 283851 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 284041 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 284042 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 1、2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~6
WHERE `SpellId` = 284374 AND (`DisableEffectsMask` & 6) <> 0;

-- 效果位 2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~4
WHERE `SpellId` = 500041 AND (`DisableEffectsMask` & 4) <> 0;

-- 效果位 2 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~4
WHERE `SpellId` = 680692 AND (`DisableEffectsMask` & 4) <> 0;

-- 效果位 1 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~2
WHERE `SpellId` = 801076 AND (`DisableEffectsMask` & 2) <> 0;

-- 效果位 0、1 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~3
WHERE `SpellId` = 801096 AND (`DisableEffectsMask` & 3) <> 0;

-- 效果位 1 指向的不是光环效果，这一位在 `DisableEffectsMask` 里没有意义。
UPDATE `spell_proc`
SET `DisableEffectsMask` = `DisableEffectsMask` & ~2
WHERE `SpellId` = 801242 AND (`DisableEffectsMask` & 2) <> 0;

-- 法术 71761 在 `spell_proc` 里有一行，但客户端 `Spell.dbc` 查不到这条法术记录。
-- 该法术由 `spell_mage.cpp` 引用（Deep Freeze 免疫状态），可能是数据缺口而不是脏数据，
-- 因此这里保留这一行，只删除真正重复和无效的掩码。

COMMIT;
