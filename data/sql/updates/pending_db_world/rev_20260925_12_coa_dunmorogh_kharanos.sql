-- CoA Kharanos and its hills: the Thunderbrews' hops, Ikoras's automata, Gornarn's range, Gravedigger
-- Nonuid, Mirsinth and Jun'Kon, and Coldhewn Camp (quests 254003, 254004, 1660076-1660080, 500005 and
-- 500006); Yori Crackhelm to the Thunderbrew inn, his 5841 turn-in point (DESIGN).
-- Creature guids 9008480-9008799, gameobject guids 7914120-7914299, gossip menus 932240-932269.

-- ---------------------------------------------------------------------------
-- 1. Creatures
-- ---------------------------------------------------------------------------
-- Stand-in displays where the CoA model is missing from the client.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `family`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `RegenHealth`, `flags_extra`, `KillCredit1`, `ScriptName`)
VALUES
(254003, '流放者米尔辛斯', NULL, 932240, 10, 10, 0, 35, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1.96, 1, 1, 1, 1, 0, 0, ''),
(254006, '俊孔', NULL, 0, 8, 8, 0, 37, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 254006, '', 0, 2, 1, 1, 1, 1, 0, 0, ''),
(162882, '诺尔希·雷酒', NULL, 0, 13, 13, 0, 55, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(162883, '艾玛·雷酒', NULL, 0, 15, 15, 0, 55, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(162884, '伊科拉斯', NULL, 0, 9, 9, 0, 875, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 0.98, 1, 1, 1, 1, 0, 0, ''),
(162891, '戈纳恩', NULL, 932243, 10, 10, 0, 55, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 0.98, 1, 1, 1, 1, 0, 0, ''),
(162901, '掘墓者诺努伊德', NULL, 932241, 18, 18, 0, 55, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(765556, '布鲁娜·铁削', '伐木训练师', 0, 11, 11, 0, 55, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 0.98, 1, 1, 1, 1, 0, 0, ''),
(764536, '老卡根·壮削', NULL, 932244, 10, 10, 0, 55, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 0.98, 1, 1, 1, 1, 0, 0, ''),
(76555, '冰皮', NULL, 0, 14, 14, 0, 66, 0, 1, 1.14286, 20, 1, 2000, 2000, 1, 0, 2048, 2, 1, 0, 0, '', 0, 2.88, 1, 1, 1, 1, 0, 0, ''),
(162888, '失控的自动机 v1.1', NULL, 0, 6, 6, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 9, 0, 162888, '', 0, 0.96, 1, 1, 1, 1, 0, 0, ''),
(162889, '失控的自动机 v1.2', NULL, 0, 6, 6, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 9, 0, 162889, '', 0, 0.96, 1, 1, 1, 1, 0, 162888, ''),
(162890, '失控的自动机 v1.3', NULL, 0, 7, 7, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 9, 0, 162890, '', 0, 0.96, 1, 1, 1, 1, 0, 162888, ''),
(162917, '标靶', NULL, 0, 5, 5, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 'SmartAI', 0, 0.96, 1, 1, 1, 1, 0, 0, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `family` = VALUES(`family`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `DamageModifier` = VALUES(`DamageModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `KillCredit1` = VALUES(`KillCredit1`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (76555, 162882, 162883, 162884, 162888, 162889, 162890, 162891, 162901, 162917, 254003, 254006, 764536, 765556);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(254003, 0, 254002, 1, 1),
(254006, 0, 27490, 1, 1),
(162882, 0, 2284, 1, 1),
(162883, 0, 2286, 1, 1),
(162884, 0, 4285, 1, 1),
(162891, 0, 1847, 1, 1),
(162901, 0, 3085, 1, 1),
(765556, 0, 1839, 1, 1),
(764536, 0, 3306, 1, 1),
(76555, 0, 333954, 1, 1),
(162888, 0, 6888, 1, 1),
(162889, 0, 8369, 1, 1),
(162890, 0, 6889, 1, 1),
(162917, 0, 29075, 1, 1);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (76555, 162882, 162883, 162884, 162888, 162889, 162890, 162891, 162901, 162917, 254003, 254006, 764536, 765556);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(162891, 1, 0, 0, 2508),
(162901, 1, 3334, 0, 0),
(764536, 1, 0, 0, 2508),
(765556, 1, 768, 0, 0);

-- Old Kargan sits on the bearskin rug of his post (ST8560 is on the rug, 379.77)
DELETE FROM `creature_template_addon` WHERE `entry` IN (76555, 162882, 162883, 162884, 162888, 162889, 162890, 162891, 162901, 162917, 254003, 254006, 764536, 765556);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`)
VALUES
(764536, 0, 0, 1, 1, 0, 0, NULL);

DELETE FROM `creature_template_movement` WHERE `CreatureId` = 162917;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`)
VALUES
(162917, 1, 1, 0, 1, 0, 0, NULL);

-- CoA displays 254002 (Mirsinth) and 333954 (Icehide) lack model info; values of stock displays of the
-- same build.
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (254002, 333954);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
VALUES
(254002, 0.306, 1.5, 1, 0),
(333954, 1.0335, 1.95, 2, 0);

-- ---------------------------------------------------------------------------
-- 2. Dialogue
-- ---------------------------------------------------------------------------
-- Greetings and answers are the cached npc_text of each NPC; the option texts are INFERRED from them.
-- Mirsinth's second text 52003 speaks of a lake and green grass: her Loch Modan quest 254005, not built.
DELETE FROM `npc_text` WHERE `ID` IN (52002, 85161, 85191, 85205, 115558);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`)
VALUES
(52002, '老米尔辛斯不会伤害你。她被自己的部族放逐了，是的，对不忠于她的人毫无忠诚可言。老米尔辛斯很久以前就失去了对琐碎争斗和流血冲突的热情，她只想在洛阿带走她之前看看这片土地之外的世界。', '老米尔辛斯不会伤害你。她被自己的部族放逐了，是的，对不忠于她的人毫无忠诚可言。老米尔辛斯很久以前就失去了对琐碎争斗和流血冲突的热情，她只想在洛阿带走她之前看看这片土地之外的世界。', 0, 0, 1),
(85191, '<掘墓人疲惫的神情诉说着漫长的一天挥铲。这个坑让你印象深刻的不是它的深度，而是其土墙干净、光滑的修整。>', '<掘墓人疲惫的神情诉说着漫长的一天挥铲。这个坑让你印象深刻的不是它的深度，而是其土墙干净、光滑的修整。>', 0, 0, 1),
(85161, '抱歉，没注意到有人来了。$b$b<矮人用手背擦去额头上的汗水，然后在浓密的灰胡子上擦干。>$b$b你认识逝者吗？', '抱歉，没注意到有人来了。$b$b<矮人用手背擦去额头上的汗水，然后在浓密的灰胡子上擦干。>$b$b你认识逝者吗？', 0, 0, 1),
(85205, '<你猜想那个独自靠在小马车轮子上的矮人一定是这个摊位的摊主。他周围铺着一片凌乱的毯子——打开的弹药箱、散落在雪地上的弹壳、揉皱的纸张、翻倒的桶和破损的篮子，全都杂乱无章地堆放着。>', '<你猜想那个独自靠在小马车轮子上的矮人一定是这个摊位的摊主。他周围铺着一片凌乱的毯子——打开的弹药箱、散落在雪地上的弹壳、揉皱的纸张、翻倒的桶和破损的篮子，全都杂乱无章地堆放着。>', 0, 0, 1),
(115558, '啊，一个新面孔！欢迎来到冷凿营地。我们猎什么就剥什么皮，烧什么就砍什么——保持金币流动，麦酒冰凉。$B$B这些山丘里有大量的狼和野兔，它们的毛皮在铁炉堡能卖个好价钱。但睁大你的眼睛——雪地里出现了新的足迹。很大。有爪子，很深。$B$B有人说是离群的雪人，其他人发誓说是一个发了狂的冰元素。但一个捕猎者从山脊上下来，脸色苍白如骨，发誓说他看到了一只巨大的刃豹——苍白如雪堆，眼睛像冰冷的火焰。$B$B他们叫它冰皮，尽管没人傻到去靠近。如果你去闲逛，$N，带一把锋利的刀刃……和更敏锐的感官。', '啊，一个新面孔！欢迎来到冷凿营地。我们猎什么就剥什么皮，烧什么就砍什么——保持金币流动，麦酒冰凉。$B$B这些山丘里有大量的狼和野兔，它们的毛皮在铁炉堡能卖个好价钱。但睁大你的眼睛——雪地里出现了新的足迹。很大。有爪子，很深。$B$B有人说是离群的雪人，其他人发誓说是一个发了狂的冰元素。但一个捕猎者从山脊上下来，脸色苍白如骨，发誓说他看到了一只巨大的刃豹——苍白如雪堆，眼睛像冰冷的火焰。$B$B他们叫它冰皮，尽管没人傻到去靠近。如果你去闲逛，$N，带一把锋利的刀刃……和更敏锐的感官。', 0, 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (932240, 932241, 932242, 932243, 932244);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932240, 52002),
(932241, 85191),
(932242, 85161),
(932243, 85205),
(932244, 115558);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (932240, 932241, 932242, 932243, 932244);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(932241, 0, 0, '<清了清喉咙。>', 0, 1, 1, 932242, 0, 0, 0, '', 0),
(932242, 0, 0, '不，我不认识他们。跟我说说他们吧。', 0, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` IN (932240, 932241, 932242, 932243, 932244) AND `SourceTypeOrReferenceId` IN (14, 15);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(15, 932242, 0, 0, 0, 9, 0, 1660080, 0, 0, 0, 0, 0, '', 'Gravedigger Nonuid - listen only while quest 1660080 is taken');

-- ---------------------------------------------------------------------------
-- 3. World objects and loot
-- ---------------------------------------------------------------------------
-- The Coldhewn quest tree is its own entry 2300580 with the Dun Morogh Tree look: 244620 is main's Woodcutting
-- node (lock 1876, Forestwood logs), so reusing it would turn those nodes into quest trees. It takes the
-- plain lock 1689.
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `AIName`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`)
VALUES
(2300550, 10, 7702, '雷酒啤酒花', '', '', 0.4, 'SmartGameObjectAI', 0, 1660077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300580, 3, 170005, '丹莫罗树木', 'AxeCursor', '采集中', 1, '', 1689, 2300580, 0, 1, 1, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `AIName` = VALUES(`AIName`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`);

-- Flags 4 (GO_FLAG_INTERACT_COND): usable only while the quest needs them.
DELETE FROM `gameobject_template_addon` WHERE `entry` IN (2300550, 2300580);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`)
VALUES
(2300550, 0, 4),
(2300580, 0, 4);

-- Jun'Kon's totem, the automata parts and the Frostpine log: 100 %, quest-only.
DELETE FROM `creature_loot_template` WHERE `Entry` IN (162888, 162889, 162890, 254006);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(254006, 254002, 0, 100, 1, 1, 0, 1, 1, 'Jun''Kon - Mirsinth''s Totem'),
(162888, 558965, 0, 100, 1, 1, 0, 1, 1, 'Out-of-Control Automaton v1.1 - Reusable Mechanical Parts'),
(162889, 558965, 0, 100, 1, 1, 0, 1, 1, 'Out-of-Control Automaton v1.2 - Reusable Mechanical Parts'),
(162890, 558965, 0, 100, 1, 1, 0, 1, 1, 'Out-of-Control Automaton v1.3 - Reusable Mechanical Parts');

DELETE FROM `gameobject_loot_template` WHERE `Entry` = 2300580;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(2300580, 662336, 0, 100, 1, 1, 0, 1, 1, 'Dun Morogh Tree - Frostpine Log');

DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (162888, 162889, 162890, 254006);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(254006, 0, 254002),
(162888, 0, 558965),
(162889, 0, 558965),
(162890, 0, 558965);

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` = 2300580;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(2300580, 0, 662336);

-- ---------------------------------------------------------------------------
-- 4. Quests
-- ---------------------------------------------------------------------------
-- Chains 254002 -> 254003 -> 254004 and 1660009 -> 1660076 -> 1660077. 254004's RewardNextQuest stays
-- 0 until 254005 (Loch Modan) exists. The upsert leaves the POI columns to migration 60.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(254003, 2, 2, 1, 1, 0, 0, 0, 0, 0, 0, 254004, 2, 0, 67, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 3, 0, 54, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '老米尔辛斯', '找到被流放的霜鬃巨魔。', '我看到一个巨魔在布伦纳尔和卡拉诺斯之间的山丘上游荡，看起来在躲避其他巨魔。靠近那个我们称之为老冰须的雪人洞穴。为什么？嗯，他在那里待了很久，胡子上都结了冰。$B$B不管怎样，你那个被流放的巨魔现在大概已经死了，老冰须在我那个时候干掉过不少好矮人。我个人不会靠近他，但如果你真得找到那个巨魔，就睁大眼睛，离他远点。明白了吗？我可不想让你的死算在我头上。', '', '找到被流放的霜鬃巨魔', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254004, 2, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 5, 0, 67, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '兄弟的背叛', '从霜鬃要塞的俊孔那里取回流放者米尔辛斯的图腾。', '你想谈谈老米尔辛斯见过的事？一个金属造物向我的族人开战，也许也向你的族人开战？是的，是的，老米尔辛斯见过很多东西，但也许你也是金属造物。你希望它因为对你族人的威胁而被阻止，尽管它在攻击我的族人？$B$B你也许比老米尔辛斯的族人更有远见。你放下了旧怨，所以老米尔辛斯也会放下。老米尔辛斯的族人已经不再是老米尔辛斯的族人了，被放逐了，是的，你说的“流放”？为什么呢？为什么你的金属造物不听话？原因和老米尔辛斯不听话一样，或者也许恰恰相反。$B$B如果你想要答案，你要做一件老米尔辛斯做不到的事。老米尔辛斯藏在这里，因为雪人把我们两族的人挡在外面。躲开雪人比躲开族人容易，看。老米尔辛斯可以躲藏、回避、游荡，但俊孔兄弟在放逐她时拿走了老米尔辛斯的图腾，看。如果她不是他的家人，就不是老米尔辛斯的家人。俊孔兄弟是懦夫，藏得很深很深，在洞穴里。把图腾带回来，我们就谈谈金属造物、历史，很多东西，好吗？', '', '回到流放者米尔辛斯那里', 0, 0, 0, 0, 0, 0, 0, 0, 254002, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(1660076, 2, 8, 5, 1, 0, 0, 0, 0, 0, 0, 1660077, 4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2302013, 1, 2302018, 1, 2302023, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '蒸蒸日上的生意', '与卡拉诺斯雷酒酿酒厂的艾玛·雷酒交谈。', '<矮人从远处挥手吸引你的注意；先是大挥手臂，然后他开始原地跳跃。>$b$b幸会！<喘气>我看到你怎么处理格罗尔达的事了。我猜你不会在安威玛尔逗留太久了……$b$b如果是这样，而你的脚带你去卡拉诺斯，我有封信要送。$b$b在旅店找到艾玛，告诉她安威玛尔的谈判有了结果。他们想要一批我们最好的麦酒；如果能赢得他们的心，我们就有固定买家了。祖先对我们微笑，$C！', '', '与艾玛·雷酒交谈。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(1660077, 2, 8, 5, 1, 0, 0, 0, 0, 0, 0, 0, 5, 260, 337, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2302028, 1, 2302033, 1, 2302038, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '雷酒啤酒花', '从卡拉诺斯雷酒酿酒厂场地采集七份雷酒啤酒花。', '诺里一定在你身上看到了什么，才会把那个消息托付给你。$b$b既然你在这里，也许你能搭把手。$b$b走出旅店往左看；你会看到酿酒厂的啤酒花园。特别的啤酒花品种，用来酿造全丹莫罗最好的酒。$b$b我们今天客人多得忙不过来。你介意帮我采些啤酒花带回来吗？我知道这不是英雄的活儿。但有钱拿，而且报酬不错。', '', '回到艾玛·雷酒那里。', 0, 0, 0, 0, 0, 0, 0, 0, 558964, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, '', '', '', ''),
(1660078, 2, 8, 5, 1, 0, 0, 0, 0, 0, 0, 0, 5, 350, 382, 0, 0, 0, 0, 0, 8, 0, 2302043, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '机器人罢工', '击败堵塞卡拉诺斯隧道的失控自动机，并从它们的残骸中取回可重复使用的机械零件。', '小心！这条隧道已经好几天无法通行了。$b$b我的发明，我亲手打造的自动机<他在你面前挥舞双手，更多的是滑稽而非悲剧>，背叛了我。它们反叛了！$b$b现在它们攻击任何靠近的东西。它们已经夺去了一条命，更糟的是，它们毁了我的名声！$b$b除非……否则别进那条隧道。<侏儒的眼中闪过一丝投机取巧的光芒。>$b$b现在我看你，你不像其他人。你也许能活下来。摧毁它们……就这么办！进去，把它们拆开，把零件带给我。', '', '回到伊科拉斯那里。', 162888, 0, 0, 0, 7, 0, 0, 0, 558965, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, '失控的自动机已摧毁', '', '', ''),
(1660079, 2, 8, 5, 1, 0, 0, 0, 0, 0, 0, 0, 5, 83, 114, 0, 0, 0, 0, 558950, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2302048, 1, 2302053, 1, 2302058, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '实弹演示', '用戈纳恩的雷筒和弹药测试卡拉诺斯上方山脊上的练习标靶。', '<矮人把一支雷筒夹在膝盖之间，将通条伸进枪管；推、转、拉，直到污垢松动并溅出来。>$b$b抱歉，没注意到有人来了。$b$b想来几发吗？标靶总是渴望铅弹；运气好的话，我们能吸引买家的目光。$b$b这些弹药可不会自己卖出去。', '', '与戈纳恩交谈。', 162917, 0, 0, 0, 3, 0, 0, 0, 558950, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '标靶已击中', '', '', ''),
(1660080, 2, 8, 5, 1, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '稍作停留', '从喧嚣与匆忙中抽出片刻，停下来听掘墓者诺努伊德讲一讲。', '<掘墓人疲惫的神情诉说着漫长的一天挥铲。这个坑让你印象深刻的不是它的深度，而是其土墙干净、光滑的修整。>$b$b<也许他有什么值得分享的东西。>', '', '向诺努伊德道别。', 162921, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '聆听掘墓者诺努伊德', '', '', ''),
(500005, 2, 7, 5, 1, 0, 0, 0, 0, 0, 0, 0, 5, 175, 292, 0, 0, 0, 0, 0, 8, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500660, 1, 500659, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '冷凿营地的木材', '在冷凿营地附近砍伐丹莫罗树木，带回12根霜松原木。', '是他们派你来的吗？如果你又是那种混蛋合同经理，转身沿原路走回去。我正深陷糟糕的订单和更糟的文书工作中。$B$B刚从铁炉堡接到一份额外订单。大单。很突然。但他们没有给我们更多人手，反而把整个伐木队都换掉了。没时间训练，没时间计划，只管完成。$B$B我落后了，而我讨厌落后。如果你会用斧头，又不介意寒冷，我需要帮助。我们需要霜松原木，十二根。你会在附近的树林里找到它们。$B$B这不是慈善工作。我会确保它值得你花时间。', '', '回到丹莫罗冷凿营地的布鲁娜·铁削那里。', 0, 0, 0, 0, 0, 0, 0, 0, 662336, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, '', '', '', ''),
(500006, 2, 11, 6, 1, 1, 3, 0, 0, 0, 0, 0, 6, 375, 292, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500661, 1, 500662, 1, 500663, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '不破的冰皮', '你被要求追踪并杀死困扰冷凿营地以上冷凿山脊的精英霜刃豹——冰皮。', '你看到营地上方那个山脊了吗？那就是它叼走最后一个猎人的地方。我们找到了血迹。别的什么都没有。$B$B他们叫它冰皮。冰豹。巨大、无声，而且对我们的陷阱来说太聪明了。它出击迅速，雪地里只留下红色，然后又消失了。$B$B太多人死于追猎它了。这不再是关于骄傲或运动。当它还在那里游荡时，我们无法在山丘上工作。而我不会再派我们的人消失在寒冷中。$B$B如果你愿意冒这个险，就去做。但一定要确保你的射击。冰皮不会给你第二次机会。', '', '回到丹莫罗冷凿营地的老卡根·壮削那里。', 76555, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (254003, 254004, 500005, 500006, 1660076, 1660077, 1660078, 1660079, 1660080);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(254003, 0, 0, 254002, 0, 0),
(254004, 0, 0, 254003, 0, 0),
(1660076, 0, 0, 1660009, 0, 0),
(1660077, 0, 0, 1660076, 0, 0),
(1660078, 0, 0, 0, 0, 0),
(1660079, 0, 0, 0, 1, 0),
(1660080, 0, 0, 0, 0, 0),
(500005, 0, 0, 0, 0, 0),
(500006, 0, 0, 0, 0, 0);

-- Progress and completion texts and paragraph breaks from the AscensionES archive (pEN / cEN).
DELETE FROM `quest_offer_reward` WHERE `ID` IN (254003, 254004, 500005, 500006, 1660076, 1660077, 1660078, 1660079, 1660080);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(254003, '你是来杀我的吗？$B$B是的，我会说你们的语言，洛阿向老米尔辛斯展示了许多东西。你族人的语言只是众多语言之一，尽管你族对此并不在意，我的族人也一样。雪被血覆盖，穴居人出现了，我的族人欢欣鼓舞，当老米尔辛斯说他们只要有半点机会就会把我们两族都杀光时，他们毫不在意。$B$B不，不，旧怨和复仇，这些东西更重要，是吗？老米尔辛斯对它们毫不在意。'),
(254004, '老米尔辛斯和俊孔兄弟曾经是朋友，很久很久以前……不再是孩子了，老米尔辛斯现在更睿智，俊孔兄弟没那么睿智……但老米尔辛斯忍不住回想那些日子……$B$B给老米尔辛斯一点时间……耐心是宝贵的，你知道的……对吧，俊孔兄弟？'),
(1660076, '<当你提到诺里和他让你送的消息时，矮人女子好奇的眉头柔和了下来。>$B$B那是好消息，<她说，没带多少热情。>$B$B我会尽快确保货物备好。'),
(1660077, '嗯……<艾玛吸着你采来的啤酒花的香气；她的眼睛颤动地闭上。>$B$B令人陶醉。$B$B我希望野生动物没给你添太多麻烦。照这个速度，我得雇人来巡逻场地了。'),
(1660078, '你活下来了！$B$B而且你抢救回了相当数量的零件。$B$B<伊科拉斯咳嗽着，拍开从洞口喷出的细细烟柱，一边这样做一边坐立不安。>$B$B有了这些，再加上在酿酒厂喝几杯烈酒，我想我能恢复灵感（和勇气），投入我的下一个项目：第二代自动机，比第一批更强大、更听话。$B$B谢谢！'),
(1660079, '以我母亲的胡子起誓！这才叫表演！$B$B你亲眼看到了，对吧？我只卖最好的装备。$B$B帮我个忙，替我宣传一下，好吗？干这行，口碑最重要。'),
(1660080, '谨慎选择你的敌人，$C。$B$B许多矮人经过卡拉诺斯，渴望铸就传奇……最终却躺进了这些壁龛中的一个。'),
(500005, '这就行了。不完美，但总比没有好。你刚把我从一顿训话和营房外的冻眠中救了出来。$B$B来，拿着这个。你挣到的不只是感谢。'),
(500006, '就是它。这张毛皮绝不会认错。$B$B你做到了别人做不到的事。我们会纪念逝者，山丘也会因此更安全。$B$B你赢得了这个。还有我们的敬意。');

DELETE FROM `quest_request_items` WHERE `ID` IN (254003, 254004, 500005, 500006, 1660076, 1660077, 1660078, 1660079, 1660080);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(254003, '小心那个雪人，听到了吗？'),
(254004, '俊孔兄弟把老米尔辛斯赶了出去，说老米尔辛斯质疑旧怨和复仇就是叛徒。$B$B但老米尔辛斯忍不住希望她的兄弟不必死……给老米尔辛斯个痛快。'),
(1660076, ''),
(1660077, '啤酒花采到了吗？'),
(1660078, '里面情况怎么样？'),
(1660079, '别担心标靶。狠狠地打！'),
(1660080, ''),
(500005, '原木带来了吗？或者至少有些进展可以展示？我快没辙拖延工头了。'),
(500006, '还在喘气？还是冰皮只是让你爬回来讲故事？');

DELETE FROM `creature_queststarter` WHERE `quest` IN (254003, 254004, 500005, 500006, 1660076, 1660077, 1660078, 1660079, 1660080);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(254002, 254003),
(254003, 254004),
(765556, 500005),
(764536, 500006),
(162882, 1660076),
(162883, 1660077),
(162884, 1660078),
(162891, 1660079),
(162901, 1660080);

DELETE FROM `creature_questender` WHERE `quest` IN (254003, 254004, 500005, 500006, 1660076, 1660077, 1660078, 1660079, 1660080);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(254003, 254003),
(254003, 254004),
(765556, 500005),
(764536, 500006),
(162883, 1660076),
(162883, 1660077),
(162884, 1660078),
(162891, 1660079),
(162901, 1660080);

-- ---------------------------------------------------------------------------
-- 5. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9008480, 9008481, 9008482, 9008483, 9008484, 9008485, 9008486, 9008487, 9008488, 9008489, 9008490, 9008491, 9008492, 9008500, 9008501, 9008502, 9008503, 9008504, 9008505, 9008506, 9008507, 9008508, 9008509, 9008510, 9008511, 9008512, 9008513, 9008514, 9008515, 9008516, 9008517, 9008518, 9008519, 9008520, 9008521, 9008522, 9008523, 9008524, 9008525, 9008526, 9008527, 9008528) OR `guid` BETWEEN 9008480 AND 9008799;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9008480, 254003, 0, 0, 0, 1, 1, 0, -5584.3, -8.088, 427.445, 4.03, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-CLIENT ST242, the 254003/254004 turn-in point on the Chill Breeze ridge above Old Icebeard''s cave (Questie 2.0 yd); she faces the yeti''s cave, which keeps her people away'),
(9008481, 254006, 0, 0, 0, 1, 1, 0, -5569.75, 740.475, 392.368, 4.44, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-CLIENT ST95, the 254004 objective point on the Md_Icecave02 floor deep in Frostmane Hold (Questie 2.8 yd); faces the way in from the hold; the rare Great Father Arctikus can share the chamber (pool, 7.8 yd)'),
(9008482, 162882, 0, 0, 0, 1, 1, 0, -6105.4, 401.4, 395.542, 0.31, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-QUESTIE sighting in the Anvilmar hall (no SuperTrack point), on the 395.54 floor beside the ale kegs; faces Groldha''s post across the hall ("I saw how you handled Groldha"); 7.2 yd from Freja'),
(9008483, 162883, 0, 0, 0, 1, 1, 0, -5606.57, -529.594, 399.657, 2.13, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-CLIENT ST8734, the 1660076/1660077 turn-in point on the Thunderbrew inn upper floor (Snow_Inn.wmo), the post of the retired Granis Swiftaxe; faces the room like Innkeeper Belm beside her'),
(9008484, 162884, 0, 0, 0, 1, 1, 0, -5710.8, -603, 422.97, 4.76, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-CLIENT ST8736 (the 1660078 turn-in point) sits on a stack of cargo boxes; he stands on the terrace ground beside them, 1.56 yd from the point, facing the tunnel mouth his automata hold'),
(9008485, 162891, 0, 0, 0, 1, 1, 1, -5641.15, -621.904, 448.922, 1.52, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-CLIENT ST8738, the 1660079 turn-in point at the ammunition stall on the ridge, against the wagon wheel; faces his targets downrange'),
(9008486, 162917, 0, 0, 0, 1, 1, 0, -5640.53, -609.348, 448.433, 4.66, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-CLIENT ST8739, the 1660079 objective point downrange of the stall, beside the mining lamp; faces the stall'),
(9008487, 162917, 0, 0, 0, 1, 1, 0, -5643.5, -606.5, 448.226, 4.86, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: second target 4.1 yd from the first, west of the small snow pine on the open snow, facing the stall (INFERRED: three targets for three hits)'),
(9008488, 162917, 0, 0, 0, 1, 1, 0, -5639.5, -605, 447.886, 4.62, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: third target 4.5 yd further downrange of the first, by the chair of the range, facing the stall (INFERRED)'),
(9008489, 162901, 0, 0, 0, 1, 1, 1, -5602.6, -604.8, 452.239, 2.93, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-QUESTIE sighting (-5605.5, -604.4) is on the fresh dirt mound of the new hilltop cemetery; he stands at its north edge, 2.9 yd away, facing the pit and the wheelbarrow; 5.6 yd from Zipak, 4.8 from the healer'),
(9008490, 765556, 0, 0, 0, 1, 1, 1, -5764.65, -1275.34, 379.641, 0.85, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-CLIENT ST8559, the 500005 turn-in point by the log stacks of Coldhewn Camp; faces the woods she sends players to'),
(9008491, 764536, 0, 0, 0, 1, 1, 1, -5772.58, -1246.25, 379.771, 0.06, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-CLIENT ST8560, the 500006 turn-in point on the bearskin rug of Coldhewn Camp; faces the brazier'),
(9008492, 76555, 0, 0, 0, 1, 1, 0, -5794.58, -1391.9, 441.429, 1.42, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos: SOURCED-CLIENT ST8557, the 500006 objective point on the ledge by the campfire on Coldhewn Ridge; faces down toward the camp'),
(9008500, 162888, 0, 0, 0, 1, 1, 0, -5705.96, -652.12, 424.716, 1.69, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; tunnel mouth by the rifle and chair (Questie v1.1 sighting), facing out toward Ikoras''s terrace'),
(9008501, 162888, 0, 0, 0, 1, 1, 0, -5710, -672, 425.362, 1.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; west side of the mouth passage where it starts to drop toward the brazier, facing the entrance'),
(9008502, 162889, 0, 0, 0, 1, 1, 0, -5716.46, -679.7, 423.274, 1.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; west side of the brazier landing inside the mouth (Questie v1.2 sighting)'),
(9008503, 162890, 0, 0, 0, 1, 1, 0, -5702.68, -680.19, 423.681, 1.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; beside the first brazier inside the mouth (Questie v1.3 sighting)'),
(9008504, 162889, 0, 0, 0, 1, 1, 0, -5690.53, -682.16, 422.798, 2.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; where the passage turns north toward the upper chamber (Questie v1.2 sighting)'),
(9008505, 162890, 0, 0, 0, 1, 1, 0, -5680, -690, 418.955, 2.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; on the ramp up into the north chamber, facing down the passage'),
(9008506, 162889, 0, 0, 0, 1, 1, 0, -5665.25, -695.45, 416.42, 2.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; by the brazier at the north end of the chamber (Questie v1.2 sighting)'),
(9008507, 162889, 0, 0, 0, 1, 1, 0, -5672, -704, 415.551, 2.9, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; open floor in the middle of the north chamber'),
(9008508, 162888, 0, 0, 0, 1, 1, 0, -5675.43, -710.72, 414.871, 2.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; south end of the north chamber (Questie v1.1 sighting)'),
(9008509, 162888, 0, 0, 0, 1, 1, 0, -5668.5, -722, 415.523, 3.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; beside the excavation tent and its crates in the east end of the chamber'),
(9008510, 162890, 0, 0, 0, 1, 1, 0, -5678, -724, 415.691, 2.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; between the excavation tent and the brazier'),
(9008511, 162889, 0, 0, 0, 1, 1, 0, -5690, -722, 412.871, 1.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; by the brazier at the top of the slope down into the main corridor'),
(9008512, 162890, 0, 0, 0, 1, 1, 0, -5710.56, -727.46, 408.861, 0.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; by the corridor brazier where the slope meets the main corridor (Questie v1.3 sighting)'),
(9008513, 162889, 0, 0, 0, 1, 1, 0, -5725, -730.41, 406.883, 0.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; main corridor, west wall (Questie v1.2 sighting)'),
(9008514, 162889, 0, 0, 0, 1, 1, 0, -5732, -742, 407.188, 0.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; before the ruined excavation tent, its barrels and brazier at the south end of the corridor'),
(9008515, 162888, 0, 0, 0, 1, 1, 0, -5728.94, -751.59, 410.215, 1.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; between the ruined tent and the standing excavation tent (Questie v1.1 sighting)'),
(9008516, 162888, 0, 0, 0, 1, 1, 0, -5712, -750, 409.48, 1.8, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; open floor of the corridor bend toward the east hall'),
(9008517, 162890, 0, 0, 0, 1, 1, 0, -5702, -756, 410.314, 2.2, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; level floor between the corridor bend and the brazier'),
(9008518, 162889, 0, 0, 0, 1, 1, 0, -5692.83, -763.4, 410.294, 2.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; by the brazier of the east passage (Questie v1.2 sighting)'),
(9008519, 162889, 0, 0, 0, 1, 1, 0, -5700, -772, 409.113, 1.4, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; east passage floor, heading for the east hall'),
(9008520, 162890, 0, 0, 0, 1, 1, 0, -5711.21, -784.08, 407.714, 1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; north end of the east hall (Questie v1.3 sighting)'),
(9008521, 162889, 0, 0, 0, 1, 1, 0, -5720.08, -787.53, 405.931, 0.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; by the second ruined camp (tent, barrels, crate, chairs) in the east hall, a pair with the next one (Questie v1.2 sighting)'),
(9008522, 162888, 0, 0, 0, 1, 1, 0, -5724.02, -789.5, 404.825, 0.7, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; at the crate of the second ruined camp, the other half of the pair (Questie v1.1 sighting)'),
(9008523, 162890, 0, 0, 0, 1, 1, 0, -5716, -800, 406.577, 1.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; east hall, beside the brazier south of the ruined camp'),
(9008524, 162889, 0, 0, 0, 1, 1, 0, -5704, -800, 406.321, 1.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; east hall, north-east side'),
(9008525, 162888, 0, 0, 0, 1, 1, 0, -5708, -820, 403.094, 1.6, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; the low east end of the hall, before the exit ramp'),
(9008526, 162890, 0, 0, 0, 1, 1, 0, -5698, -848, 416.002, 1.4, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; on the exit ramp below the snowy rock; the Questie v1.3 sighting (-5698.08, -841.7) has no navmesh under it'),
(9008527, 162888, 0, 0, 0, 1, 1, 0, -5704, -852, 418.299, 1.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; top of the exit ramp; the Questie v1.1 sighting (-5704.97, -839.73) has no navmesh under it'),
(9008528, 162888, 0, 0, 0, 1, 1, 0, -5707.13, -680.53, 423.773, 1.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Kharanos tunnel: Out-of-Control Automaton; SOURCED-CLIENT ST8737, the 1660078 objective point in the mouth passage, between the two Questie bots at the brazier');

DELETE FROM `creature_addon` WHERE `guid` BETWEEN 9008480 AND 9008799;

DELETE FROM `gameobject` WHERE `guid` IN (7914120, 7914121, 7914122, 7914123, 7914124, 7914125, 7914126, 7914127, 7914128, 7914129, 7914130, 7914131, 7914132, 7914133, 7914134, 7914135, 7914136, 7914137, 7914138, 7914139, 7914140, 7914141, 7914150, 7914151, 7914152, 7914153, 7914154, 7914155, 7914156, 7914157, 7914158, 7914159, 7914160, 7914161, 7914162, 7914163, 7914164, 7914165, 7914166, 7914167, 7914168, 7914169, 7914170, 7914171, 7914172, 7914173, 7914174, 7914175, 7914176, 7914177, 7914178, 7914179) OR `guid` BETWEEN 7914120 AND 7914299;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7914120, 2300550, 0, 0, 0, 1, 1, -5717.78, -551.67, 398.539, 0.4, 0, 0, 0.198669, 0.980067, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; Questie sighting, north rows'),
(7914121, 2300550, 0, 0, 0, 1, 1, -5701.69, -555.12, 398.542, 2.2, 0, 0, 0.891207, 0.453596, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; Questie sighting, the north tip of the field'),
(7914122, 2300550, 0, 0, 0, 1, 1, -5715.15, -563.98, 398.542, 1.1, 0, 0, 0.522687, 0.852525, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; Questie sighting, north-east rows'),
(7914123, 2300550, 0, 0, 0, 1, 1, -5725.99, -557.09, 398.552, 5.3, 0, 0, 0.472031, -0.881582, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; Questie sighting, middle rows'),
(7914124, 2300550, 0, 0, 0, 1, 1, -5734.19, -554.63, 398.538, 3, 0, 0, 0.997495, 0.070737, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; Questie sighting, west rows by the fence'),
(7914125, 2300550, 0, 0, 0, 1, 1, -5737.15, -568.91, 398.602, 4.2, 0, 0, 0.863209, -0.504846, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; Questie sighting, middle rows'),
(7914126, 2300550, 0, 0, 0, 1, 1, -5736.82, -579.74, 398.625, 0.9, 0, 0, 0.434966, 0.900447, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; Questie sighting, south-east rows'),
(7914127, 2300550, 0, 0, 0, 1, 1, -5728.18, -565.22, 398.562, 2.6, 0, 0, 0.963558, 0.267499, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; SuperTrack ST8735, the 1660077 objective point, between two bushes'),
(7914128, 2300550, 0, 0, 0, 1, 1, -5753.8, -578.5, 398.66, 1.7, 0, 0, 0.75128, 0.659983, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; south corner, among the four southernmost bushes'),
(7914129, 2300550, 0, 0, 0, 1, 1, -5749.3, -574.6, 398.656, 5.9, 0, 0, 0.190423, -0.981702, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; south rows, between the bush pairs'),
(7914130, 2300550, 0, 0, 0, 1, 1, -5748.9, -584, 398.637, 3.6, 0, 0, 0.973848, -0.227202, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; south-east rows, between two bushes'),
(7914131, 2300550, 0, 0, 0, 1, 1, -5745.2, -565.8, 398.615, 0.2, 0, 0, 0.099833, 0.995004, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; south-west rows, between three bushes'),
(7914132, 2300550, 0, 0, 0, 1, 1, -5739.5, -589, 398.601, 4.8, 0, 0, 0.675463, -0.737394, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; east corner rows'),
(7914133, 2300550, 0, 0, 0, 1, 1, -5732, -584, 398.607, 2.9, 0, 0, 0.992713, 0.120503, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; east rows, in the gap of three bushes'),
(7914134, 2300550, 0, 0, 0, 1, 1, -5731, -573.3, 398.568, 1.4, 0, 0, 0.644218, 0.764842, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; middle rows, between two bushes'),
(7914135, 2300550, 0, 0, 0, 1, 1, -5724.6, -575.2, 398.56, 5, 0, 0, 0.598472, -0.801144, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; north-east rows, in the gap of three bushes'),
(7914136, 2300550, 0, 0, 0, 1, 1, -5722.8, -546.9, 398.53, 2.4, 0, 0, 0.932039, 0.362358, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; west rows toward the west corner'),
(7914137, 2300550, 0, 0, 0, 1, 1, -5716, -540.2, 398.55, 3.9, 0, 0, 0.92896, -0.370181, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; west corner, between three bushes'),
(7914138, 2300550, 0, 0, 0, 1, 1, -5710.4, -551.3, 398.534, 0.7, 0, 0, 0.342898, 0.939373, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; north rows, between two bushes'),
(7914139, 2300550, 0, 0, 0, 1, 1, -5720.9, -569.8, 398.554, 4.4, 0, 0, 0.808496, -0.588501, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; north-east rows, between three bushes'),
(7914140, 2300550, 0, 0, 0, 1, 1, -5738.5, -560, 398.552, 1.9, 0, 0, 0.813416, 0.581683, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; west rows, between two bushes'),
(7914141, 2300550, 0, 0, 0, 1, 1, -5720.5, -559.8, 398.545, 5.6, 0, 0, 0.334988, -0.942222, 60, 100, 1, '', 'CoA Kharanos hop field: Thunderbrew Hop; middle rows, between two bushes'),
(7914150, 2300580, 0, 0, 0, 1, 1, -5734.5, -1188.5, 379.316, 0.3, 0, 0, 0.149438, 0.988771, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north logging site, beside the small snow pines of the Questie sighting'),
(7914151, 2300580, 0, 0, 0, 1, 1, -5725.5, -1186, 380.563, 2, 0, 0, 0.841471, 0.540302, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north logging site, beside the axe-cut stump'),
(7914152, 2300580, 0, 0, 0, 1, 1, -5721, -1196.5, 382.071, 4.1, 0, 0, 0.887362, -0.461073, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north logging site, south of the stump and the old snow tree'),
(7914153, 2300580, 0, 0, 0, 1, 1, -5736, -1201, 382.593, 5.5, 0, 0, 0.381661, -0.924302, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north logging site, on the slope below the big snow pine'),
(7914154, 2300580, 0, 0, 0, 1, 1, -5681, -1206, 387.234, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north-east grove of the cut stumps, its edge inside the circle'),
(7914155, 2300580, 0, 0, 0, 1, 1, -5700.5, -1246, 389.695, 3.3, 0, 0, 0.996865, -0.079121, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; east grove, beside the small snow pines of the Questie sighting'),
(7914156, 2300580, 0, 0, 0, 1, 1, -5700, -1264, 389.949, 0.8, 0, 0, 0.389418, 0.921061, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; east grove, south of the old broadleaf'),
(7914157, 2300580, 0, 0, 0, 1, 1, -5689, -1248, 389.211, 2.7, 0, 0, 0.975723, 0.219007, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; east grove, among its tall snow trees'),
(7914158, 2300580, 0, 0, 0, 1, 1, -5705, -1256, 390.25, 4.6, 0, 0, 0.745705, -0.666276, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; west edge of the east grove'),
(7914159, 2300580, 0, 0, 0, 1, 1, -5671, -1252, 389.657, 1.9, 0, 0, 0.813416, 0.581683, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; south-east grove, beside the mid snow tree'),
(7914160, 2300580, 0, 0, 0, 1, 1, -5674, -1268, 389.984, 5.1, 0, 0, 0.557684, -0.830054, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; south-east grove, by the snow pine'),
(7914161, 2300580, 0, 0, 0, 1, 1, -5677, -1258, 389.609, 0.5, 0, 0, 0.247404, 0.968912, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; south-east grove, between its snow trees'),
(7914162, 2300580, 0, 0, 0, 1, 1, -5752, -1212, 388.42, 3.7, 0, 0, 0.961275, -0.27559, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; the rise north of the camp, above the copper vein'),
(7914163, 2300580, 0, 0, 0, 1, 1, -5737, -1227, 383.141, 2.2, 0, 0, 0.891207, 0.453596, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north of the camp, beside the big mid snow tree'),
(7914164, 2300580, 0, 0, 0, 1, 1, -5765, -1230, 378.86, 6, 0, 0, 0.14112, -0.989992, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north of the camp, by the small snow pines'),
(7914165, 2300580, 0, 0, 0, 1, 1, -5795, -1193, 377.073, 1, 0, 0, 0.479426, 0.877583, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north-west grove, by the small snow pines of the Questie sighting'),
(7914166, 2300580, 0, 0, 0, 1, 1, -5786.5, -1198.5, 375.915, 3.9, 0, 0, 0.92896, -0.370181, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north-west grove, between its tall snow trees'),
(7914167, 2300580, 0, 0, 0, 1, 1, -5779.5, -1188, 378.227, 2.5, 0, 0, 0.948985, 0.315322, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north-west grove, east edge'),
(7914168, 2300580, 0, 0, 0, 1, 1, -5796, -1212.5, 376.729, 4.9, 0, 0, 0.637765, -0.770231, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north-west grove, south edge by the snow pine'),
(7914169, 2300580, 0, 0, 0, 1, 1, -5757, -1178.5, 376.563, 0.6, 0, 0, 0.29552, 0.955336, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north grove, by the old broadleaf'),
(7914170, 2300580, 0, 0, 0, 1, 1, -5767, -1190, 380.102, 3.1, 0, 0, 0.999784, 0.020795, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north grove, on the slope between its trees'),
(7914171, 2300580, 0, 0, 0, 1, 1, -5748, -1187, 380.44, 5.8, 0, 0, 0.239249, -0.970958, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; north grove, by the snow pine'),
(7914172, 2300580, 0, 0, 0, 1, 1, -5745, -1294, 387.64, 1.6, 0, 0, 0.717356, 0.696707, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; south of the camp, by the small snow pine of the Questie sighting'),
(7914173, 2300580, 0, 0, 0, 1, 1, -5755, -1300, 388.499, 4.3, 0, 0, 0.836899, -0.547358, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; south of the camp, beyond the snow pines'),
(7914174, 2300580, 0, 0, 0, 1, 1, -5745, -1321, 391.261, 2.8, 0, 0, 0.98545, 0.169967, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; south grove, beside the small snow pines of the Questie sighting'),
(7914175, 2300580, 0, 0, 0, 1, 1, -5758, -1318, 389.826, 0.1, 0, 0, 0.049979, 0.99875, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; south grove, between the snow pine and the broadleaf'),
(7914176, 2300580, 0, 0, 0, 1, 1, -5767, -1314, 388.54, 5.3, 0, 0, 0.472031, -0.881582, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; south grove, west edge toward the two-storey house'),
(7914177, 2300580, 0, 0, 0, 1, 1, -5716, -1226, 387.893, 3.5, 0, 0, 0.983986, -0.178246, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; a lone young tree on the open slope between the camp and the east grove'),
(7914178, 2300580, 0, 0, 0, 1, 1, -5712, -1276, 390.218, 1.3, 0, 0, 0.605186, 0.796084, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; a lone young tree on the open slope south-east of the camp'),
(7914179, 2300580, 0, 0, 0, 1, 1, -5728, -1312, 392.011, 4, 0, 0, 0.909297, -0.416147, 120, 100, 1, '', 'CoA Coldhewn woods: Dun Morogh Tree; a young tree on the slope east of the south grove');

-- ---------------------------------------------------------------------------
-- 6. Scripts
-- ---------------------------------------------------------------------------
-- The hop gives its item only while 1660077 is taken. Nonuid credits the shared marker 162921; the Target
-- credits itself on each Blunderbuss hit.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (162901, 162917) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(162901, 0, 0, 1, 62, 0, 100, 0, 932242, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravedigger Nonuid - On Gossip Option 0 Selected - Close Gossip'),
(162901, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 162921, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravedigger Nonuid - Linked - Quest Credit Listen to Gravedigger Nonuid'),
(162917, 0, 0, 0, 8, 0, 100, 0, 267024, 0, 0, 0, 0, 0, 33, 162917, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Target - On Spellhit Shoot target - Quest Credit Target hit');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 2300550 AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(2300550, 1, 0, 1, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 56, 558964, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Thunderbrew Hop - On Use - Give the user a Thunderbrew Hop'),
(2300550, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Thunderbrew Hop - Linked - Despawn until it respawns');

DELETE FROM `conditions` WHERE `SourceEntry` = 2300550 AND `SourceTypeOrReferenceId` = 22 AND `SourceId` = 1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(22, 1, 2300550, 1, 0, 9, 0, 1660077, 0, 0, 0, 0, 0, '', 'Thunderbrew Hop - give the hop only while Thunderbrew''s Hop is taken');

-- ---------------------------------------------------------------------------
-- 7. Yori Crackhelm (stock 348) to the Thunderbrew inn
-- ---------------------------------------------------------------------------
-- To the 5841 turn-in point ST1715 on the inn's upper floor (DESIGN); facing kept.
UPDATE `creature` SET `position_x` = -5592.95, `position_y` = -529.919, `position_z` = 399.652, `orientation` = 0.925025 WHERE `guid` = 348 AND `id` = 11941;
