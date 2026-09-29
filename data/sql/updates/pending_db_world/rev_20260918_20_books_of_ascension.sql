-- Books of Ascension: restore the two companion creatures the rotation was missing, the
-- Ethereal Bazaar vendor that sold the book, and the gossip text the realm used.
--
-- Every value here is recovered, not invented:
--   creatures 75118 / 499992 : cachedata/union/creaturecache.tsv.gz (Client captures)
--   vendor 900007 Tiraxis    : the same capture, plus the vendor observations in
--                              cachedata/lua/harvest/vendors.tsv (slot 21, 350x 975001)
--   npc_text 22 / 19107 / 19108 / 90007 : cachedata/union/npccache.tsv.gz (Client captures)
--   spawn position           : the community atlas observation for npc 900007
--                              (Stormwind, map 0, world -8803.780 / 670.239 / 96.200)
--   model_info 48632         : the sibling book prop 48501, the same kind of flat object,
--                              which main's rev_20260831_00_local_collectible_creatures.sql
--                              carries at the same values
--
-- The two creatures are stored as clones of 75115 "Book of Ascension", the sibling that
-- already carries the npc_ascension_training_book script, then corrected with the archived
-- name, model and health modifier, so no template field is invented.
--
-- Anything from the original realm that this cannot recover: the book's price is paid in
-- Bazaar Tokens (975001), which on the original were bought for gold or from the shop; and
-- the original book opened a Class Trainer that ranked spells up, while this realm's
-- npc_ascension_training_book restores the abilities its progression service grants.

