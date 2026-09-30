-- Destiny Weaver: the leveling-experience NPC pair.
--
-- The live realm fronted two per-character choices - Open World Scaling and Experience Bonus
-- Control - with ten "Destiny Weaver" creatures, five models, two names each. The menu and the
-- two settings themselves are served by modules/mod-destiny-weaver; this revision places the
-- creatures and their text.
--
-- Every value here is recovered, not invented:
--   creatures 449340 / 449341 / 449342 / 449345 / 449347 and 449350 / 449351 / 449352 /
--             449355 / 449357 : cachedata/union/creaturecache.tsv.gz (Client captures), which
--             carries the name, the "Destiny Weaver" subname, the Speak icon, type_flags
--             134217728, HealthModifier 1.64062, ManaModifier 1.0, movementId 999 and the five
--             model ids the ten used (449292, 449293, 449296, 449297, 449299).
--   npc_text 30520 (the greeting) and 19175 (the hint) : the same captures, verbatim.
--   Tav'vin's position : the community atlas observation for 449340 (Durotar, map 1,
--             -635.231 / -4230.280 / 38.135); Galrin Olemar's, the same for 449357
--             (Stormwind, map 0, -8818.580 / 671.774 / 95.425). The other eight spawns were
--             never observed, so each stands beside a town's innkeeper, which is where a
--             new character is sent first.
--
-- One thing had to be added rather than recovered. The five display ids the captures name
-- (449292 troll, 449293 dwarf, 449296 night elf, 449297 blood elf, 449299 human) have no rows in
-- this client's CreatureDisplayInfo.dbc, so the ids are added to the table - the server's copy
-- under COA/Data/dbc and the copy shipped to clients in patch-B - each carrying this client's own
-- character-model art for that race. With the rows in place the original ids are used as they
-- were, and the ten Weavers look as they did.
--
-- The rest is taken from a sibling, because the captures do not carry it:
--   * faction, level, unit flags and flags_extra were not in the captures. The rows are shaped
--     like 900007 (Tiraxis), the other CoA service NPC on this realm: faction 35, unit_flags 768
--     so they cannot be attacked, minlevel/maxlevel 40, unit_flags2 2048, RegenHealth 1.
--
-- The creatures are gossip-only: npcflag 1 and ScriptName 'npc_destiny_weaver', whose menu is
-- built at talk time, so no gossip_menu rows are needed.

-- ---------------------------------------------------------------------------
-- 1. The recovered text
-- ---------------------------------------------------------------------------
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `Probability0`) VALUES
(30520, '你好，英雄。    我提供两项服务来定制你的冒险：    **经验加成控制**：我可以禁用所有经验加成来源——经验药水、经验光环和战友招募奖励——让你以基础速率推进。    **开放世界缩放**：我可以让开放世界中的生物自动匹配你的等级，以获得一致的挑战。', '你好，英雄。    我提供两项服务来定制你的冒险：    **经验加成控制**：我可以禁用所有经验加成来源——经验药水、经验光环和战友招募奖励——让你以基础速率推进。    **开放世界缩放**：我可以让开放世界中的生物自动匹配你的等级，以获得一致的挑战。', 1),
(19175, '要启用或禁用你的经验加成和开放世界中的生物缩放，请寻找命运编织者。     该位置已用红旗标记在你的地图上。', '要启用或禁用你的经验加成和开放世界中的生物缩放，请寻找命运编织者。     该位置已用红旗标记在你的地图上。', 1);

