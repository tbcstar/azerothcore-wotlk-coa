-- CoA Valley of Trials: Esgramor, Swa'li, Anjali and Hirsutta (quests 1660018-1660023, 1660037, 1660041),
-- Zeb'Goro, the Sinister Lair ward, the circle of power, the Druids of the Flame camp and the valley stock
-- rows. Creature guids 9012000-9012299, gameobject guids 7917000-7917099,
-- entries 9303600-9303619, gossip menus 932500-932514.

-- ---------------------------------------------------------------------------
-- 1. Creatures
-- ---------------------------------------------------------------------------
-- Stand-in displays where the CoA model is missing from the client.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `family`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `RegenHealth`, `flags_extra`, `KillCredit1`, `ScriptName`)
VALUES
(161732, '埃斯格拉莫尔', NULL, 932500, 12, 12, 0, 29, 3, 1, 1.14286, 20, 0, 2000, 2000, 2, 768, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161733, '斯瓦利', NULL, 0, 13, 13, 0, 126, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161734, '安贾莉', NULL, 0, 9, 9, 0, 126, 2, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 0, 7, 0, 0, '', 0, 0.98, 1, 1, 1, 1, 0, 0, ''),
(161790, '女巫希尔苏塔', NULL, 0, 7, 7, 0, 16, 0, 1, 1.14286, 20, 1, 2000, 2000, 8, 33280, 2048, 0, 7, 0, 0, 'SmartAI', 0, 5.76, 1, 1, 1, 1, 0, 0, ''),
(161791, '不安的市民', NULL, 0, 3, 4, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 7, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161792, '年长的守护之灵', NULL, 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161793, '邪恶蝙蝠', NULL, 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 1, 0, 161793, '', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161794, '邪恶蛇', NULL, 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 1, 0, 161794, '', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161795, '邪恶蜘蛛', NULL, 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 1, 0, 161795, '', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161807, '巫毒信徒', NULL, 0, 3, 5, 0, 16, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33280, 2048, 0, 7, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161833, '守门人泰克拉图', NULL, 0, 4, 4, 0, 14, 0, 1, 1.14286, 20, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, '', 0, 2.79, 1, 1, 1, 1, 0, 0, ''),
(161859, '土元素', NULL, 0, 3, 3, 0, 35, 16777216, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 4, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161860, '火元素', NULL, 0, 3, 3, 0, 35, 16777216, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 4, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161861, '水元素', NULL, 0, 3, 3, 0, 35, 16777216, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 4, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161862, '风元素', NULL, 0, 3, 3, 0, 35, 16777216, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 4, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(300198, '乌兹拉', NULL, 0, 10, 10, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 2, 768, 2048, 0, 7, 0, 0, '', 0, 1.32, 1, 1, 1, 1, 0, 0, ''),
(764783, '资深巢穴步兵', NULL, 0, 65, 65, 0, 85, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 32768, 2048, 0, 7, 0, 0, '', 0, 1.395, 1, 1, 1, 1, 0, 0, ''),
(161803, '泽布戈罗居民', NULL, 0, 5, 6, 0, 126, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 7, 0, 0, '', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161804, '泽布戈罗居民', NULL, 0, 5, 6, 0, 126, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 7, 0, 0, '', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161805, '古克尔', NULL, 0, 7, 7, 0, 126, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 7, 0, 0, '', 0, 0.96, 1, 1, 1, 1, 0, 0, ''),
(161806, '旅店老板沙卡里', NULL, 1290, 10, 10, 0, 126, 65537, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 7, 0, 0, 'SmartAI', 0, 0.98, 1, 1, 1, 1, 0, 0, ''),
(161827, '泽布戈罗卫兵', NULL, 0, 20, 20, 0, 126, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 32768, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161831, '克鲁', NULL, 0, 6, 6, 0, 126, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 7, 0, 0, '', 0, 0.96, 1, 1, 1, 1, 0, 0, ''),
(161800, '已穿越魔法屏障', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(161821, '已向埃斯格拉莫尔交付报告', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(161854, '附魔提基面具', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(161855, '喋喋不休的提基面具', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(161856, '被附身的提基面具', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `family` = VALUES(`family`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `DamageModifier` = VALUES(`DamageModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `KillCredit1` = VALUES(`KillCredit1`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (161732, 161733, 161734, 161790, 161791, 161792, 161793, 161794, 161795, 161800, 161803, 161804, 161805, 161806, 161807, 161821, 161827, 161831, 161833, 161854, 161855, 161856, 161859, 161860, 161861, 161862, 300198, 764783);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(161732, 0, 4552, 1, 1),
(161733, 0, 15840, 1, 1),
(161734, 0, 15841, 1, 1),
(161790, 0, 9774, 1, 1),
(161791, 0, 1370, 1, 0.25),
(161791, 1, 11857, 1, 0.25),
(161791, 2, 4609, 1, 0.25),
(161791, 3, 19185, 1, 0.25),
(161792, 0, 6417, 1, 0.5),
(161792, 1, 6418, 1, 0.5),
(161793, 0, 4734, 1, 1),
(161794, 0, 78248, 1, 1),
(161795, 0, 1157, 1, 1),
(161807, 0, 4076, 1, 0.25),
(161807, 1, 4077, 1, 0.25),
(161807, 2, 15701, 1, 0.25),
(161807, 3, 15702, 1, 0.25),
(161833, 0, 7829, 1, 1),
(161859, 0, 9587, 1, 1),
(161860, 0, 2172, 1, 1),
(161861, 0, 5561, 1, 1),
(161862, 0, 8716, 1, 1),
(300198, 0, 13410, 1, 1),
(764783, 0, 9794, 1, 1),
(161803, 0, 4033, 1, 1),
(161804, 0, 1882, 1, 1),
(161805, 0, 31737, 1, 1),
(161806, 0, 26354, 1, 1),
(161827, 0, 4083, 1, 0.5),
(161827, 1, 4084, 1, 0.5),
(161831, 0, 28630, 1, 1),
(161800, 0, 11686, 1, 1),
(161821, 0, 11686, 1, 1),
(161854, 0, 25749, 1, 1),
(161855, 0, 25749, 1, 1),
(161856, 0, 25749, 1, 1);

-- The CoA snake display has no model info, without which the snakes never load.
DELETE FROM `creature_model_info` WHERE `DisplayID` = 78248;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
VALUES
(78248, 0.8, 1, 2, 0);

-- Anjali lies wounded; the elementals are chained.
DELETE FROM `creature_template_addon` WHERE `entry` IN (161732, 161733, 161734, 161790, 161791, 161792, 161793, 161794, 161795, 161800, 161803, 161804, 161805, 161806, 161807, 161821, 161827, 161831, 161833, 161854, 161855, 161856, 161859, 161860, 161861, 161862, 300198, 764783);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`)
VALUES
(161734, 0, 0, 3, 0, 0, 0, NULL),
(161859, 0, 0, 0, 0, 0, 0, '256477'),
(161860, 0, 0, 0, 0, 0, 0, '256477'),
(161861, 0, 0, 0, 0, 0, 0, '256477'),
(161862, 0, 0, 0, 0, 0, 0, '256477');

-- ---------------------------------------------------------------------------
-- 2. Objects
-- ---------------------------------------------------------------------------
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `AIName`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`)
VALUES
(2300535, 10, 85904, '附魔提基面具', '', '', 0.7, 'SmartGameObjectAI', 0, 1660037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300536, 10, 85903, '喋喋不休的提基面具', '', '', 0.7, 'SmartGameObjectAI', 0, 1660037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300537, 10, 85902, '被附身的提基面具', '', '', 0.7, 'SmartGameObjectAI', 0, 1660037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300564, 0, 300458, '邪恶巢穴地下城巨魔墙', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326634, 5, 85286, '杜隆塔尔悬崖岩石 06', '', '', 0.15, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326643, 5, 85295, '杜隆塔尔灌木 01 - 小', '', '', 1, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326644, 5, 85294, '杜隆塔尔灌木 02 - 较大', '', '', 1, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326645, 5, 85293, '杜隆塔尔灌木 03（仙人掌 - 高）', '', '', 1, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326646, 5, 85292, '杜隆塔尔灌木 04（仙人掌 - 矮）', '', '', 1, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326647, 5, 85295, '杜隆塔尔灌木 01 - 较小', '', '', 0.5, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326648, 5, 84677, '毒牙德鲁伊迅猛龙牙齿', '', '', 2, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326650, 7, 84671, '石凳', '', '', 1.5, '', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326654, 5, 1016323, '烈焰德鲁伊 - 书 1（合上）', '', '', 0.7, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326655, 5, 1016324, '烈焰德鲁伊 - 书 2（打开）', '', '', 0.7, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326656, 5, 1016325, '烈焰德鲁伊 - 书 3（立式）', '', '', 0.8, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326657, 5, 1016326, '烈焰德鲁伊 - 树枝 1 - 小', '', '', 0.5, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326658, 5, 1016327, '烈焰德鲁伊 - 树枝 2 - 中', '', '', 0.5, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326659, 5, 1016328, '烈焰德鲁伊 - 树枝 3 - 大', '', '', 0.5, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326661, 5, 1016330, '烈焰德鲁伊 - 根须火盆 1（短燃）', '', '', 0.9, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326662, 5, 1016331, '烈焰德鲁伊 - 根须火盆 2（高燃）', '', '', 0.9, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326665, 5, 8421, '兽人帐篷', '', '', 1.251, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326666, 5, 1014540, '兽人部族杯子', '', '', 0.9, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1326668, 5, 1014630, '兽人部族桌子', '', '', 0.7, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3236154, 5, 1021171, '蜡烛', '', '', 1.75, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3260448, 7, 1014430, '凳子', '', '', 1, '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9303600, 10, 6479, '旧挖掘铲', '', '', 1, 'SmartGameObjectAI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `AIName` = VALUES(`AIName`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`);

-- The ward cannot be clicked open. It is hidden from players who hold the Witch's Amulet or have crossed it
-- (1660019 rewarded), so only they pass it. The shovel inside digs anyone walled in out.
DELETE FROM `gameobject_template_addon` WHERE `entry` = 2300564;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`)
VALUES
(2300564, 0, 16);

DELETE FROM `conditions` WHERE `SourceEntry` = 2300564 AND `SourceTypeOrReferenceId` = 30;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(30, 1, 2300564, 0, 0, 2, 0, 559146, 1, 0, 1, 0, 0, '', 'ward visible without the amulet'),
(30, 1, 2300564, 0, 0, 8, 0, 1660019, 0, 0, 1, 0, 0, '', 'and before 1660019 is rewarded');

-- ---------------------------------------------------------------------------
-- 3. Dialogue
-- ---------------------------------------------------------------------------
DELETE FROM `npc_text` WHERE `ID` IN (62612, 62617);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`)
VALUES
(62617, '<萨满的目光落在火坑上；他似乎陷入了沉思。你注意到他那一侧的火焰烧得更旺，仿佛在努力伸出，去抚摸那个兽人。>', '<萨满的目光落在火坑上；他似乎陷入了沉思。你注意到他那一侧的火焰烧得更旺，仿佛在努力伸出，去抚摸那个兽人。>', 0, 0, 1),
(62612, '元素们打破了沉默，但它们同时开口——说你，说安贾莉，说那个女巫……告诉我，发生了什么？', '元素们打破了沉默，但它们同时开口——说你，说安贾莉，说那个女巫……告诉我，发生了什么？', 0, 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (932500, 932501);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932500, 62617),
(932501, 62612);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (932500, 932501);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(932500, 0, 0, '元素们已经自由了，埃斯格拉莫尔。', 0, 1, 1, 932501, 0, 0, 0, '', 0),
(932501, 0, 0, '<告诉埃斯格拉莫尔希尔苏塔的真实意图。>', 0, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` IN (932500, 932501) AND `SourceTypeOrReferenceId` IN (14, 15);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(15, 932500, 0, 0, 0, 9, 0, 1660021, 0, 0, 0, 0, 0, '', '1660021 taken and the four shackles held'),
(15, 932500, 0, 0, 0, 2, 0, 559172, 1, 0, 0, 0, 0, '', ''),
(15, 932500, 0, 0, 0, 2, 0, 559173, 1, 0, 0, 0, 0, '', ''),
(15, 932500, 0, 0, 0, 2, 0, 559174, 1, 0, 0, 0, 0, '', ''),
(15, 932500, 0, 0, 0, 2, 0, 559175, 1, 0, 0, 0, 0, '', ''),
(15, 932501, 0, 0, 0, 9, 0, 1660021, 0, 0, 0, 0, 0, '', '1660021 taken and the four shackles held'),
(15, 932501, 0, 0, 0, 2, 0, 559172, 1, 0, 0, 0, 0, '', ''),
(15, 932501, 0, 0, 0, 2, 0, 559173, 1, 0, 0, 0, 0, '', ''),
(15, 932501, 0, 0, 0, 2, 0, 559174, 1, 0, 0, 0, 0, '', ''),
(15, 932501, 0, 0, 0, 2, 0, 559175, 1, 0, 0, 0, 0, '', '');

-- ---------------------------------------------------------------------------
-- 4. Loot and freeing
-- ---------------------------------------------------------------------------
-- One essence per lair beast, quest-only.
DELETE FROM `creature_loot_template` WHERE `Entry` IN (161793, 161794, 161795);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(161793, 559148, 0, 100, 1, 1, 0, 1, 1, 'Sinister Bat - Bat Spiritual Essence'),
(161794, 559150, 0, 100, 1, 1, 0, 1, 1, 'Sinister Snake - Serpent Spiritual Essence'),
(161795, 559149, 0, 100, 1, 1, 0, 1, 1, 'Sinister Spider - Spider Spiritual Essence');

DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (161793, 161794, 161795);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(161793, 0, 559148),
(161794, 0, 559150),
(161795, 0, 559149);

-- A click makes the player channel the elemental's Scape; the hit hands over its shackles.
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (161859, 161860, 161861, 161862);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`)
VALUES
(161859, 256724, 1, 0),
(161860, 256723, 1, 0),
(161861, 256722, 1, 0),
(161862, 256725, 1, 0);

DELETE FROM `conditions` WHERE `SourceGroup` IN (161859, 161860, 161861, 161862) AND `SourceTypeOrReferenceId` = 18;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(18, 161859, 256724, 0, 0, 9, 0, 1660021, 0, 0, 0, 0, 0, '', 'free only while quest 1660021 is taken'),
(18, 161860, 256723, 0, 0, 9, 0, 1660021, 0, 0, 0, 0, 0, '', 'free only while quest 1660021 is taken'),
(18, 161861, 256722, 0, 0, 9, 0, 1660021, 0, 0, 0, 0, 0, '', 'free only while quest 1660021 is taken'),
(18, 161862, 256725, 0, 0, 9, 0, 1660021, 0, 0, 0, 0, 0, '', 'free only while quest 1660021 is taken'),
(18, 161859, 256724, 0, 0, 2, 0, 559173, 1, 0, 1, 0, 0, '', 'and only until the shackles are held'),
(18, 161860, 256723, 0, 0, 2, 0, 559172, 1, 0, 1, 0, 0, '', 'and only until the shackles are held'),
(18, 161861, 256722, 0, 0, 2, 0, 559175, 1, 0, 1, 0, 0, '', 'and only until the shackles are held'),
(18, 161862, 256725, 0, 0, 2, 0, 559174, 1, 0, 1, 0, 0, '', 'and only until the shackles are held');

-- The Unremarkable Stone works only on Uneasy Citizens.
DELETE FROM `conditions` WHERE `SourceEntry` = 256708 AND `SourceTypeOrReferenceId` = 17;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(17, 0, 256708, 0, 0, 31, 1, 3, 161791, 0, 0, 12, 0, '', 'Distilling Spiritual Unrest - Uneasy Citizen only');

-- ---------------------------------------------------------------------------
-- 5. Quests
-- ---------------------------------------------------------------------------
-- Chain 1660018 -> {1660037, 1660019} -> {1660020, 1660041} -> 1660021 (needs both) -> {1660022, 1660023}.
-- The upsert leaves the POI columns to the markers file.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(1660018, 2, 6, 3, 363, 0, 0, 0, 0, 0, 0, 1660037, 4, 0, 0, 0, 0, 0, 0, 559158, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '陨落者', '使用“不起眼的石头”从不安息的兽人和巨魔身上提取灵魂躁动的样本，并将你的发现呈交给泽布戈罗的女巫。', '亡者的灵魂不得安息。它们用早已击垮我们许多人的梦境和幻象折磨我们。我向元素寻求过建议，但……它们不愿回应我。$b$b拿着这个。$b$b<埃斯格拉莫尔把一块远比他朴素外表沉重的石头放在你手中。>$b$b这是一枚守护护符。去找那些破碎者、受折磨者，用这块石头的力量引出他们不安息的灵魂碎片。尽可能多地收集，把它们带到泽布戈罗的女巫那里。她是一位拥有可怕力量与深邃智慧的女巫。$b$b我相信她会知道该怎么做。', '', '与女巫的得力助手斯瓦利交谈。', 0, 0, 0, 0, 0, 0, 0, 0, 559155, 559158, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, '', '', '', ''),
(1660037, 2, 6, 3, 363, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 8, 0, 805, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '不安引发流言', '摧毁泽布戈罗周围的会说话的提基面具。', '不只是洞穴里的人受灵魂躁动之苦。在泽布戈罗，我们面对同样的麻烦。在女巫的仪式把它纠正之前，我们能怎么处理就怎么处理。$b$b既然你在这里，我就拜托你了。$b$b有些提基面具开始不停地唠叨。起初我们害怕。然后我们大笑。但现在……它们已经唠叨好几天了，就是不停。$b$b砸掉几个。让它们闭嘴。', '', '回到斯瓦利那里。', 161854, 161855, 161856, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '附魔提基面具已摧毁', '喋喋不休的提基面具已摧毁', '被附身的提基面具已摧毁', ''),
(1660019, 2, 6, 3, 363, 0, 0, 0, 0, 0, 0, 1660020, 5, 0, 0, 0, 0, 0, 0, 559146, 8, 0, 5571, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '道路已封闭', '使用斯瓦利给你的护符突破守卫邪恶巢穴入口的魔法屏障。', '附近我们发现了一个洞穴，世界之间的帷幕在那里变得稀薄。一个充满力量的地方，被化作野兽形态的灵魂所萦绕。$b$b女巫派她的学徒去收集仪式所需之物：蛇、蝙蝠和蜘蛛的灵魂精髓。但她再也没回来。也许她已经死了。$b$b<斯瓦利把一个小巨魔神像按进你手中，它由骨头雕刻而成，镶着一颗血红色的宝石。>$b$b一道强大的法术守护着洞穴入口。你需要这个才能穿过屏障到达另一边。如果安贾莉死了……我们能指望你完成她开始的事吗？', '', '与女巫的学徒安贾莉交谈。', 161800, 0, 0, 0, 1, 0, 0, 0, 559146, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '已穿越魔法屏障', '', '', ''),
(1660020, 2, 6, 3, 363, 0, 0, 0, 0, 0, 0, 1660021, 6, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '邪恶三灵', '收集萦绕在邪恶巢穴中的野兽的灵魂精髓。你需要一份来自蜘蛛的、一份来自蝙蝠的、一份来自蛇的。', '女巫……她不是你的盟友。我不知道她全部在谋划什么，但我知道这一点：她不会修复灵魂的麻烦。$b$b因为正是她引起的。$b$b她一直在召唤亡者的灵魂，把它们从安息中撕裂，将它们作为她仪式的燃料焚烧。她唯一还需要的，就是从这个洞穴里取得的灵魂精髓。这就是为什么她绝不能得到它们。$b$b但如果你把它们带给我……$b$b我的伤很重，但我的决心从未如此坚定。我相信我能弯折这些精髓的力量，削弱女巫的巫毒。', '', '回到安贾莉那里。', 0, 0, 0, 0, 0, 0, 0, 0, 559148, 559149, 559150, 0, 0, 0, 1, 1, 1, 0, 0, 0, '', '', '', ''),
(1660041, 2, 6, 3, 363, 0, 2, 0, 0, 0, 0, 1660021, 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 559187, 1, 559177, 1, 559178, 1, 559179, 1, 559184, 1, 559181, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '半掩之门', '在邪恶巢穴中击败守门人泰克拉图。', '我感觉到前方有一个存在。在蜘蛛之灵、蛇、蝙蝠之中……还有别的东西在移动，将它的力量注入守护这个洞穴的屏障。$b$b如果我们要成功……如果我能活着离开这里……你就必须击倒那个生物，把它送回它该去的另一边。', '', '回到安贾莉那里。', 161833, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(1660021, 2, 6, 3, 363, 0, 0, 0, 0, 0, 0, 1660022, 4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '让他重闻其声', '释放洞穴旁的元素。然后，与埃斯格拉莫尔交谈，告诉他希尔苏塔的真实意图。', '这些精髓的力量不足以阻止女巫。$b$b你必须亲自面对她。$b$b但首先……还有元素的事。$b$b女巫知道山谷的灵魂会起来反抗她，所以在开始仪式之前，她命令我束缚它们——把它们困在一个力量之环中，让它们无法干涉。$b$b在你回去找萨满、面对女巫之前，你必须释放它们。当你离开洞穴时，沿着向右蜿蜒的小路穿过岩石。在尽头，你会找到力量之环。', '', '与埃斯格拉莫尔交谈。', 161821, 0, 0, 0, 1, 0, 0, 0, 559172, 559173, 559174, 559175, 0, 0, 1, 1, 1, 1, 0, 0, '已向埃斯格拉莫尔交付报告', '', '', ''),
(1660022, 2, 6, 3, 363, 0, 2, 0, 0, 0, 0, 1660061, 7, 50, 0, 0, 0, 0, 0, 0, 8, 0, 559183, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '邪恶仪式', '面对女巫希尔苏塔，终结她的黑暗仪式。', '就在我们说话时，一阵战栗穿过试炼谷。安贾莉和希尔苏塔陷入意志的较量；尽管安贾莉掌握着三种精髓的力量，她仍在女巫面前节节败退。$b$b<萨满闭着眼睛说话，仿佛两位女巫之间的斗争属于一个看不见的世界。>$b$b必须现在完成，否则永远没有机会。$b$b我将与元素沟通，试图打破女巫的专注。在此期间……你已经获得了一些实战经验。杀出一条路到她的巢穴，在为时已晚之前终结她。', '', '与埃斯格拉莫尔交谈。', 161790, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(1660023, 2, 6, 3, 363, 0, 0, 0, 0, 0, 0, 0, 6, 25, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '以无辜者换罪人', '击败守卫通往希尔苏塔之路的巫毒信徒。', '女巫的追随者也许根本不知道仪式的真正目的。无论如何，我们不能允许他们挡在我们和希尔苏塔之间。$b$b你明白的……对吧？$b$b<兽人的脸阴沉下来。他放在你肩上的手，与他所要求你做的事相比，给不了多少安慰。>$b$b换句话说：在到达她之前，你必须杀穿不止几个战士；大多是无辜者，他们会至死相信你是这个故事里的反派。', '', '回到埃斯格拉莫尔那里。', 161807, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (1660018, 1660019, 1660020, 1660021, 1660022, 1660023, 1660037, 1660041);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(1660018, 0, 0, 0, 0, 0, 1, 0),
(1660037, 0, 0, 1660018, 0, 0, 0, 0),
(1660019, 0, 0, 1660018, 0, 0, 1, 0),
(1660020, 0, 0, 1660019, 1660021, -1660020, 0, 0),
(1660041, 0, 0, 1660019, 1660021, -1660020, 0, 0),
(1660021, 0, 0, 0, 0, 0, 0, 0),
(1660022, 0, 0, 1660021, 0, 0, 0, 0),
(1660023, 0, 0, 1660021, 0, 0, 0, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (1660018, 1660019, 1660020, 1660021, 1660022, 1660023, 1660037, 1660041);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(1660018, '我不认得你这张脸。但你带来的东西让我浑身发毛……$B$B这个……你说叫“灵魂躁动”？哈！所以是埃斯格拉莫尔派你来的。女巫早就知道笼罩试炼谷的诅咒了。此刻，她正在施展仪式来修复它。$B$BHrmm……<巨魔歪着头，打量着你。>$B$B既然你大老远来了，也许你能帮上仪式的忙。'),
(1660037, '终于！安静了！神圣的安静！我差点忘了它听起来是什么样。$B$B希望那些面具没给你添太多麻烦。灵魂反复无常，有时很暴力……但大多无害。$B$B它们确实爱说话。只是从来没什么值得说的。'),
(1660019, '他们派你来……确认我死了。哈……$B$B<巨魔蜷缩在地上，每一次呼吸都是一声嘶哑的呻吟。>$B$B那护符……没用。没有完全起作用……这个洞穴的魔法把我撕碎了，里里外外。这是个陷阱。女巫一定看穿了我的野心……$B$B但他们没料到我会像水蛭一样死死抓住生命。我不会死在这里！$B$B靠近点……<她的声音降为低语>。我把一切都告诉你。'),
(1660020, '这些精髓……！$B$B<尽管伤势严重，巨魔仍努力把自己撑起一半，躯干因用力而颤抖。>$B$B三个神圣的印记，绑定于邪恶三灵的洛阿：丹巴拉，蛇之神，掌管智慧与阴谋；希尔埃克，蝙蝠之神，掌管黑夜与秘密；以及埃洛萨·诺·沙德拉，蜘蛛女神，掌管命运与欺诈。$B$B在别的时候，你交到我手中的这份力量足以杀死女巫。但……<巨魔露出疲惫的微笑>我只能满足于削弱她的黑暗巫毒。'),
(1660041, '这个洞穴，它在变化……你已经杀死了守护之灵，是吗？$B$B很好。也许你就有机会对抗女巫了。而且多亏了你，我也有机会了。$B$B来，拿着这个。一点小东西，聊表谢意。'),
(1660021, '我是个傻瓜。当我联系元素……却被沉默以对时，我就该知道有更黑暗的东西在作祟。$B$B相反，我派你去寻求女巫的帮助，而她讽刺地正是灵魂躁动的元凶。$B$B但现在阻止她的图谋还不算太晚，无论那是什么。希尔苏塔已经树了三个危险的敌人。'),
(1660022, '完成了。希尔苏塔死了。$B$B灵魂再次安息。我相信女巫企图束缚所有在此陨落的兽人和巨魔的灵魂，用它们锻造出她黑暗诸神的扭曲化身。$B$B丹巴拉不是狡诈与智慧的洛阿，而是背叛的洛阿。$B$B希尔埃克不是秘密与黑夜的洛阿，而是饥渴与鲜血的洛阿。$B$B而沙德拉……她不是命运的编织者，而是杀人犯，骗子。$B$B想象一下她的仪式会诞生出什么样的可憎之物……'),
(1660023, '<兽人点了点头。这个小小的动作，就足以约定永远不再提起此事。>');

DELETE FROM `quest_request_items` WHERE `ID` IN (1660018, 1660019, 1660020, 1660021, 1660022, 1660023, 1660037, 1660041);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(1660018, '你想要什么，陌生人？'),
(1660037, '我相信你已经砸掉了一些面具。'),
(1660019, '<巨魔瘫倒在地，生命悬于一线，那一线承载着过于沉重的负担。>'),
(1660020, '女巫会为她的背叛付出代价。'),
(1660041, '这个灵体……我能感觉到它在滑行，感觉到翅膀在拍动。那到底是什么样的野兽？'),
(1660021, '你回来了。我一直在等。'),
(1660022, '灵魂变得越来越不安。$B$B我们必须立刻阻止女巫！'),
(1660023, '要是我能用几句安慰的话减轻你的负担就好了。');

DELETE FROM `creature_queststarter` WHERE `quest` IN (1660018, 1660019, 1660020, 1660021, 1660022, 1660023, 1660037, 1660041);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(161732, 1660018),
(161733, 1660019),
(161734, 1660020),
(161734, 1660021),
(161732, 1660022),
(161732, 1660023),
(161733, 1660037),
(161734, 1660041);

DELETE FROM `creature_questender` WHERE `quest` IN (1660018, 1660019, 1660020, 1660021, 1660022, 1660023, 1660037, 1660041);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(161733, 1660018),
(161734, 1660019),
(161734, 1660020),
(161732, 1660021),
(161732, 1660022),
(161732, 1660023),
(161733, 1660037),
(161734, 1660041);

-- ---------------------------------------------------------------------------
-- 6. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9012000, 9012001, 9012002, 9012003, 9012004, 9012005, 9012006, 9012007, 9012010, 9012011, 9012012, 9012013, 9012014, 9012015, 9012016, 9012017, 9012018, 9012019, 9012020, 9012021, 9012022, 9012023, 9012024, 9012030, 9012031, 9012032, 9012033, 9012034, 9012035, 9012036, 9012037, 9012038, 9012039, 9012040, 9012041, 9012042, 9012043, 9012044, 9012045, 9012046, 9012050, 9012051, 9012052, 9012053, 9012060, 9012061, 9012062, 9012063, 9012064, 9012065, 9012066, 9012067, 9012068, 9012069, 9012070, 9012071, 9012072, 9012073, 9012074, 9012075, 9012076, 9012077, 9012078, 9012079, 9012080, 9012081, 9012082, 9012083, 9012084, 9012085, 9012086, 9012087, 9012088, 9012089, 9012090, 9012091, 9012100, 9012101, 9012102, 9012103, 9012104, 9012105) OR `guid` BETWEEN 9012000 AND 9012299;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9012000, 161732, 1, 0, 0, 1, 1, 0, -604.61, -4245.63, 38.956, 1.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Den front by the bonfire, 1.5 yd off ST8676 on the side away from Spi''ro and Grishnakh; faces the Den mouth and arriving players'),
(9012001, 161733, 1, 0, 0, 1, 1, 0, -371.957, -4122.77, 50.676, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: ST8673 under the Zeb''Goro south arch, beside the water trough; faces north into the village'),
(9012002, 161734, 1, 0, 0, 1, 1, 0, -186.208, -4181.14, 56.156, 3.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: ST8675 on the Sinister Lair floor just past the ward; lies facing the mouth'),
(9012003, 161790, 1, 0, 0, 1, 1, 0, -305.556, -4015.36, 100.043, 3.1, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: ST8677 on the temple hilltop above Zeb''Goro, at her ritual'),
(9012004, 161833, 1, 0, 0, 1, 1, 0, -242, -4391.5, -48.936, 1.6, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: the gatekeeper''s hall at the bottom of the lair, 1.2 yd off ST8717 (the ST spot is a 35-degree lip)'),
(9012005, 161792, 1, 0, 0, 1, 1, 0, -223.8, -4128.9, 72.938, 0.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Questie sightings (4) just south-west of the circle of power; faces the bound elementals'),
(9012006, 300198, 1, 0, 0, 1, 1, 0, -553.56, -4196.57, 46.317, 4.7, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: atlas point in the Druids of the Flame camp, beside the book stand'),
(9012007, 764783, 1, 0, 0, 1, 1, 0, -557.08, -4291.5, 37.184, 3.1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: atlas point on the Den road south of the trainers'),
(9012010, 161791, 1, 0, 0, 1, 1, 0, -642.6, -4225.7, 38.135, 0.35, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; atlas sighting by the orc tent on the Den''s west side'),
(9012011, 161791, 1, 0, 0, 1, 1, 0, -568.44, -4242.96, 38.137, 2.33, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; Questie sighting on the path below the Den''s east cliff'),
(9012012, 161791, 1, 0, 0, 1, 1, 0, -572, -4257, 38.147, 2.11, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; on the south path, 4 yd off a Questie sighting that sits on a 27-degree bank'),
(9012013, 161791, 1, 0, 0, 1, 1, 0, -574, -4236, 38.035, 2.36, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; flat ground by the east cliff path, in place of a Questie sighting up a 27-degree bank'),
(9012014, 161791, 1, 0, 0, 1, 1, 0, -558.63, -4189.9, 47.462, 3.59, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; Questie sighting on the ledge by the Druids of the Flame camp'),
(9012015, 161791, 1, 0, 0, 1, 1, 0, -603, -4178, 41.383, 4.81, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; Den mouth floor, in place of a Questie sighting against the entrance wall'),
(9012016, 161791, 1, 0, 0, 1, 1, 0, -601.74, -4166.95, 41.988, 4.75, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; Questie sighting in the Den''s entrance hall'),
(9012017, 161791, 1, 0, 0, 1, 1, 0, -603.9, -4149.54, 43.439, 4.78, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; Questie sighting in the Den''s middle hall by the braziers'),
(9012018, 161791, 1, 0, 0, 1, 1, 0, -585.9, -4102.42, 42.698, 4.58, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; Questie sighting in the Den''s back room by the bunks'),
(9012019, 161791, 1, 0, 0, 1, 1, 0, -599.22, -4112.28, 44.277, 4.7, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; Questie sighting in the Den''s back room'),
(9012020, 161791, 1, 0, 0, 1, 1, 0, -640.8, -4210.15, 38.135, 0, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; Questie sighting on the open ground west of the Den'),
(9012021, 161791, 1, 0, 0, 1, 1, 0, -588, -4118, 43.917, 4.58, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; the Den''s back room between the bunks and Grillok''s corner'),
(9012022, 161791, 1, 0, 0, 1, 1, 0, -621, -4268, 37.965, 1.22, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; on the road south of the Den toward the gate'),
(9012023, 161791, 1, 0, 0, 1, 1, 0, -612, -4230, 38.135, 1.03, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; by the Den''s campfire ring, between the trainers'),
(9012024, 161791, 1, 0, 0, 1, 1, 0, -626, -4262, 38.199, 1.11, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Den: Uneasy Citizen; south-west path by the spirit healer''s knoll'),
(9012030, 161807, 1, 0, 0, 1, 1, 0, -385.876, -4102.06, 50.714, 0.72, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; ST8720 under the Troll_Arch_02 arch at the foot of the climb'),
(9012031, 161807, 1, 0, 0, 1, 1, 0, -433.138, -4062.67, 87.368, 5.86, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; ST8721 on the raised path'),
(9012032, 161807, 1, 0, 0, 1, 1, 0, -461.34, -4076.37, 72.276, 6.13, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting on the lower switchback'),
(9012033, 161807, 1, 0, 0, 1, 1, 0, -451.17, -4056.93, 83.628, 5.89, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting at the shop terrace'),
(9012034, 161807, 1, 0, 0, 1, 1, 0, -456.84, -4045.99, 84.541, 5.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting on the Trollshop01 floor'),
(9012035, 161807, 1, 0, 0, 1, 1, 0, -474.93, -4046.53, 89.53, 5.88, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting on the upper west ledge'),
(9012036, 161807, 1, 0, 0, 1, 1, 0, -447.12, -4072.05, 86.354, 6.05, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting on the rock shelf above the switchback'),
(9012037, 161807, 1, 0, 0, 1, 1, 0, -425.7, -4077.18, 90.563, 6.05, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting on the small hut floor'),
(9012038, 161807, 1, 0, 0, 1, 1, 0, -444, -4055, 85.202, 5.83, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; shop terrace, 2.6 yd off a Questie sighting with no floor'),
(9012039, 161807, 1, 0, 0, 1, 1, 0, -374.85, -4065.43, 76.76, 4.83, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting on the Trollbridge deck'),
(9012040, 161807, 1, 0, 0, 1, 1, 0, -339.75, -4078.53, 85.328, 3.48, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting on the rocks east of the bridge'),
(9012041, 161807, 1, 0, 0, 1, 1, 0, -330.39, -4061.79, 89.282, 3.74, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting on the approach to the temple'),
(9012042, 161807, 1, 0, 0, 1, 1, 0, -498, -4080, 79.398, 6.2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; west ridge path, 6 yd off a Questie sighting on a 37-degree face'),
(9012043, 161807, 1, 0, 0, 1, 1, 0, -480.33, -4092.16, 66.807, 0.02, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting at the bottom of the west climb'),
(9012044, 161807, 1, 0, 0, 1, 1, 0, -473.67, -4058.95, 79.766, 5.99, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting on the west ledge'),
(9012045, 161807, 1, 0, 0, 1, 1, 0, -459.99, -4059.63, 82.356, 5.95, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting below the shop'),
(9012046, 161807, 1, 0, 0, 1, 1, 0, -418.05, -4064.08, 88.922, 5.77, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro climb: Voodoo Devotee; Questie sighting at the west end of the bridge'),
(9012050, 161859, 1, 0, 0, 1, 1, 0, -213.1, -4130, 73.203, 2.36, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA circle of power: north-east of the jar ring, facing its centre'),
(9012051, 161860, 1, 0, 0, 1, 1, 0, -213.1, -4123, 73.249, 3.92, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA circle of power: north-west of the jar ring'),
(9012052, 161861, 1, 0, 0, 1, 1, 0, -220.2, -4130, 73.155, 0.78, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA circle of power: south-east of the jar ring'),
(9012053, 161862, 1, 0, 0, 1, 1, 0, -220.2, -4123, 73.173, 5.5, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA circle of power: south-west of the jar ring'),
(9012060, 161793, 1, 0, 0, 1, 1, 0, -146.76, -4360.78, -18.627, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the east gallery below the coven'),
(9012061, 161793, 1, 0, 0, 1, 1, 0, -205.45, -4344.38, -15.59, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the middle gallery'),
(9012062, 161793, 1, 0, 0, 1, 1, 0, -211.5, -4339.5, -15.77, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: middle gallery, 5 yd off a Questie sighting against the wall'),
(9012063, 161793, 1, 0, 0, 1, 1, 0, -246.26, -4342.02, -27.162, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the ramp west'),
(9012064, 161793, 1, 0, 0, 1, 1, 0, -268.07, -4350.33, -36.743, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the ramp down'),
(9012065, 161793, 1, 0, 0, 1, 1, 0, -285.56, -4357.65, -42.418, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the west chamber'),
(9012066, 161793, 1, 0, 0, 1, 1, 0, -279.62, -4360.07, -42.347, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the west chamber'),
(9012067, 161793, 1, 0, 0, 1, 1, 0, -288.61, -4377.4, -49.153, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the west chamber floor'),
(9012068, 161793, 1, 0, 0, 1, 1, 0, -153.98, -4492.14, -42.224, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south-east cavern'),
(9012069, 161793, 1, 0, 0, 1, 1, 0, -129.3, -4460.55, -37.753, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south-east cavern'),
(9012070, 161794, 1, 0, 0, 1, 1, 0, -153.17, -4192.83, 45.448, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the tunnel past Anjali'),
(9012071, 161794, 1, 0, 0, 1, 1, 0, -137.3, -4202.79, 41.287, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the tunnel bend'),
(9012072, 161794, 1, 0, 0, 1, 1, 0, -135.5, -4212.31, 37.055, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the descent'),
(9012073, 161794, 1, 0, 0, 1, 1, 0, -143.53, -4222.55, 31.559, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the descent'),
(9012074, 161794, 1, 0, 0, 1, 1, 0, -133, -4232, 24.214, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: the descent, 10 yd off a Questie sighting on a 34-degree ramp'),
(9012075, 161794, 1, 0, 0, 1, 1, 0, -128, -4252, 10.336, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: the ramp foot, 5 yd off a Questie sighting on a 34-degree ramp'),
(9012076, 161794, 1, 0, 0, 1, 1, 0, -140.16, -4259.31, 6.398, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the ramp foot'),
(9012077, 161794, 1, 0, 0, 1, 1, 0, -153.28, -4291.72, 1.061, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the gallery south'),
(9012078, 161794, 1, 0, 0, 1, 1, 0, -171.06, -4315.38, -4.185, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the gallery south'),
(9012079, 161794, 1, 0, 0, 1, 1, 0, -180.74, -4344.93, -12.075, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the middle gallery'),
(9012080, 161794, 1, 0, 0, 1, 1, 0, -223.64, -4513.16, -51.367, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south cavern'),
(9012081, 161795, 1, 0, 0, 1, 1, 0, -280.72, -4371.9, -46.908, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the west chamber'),
(9012082, 161795, 1, 0, 0, 1, 1, 0, -305.69, -4402.6, -50.844, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the west chamber''s far end'),
(9012083, 161795, 1, 0, 0, 1, 1, 0, -279.04, -4486.25, -49.379, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south-west cavern'),
(9012084, 161795, 1, 0, 0, 1, 1, 0, -266.83, -4500.78, -49.515, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south-west cavern'),
(9012085, 161795, 1, 0, 0, 1, 1, 0, -212.64, -4502.98, -50.771, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south cavern'),
(9012086, 161795, 1, 0, 0, 1, 1, 0, -213.52, -4524.71, -48.685, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south cavern'),
(9012087, 161795, 1, 0, 0, 1, 1, 0, -223.2, -4540.18, -46.43, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south cavern''s end'),
(9012088, 161795, 1, 0, 0, 1, 1, 0, -183.86, -4511.34, -44.526, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south-east cavern'),
(9012089, 161795, 1, 0, 0, 1, 1, 0, -154.67, -4506.44, -42.148, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south-east cavern'),
(9012090, 161795, 1, 0, 0, 1, 1, 0, -138.32, -4471.94, -40.376, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south-east cavern'),
(9012091, 161795, 1, 0, 0, 1, 1, 0, -126.19, -4466, -36.778, 0, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Sinister Lair: Questie; the south-east cavern''s end'),
(9012100, 161803, 1, 0, 0, 1, 1, 0, -350, -4122, 51.36, 3.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro resident: lower village lane south of the market, near Swa''li'),
(9012101, 161804, 1, 0, 0, 1, 1, 0, -380, -4130, 50.9, 1.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro resident: by the water trough inside the south arch'),
(9012102, 161805, 1, 0, 0, 1, 1, 0, -345, -4112, 49.752, 2.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro resident: at the foot of the market deck'),
(9012103, 161806, 1, 0, 0, 1, 1, 0, -369.6, -4056.5, 51.273, 3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro resident: the ground-floor deck of Troll_Hotel01, her inn'),
(9012104, 161827, 1, 0, 0, 1, 1, 0, -364.5, -4139.5, 51.965, 3.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro resident: outside the south arch on the approach, clear of the bush, 43 yd from the nearest Devotee; faces the road'),
(9012105, 161831, 1, 0, 0, 1, 1, 0, -360, -4108, 51.205, 1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Zeb''Goro resident: market lane below the mall, between the gong and the trough');

DELETE FROM `creature_addon` WHERE `guid` BETWEEN 9012000 AND 9012299;

DELETE FROM `gameobject` WHERE `guid` IN (7917000, 7917001, 7917002, 7917003, 7917004, 7917005, 7917010, 7917011, 7917012, 7917013, 7917014, 7917015, 7917016, 7917017, 7917018, 7917019, 7917020, 7917021, 7917022, 7917023, 7917024, 7917025, 7917026, 7917027, 7917028, 7917029, 7917030, 7917031) OR `guid` BETWEEN 7917000 AND 7917099;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7917000, 2300535, 1, 0, 0, 1, 1, -344.062, -4103.93, 50.841, 3.1, 0, 0, 0.999784, 0.020795, 60, 100, 1, '', 'CoA Valley of Trials: ST8710 = atlas, under the market deck'),
(7917001, 2300536, 1, 0, 0, 1, 1, -401.77, -4060.58, 51.577, 4.7, 0, 0, 0.711473, -0.702713, 60, 100, 1, '', 'CoA Valley of Trials: ST8711 = atlas, under the bridge'),
(7917002, 2300537, 1, 0, 0, 1, 1, -373.629, -4142.73, 52.076, 1.6, 0, 0, 0.717356, 0.696707, 60, 100, 1, '', 'CoA Valley of Trials: ST8712 = atlas, outside the south arch'),
(7917003, 2300564, 1, 0, 0, 1, 1, -212.6, -4181, 56.552, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: the ward across the lair mouth at ST8674, west half'),
(7917004, 2300564, 1, 0, 0, 1, 1, -212.6, -4189.5, 56.593, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: the ward across the lair mouth at ST8674, east half'),
(7917005, 9303600, 1, 0, 0, 1, 1, -206, -4178, 57.671, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Valley of Trials: inside the ward, against the mouth''s west rock wall; digs a walled-in player out'),
(7917010, 1326634, 1, 0, 0, 1, 1, -584.68, -4188.89, 49.39, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917011, 1326643, 1, 0, 0, 1, 1, -580.93, -4193.57, 53.22, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917012, 1326644, 1, 0, 0, 1, 1, -590.48, -4183.89, 52.13, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917013, 1326645, 1, 0, 0, 1, 1, -587.38, -4180.28, 53.26, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917014, 1326646, 1, 0, 0, 1, 1, -585.63, -4180.09, 53.46, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917015, 1326647, 1, 0, 0, 1, 1, -567.55, -4199.44, 46, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917016, 1326648, 1, 0, 0, 1, 1, -590.49, -4189.56, 52.33, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917017, 1326650, 1, 0, 0, 1, 1, -584.02, -4190.59, 53.1, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917018, 1326654, 1, 0, 0, 1, 1, -582.55, -4188.06, 54.58, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917019, 1326655, 1, 0, 0, 1, 1, -584.62, -4185.78, 54.58, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917020, 1326656, 1, 0, 0, 1, 1, -551.9, -4194.85, 46.69, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917021, 1326657, 1, 0, 0, 1, 1, -551.05, -4190.63, 47.63, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917022, 1326658, 1, 0, 0, 1, 1, -557.13, -4188.34, 47.79, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917023, 1326659, 1, 0, 0, 1, 1, -563.74, -4191.58, 48.11, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917024, 1326661, 1, 0, 0, 1, 1, -584.04, -4181.23, 53.74, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917025, 1326662, 1, 0, 0, 1, 1, -561, -4198.79, 46.08, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917026, 1326665, 1, 0, 0, 1, 1, -560.84, -4192.64, 46.7, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917027, 1326666, 1, 0, 0, 1, 1, -584.87, -4186.64, 54.58, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917028, 1326668, 1, 0, 0, 1, 1, -560.14, -4192.62, 47.17, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917029, 3236154, 1, 0, 0, 1, 1, -583.3, -4187.14, 54.58, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917030, 3260448, 1, 0, 0, 1, 1, -560.37, -4189.77, 47.26, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas'),
(7917031, 181959, 1, 0, 0, 1, 1, -585.05, -4203.27, 38.83, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: atlas, at the Den mouth');

DELETE FROM `gameobject_addon` WHERE `guid` BETWEEN 7917000 AND 7917099;

-- ---------------------------------------------------------------------------
-- 7. Stock rows
-- ---------------------------------------------------------------------------
-- Recorded CoA points for the Den and gate NPCs; Zeb'Goro wildlife out of the village; buried rows re-floored.
UPDATE `creature` SET `position_x` = -421.2, `position_y` = -4104.8, `position_z` = 49.511 WHERE `guid` = 6471; -- Hana'zua: ST1365 (2.0 yd) west of the new pool, out of the plant
UPDATE `creature` SET `position_x` = -599.645, `position_y` = -4184.11, `position_z` = 41.084 WHERE `guid` = 3443; -- Gornek: ST637 (atlas agrees) on the Den floor
UPDATE `creature` SET `position_x` = -606.95, `position_y` = -4187.24, `position_z` = 41.092 WHERE `guid` = 4797; -- Kzan Thornslash: atlas point at the Den mouth
UPDATE `creature` SET `position_x` = -594, `position_y` = -4574.9, `position_z` = 41.033 WHERE `guid` = 4787; -- Ukor: at the valley gate by his stall, 1.1 yd off the atlas point to clear the worldforged Forgotten Sack
UPDATE `creature` SET `position_x` = -566, `position_y` = -4268.2, `position_z` = 38.637 WHERE `guid` = 4795; -- Den Grunt: off the buried post, on the Den road
UPDATE `creature` SET `position_x` = -220, `position_y` = -4156, `position_z` = 66.822 WHERE `guid` = 8662; -- Scorpid Worker: off the lair mouth rocks onto open ground
UPDATE `creature` SET `position_x` = -269.336, `position_y` = -4144.42, `position_z` = 55.62 WHERE `guid` = 7375; -- Lazy Peon: re-floored where it sleeps
UPDATE `creature` SET `position_x` = -448.447, `position_y` = -4240.06, `position_z` = 50.728 WHERE `guid` = 12211; -- Mottled Boar: re-floored
UPDATE `creature` SET `position_x` = -432.987, `position_y` = -4234.34, `position_z` = 52.601 WHERE `guid` = 12179; -- Adder: re-floored
UPDATE `creature` SET `position_x` = -390, `position_y` = -4180, `position_z` = 57.189 WHERE `guid` = 13038; -- Mottled Boar: 8 yd off its 40-degree bank onto a gentler slope
UPDATE `creature` SET `position_x` = -269.97, `position_y` = -4000.87, `position_z` = 168.8 WHERE `guid` = 3381; -- Telf Joolam: re-floored on the Shrine of the Dormant Flame peak
UPDATE `creature` SET `position_x` = -398, `position_y` = -4230, `position_z` = 56.047 WHERE `guid` = 4693; -- Scorpid Worker: out of the Zeb'Goro arch to the south valley floor
UPDATE `creature` SET `position_x` = -470, `position_y` = -4165, `position_z` = 50.539 WHERE `guid` = 7984; -- Scorpid Worker: out of the hotel lane to the south-west floor
UPDATE `creature` SET `position_x` = -440, `position_y` = -4205, `position_z` = 51.418 WHERE `guid` = 12987; -- Scorpid Worker: out from under the market to the south floor
UPDATE `creature` SET `position_x` = -445, `position_y` = -4165, `position_z` = 46.572 WHERE `guid` = 13028; -- Scorpid Worker: out of the village to the floor by the 789 point
UPDATE `creature` SET `position_x` = -440, `position_y` = -4142, `position_z` = 52.022 WHERE `guid` = 13029; -- Scorpid Worker: to the 789 objective point (ST3453) south-west of the village
UPDATE `creature` SET `position_x` = -470, `position_y` = -4230, `position_z` = 49.606 WHERE `guid` = 13031; -- Scorpid Worker: out of the village to the south-west floor
UPDATE `creature` SET `position_x` = -410, `position_y` = -4215, `position_z` = 54.151 WHERE `guid` = 13034; -- Scorpid Worker: out of the village to the south floor
UPDATE `creature` SET `position_x` = -400, `position_y` = -4190, `position_z` = 51.544 WHERE `guid` = 13048; -- Scorpid Worker: out of the market to the south floor
UPDATE `creature` SET `position_x` = -280, `position_y` = -4160, `position_z` = 53.645 WHERE `guid` = 13049; -- Scorpid Worker: out of the hotel to the lair path
UPDATE `creature` SET `position_x` = -285, `position_y` = -4200, `position_z` = 52.167 WHERE `guid` = 13052; -- Scorpid Worker: out of the pool bank to the lair path
UPDATE `creature` SET `position_x` = -260, `position_y` = -4185, `position_z` = 56.319 WHERE `guid` = 13071; -- Scorpid Worker: out of the village to the lair path
UPDATE `creature` SET `position_x` = -375, `position_y` = -4170, `position_z` = 52.02, `wander_distance` = 5 WHERE `guid` = 13074; -- Scorpid Worker: out of the south strip to the floor below the arch
UPDATE `creature` SET `position_x` = -345, `position_y` = -4170, `position_z` = 53.06, `wander_distance` = 5 WHERE `guid` = 13075; -- Scorpid Worker: out of the south strip to the floor south-east of the arch
UPDATE `creature` SET `position_x` = -422, `position_y` = -4178, `position_z` = 51.041 WHERE `guid` = 13072; -- Scorpid Worker: out of the south strip to the south-west floor
UPDATE `creature` SET `position_x` = -462, `position_y` = -4200, `position_z` = 52.495 WHERE `guid` = 6489; -- Hare: off Hana'zua's new spot to the south-west floor
UPDATE `creature` SET `position_x` = -478, `position_y` = -4215, `position_z` = 50.215 WHERE `guid` = 6526; -- Lazy Peon: out of the village, beside its LumberPile on the south-west floor
UPDATE `creature` SET `position_x` = -315, `position_y` = -4160, `position_z` = 53.23 WHERE `guid` = 6523; -- Lazy Peon: away from the Strange Flower to flat ground on the lair path, with its LumberPile

UPDATE `gameobject` SET `position_x` = -275, `position_y` = -4143, `position_z` = 54.728 WHERE `guid` = 12459; -- LumberPile of peon 7375: off the rocks, beside it
UPDATE `gameobject` SET `position_x` = -476.371, `position_y` = -4216.09, `position_z` = 50.142 WHERE `guid` = 12343; -- LumberPile of peon 6526: moved with it (same offset)
UPDATE `gameobject` SET `position_x` = -311.565, `position_y` = -4165.88, `position_z` = 53.23 WHERE `guid` = 12299; -- LumberPile of peon 6523: moved with it (same offset)
UPDATE `gameobject` SET `position_x` = -432, `position_y` = -4218, `position_z` = 52.986 WHERE `guid` = 12199; -- Cactus Apple: out of the village to the south floor
UPDATE `gameobject` SET `position_x` = -458, `position_y` = -4245, `position_z` = 48.894 WHERE `guid` = 12555; -- Cactus Apple: out of the village to the south-west floor
UPDATE `gameobject` SET `position_x` = -425, `position_y` = -4232, `position_z` = 53.851 WHERE `guid` = 12509; -- Cactus Apple: away from the Strange Flower to the south floor
UPDATE `gameobject` SET `position_x` = -455, `position_y` = -4215, `position_z` = 49.93 WHERE `guid` = 12592; -- Cactus Apple: out of the village to the south-west floor
UPDATE `gameobject` SET `position_x` = -463, `position_y` = -4237, `position_z` = 50.093 WHERE `guid` = 12441; -- Cactus Apple: off the west climb to the south-west floor
UPDATE `gameobject` SET `position_x` = -440, `position_y` = -4248, `position_z` = 49.827 WHERE `guid` = 12457; -- Cactus Apple: off the west climb to the south floor

-- Lazy Peon action list 737500 (peon 7375): ids 2, 11 beside its re-placed pile; ids 7, 16 second chopping spot,
--   re-floored; id 20 back to its bed, re-floored
DELETE FROM `smart_scripts` WHERE `entryorguid` = 737500 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(737500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Peon Sleeping'''),
(737500, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Run Off'),
(737500, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -275.24, -4144.08, 54.581, 1.37121, 'Lazy Peon - On Script - Move To Position'),
(737500, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(737500, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(737500, 9, 5, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(737500, 9, 6, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(737500, 9, 7, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -263.703, -4144.72, 56.818, 5.55737, 'Lazy Peon - On Script - Move To Position'),
(737500, 9, 8, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(737500, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(737500, 9, 10, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(737500, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -275.24, -4144.08, 54.581, 1.37121, 'Lazy Peon - On Script - Move To Position'),
(737500, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(737500, 9, 13, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(737500, 9, 14, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(737500, 9, 15, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(737500, 9, 16, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -263.703, -4144.72, 56.818, 5.55737, 'Lazy Peon - On Script - Move To Position'),
(737500, 9, 17, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(737500, 9, 18, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(737500, 9, 19, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(737500, 9, 20, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -269.336, -4144.42, 55.62, 4.24184, 'Lazy Peon - On Script - Move To Position'),
(737500, 9, 21, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 11, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Cast ''Peon Sleeping''');
-- Lazy Peon action list 737501 (peon 7375): ids 5, 15 beside its re-placed pile; ids 11, 20 second chopping spot,
--   re-floored; id 24 back to its bed, re-floored
DELETE FROM `smart_scripts` WHERE `entryorguid` = 737501 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(737501, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Peon Sleeping'''),
(737501, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Talk line 0'),
(737501, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 115, 6292, 6294, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound Rndmsound 6292 6294'),
(737501, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 10556, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Kill Monstercredit'),
(737501, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Run On'),
(737501, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -275.24, -4144.08, 54.581, 1.37121, 'Lazy Peon - On Script - Move To Position'),
(737501, 9, 6, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(737501, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Run Off'),
(737501, 9, 8, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(737501, 9, 9, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(737501, 9, 10, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(737501, 9, 11, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -263.703, -4144.72, 56.818, 5.55737, 'Lazy Peon - On Script - Move To Position'),
(737501, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(737501, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(737501, 9, 14, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(737501, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -275.24, -4144.08, 54.581, 1.37121, 'Lazy Peon - On Script - Move To Position'),
(737501, 9, 16, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(737501, 9, 17, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(737501, 9, 18, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(737501, 9, 19, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(737501, 9, 20, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -263.703, -4144.72, 56.818, 5.55737, 'Lazy Peon - On Script - Move To Position'),
(737501, 9, 21, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(737501, 9, 22, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(737501, 9, 23, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(737501, 9, 24, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -269.336, -4144.42, 55.62, 4.24184, 'Lazy Peon - On Script - Move To Position'),
(737501, 9, 25, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 11, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Cast ''Peon Sleeping''');
-- Lazy Peon action list 652600 (peon 6526): ids 2, 11 beside its pile; ids 7, 16 second chopping spot; id 20 back
--   to its bed
DELETE FROM `smart_scripts` WHERE `entryorguid` = 652600 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(652600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Peon Sleeping'''),
(652600, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Run Off'),
(652600, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -476.958, -4217.09, 50.059, 5.22157, 'Lazy Peon - On Script - Move To Position'),
(652600, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652600, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(652600, 9, 5, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(652600, 9, 6, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(652600, 9, 7, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -482.625, -4215.31, 50.16, 2.83788, 'Lazy Peon - On Script - Move To Position'),
(652600, 9, 8, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(652600, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(652600, 9, 10, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652600, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -476.958, -4217.09, 50.059, 5.22157, 'Lazy Peon - On Script - Move To Position'),
(652600, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652600, 9, 13, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(652600, 9, 14, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(652600, 9, 15, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(652600, 9, 16, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -482.625, -4215.31, 50.16, 2.83788, 'Lazy Peon - On Script - Move To Position'),
(652600, 9, 17, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(652600, 9, 18, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(652600, 9, 19, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652600, 9, 20, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -478.917, -4211.71, 50.405, 1.33777, 'Lazy Peon - On Script - Move To Position'),
(652600, 9, 21, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 11, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Cast ''Peon Sleeping''');
-- Lazy Peon action list 652601 (peon 6526): ids 5, 15 beside its pile; ids 11, 20 second chopping spot; id 24 back
--   to its bed
DELETE FROM `smart_scripts` WHERE `entryorguid` = 652601 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(652601, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Peon Sleeping'''),
(652601, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Talk line 0'),
(652601, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 115, 6292, 6294, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound Rndmsound 6292 6294'),
(652601, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 10556, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Kill Monstercredit'),
(652601, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Run On'),
(652601, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -476.958, -4217.09, 50.059, 5.22157, 'Lazy Peon - On Script - Move To Position'),
(652601, 9, 6, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652601, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Run Off'),
(652601, 9, 8, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(652601, 9, 9, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(652601, 9, 10, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(652601, 9, 11, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -482.625, -4215.31, 50.16, 2.83788, 'Lazy Peon - On Script - Move To Position'),
(652601, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(652601, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(652601, 9, 14, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652601, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -476.958, -4217.09, 50.059, 5.22157, 'Lazy Peon - On Script - Move To Position'),
(652601, 9, 16, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652601, 9, 17, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(652601, 9, 18, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(652601, 9, 19, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(652601, 9, 20, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -482.625, -4215.31, 50.16, 2.83788, 'Lazy Peon - On Script - Move To Position'),
(652601, 9, 21, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(652601, 9, 22, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(652601, 9, 23, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652601, 9, 24, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -478.917, -4211.71, 50.405, 1.33777, 'Lazy Peon - On Script - Move To Position'),
(652601, 9, 25, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 11, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Cast ''Peon Sleeping''');
-- Lazy Peon action list 652300 (peon 6523): ids 2, 11 beside its pile; ids 7, 16 second chopping spot; id 20 back
--   to its bed
DELETE FROM `smart_scripts` WHERE `entryorguid` = 652300 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(652300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Peon Sleeping'''),
(652300, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Run Off'),
(652300, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -312.647, -4166.21, 53.243, 0.337633, 'Lazy Peon - On Script - Move To Position'),
(652300, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652300, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(652300, 9, 5, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(652300, 9, 6, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(652300, 9, 7, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -311.264, -4157, 53.207, 1.36258, 'Lazy Peon - On Script - Move To Position'),
(652300, 9, 8, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(652300, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(652300, 9, 10, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652300, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -312.647, -4166.21, 53.243, 0.337633, 'Lazy Peon - On Script - Move To Position'),
(652300, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652300, 9, 13, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(652300, 9, 14, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(652300, 9, 15, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(652300, 9, 16, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -311.264, -4157, 53.207, 1.36258, 'Lazy Peon - On Script - Move To Position'),
(652300, 9, 17, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(652300, 9, 18, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(652300, 9, 19, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652300, 9, 20, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -315, -4160, 53.23, 3.5617, 'Lazy Peon - On Script - Move To Position'),
(652300, 9, 21, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 11, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Cast ''Peon Sleeping''');
-- Lazy Peon action list 652301 (peon 6523): ids 5, 15 beside its pile; ids 11, 20 second chopping spot; id 24 back
--   to its bed
DELETE FROM `smart_scripts` WHERE `entryorguid` = 652301 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(652301, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Peon Sleeping'''),
(652301, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Talk line 0'),
(652301, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 115, 6292, 6294, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound Rndmsound 6292 6294'),
(652301, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 10556, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Kill Monstercredit'),
(652301, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Run On'),
(652301, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -312.647, -4166.21, 53.243, 0.337633, 'Lazy Peon - On Script - Move To Position'),
(652301, 9, 6, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652301, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Run Off'),
(652301, 9, 8, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(652301, 9, 9, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(652301, 9, 10, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(652301, 9, 11, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -311.264, -4157, 53.207, 1.36258, 'Lazy Peon - On Script - Move To Position'),
(652301, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(652301, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(652301, 9, 14, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652301, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -312.647, -4166.21, 53.243, 0.337633, 'Lazy Peon - On Script - Move To Position'),
(652301, 9, 16, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652301, 9, 17, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 20, 175784, 10, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Orientation Closest Gameobject ''LumberPile'''),
(652301, 9, 18, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Add Aura ''Kneel'''),
(652301, 9, 19, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Remove Aura ''Kneel'''),
(652301, 9, 20, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -311.264, -4157, 53.207, 1.36258, 'Lazy Peon - On Script - Move To Position'),
(652301, 9, 21, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 4, 6197, 1, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Play Sound 6197'),
(652301, 9, 22, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 173'),
(652301, 9, 23, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Set Emote State 0'),
(652301, 9, 24, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -315, -4160, 53.23, 3.5617, 'Lazy Peon - On Script - Move To Position'),
(652301, 9, 25, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 11, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Script - Cast ''Peon Sleeping''');

-- ---------------------------------------------------------------------------
-- 8. Scripts
-- ---------------------------------------------------------------------------
-- The lair trigger (AreaTrigger.dbc 6139) credits amulet holders on 1660019. Shakari runs an INFERRED inn
-- on the stock Horde innkeeper menu 1290 (bind, Hallow's End treats).
DELETE FROM `areatrigger` WHERE `entry` = 6139;
INSERT INTO `areatrigger` (`entry`, `map`, `x`, `y`, `z`, `radius`, `length`, `width`, `height`, `orientation`)
VALUES
(6139, 1, -213.223, -4186.73, 56.3451, 0, 30, 5, 5, 0);

DELETE FROM `areatrigger_scripts` WHERE `entry` = 6139;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`)
VALUES
(6139, 'SmartTrigger');

DELETE FROM `conditions` WHERE `SourceEntry` = 6139 AND `SourceTypeOrReferenceId` = 22 AND `SourceId` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(22, 1, 6139, 2, 0, 9, 0, 1660019, 0, 0, 0, 0, 0, '', '1660019 taken'),
(22, 1, 6139, 2, 0, 2, 0, 559146, 1, 0, 0, 0, 0, '', 'amulet held');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (161732, 161790, 161791, 161792, 161806, 161807, 161859, 161860, 161861, 161862) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(161732, 0, 0, 1, 62, 0, 100, 0, 932501, 0, 0, 0, 0, 0, 33, 161821, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Esgramor - On Gossip Option Selected - Quest Credit Report delivered to Esgramor'),
(161732, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Esgramor - Linked - Close Gossip'),
(161790, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 12000, 15000, 0, 0, 11, 256780, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Hirsutta the Witch - In Combat - Cast ''Rock Impact'' on a random enemy'),
(161790, 0, 1, 0, 0, 0, 100, 0, 8000, 10000, 30000, 40000, 0, 0, 11, 256779, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hirsutta the Witch - In Combat - Cast ''Petrifying Gaze'''),
(161790, 0, 2, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 267009, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hirsutta the Witch - Between 0-50% Health - Cast ''Wail of Souls'' (once)'),
(161790, 0, 3, 0, 0, 0, 100, 0, 5000, 7000, 9000, 12000, 0, 0, 11, 256798, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hirsutta the Witch - In Combat - Cast ''Drain Life'''),
(161791, 0, 0, 1, 8, 0, 100, 0, 256708, 0, 0, 0, 0, 0, 56, 559155, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Uneasy Citizen - On Spellhit ''Distilling Spiritual Unrest'' - Add Item ''Spiritual Unrest'''),
(161791, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 256478, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Uneasy Citizen - Linked - Cast ''Fear'''),
(161791, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Uneasy Citizen - Linked - Despawn In 2 Seconds'),
(161792, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 9000, 12000, 0, 0, 11, 256482, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Guardian Spirit - In Combat - Cast ''Ghost Strike'''),
(161806, 0, 0, 1, 62, 0, 100, 512, 1290, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Shakari the Innkeeper - On Gossip Option 0 Selected - Close Gossip'),
(161806, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 134, 24751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Shakari the Innkeeper - Linked - Invoker Cast ''Trick or Treat'''),
(161807, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 10000, 14000, 0, 0, 11, 256485, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Voodoo Devotee - In Combat - Cast ''Slash'''),
(161859, 0, 0, 1, 8, 0, 100, 0, 256724, 0, 0, 0, 0, 0, 56, 559173, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Earth - On Spellhit - Add Item 559173 (shackles)'),
(161859, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 256477, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Earth - Linked - Remove Aura ''Chained'''),
(161859, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 3000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Earth - Linked - Despawn In 3 Seconds'),
(161860, 0, 0, 1, 8, 0, 100, 0, 256723, 0, 0, 0, 0, 0, 56, 559172, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Fire - On Spellhit - Add Item 559172 (shackles)'),
(161860, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 256477, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Fire - Linked - Remove Aura ''Chained'''),
(161860, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 3000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Fire - Linked - Despawn In 3 Seconds'),
(161861, 0, 0, 1, 8, 0, 100, 0, 256722, 0, 0, 0, 0, 0, 56, 559175, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Water - On Spellhit - Add Item 559175 (shackles)'),
(161861, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 256477, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Water - Linked - Remove Aura ''Chained'''),
(161861, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 3000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Water - Linked - Despawn In 3 Seconds'),
(161862, 0, 0, 1, 8, 0, 100, 0, 256725, 0, 0, 0, 0, 0, 56, 559174, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Air - On Spellhit - Add Item 559174 (shackles)'),
(161862, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 256477, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Air - Linked - Remove Aura ''Chained'''),
(161862, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 3000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elemental Air - Linked - Despawn In 3 Seconds');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2300535, 2300536, 2300537, 9303600) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(2300535, 1, 0, 1, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 33, 161854, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Tiki Mask - On Gossip Hello - Quest Credit'),
(2300535, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Enchanted Tiki Mask - Linked - Despawn'),
(2300536, 1, 0, 1, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 33, 161855, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Chattering Tiki Mask - On Gossip Hello - Quest Credit'),
(2300536, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chattering Tiki Mask - Linked - Despawn'),
(2300537, 1, 0, 1, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 33, 161856, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Possessed Tiki Mask - On Gossip Hello - Quest Credit'),
(2300537, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 1000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Possessed Tiki Mask - Linked - Despawn'),
(9303600, 1, 0, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, -243, -4185, 56.029, 3.14, 'Old Digging Shovel - On Gossip Hello - Teleport outside the Sinister Lair mouth');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 6139 AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(6139, 2, 0, 0, 46, 0, 100, 0, 6139, 0, 0, 0, 0, 0, 33, 161800, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sinister Lair ward - On Trigger - Quest Credit Magical barrier crossed');
