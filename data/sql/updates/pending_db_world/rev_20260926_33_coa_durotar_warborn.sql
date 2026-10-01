-- CoA Durotar: the Warborn Grounds arena (254059-254063), Fighter Fuel (254084), the camp's vendors and
-- crowd, and the stock wildlife CoA's camp built over, moved into the Fighter Fuel circle.
-- Creature guids 9012600-9012749, gameobject guids 7917280-7917319, gossip menu 932534.

-- ---------------------------------------------------------------------------
-- 1. Creatures
-- ---------------------------------------------------------------------------
-- Stand-in displays where the CoA model is missing from the client. Shadowblood, her totem and the ring
-- trigger have no cache entry (CoA entries 9303635-9303637).
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `family`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `RegenHealth`, `flags_extra`, `KillCredit1`, `ScriptName`)
VALUES
(991518, '文斯·麦奥克', NULL, 932534, 10, 10, 0, 29, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(255101, '古格索克', '野心勃勃的助手', 0, 10, 10, 0, 29, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(99003, '辛加', '护士', 0, 8, 8, 0, 29, 2, 1, 1.14286, 20, 0, 2000, 2000, 2, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(254941, '低牙', NULL, 0, 7, 7, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 2.4, 1, 1, 1, 1, 0, 0, ''),
(254945, '死亡尖啸', NULL, 0, 8, 8, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 3.5, 1, 1, 1, 1, 0, 0, ''),
(254947, '粉碎者', NULL, 0, 8, 8, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, ''),
(9303635, '暗影之血', NULL, 0, 9, 9, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 2, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, ''),
(9303636, '治疗图腾', NULL, 0, 9, 9, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 11, 0, 0, 'SmartAI', 0, 0.2, 1, 1, 1, 1, 0, 0, ''),
(9303637, '兽人狂热擂台', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(764600, '卡德尔', '肉类商人', 0, 30, 30, 0, 29, 128, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764603, '扎瑟库斯', '饮品', 0, 35, 35, 0, 29, 128, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1.136, 1, 1, 1, 1, 0, 0, ''),
(764604, '华莱士', '奶酪商人', 0, 35, 35, 0, 29, 128, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1.136, 1, 1, 1, 1, 0, 0, ''),
(764596, '兽人观众', NULL, 0, 1, 1, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764597, '兽人观众', NULL, 0, 1, 1, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764598, '巨魔观众', NULL, 0, 1, 1, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764601, '兽人观众', NULL, 0, 1, 1, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764602, '巨魔观众', NULL, 0, 1, 1, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764605, '兽人观众', NULL, 0, 1, 1, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764606, '巨魔观众', NULL, 0, 1, 1, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764607, '巨魔观众', NULL, 0, 1, 1, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764611, '巨魔观众', NULL, 0, 1, 1, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764609, '角斗士', NULL, 0, 8, 8, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1.072, 1, 1, 1, 1, 0, 0, ''),
(764610, '角斗士', NULL, 0, 8, 8, 0, 29, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1.072, 1, 1, 1, 1, 0, 0, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `family` = VALUES(`family`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `DamageModifier` = VALUES(`DamageModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `KillCredit1` = VALUES(`KillCredit1`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (99003, 254941, 254945, 254947, 255101, 764596, 764597, 764598, 764600, 764601, 764602, 764603, 764604, 764605, 764606, 764607, 764609, 764610, 764611, 991518, 9303635, 9303636, 9303637);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(991518, 0, 16438, 1, 1),
(255101, 0, 17836, 1, 1),
(99003, 0, 1897, 1, 1),
(254941, 0, 6042, 1, 1),
(254945, 0, 10873, 1, 1),
(254947, 0, 11548, 1, 1),
(9303635, 0, 15841, 1, 1),
(9303636, 0, 4587, 1, 1),
(9303637, 0, 11686, 1, 1),
(764600, 0, 1390, 1, 1),
(764603, 0, 4082, 1, 1),
(764604, 0, 7180, 1, 1),
(764596, 0, 15891, 1, 1),
(764597, 0, 15892, 1, 1),
(764598, 0, 15893, 1, 1),
(764601, 0, 29659, 1, 1),
(764602, 0, 15894, 1, 1),
(764605, 0, 4966, 1, 1),
(764606, 0, 16446, 1, 1),
(764607, 0, 16445, 1, 1),
(764611, 0, 15893, 1, 1),
(764609, 0, 6044, 1, 1),
(764610, 0, 6042, 1, 1);

DELETE FROM `npc_vendor` WHERE `entry` IN (764600, 764603, 764604);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`)
VALUES
(764600, 0, 772061),
(764600, 1, 772062),
(764600, 2, 772068),
(764600, 3, 772071),
(764603, 0, 772061),
(764603, 1, 772062),
(764603, 2, 772063),
(764603, 3, 772064),
(764603, 4, 772065),
(764603, 5, 772066),
(764603, 6, 772067),
(764603, 7, 772068),
(764603, 8, 772069),
(764603, 9, 772070),
(764604, 0, 772070);

-- ---------------------------------------------------------------------------
-- 2. Vince's gossip
-- ---------------------------------------------------------------------------
-- The greeting and option texts are INFERRED from the quest texts.
DELETE FROM `npc_text` WHERE `ID` = 932534;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`)
VALUES
(932534, '快上来吧，$c！观众是冲着鲜血和荣耀来的，而你看上去两样都能给他们。说一声，我就把你的对手送进擂台。', '快上来吧，$c！观众是冲着鲜血和荣耀来的，而你看上去两样都能给他们。说一声，我就把你的对手送进擂台。', 0, 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` = 932534;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932534, 932534);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932534;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(932534, 0, 0, '派出低牙。我准备好了。', 0, 1, 1, 0, 0, 0, 0, '', 0),
(932534, 1, 0, '派出死亡尖啸。我准备好了。', 0, 1, 1, 0, 0, 0, 0, '', 0),
(932534, 2, 0, '派出粉碎者。我准备好了。', 0, 1, 1, 0, 0, 0, 0, '', 0),
(932534, 3, 0, '派出暗影之血。我准备好了。', 0, 1, 1, 0, 0, 0, 0, '', 0);

-- ---------------------------------------------------------------------------
-- 3. Infirmary props and Fighter Fuel loot
-- ---------------------------------------------------------------------------
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `AIName`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`)
VALUES
(97451, 5, 1020108, '兽人床铺 1 RPG 道具', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99011, 5, 1018218, '兽人桌子 RPG 道具', '', '检查中', 1.2, '', 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99012, 3, 6891, '治疗之书', '', '检查中', 1, '', 1689, 99011, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(99013, 5, 1047312, '巨魔研钵 RPG 道具', '', '检查中', 0.4, '', 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99014, 5, 1010409, '草药研钵 RPG 道具', '', '检查中', 0.4, '', 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `AIName` = VALUES(`AIName`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`);

DELETE FROM `gameobject_loot_template` WHERE `Entry` = 99011;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(99011, 705590, 0, 100, 0, 1, 0, 1, 1, 'Book of Healing - Book of Healing');

-- Quest drops, quest-only.
DELETE FROM `creature_loot_template` WHERE `Entry` IN (3126, 3127) AND `Item` = 354316;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(3126, 354316, 0, 75, 1, 1, 0, 1, 1, 'Armored Scorpid - Scorpid Venom'),
(3127, 354316, 0, 75, 1, 1, 0, 1, 1, 'Venomtail Scorpid - Scorpid Venom');

DELETE FROM `creature_loot_template` WHERE `Entry` IN (3099, 3100, 3225) AND `Item` = 354317;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(3099, 354317, 0, 75, 1, 1, 0, 1, 1, 'Dire Mottled Boar - Mottled Boar Tusk'),
(3100, 354317, 0, 75, 1, 1, 0, 1, 1, 'Elder Mottled Boar - Mottled Boar Tusk'),
(3225, 354317, 0, 75, 1, 1, 0, 1, 1, 'Corrupted Mottled Boar - Mottled Boar Tusk');

DELETE FROM `creature_loot_template` WHERE `Entry` IN (3122, 3123) AND `Item` = 354318;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(3122, 354318, 0, 75, 1, 1, 0, 1, 1, 'Bloodtalon Taillasher - Raptor Blood'),
(3123, 354318, 0, 75, 1, 1, 0, 1, 1, 'Bloodtalon Scythemaw - Raptor Blood');

DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (3099, 3100, 3122, 3123, 3126, 3225) AND `Idx` = 0;
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(3126, 0, 354316),
(3099, 0, 354317),
(3100, 0, 354317),
(3225, 0, 354317),
(3122, 0, 354318),
(3123, 0, 354318);

DELETE FROM `creature_questitem` WHERE `CreatureEntry` = 3127 AND `Idx` = 1;
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(3127, 1, 354316);

-- ---------------------------------------------------------------------------
-- 4. Quests
-- ---------------------------------------------------------------------------
-- Arena chain 254059 -> 254060 -> 254061 -> 254062 -> 254063; each round completes by event, so SpecialFlags
-- 2. The upsert leaves the POI columns to the markers file.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(254059, 2, 8, 6, 14, 1, 2, 0, 0, 0, 0, 254060, 5, 525, 292, 0, 0, 0, 0, 0, 7, 0, 375250, 75, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '战铸竞技场：“低牙”', '击败第一个挑战者：“低牙”', '你！你不只是来看热闹的，对吧？你是那种喜欢精彩战斗的人，我从你眼里看得出来。    为什么不上擂台打一场呢？赢了有财富和荣耀，输了也能死得痛快。我们已经安排好另一个新手了，如果你赢了，我会给你找些更有经验的对手。', '击败“低牙”', '与文斯的助手古尔格索克交谈', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254060, 2, 8, 6, 14, 1, 2, 0, 0, 0, 0, 254061, 6, 525, 292, 0, 0, 0, 0, 0, 7, 0, 375250, 75, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '战铸竞技场：“死亡尖啸”', '击败第二个挑战者：“死亡尖啸”', '别得意，低牙在擂台上毫无经验，他只是热身。    下一个是来自尘风部族的鹰身女妖。别觉得奇怪，我愿意接受任何愿意战斗的人，不管擂台外有什么恩怨。我没听懂她的真名，不过没关系，她说话时发出可怕的尖啸，所以她在擂台上的名字是死亡尖啸。', '击败“死亡尖啸”', '与文斯的助手古尔格索克交谈', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254061, 2, 8, 6, 14, 1, 2, 0, 0, 0, 0, 254062, 6, 525, 292, 0, 0, 0, 0, 0, 7, 0, 375250, 75, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255037, 1, 255038, 1, 255039, 1, 255040, 1, 255041, 1, 255042, 1, 0, 0, 0, 0, 0, 0, 0, 76, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '战铸竞技场：“粉碎者”', '击败第三个挑战者：“粉碎者”', '关于你的消息传得很快，$C。观众已经称你为神秘陌生人，有些人说你可能一路走到最后。你不仅仅让粉丝们惊讶。你让他们成为了信徒。 但就是现在。最后一轮。 你最后的对手是一个行走的灾难区。粉碎者。食人魔，巨大、凶残、完全疯狂。他打架不干净。他毫不留情。你打败他，擂台就是你的。 强势进入。以冠军身份走出。', '击败“粉碎者”', '与文斯的助手古尔格索克交谈', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254062, 2, 9, 7, 14, 1, 2, 0, 0, 0, 0, 254063, 6, 1050, 585, 0, 0, 0, 0, 0, 7, 0, 375250, 125, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  '战铸竞技场：“影血”', '击败第四个挑战者：“影血”', '越来越多的赌注押在你身上，之前只有一个其他斗士能承受粉碎者的锤子。一位来自暗矛部族的暗影猎手，她在竞技场中战斗，是现在擂台上最顽强的活跃斗士。    我们叫她影血。她倾向于不死，也许她袖子里有诡计，但那要你自己去弄清楚。真正的冠军已经多年没有战斗了，所以打败她，你就是我们最顽强的斗士。', '影血被击败', '与文斯的助手古尔格索克交谈', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254063, 2, 9, 7, 14, 1, 2, 0, 0, 0, 0, 0, 7, 1575, 877, 0, 0, 0, 0, 0, 7, 0, 375250, 200, 1397885, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '战铸竞技场：最后一战', '被加冕为奥卡玛尼亚的冠军', '看来押注你的人会得到丰厚的回报。你打败了我们最好的斗士，所以现在只剩一件事了。    走上擂台，你将被加冕为奥卡玛尼亚的最新冠军！', '成为冠军', '与文斯的助手古尔格索克交谈', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254084, 2, 8, 6, 14, 0, 0, 0, 0, 0, 0, 0, 5, 325, 292, 0, 0, 0, 0, 0, 8, 0, 1397884, 1, 856, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 5, 0, 530, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '斗士燃料', '护士辛加想让你收集4瓶蝎毒、4瓶迅猛龙血和4个野猪獠牙。', '照这些斗士受伤的速度，我的治疗草药很快就要用完了。    我知道另一种同样能帮他们恢复的疗法，但获取它相当危险，而我不是斗士。    如果你最终要去那里，也许可以带些材料回来？我需要蝎毒、迅猛龙血和野猪獠牙。别担心，如果处理得当，蝎毒是无害的。', '', '回到杜隆塔尔战铸竞技场的辛加那里', 0, 0, 0, 0, 0, 0, 0, 0, 354316, 354317, 354318, 0, 0, 0, 4, 4, 4, 0, 0, 0, '', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (254059, 254060, 254061, 254062, 254063, 254084);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(254059, 0, 0, 0, 0, 2),
(254060, 0, 0, 254059, 0, 2),
(254061, 0, 0, 254060, 0, 2),
(254062, 0, 0, 254061, 0, 2),
(254063, 0, 0, 254062, 0, 2),
(254084, 0, 0, 0, 0, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (254059, 254060, 254061, 254062, 254063, 254084);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(254059, '哈！我就知道你有成为真正斗士的潜质。别担心，低牙只是开始，我们还排着一大堆更有经验的对手呢。'),
(254060, '你终于把那鹰身女妖干掉了！只要愿意打，谁都能上场，但她惹得大部分观众都在嘘她。我倒不介意，人们在乎比赛走向才有投入感。$B$B不知道她总喊的那个女王埃瑞希娜是谁，但听起来那更像是你的麻烦，不是我的。'),
(254061, '我还以为那根棒子砸下来时你会被拍成肉酱。看来你比外表结实。观众最爱看弱者逆袭，所以这事正合适。$B$B你给了他们一场表演。更重要的是，你给了他们一个赢家。$B$B嘿，如果我去开自己的擂台，你得报名。我会给你更好的挑战，我保证。'),
(254062, '所以是那些图腾让她能给自己回血的，是吧？$B$B我当然早就知道了！脑子正常点的人都能看出那些图腾有问题，但这不是我该破坏惊喜的地方。斗士们自己去琢磨出来才更刺激，你会惊讶有多少人想不明白。$B$B看来你不光有肌肉，还有脑子。'),
(254063, '这才叫打斗！自从冠军退役后，这地方就不一样了，不过我不怪他，明知会输谁还愿意打。但这场，这场会让一切重新有意思起来，而且他们现在争夺的已经不只是现役冠军了。$B$B我猜你不会留下来吧？可惜，但我知道你们冒险者都是这样，何况我也没有什么能再扔给你了。'),
(254084, '对，对，太完美了。你简直不会相信这种药剂能多快让他们重新站起来。喝一口，他们几乎就能撕穿一堵墙。$B$B谢谢你。有了这些，我们也许能撑过下一轮伤员，不折损任何人。只是……你自己千万别喝，除非你喜欢几天后醒来不知道自己在哪儿。');

DELETE FROM `quest_request_items` WHERE `ID` IN (254059, 254060, 254061, 254062, 254063, 254084);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(254059, '你跟我说话干什么？出去打啊！'),
(254060, '你跟我说话干什么？出去打啊！'),
(254061, '你跟我说话干什么？出去打啊！'),
(254062, '你跟我说话干什么？出去打啊！'),
(254063, '你跟我说话干什么？出去打啊！'),
(254084, '啊，你回来了。你拿到那些奇特的材料了吗？我知道这听起来更像是喂给野兽而不是受伤斗士的东西。蝎毒、迅猛龙血和野猪獠牙……多奇怪的组合。不过，我发誓它有效。如果治不好他们，至少也能把他们的心跳踢得足够猛，让他们忘记自己曾经受过伤。');

DELETE FROM `creature_queststarter` WHERE `quest` IN (254059, 254060, 254061, 254062, 254063, 254084);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(991518, 254059),
(991518, 254060),
(991518, 254061),
(991518, 254062),
(991518, 254063),
(99003, 254084);

DELETE FROM `creature_questender` WHERE `quest` IN (254059, 254060, 254061, 254062, 254063, 254084);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(255101, 254059),
(255101, 254060),
(255101, 254061),
(255101, 254062),
(255101, 254063),
(99003, 254084);

-- ---------------------------------------------------------------------------
-- 5. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9012600, 9012601, 9012602, 9012603, 9012604, 9012605, 9012606, 9012610, 9012611, 9012612, 9012613, 9012614, 9012615, 9012616, 9012617, 9012618, 9012619, 9012620, 9012621, 9012630, 9012631, 9012632, 9012633, 9012634, 9012635, 9012636, 9012637, 9012638, 9012639, 9012640, 9012641, 9012642, 9012643, 9012644, 9012645, 9012646, 9012647, 9012648, 9012649, 9012650, 9012651, 9012652, 9012653, 9012654, 9012655, 9012656, 9012657, 9012658, 9012659, 9012660, 9012661, 9012662, 9012663, 9012664) OR `guid` BETWEEN 9012600 AND 9012749;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9012600, 255101, 1, 0, 0, 1, 1, 0, 178.518, -3966.25, 48.489, 0.08, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: ST8593, the 254059-254061 turn-in on the Orcrefugetower2 balcony; faces the ring'),
(9012601, 991518, 1, 0, 0, 1, 1, 0, 178.3, -3969.2, 48.489, 0.12, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: beside his assistant on the tower balcony, 3 yd from Gurgthock and clear of the brazier; faces the ring'),
(9012602, 99003, 1, 0, 0, 1, 1, 0, 196.9, -4042.9, 49.606, 1.64, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: ST8584 (0.7 yd), the 254084 turn-in in the great hall, a step in front of her table; faces the hall'),
(9012603, 9303637, 1, 0, 0, 1, 1, 0, 213.03, -3963.63, 37.104, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: ST8592, the ring centre; the 254063 walk-in reach'),
(9012604, 764600, 1, 0, 0, 1, 1, 0, 224.8, -3916.5, 39.377, 3.72, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: Exiles zone point 3.6 yd off; under the food stall roof at the north end of its counter'),
(9012605, 764603, 1, 0, 0, 1, 1, 0, 236.4, -3926.4, 39.202, 2.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: Exiles zone point 2.3 yd off; under the drinks stall roof beside his bottle tables'),
(9012606, 764604, 1, 0, 0, 1, 1, 0, 239, -3938.5, 38.943, 3.14, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: Exiles zone point 4.5 yd off; in front of the cheese tables, facing the passers-by'),
(9012610, 764596, 1, 0, 0, 1, 1, 0, 187, -3942.5, 47.033, 5.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: west bleachers, top bench'),
(9012611, 764598, 1, 0, 0, 1, 1, 0, 189, -3940.5, 46.777, 5.52, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: west bleachers, top bench by the banners'),
(9012612, 764602, 1, 0, 0, 1, 1, 0, 185.5, -3946, 46.693, 5.71, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: west bleachers, top bench by the gate post'),
(9012613, 764597, 1, 0, 0, 1, 1, 0, 190, -3947.5, 44.525, 5.67, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: west bleachers, front bench'),
(9012614, 764606, 1, 0, 0, 1, 1, 0, 192, -3943, 44.96, 5.51, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: west bleachers, front bench at the ringside end'),
(9012615, 764601, 1, 0, 0, 1, 1, 0, 191, -3984, 44.564, 0.75, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: east bleachers, on the platform at their foot'),
(9012616, 764607, 1, 0, 0, 1, 1, 0, 192, -3988.5, 45.896, 0.87, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: east bleachers, front bench'),
(9012617, 764605, 1, 0, 0, 1, 1, 0, 189.5, -3991, 47.54, 0.86, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: east bleachers, top bench'),
(9012618, 764611, 1, 0, 0, 1, 1, 0, 186.5, -3983, 45.803, 0.63, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: east bleachers, middle bench by the gate post'),
(9012619, 764596, 1, 0, 0, 1, 1, 0, 184.5, -3985.5, 47.356, 0.65, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: east bleachers, top bench under the banners'),
(9012620, 764609, 1, 0, 0, 1, 1, 0, 234, -3957.5, 35.78, 3.43, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: west post of the fighters'' lane into the ring'),
(9012621, 764610, 1, 0, 0, 1, 1, 0, 232, -3966, 35.806, 3.02, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Warborn Grounds: east post of the fighters'' lane into the ring'),
(9012630, 3126, 1, 0, 0, 1, 1, 0, 257.5, -4111.5, 36.504, 3.1, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north flats, halfway to the road'),
(9012631, 3122, 1, 0, 0, 1, 1, 0, 255, -4126, 36.992, 2.76, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north flats above the road dip'),
(9012632, 3122, 1, 0, 0, 1, 1, 0, 249.5, -4083, 38.206, 3.78, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north-west, where the plain meets the camp approach'),
(9012633, 3126, 1, 0, 0, 1, 1, 0, 246, -4097.5, 38.093, 3.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north side, between the approach and the flats'),
(9012634, 3127, 1, 0, 0, 1, 1, 0, 246.5, -4130.5, 38.305, 2.57, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north side, above the road dip'),
(9012635, 3099, 1, 0, 0, 1, 1, 0, 244, -4144, 37.85, 2.29, 300, 6, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north-east rim, near the road bend'),
(9012636, 3099, 1, 0, 0, 1, 1, 0, 236.5, -4091.5, 39.877, 3.82, 300, 6, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north-west of the centre, open slope'),
(9012637, 3122, 1, 0, 0, 1, 1, 0, 239.5, -4105, 39.068, 3.32, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north of the centre, open slope'),
(9012638, 3126, 1, 0, 0, 1, 1, 0, 235, -4119, 40.056, 2.72, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north-east of the centre'),
(9012639, 3126, 1, 0, 0, 1, 1, 0, 233.5, -4150, 39.416, 2.02, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: eastern rim, above the low ground'),
(9012640, 3122, 1, 0, 0, 1, 1, 0, 226, -4085, 42.23, 4.26, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: west side, 23 yd out from the camp'),
(9012641, 3126, 1, 0, 0, 1, 1, 0, 224.5, -4094.5, 41.669, 4.1, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: west of the centre'),
(9012642, 3123, 1, 0, 0, 1, 1, 0, 225, -4148.5, 40.964, 1.85, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: eastern rim'),
(9012643, 3122, 1, 0, 0, 1, 1, 0, 216.5, -4093, 43.164, 4.56, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: west of the centre, below the camp'),
(9012644, 3126, 1, 0, 0, 1, 1, 0, 213, -4106.5, 42.781, 5.01, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: the circle''s centre'),
(9012645, 3122, 1, 0, 0, 1, 1, 0, 216, -4121, 42.684, 1.75, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: east of the centre'),
(9012646, 3126, 1, 0, 0, 1, 1, 0, 212, -4134, 43.362, 1.49, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: east of the centre, on the slope'),
(9012647, 3127, 1, 0, 0, 1, 1, 0, 201, -4096, 45.302, 5.48, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south-west quarter, below the hall'),
(9012648, 3122, 1, 0, 0, 1, 1, 0, 204.5, -4112.5, 43.894, 0.31, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south of the centre'),
(9012649, 3099, 1, 0, 0, 1, 1, 0, 200, -4126, 44.727, 0.87, 300, 6, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south-east of the centre'),
(9012650, 3126, 1, 0, 0, 1, 1, 0, 203, -4140.5, 44.426, 1.23, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south-east quarter'),
(9012651, 3122, 1, 0, 0, 1, 1, 0, 201.5, -4154, 43.94, 1.3, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south-east rim'),
(9012652, 3099, 1, 0, 0, 1, 1, 0, 193.5, -4100, 45.966, 5.85, 300, 6, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south side, open rise'),
(9012653, 3126, 1, 0, 0, 1, 1, 0, 188.5, -4115, 45.916, 0.21, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south side, on the rise'),
(9012654, 3122, 1, 0, 0, 1, 1, 0, 192.5, -4130, 45.631, 0.76, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south-east of the rise'),
(9012655, 3099, 1, 0, 0, 1, 1, 0, 189, -4145.5, 45.91, 0.96, 300, 6, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south-east rim'),
(9012656, 3126, 1, 0, 0, 1, 1, 0, 181, -4092, 48.414, 5.79, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: high south-west ground by the hall'),
(9012657, 3127, 1, 0, 0, 1, 1, 0, 182.5, -4121.5, 46.696, 0.36, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: high south ground'),
(9012658, 3123, 1, 0, 0, 1, 1, 0, 178, -4136, 47.27, 0.64, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: high south-east ground'),
(9012659, 3099, 1, 0, 0, 1, 1, 0, 170, -4118, 48.611, 0.19, 300, 6, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: southern rim, top of the rise'),
(9012660, 3126, 1, 0, 0, 1, 1, 0, 170.5, -4130, 48.226, 0.44, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: southern rim, top of the rise'),
(9012661, 3099, 1, 0, 0, 1, 1, 0, 262, -4103, 35.584, 3.28, 300, 6, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: northern rim, on the low flats'),
(9012662, 3122, 1, 0, 0, 1, 1, 0, 252.5, -4138, 36.745, 2.51, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: north-east rim, above the road dip'),
(9012663, 3122, 1, 0, 0, 1, 1, 0, 181.5, -4084.5, 48.606, 5.63, 300, 7, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: south-west corner, 22 yd out from the hall'),
(9012664, 3099, 1, 0, 0, 1, 1, 0, 220, -4157.5, 41.137, 1.7, 300, 6, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Fighter Fuel circle: eastern rim');

DELETE FROM `creature_addon` WHERE `guid` BETWEEN 9012600 AND 9012749;

DELETE FROM `gameobject` WHERE `guid` IN (7917280, 7917281, 7917282, 7917283, 7917284) OR `guid` BETWEEN 7917280 AND 7917319;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7917280, 97451, 1, 0, 0, 1, 1, 189.75, -4047.86, 49.606, 1.82, 0, 0, 0.789504, 0.613746, 300, 100, 1, '', 'CoA Warborn infirmary: atlas point in the great hall, a sickbed beside the nurse'),
(7917281, 99011, 1, 0, 0, 1, 1, 196.83, -4044.88, 49.606, 1.82, 0, 0, 0.789504, 0.613746, 300, 100, 1, '', 'CoA Warborn infirmary: atlas point behind Shinga'),
(7917282, 99012, 1, 0, 0, 1, 1, 196.43, -4044.73, 50.573, 1.82, 0, 0, 0.789504, 0.613746, 300, 100, 1, '', 'CoA Warborn infirmary: atlas point on the table'),
(7917283, 99013, 1, 0, 0, 1, 1, 196.71, -4044.36, 50.557, 1.82, 0, 0, 0.789504, 0.613746, 300, 100, 1, '', 'CoA Warborn infirmary: atlas point on the table'),
(7917284, 99014, 1, 0, 0, 1, 1, 196.65, -4044.38, 50.758, 1.82, 0, 0, 0.789504, 0.613746, 300, 100, 1, '', 'CoA Warborn infirmary: atlas point on the table');

-- ---------------------------------------------------------------------------
-- 6. Stock rows moved out of the camp
-- ---------------------------------------------------------------------------
-- Boars, raptors and a scorpid into the Fighter Fuel circle; the hare, adder and Earthroot north of the camp.
UPDATE `creature` SET `position_x` = 259, `position_y` = -4094, `position_z` = 35.997, `orientation` = 3.47, `wander_distance` = 6 WHERE `guid` = 7992 AND `id` = 3100;
UPDATE `creature` SET `position_x` = 249, `position_y` = -4115.5, `position_z` = 37.884, `orientation` = 2.97, `wander_distance` = 6 WHERE `guid` = 4712 AND `id` = 3100;
UPDATE `creature` SET `position_x` = 228.5, `position_y` = -4106, `position_z` = 40.656, `orientation` = 3.38, `wander_distance` = 6 WHERE `guid` = 11871 AND `id` = 3099;
UPDATE `creature` SET `position_x` = 215.5, `position_y` = -4149, `position_z` = 42.378, `orientation` = 1.61, `wander_distance` = 6 WHERE `guid` = 6647 AND `id` = 3100;
UPDATE `creature` SET `position_x` = 204.5, `position_y` = -4084.5, `position_z` = 45.76, `orientation` = 5.07, `wander_distance` = 6 WHERE `guid` = 11879 AND `id` = 3100;
UPDATE `creature` SET `position_x` = 178.5, `position_y` = -4107.5, `position_z` = 47.543, `orientation` = 6.23, `wander_distance` = 6 WHERE `guid` = 10505 AND `id` = 3099;
UPDATE `creature` SET `position_x` = 191, `position_y` = -4084, `position_z` = 47.589, `orientation` = 5.44, `wander_distance` = 7 WHERE `guid` = 7265 AND `id` = 3122;
UPDATE `creature` SET `position_x` = 238.5, `position_y` = -4134.5, `position_z` = 39.539, `orientation` = 2.35, `wander_distance` = 7 WHERE `guid` = 4747 AND `id` = 3123;
UPDATE `creature` SET `position_x` = 240, `position_y` = -4081.5, `position_z` = 39.986, `orientation` = 3.96, `wander_distance` = 5 WHERE `guid` = 6665 AND `id` = 3126;
UPDATE `creature` SET `position_x` = 268, `position_y` = -3895, `position_z` = 34.339, `orientation` = 4.17 WHERE `guid` = 7922 AND `id` = 5951;
UPDATE `creature` SET `position_x` = 266, `position_y` = -3918, `position_z` = 36.571, `orientation` = 1.87 WHERE `guid` = 12152 AND `id` = 3300;
UPDATE `gameobject` SET `position_x` = 274.5, `position_y` = -3926.5, `position_z` = 36.983 WHERE `guid` = 21899 AND `id` = 1619;

-- ---------------------------------------------------------------------------
-- 7. Scripts
-- ---------------------------------------------------------------------------
-- Vince sends each round's opponent into the ring while that round is open and the ring is empty; the
-- opponent's death credits the party. Shadowblood's totems heal her until they are destroyed. Walking into
-- the ring centre on One Last Battle crowns the champion.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (254941, 254945, 254947, 764596, 764597, 764598, 764601, 764602, 764605, 764606, 764607, 764611, 991518, 9303635, 9303636, 9303637) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(254941, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 26, 254059, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Lowfang - On Death - Group Quest Credit 254059'),
(254941, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lowfang - On Evade - Despawn'),
(254945, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 26, 254060, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathscreech - On Death - Group Quest Credit 254060'),
(254945, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathscreech - On Evade - Despawn'),
(254947, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 26, 254061, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'The Masher - On Death - Group Quest Credit 254061'),
(254947, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'The Masher - On Evade - Despawn'),
(764596, 0, 0, 0, 1, 0, 100, 0, 5000, 20000, 15000, 40000, 0, 0, 10, 4, 15, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectator - Out of Combat - Play Random Emote'),
(764597, 0, 0, 0, 1, 0, 100, 0, 5000, 20000, 15000, 40000, 0, 0, 10, 4, 15, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectator - Out of Combat - Play Random Emote'),
(764598, 0, 0, 0, 1, 0, 100, 0, 5000, 20000, 15000, 40000, 0, 0, 10, 4, 15, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectator - Out of Combat - Play Random Emote'),
(764601, 0, 0, 0, 1, 0, 100, 0, 5000, 20000, 15000, 40000, 0, 0, 10, 4, 15, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectator - Out of Combat - Play Random Emote'),
(764602, 0, 0, 0, 1, 0, 100, 0, 5000, 20000, 15000, 40000, 0, 0, 10, 4, 15, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectator - Out of Combat - Play Random Emote'),
(764605, 0, 0, 0, 1, 0, 100, 0, 5000, 20000, 15000, 40000, 0, 0, 10, 4, 15, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectator - Out of Combat - Play Random Emote'),
(764606, 0, 0, 0, 1, 0, 100, 0, 5000, 20000, 15000, 40000, 0, 0, 10, 4, 15, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectator - Out of Combat - Play Random Emote'),
(764607, 0, 0, 0, 1, 0, 100, 0, 5000, 20000, 15000, 40000, 0, 0, 10, 4, 15, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectator - Out of Combat - Play Random Emote'),
(764611, 0, 0, 0, 1, 0, 100, 0, 5000, 20000, 15000, 40000, 0, 0, 10, 4, 15, 21, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectator - Out of Combat - Play Random Emote'),
(991518, 0, 0, 1, 62, 0, 100, 0, 932534, 0, 0, 0, 0, 0, 12, 254941, 4, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 213.03, -3963.63, 37.104, 3.22, 'Vince McOrc - On Gossip Option 0 Selected - Summon ''Lowfang'' In The Ring'),
(991518, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Vince McOrc - Linked - Close Gossip'),
(991518, 0, 2, 3, 62, 0, 100, 0, 932534, 1, 0, 0, 0, 0, 12, 254945, 4, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 213.03, -3963.63, 37.104, 3.22, 'Vince McOrc - On Gossip Option 1 Selected - Summon ''Deathscreech'' In The Ring'),
(991518, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Vince McOrc - Linked - Close Gossip'),
(991518, 0, 4, 5, 62, 0, 100, 0, 932534, 2, 0, 0, 0, 0, 12, 254947, 4, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 213.03, -3963.63, 37.104, 3.22, 'Vince McOrc - On Gossip Option 2 Selected - Summon ''The Masher'' In The Ring'),
(991518, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Vince McOrc - Linked - Close Gossip'),
(991518, 0, 6, 7, 62, 0, 100, 0, 932534, 3, 0, 0, 0, 0, 12, 9303635, 4, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 213.03, -3963.63, 37.104, 3.22, 'Vince McOrc - On Gossip Option 3 Selected - Summon ''Shadowblood'' In The Ring'),
(991518, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Vince McOrc - Linked - Close Gossip'),
(9303635, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 9303636, 1, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 213, -3957.5, 37.158, 0, 'Shadowblood - On Aggro - Summon ''Healing Totem'' West'),
(9303635, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 9303636, 1, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 213, -3969.7, 37.117, 0, 'Shadowblood - Linked - Summon ''Healing Totem'' East'),
(9303635, 0, 2, 3, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 12, 9303636, 1, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 207, -3963.6, 37.166, 0, 'Shadowblood - Between 0-50% Health - Summon ''Healing Totem'' South'),
(9303635, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 9303636, 1, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 219, -3963.6, 36.941, 0, 'Shadowblood - Linked - Summon ''Healing Totem'' North'),
(9303635, 0, 4, 0, 0, 0, 100, 0, 3000, 5000, 8000, 11000, 0, 0, 11, 20807, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowblood - In Combat - Cast ''Shadow Bolt'''),
(9303635, 0, 5, 6, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 26, 254062, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowblood - On Death - Group Quest Credit 254062'),
(9303635, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, 9303636, 80, 0, 0, 0, 0, 0, 0, 'Shadowblood - Linked - Despawn ''Healing Totem'''),
(9303635, 0, 7, 8, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, 9303636, 80, 0, 0, 0, 0, 0, 0, 'Shadowblood - On Evade - Despawn ''Healing Totem'''),
(9303635, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowblood - Linked - Despawn'),
(9303636, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Healing Totem - On Just Summoned - Set Reactstate Passive'),
(9303636, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 103, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Healing Totem - Linked - Root'),
(9303636, 0, 2, 0, 60, 0, 100, 0, 2000, 2000, 4000, 4000, 0, 0, 11, 547, 2, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Healing Totem - On Update - Cast ''Healing Wave'' On Summoner'),
(9303637, 0, 0, 0, 10, 0, 100, 0, 1, 5, 1000, 1000, 1, 0, 26, 254063, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Orcamania Ring - Within 5 yd - Group Quest Credit 254063');

DELETE FROM `conditions` WHERE `SourceGroup` = 932534 AND `SourceTypeOrReferenceId` = 15;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(15, 932534, 0, 0, 0, 47, 0, 254059, 8, 0, 0, 0, 0, '', 'send out Lowfang only while quest 254059 is incomplete'),
(15, 932534, 0, 0, 0, 29, 1, 254941, 80, 0, 1, 0, 0, '', 'and no living Lowfang is in the ring'),
(15, 932534, 0, 0, 0, 29, 1, 254945, 80, 0, 1, 0, 0, '', 'and no living Deathscreech is in the ring'),
(15, 932534, 0, 0, 0, 29, 1, 254947, 80, 0, 1, 0, 0, '', 'and no living The Masher is in the ring'),
(15, 932534, 0, 0, 0, 29, 1, 9303635, 80, 0, 1, 0, 0, '', 'and no living Shadowblood is in the ring'),
(15, 932534, 1, 0, 0, 47, 0, 254060, 8, 0, 0, 0, 0, '', 'send out Deathscreech only while quest 254060 is incomplete'),
(15, 932534, 1, 0, 0, 29, 1, 254941, 80, 0, 1, 0, 0, '', 'and no living Lowfang is in the ring'),
(15, 932534, 1, 0, 0, 29, 1, 254945, 80, 0, 1, 0, 0, '', 'and no living Deathscreech is in the ring'),
(15, 932534, 1, 0, 0, 29, 1, 254947, 80, 0, 1, 0, 0, '', 'and no living The Masher is in the ring'),
(15, 932534, 1, 0, 0, 29, 1, 9303635, 80, 0, 1, 0, 0, '', 'and no living Shadowblood is in the ring'),
(15, 932534, 2, 0, 0, 47, 0, 254061, 8, 0, 0, 0, 0, '', 'send out The Masher only while quest 254061 is incomplete'),
(15, 932534, 2, 0, 0, 29, 1, 254941, 80, 0, 1, 0, 0, '', 'and no living Lowfang is in the ring'),
(15, 932534, 2, 0, 0, 29, 1, 254945, 80, 0, 1, 0, 0, '', 'and no living Deathscreech is in the ring'),
(15, 932534, 2, 0, 0, 29, 1, 254947, 80, 0, 1, 0, 0, '', 'and no living The Masher is in the ring'),
(15, 932534, 2, 0, 0, 29, 1, 9303635, 80, 0, 1, 0, 0, '', 'and no living Shadowblood is in the ring'),
(15, 932534, 3, 0, 0, 47, 0, 254062, 8, 0, 0, 0, 0, '', 'send out Shadowblood only while quest 254062 is incomplete'),
(15, 932534, 3, 0, 0, 29, 1, 254941, 80, 0, 1, 0, 0, '', 'and no living Lowfang is in the ring'),
(15, 932534, 3, 0, 0, 29, 1, 254945, 80, 0, 1, 0, 0, '', 'and no living Deathscreech is in the ring'),
(15, 932534, 3, 0, 0, 29, 1, 254947, 80, 0, 1, 0, 0, '', 'and no living The Masher is in the ring'),
(15, 932534, 3, 0, 0, 29, 1, 9303635, 80, 0, 1, 0, 0, '', 'and no living Shadowblood is in the ring');

DELETE FROM `conditions` WHERE `SourceEntry` = 9303637 AND `SourceTypeOrReferenceId` = 22;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(22, 1, 9303637, 0, 0, 9, 0, 254063, 0, 0, 0, 0, 0, '', 'crown only players on One Last Battle');