-- ---------------------------------------------------------------------------
-- 2. The ten creatures
-- ---------------------------------------------------------------------------
REPLACE INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(449340, '塔夫文',              '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340),
(449341, '女法师本杰明',   '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340),
(449342, '瑟雷恩·盖尔温',       '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340),
(449345, '艾伦德拉·月歌',     '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340),
(449347, '加尔里克·奥利姆',          '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340),
(449350, '塔夫拉尔',             '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340),
(449351, '女法师贝拉诺',    '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340),
(449352, '瑟雷诺·盖尔斯托姆',  '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340),
(449355, '艾伦德雷尔·月咏者',  '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340),
(449357, '加尔林·奥勒玛',        '命运编织者', 'Speak', 0, 40, 40, 35, 1, 1, 1.14286, 20, 0, 0, 1, 2000, 2000, 1, 768, 2048, 0, 0, 7, 134217728, '', 0, 1, 1.64062, 1, 1, 1, 0, 999, 1, 2, 'npc_destiny_weaver', 12340);

-- ---------------------------------------------------------------------------
-- 3. Their models: the original display ids, one per pair
-- ---------------------------------------------------------------------------
REPLACE INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(449340, 0, 449292, 1, 1, NULL), -- Tav'vin, troll
(449350, 0, 449292, 1, 1, NULL), -- Tav'ral, troll
(449341, 0, 449297, 1, 1, NULL), -- Magistrix Benjamin, blood elf
(449351, 0, 449297, 1, 1, NULL), -- Magistrix Belanor, blood elf
(449342, 0, 449293, 1, 1, NULL), -- Thrain Galewin, dwarf
(449352, 0, 449293, 1, 1, NULL), -- Thrainnor Galestrom, dwarf
(449345, 0, 449296, 1, 1, NULL), -- Elundra Moonsong, night elf
(449355, 0, 449296, 1, 1, NULL), -- Elundrel Moonsinger, night elf
(449347, 0, 449299, 1, 1, NULL), -- Galric Olim, human
(449357, 0, 449299, 1, 1, NULL); -- Galrin Olemar, human

-- ---------------------------------------------------------------------------
-- 4. Model info. The core reads bounding radius and combat reach from
--    `creature_model_info`, not from the DBC, and its table was filled from a set that predates
--    the added displays: without a row the creature is refused at spawn
--    ("No model data exist for CreatureDisplayID").
--    Each row carries the values of the display whose art it holds - 466910 (troll male) and
--    466903 (night elf female) 0.306 / 1.5, 466900 (dwarf male) 0.347 / 1.5, 16046 (blood elf
--    female) 0.383 / 1.5, 5076 (human male) 0.306 / 1.5. Gender is the art's own: 0 male, 1 female.
-- ---------------------------------------------------------------------------
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`) VALUES
(449292, 0.306, 1.5, 0, 0),
(449293, 0.347, 1.5, 0, 0),
(449296, 0.306, 1.5, 1, 0),
(449297, 0.383, 1.5, 1, 0),
(449299, 0.306, 1.5, 0, 0);

-- ---------------------------------------------------------------------------
-- 5. Spawns. Two per race, beside the innkeepers a new character meets first,
--    except where the atlas recorded the live one.
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` BETWEEN 9000011 AND 9000020;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000011, 449340, 1, 0, 0, 1, 1, 0, -635.231, -4230.280, 38.135, 0.000, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Tav''vin (observed position, Durotar)'),
(9000012, 449350, 1, 0, 0, 1, 1, 0, -821.640, -4916.760, 19.740, 0.260, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Tav''ral (Sen''jin Village)'),
(9000013, 449341, 530, 0, 0, 1, 1, 0, 3027.560, 5439.180, 146.720, 2.210, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Magistrix Benjamin (Silvermoon City)'),
(9000014, 449351, 530, 0, 0, 1, 1, 0, 9688.100, -7359.600, 12.010, 4.490, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Magistrix Belanor (Falconwing Square)'),
(9000015, 449342, 0, 0, 0, 1, 1, 0, -4836.670, -853.090, 502.000, 4.870, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Thrain Galewin (Ironforge)'),
(9000016, 449352, 0, 0, 0, 1, 1, 0, -5597.600, -527.200, 399.740, 2.130, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Thrainnor Galestrom (Kharanos)'),
(9000017, 449345, 1, 0, 0, 1, 1, 0, 10131.900, 2228.790, 1328.810, 2.220, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Elundra Moonsong (Darnassus)'),
(9000018, 449355, 1, 0, 0, 1, 1, 0, 9806.210, 986.610, 1313.980, 4.800, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Elundrel Moonsinger (Dolanaar)'),
(9000019, 449347, 0, 0, 0, 1, 1, 0, -9458.660, 20.190, 57.050, 3.040, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Galric Olim (Goldshire)'),
(9000020, 449357, 0, 0, 0, 1, 1, 0, -8818.580, 671.774, 95.425, 5.200, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'Destiny Weaver: Galrin Olemar (observed position, Stormwind)');