-- ---------------------------------------------------------------------------
-- 1. The two books that summoned nothing: 75118 (Beginner's) and 499992
-- ---------------------------------------------------------------------------
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `CreatureImmunitiesId`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
  SELECT
    75118,
    `difficulty_entry_1`,
    `difficulty_entry_2`,
    `difficulty_entry_3`,
    `KillCredit1`,
    `KillCredit2`,
    '初学者飞升之书',
    `subname`,
    `IconName`,
    `gossip_menu_id`,
    `minlevel`,
    `maxlevel`,
    `exp`,
    `faction`,
    `npcflag`,
    `speed_walk`,
    `speed_run`,
    `speed_swim`,
    `speed_flight`,
    `detection_range`,
    `rank`,
    `dmgschool`,
    `DamageModifier`,
    `BaseAttackTime`,
    `RangeAttackTime`,
    `BaseVariance`,
    `RangeVariance`,
    `unit_class`,
    `unit_flags`,
    `unit_flags2`,
    `dynamicflags`,
    `family`,
    `type`,
    `type_flags`,
    `lootid`,
    `pickpocketloot`,
    `skinloot`,
    `PetSpellDataId`,
    `VehicleId`,
    `mingold`,
    `maxgold`,
    `AIName`,
    `MovementType`,
    `HoverHeight`,
    1.395,
    `ManaModifier`,
    `ArmorModifier`,
    `ExperienceModifier`,
    `RacialLeader`,
    `movementId`,
    `RegenHealth`,
    `CreatureImmunitiesId`,
    `flags_extra`,
    `ScriptName`,
    `VerifiedBuild`
  FROM `creature_template` WHERE `entry` = 75115;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `CreatureImmunitiesId`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
  SELECT
    499992,
    `difficulty_entry_1`,
    `difficulty_entry_2`,
    `difficulty_entry_3`,
    `KillCredit1`,
    `KillCredit2`,
    '飞升之书',
    `subname`,
    `IconName`,
    `gossip_menu_id`,
    `minlevel`,
    `maxlevel`,
    `exp`,
    `faction`,
    `npcflag`,
    `speed_walk`,
    `speed_run`,
    `speed_swim`,
    `speed_flight`,
    `detection_range`,
    `rank`,
    `dmgschool`,
    `DamageModifier`,
    `BaseAttackTime`,
    `RangeAttackTime`,
    `BaseVariance`,
    `RangeVariance`,
    `unit_class`,
    `unit_flags`,
    `unit_flags2`,
    `dynamicflags`,
    `family`,
    `type`,
    `type_flags`,
    `lootid`,
    `pickpocketloot`,
    `skinloot`,
    `PetSpellDataId`,
    `VehicleId`,
    `mingold`,
    `maxgold`,
    `AIName`,
    `MovementType`,
    `HoverHeight`,
    1.0,
    `ManaModifier`,
    `ArmorModifier`,
    `ExperienceModifier`,
    `RacialLeader`,
    `movementId`,
    `RegenHealth`,
    `CreatureImmunitiesId`,
    `flags_extra`,
    `ScriptName`,
    `VerifiedBuild`
  FROM `creature_template` WHERE `entry` = 75115;
REPLACE INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(75118, 0, 48501, 1, 1, NULL),
(499992, 0, 48632, 1, 1, NULL);

-- The creature cannot spawn without this row.  The core asks `creature_model_info` for the
-- display's model - ObjectMgr::GetCreatureModelRandomGender returns nothing when the display
-- has no row - and Creature::LoadFromDB then logs "has no model ... can't load" and gives up,
-- so the Book of Ascension a player buys would summon nothing.  Display 48632 has no row and
-- shares its model id with no other display to copy from, so the row carries the sibling book
-- prop's values: 48501 is the same kind of flat object at 0.01 / 0.01, gender 2 ("none").
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`) VALUES
(48632, 0.01, 0.01, 2, 0);

-- ---------------------------------------------------------------------------
-- 2. Tiraxis, The Ethereal Bazaar (900007) -- the vendor that sold the book
-- ---------------------------------------------------------------------------
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `CreatureImmunitiesId`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
  SELECT
    900007,
    `difficulty_entry_1`,
    `difficulty_entry_2`,
    `difficulty_entry_3`,
    `KillCredit1`,
    `KillCredit2`,
    '提拉西斯',
    '虚灵市集',
    `IconName`,
    90007,
    `minlevel`,
    `maxlevel`,
    `exp`,
    `faction`,
    129,
    `speed_walk`,
    `speed_run`,
    `speed_swim`,
    `speed_flight`,
    `detection_range`,
    `rank`,
    `dmgschool`,
    `DamageModifier`,
    `BaseAttackTime`,
    `RangeAttackTime`,
    `BaseVariance`,
    `RangeVariance`,
    `unit_class`,
    `unit_flags`,
    `unit_flags2`,
    `dynamicflags`,
    `family`,
    `type`,
    134217728,
    `lootid`,
    `pickpocketloot`,
    `skinloot`,
    `PetSpellDataId`,
    `VehicleId`,
    `mingold`,
    `maxgold`,
    `AIName`,
    `MovementType`,
    `HoverHeight`,
    2.48016,
    `ManaModifier`,
    `ArmorModifier`,
    `ExperienceModifier`,
    `RacialLeader`,
    `movementId`,
    `RegenHealth`,
    `CreatureImmunitiesId`,
    `flags_extra`,
    `ScriptName`,
    `VerifiedBuild`
  FROM `creature_template` WHERE `entry` = 2672;
REPLACE INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(900007, 0, 20986, 1, 1, NULL);

-- He is a vendor and his template carries CREATURE_TYPE_FLAG_FORCE_GOSSIP, so the core
-- shows his greeting and then his menu.  This core builds menu options only from
-- `gossip_menu_option`, so his menu needs the same browse option the realm's default
-- menu (MenuID 0 / OptionID 1) carries, copied verbatim.
REPLACE INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (90007, 90007);
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
  (90007, 1, 1, '我想浏览你的货物', 3370, 3, 128, 0, 0, 0, 0, '', 0, 0);

DELETE FROM `creature` WHERE `guid` BETWEEN 9000001 AND 9000010;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000001, 900007, 0, 0, 0, 1, 1, 0, -8803.780, 670.239, 96.200, 4.712, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, '飞升之书：提拉西斯（已恢复）');

-- Book of Ascension, 350 Bazaar Tokens.  ExtendedCost 3015 is the client's own
-- ItemExtendedCost row for exactly 975001 x 350, so the price is the recovered one.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
  (900007, 21, 98457, 0, 0, 3015, NULL);

-- ---------------------------------------------------------------------------
-- 3. The recovered gossip text itself
-- ---------------------------------------------------------------------------
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `Probability0`) VALUES
(22, '我是初学者飞升之书，我可以在你达到 20 级之前帮助你提升法术和能力等级。我也是你初学者任务线"飞升之路"的向导！达到 20 级后，我将无法提升你的能力等级，但你可以请求使用其他玩家拥有的飞升之书，或者为自己获取一本！', '我是初学者飞升之书，我可以在你达到 20 级之前帮助你提升法术和能力等级。我也是你初学者任务线"飞升之路"的向导！达到 20 级后，我将无法提升你的能力等级，但你可以请求使用其他玩家拥有的飞升之书，或者为自己获取一本！', 1),
(19107, '[职业训练师]专精于特定职业，并将提升该职业的法术等级，可在许多城镇和首都中找到。    [初学者飞升之书]也可用于将任何职业的任何法术提升至 15 级。    你还可以从拍卖行、提拉西斯或网店获得[飞升之书]，它是一个便携伙伴，也是适用于任何法术和任何职业的一体化[职业训练师]。', '[职业训练师]专精于特定职业，并将提升该职业的法术等级，可在许多城镇和首都中找到。    [初学者飞升之书]也可用于将任何职业的任何法术提升至 15 级。    你还可以从拍卖行、提拉西斯或网店获得[飞升之书]，它是一个便携伙伴，也是适用于任何法术和任何职业的一体化[职业训练师]。', 1),
(19108, '[职业训练师]专精于特定职业，并将提升该职业的法术等级。    [初学者飞升之书]也可用于将任何职业的任何法术提升至 15 级。    你还可以从拍卖行、提拉西斯或网店获得[飞升之书]，它是一个便携伙伴，也是适用于任何法术和任何职业的一体化[职业训练师]。    最近的[职业训练师]位置已用小红旗标记在你的地图上。    你可以通过使用小地图上的[地图透镜]并选择[职业训练师]选项来找到任何附近的[职业训练师]。', '[职业训练师]专精于特定职业，并将提升该职业的法术等级。    [初学者飞升之书]也可用于将任何职业的任何法术提升至 15 级。    你还可以从拍卖行、提拉西斯或网店获得[飞升之书]，它是一个便携伙伴，也是适用于任何法术和任何职业的一体化[职业训练师]。    最近的[职业训练师]位置已用小红旗标记在你的地图上。    你可以通过使用小地图上的[地图透镜]并选择[职业训练师]选项来找到任何附近的[职业训练师]。', 1),
(90007, '*提拉西斯上下打量你一番后开口说道*$b$b 我是谁，并不重要。重要的是我们能否成交……$b$b 请随意浏览……但不要闲逛，我的库存极其有限，每天会从以太中拉取多次新物品。    虚灵市集代币可通过拍卖行和飞升商店获得。', '*提拉西斯上下打量你一番后开口说道*$b$b 我是谁，并不重要。重要的是我们能否成交……$b$b 请随意浏览……', 1);
