-- CoA Tirisfal Glades: Chapel of Final Grace, Balnir Farmstead, Edwin Coldwake, Ralden's lab, the Scarlet
-- Monastery grounds and Agamand Mills (quests 254053-254057, 254064); Lieutenant Sanders made hostile;
-- Rear Guard Patrol (356) top-up; stock re-floors and holiday turkeys of these places.
-- Creature guids 9010600-9010849, gameobject guids 7916220-7916399, gossip menus 932427-932438.

-- ---------------------------------------------------------------------------
-- 1. Creatures
-- ---------------------------------------------------------------------------
-- Stand-in displays where the CoA model is missing from the client.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `family`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `RegenHealth`, `flags_extra`, `KillCredit1`, `ScriptName`)
VALUES
(991483, '阿拉斯托神父', NULL, 932429, 15, 15, 0, 68, 3, 1, 1.14286, 20, 0, 2000, 2000, 2, 0, 2048, 0, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(254936, '约鲁姆·巴尼尔', NULL, 0, 12, 12, 0, 21, 0, 1, 1.14286, 20, 1, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, '', 0, 2.2, 1, 1, 1, 1, 0, 0, ''),
(254937, '瓦拉·巴尼尔', NULL, 0, 12, 12, 0, 21, 0, 1, 1.14286, 20, 1, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, '', 0, 2.2, 1, 1, 1, 1, 0, 0, ''),
(254938, '贾里姆·巴尼尔', NULL, 0, 12, 12, 0, 21, 0, 1, 1.14286, 20, 1, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, '', 0, 2.2, 1, 1, 1, 1, 0, 0, ''),
(254939, '暮饮者', NULL, 0, 9, 9, 0, 16, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 24, 1, 1, 254939, '', 0, 2.45, 1, 1, 1, 1, 0, 0, ''),
(449250, '埃德温·冷醒', NULL, 932427, 10, 10, 0, 68, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1.1, 1, 1, 1, 1, 0, 0, ''),
(449251, '黑暗猎犬', '埃德温的宠物', 0, 10, 10, 0, 68, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.1, 1, 1, 1, 1, 0, 0, ''),
(764553, '药剂师格雷尔萨', '皇家药剂师协会', 0, 12, 12, 0, 68, 128, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(764554, '药剂师拉尔登', '皇家药剂师协会', 932428, 15, 15, 0, 68, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(764555, '守望者凯尔萨·墓生', '皇家药剂师协会', 932431, 15, 15, 0, 68, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(764556, '实验室守卫', '皇家药剂师协会', 0, 15, 15, 0, 68, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(749136, '罗德·毒击', NULL, 932430, 10, 10, 0, 68, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 512, 2048, 0, 7, 128, 0, '', 0, 1.6268, 1, 1, 1, 1, 0, 0, ''),
(254584, '受折磨的马莱克', NULL, 0, 9, 9, 0, 21, 0, 1, 1.14286, 20, 0, 2000, 2000, 8, 0, 2048, 0, 6, 0, 0, 'SmartAI', 0, 1.47, 2, 1, 1, 1, 0, 0, ''),
(254956, '在骷髅上测试的药剂', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(254957, '在僵尸上测试的药剂', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(254958, '在女妖上测试的药剂', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(254959, '已测试的异常体', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `family` = VALUES(`family`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `DamageModifier` = VALUES(`DamageModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `KillCredit1` = VALUES(`KillCredit1`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (254584, 254936, 254937, 254938, 254939, 254956, 254957, 254958, 254959, 449250, 449251, 749136, 764553, 764554, 764555, 764556, 991483);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(991483, 0, 1579, 1, 1),
(254936, 0, 16397, 1, 1),
(254937, 0, 16399, 1, 1),
(254938, 0, 16398, 1, 1),
(254939, 0, 11829, 1, 1),
(449250, 0, 10834, 1, 1),
(449251, 0, 9020, 1, 1),
(764553, 0, 4109, 1, 1),
(764554, 0, 4111, 1, 1),
(764555, 0, 13839, 1, 1),
(764556, 0, 13839, 1, 1),
(749136, 0, 23877, 1, 1),
(254584, 0, 1602, 1, 1),
(254956, 0, 11686, 1, 1),
(254957, 0, 11686, 1, 1),
(254958, 0, 11686, 1, 1),
(254959, 0, 11686, 1, 1);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (254584, 254936, 254937, 254938, 254939, 254956, 254957, 254958, 254959, 449250, 449251, 749136, 764553, 764554, 764555, 764556, 991483);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(764555, 1, 1897, 1957, 0),
(764556, 1, 1905, 0, 2551);

DELETE FROM `npc_vendor` WHERE `entry` = 764553;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
VALUES
(764553, 0, 734931, 0, 0, 0);

-- ---------------------------------------------------------------------------
-- 2. Dialogue
-- ---------------------------------------------------------------------------
-- Greetings are cached npc_text whose content names the speaker or his work.
DELETE FROM `npc_text` WHERE `ID` IN (56670, 58299, 58300, 115564, 115590);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`)
VALUES
(115590, '啊，这片阴郁土地上的一张新面孔！别在意那只猎犬——他比看起来要友好。我是在旧战场上发现他到处嗅探的，可怜的东西。看来我们都在某种程度上被抛弃了，是吧？$B$B但不说这个了——是什么风把你吹到提瑞斯法来的？是来找麻烦的，还是只想躲开麻烦？', '啊，这片阴郁土地上的一张新面孔！别在意那只猎犬——他比看起来要友好。我是在旧战场上发现他到处嗅探的，可怜的东西。看来我们都在某种程度上被抛弃了，是吧？$B$B但不说这个了——是什么风把你吹到提瑞斯法来的？是来找麻烦的，还是只想躲开麻烦？', 0, 0, 1),
(115564, '你闻到那味道了吗？那是进步的气息。往血色分子的口粮里滴上几滴，天亮之前他们就是我们的了。$B$B血色十字军不会在战斗中倒下——至少，不会完全倒下。不，他们会在一觉醒来、意识到自己站错了队时倒下……或者在他们分不清自己的兄弟是敌是友时倒下。这不仅仅是战争。这是正义。$B$B他们叫我们怪物，但你告诉我——谁才是真正的怪物？是那些死抱着一个已死王国的人？还是那些从中活下来的人？哈。无所谓。很快，血色分子就会学会为被遗忘者效劳……不管他们愿不愿意。', '你闻到那味道了吗？那是进步的气息。往血色分子的口粮里滴上几滴，天亮之前他们就是我们的了。$B$B血色十字军不会在战斗中倒下——至少，不会完全倒下。不，他们会在一觉醒来、意识到自己站错了队时倒下……或者在他们分不清自己的兄弟是敌是友时倒下。这不仅仅是战争。这是正义。$B$B他们叫我们怪物，但你告诉我——谁才是真正的怪物？是那些死抱着一个已死王国的人？还是那些从中活下来的人？哈。无所谓。很快，血色分子就会学会为被遗忘者效劳……不管他们愿不愿意。', 0, 0, 1),
(58299, '每次引导圣光，我都能感觉到自己的身体在衰弱。但看着这些人，被困在地下的棺木里，以亡灵之身活着，被埋了不知多久……$B$B一点痛苦，换来安抚他们的心灵，值得。', '每次引导圣光，我都能感觉到自己的身体在衰弱。但看着这些人，被困在地下的棺木里，以亡灵之身活着，被埋了不知多久……$B$B一点痛苦，换来安抚他们的心灵，值得。', 0, 0, 1),
(56670, '啊，又一个流浪者找到了我简陋的营地。$B$B<被遗忘者朝冒着泡的药瓶示意。>$B$B我在研究这些阿加曼德亡灵——没有心智的傀儡，和我们这些有自由意志的被遗忘者不同。$B$B是什么让我们不同？为什么我们摆脱了巫妖王的控制，而他们仍被奴役？这就是我想要弄清楚的。$B$B黑暗女士鼓励我们的……研究……但我更喜欢在幽暗城远离窥探目光的地方工作。', '啊，又一个流浪者找到了我简陋的营地。$B$B<被遗忘者朝冒着泡的药瓶示意。>$B$B我在研究这些阿加曼德亡灵——没有心智的傀儡，和我们这些有自由意志的被遗忘者不同。$B$B是什么让我们不同？为什么我们摆脱了巫妖王的控制，而他们仍被奴役？这就是我想要弄清楚的。$B$B黑暗女士鼓励我们的……研究……但我更喜欢在幽暗城远离窥探目光的地方工作。', 0, 0, 1),
(58300, '我们守卫实验室，好让药剂师们能工作。够简单了。$B$B其实不然。$B$B十字军不断试探我们的防线，每周都感觉他们逼得更紧一些。我们守着，但我能感觉到压力。不知道我还能这样兼顾多久而不出岔子。', '我们守卫实验室，好让药剂师们能工作。够简单了。$B$B其实不然。$B$B十字军不断试探我们的防线，每周都感觉他们逼得更紧一些。我们守着，但我能感觉到压力。不知道我还能这样兼顾多久而不出岔子。', 0, 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (932427, 932428, 932429, 932430, 932431);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932427, 115590),
(932428, 115564),
(932429, 58299),
(932430, 56670),
(932431, 58300);

-- ---------------------------------------------------------------------------
-- 3. World objects and loot
-- ---------------------------------------------------------------------------
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `AIName`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`)
VALUES
(254677, 10, 980926, '墓碑', '', '打磨中', 1, '', 1689, 254053, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(254678, 10, 980926, '无敌的墓碑', '', '打磨中', 1.5, '', 1689, 254053, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(254679, 10, 287, '血色补给品', '', '感染中', 1, '', 1689, 254057, 0, 45000, 0, 1, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(97485, 5, 1009364, '狗头人蜡烛吊架 1 RPG 道具', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97486, 5, 673, '通用教堂长椅 RPG 道具', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97487, 5, 1009365, '狗头人蜡烛绳索 RPG 道具', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97488, 5, 1018301, '暮色森林墓框 RPG 道具', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97489, 5, 1039245, '花园花丛 橙色 RPG 道具', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97490, 5, 1009366, '花园花丛 粉色 RPG 道具', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97491, 5, 1057496, '花园花丛 红色 RPG 道具', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97492, 5, 1018304, '暴风城墓碑泥土 RPG 道具', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(922365, 9, 3412, '布满灰尘的盘子', '', '', 1, '', 9560, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(922366, 9, 66377, '抛光牌匾', '', '', 1, '', 9562, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3208962, 5, 1010679, '被遗忘者帐篷 02', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3232091, 5, 1006900, '炼金术士桌子', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3239811, 5, 1025092, '地毯', '', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3288426, 5, 1049058, '树枝', '', '', 0.25, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(515424, 5, 1020695, '原木', '', '', 1.89, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90095, 5, 36, '货物箱', '', '', 1.1, '', 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `AIName` = VALUES(`AIName`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`);

DELETE FROM `page_text` WHERE `ID` IN (9560, 9562);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`)
VALUES
(9560, '长眠于此，布兰登·阿拉斯托$B$B一位受人爱戴的布道者，虔诚的治疗者，真挚的朋友。$B$B愿你的灵魂得到永恒的安宁。', 0),
(9562, '欢迎来到这片神圣之地，$B在这里，宁静与安息在寂静中寻得。$B尊敬那些先行之人，$B他们的遗泽永存不息。$B$B在这静谧中，让心灵轻盈，$B因为此地，过去与现在交融。$B愿灵魂寻得永恒恩典，$B愿你感受到他们温柔的拥抱。', 0);

-- Duskdrinker's meat and Sanders's head: 100 %, quest-only.
DELETE FROM `creature_loot_template` WHERE `Entry` IN (13158, 254939);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(254939, 354652, 0, 100, 1, 1, 0, 1, 1, 'Duskdrinker - Tender Duskbat Meat'),
(13158, 354678, 0, 100, 1, 1, 0, 1, 1, 'Lieutenant Sanders - Lieutenant Sanders''s Head');

DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (13158, 254939);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(254939, 0, 354652),
(13158, 0, 354678);

-- Lieutenant Sanders (stock 13158): a hostile Scarlet like the friars of his camp, with loot.
UPDATE `creature_template` SET `faction` = 67, `lootid` = 13158 WHERE `entry` = 13158;

-- ---------------------------------------------------------------------------
-- 4. Quests
-- ---------------------------------------------------------------------------
-- 254057 follows 254056.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(254053, 2, 11, 6, 85, 0, 0, 0, 0, 0, 0, 0, 5, 375, 202, 0, 0, 0, 0, 0, 0, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '一份卑微的职责', '在阿拉斯托神父的墓地为6块墓碑打磨抛光，并打理巴尼尔农场的“无敌”之墓。', '如果你愿意听一个简单的请求，我这把老骨头已经不复当年的力气了。对圣光的信仰……从来就不是为我们这样的人准备的。而这具身体在职责召唤时，也不总能回应。$B$B墓地的坟墓已经太久无人打理了。那些可怜的灵魂在这世上大概已无人记得，但他们同样值得拥有尊严。$B$B如果你有空，也可以顺便照料一下巴尼尔农场阿尔萨斯坐骑的坟墓。它主人的罪行累累，但那匹马是忠诚的……而且它在巫妖王的阴影笼罩这片土地之前就已经死去了。$B$B如果它活得更久，也许故事的结局会有所不同。', '', '回到提瑞斯法林地的阿拉斯托神父那里。', -254677, -254678, 0, 0, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '墓碑已打磨', '“无敌”之墓已打理', '', ''),
(254054, 2, 12, 6, 85, 1, 2, 0, 0, 0, 0, 0, 6, 375, 202, 0, 0, 0, 0, 0, 0, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '巴尼尔家的安息', '让巴尼尔家族的约鲁姆·巴尼尔、瓦拉·巴尼尔和贾里姆·巴尼尔的灵魂安息。', '巴尼尔家族曾培育出全艾泽拉斯最精良的坐骑，连王室都对其青睐有加。即便有这样的客户，他们也从未因此冲昏头脑，他们是善良、谦逊的人，我相信他们的马也随了他们，这就是它们如此受青睐的原因。$B$B……但那都是过去了。农场如今已成废墟，只有不安息的亡者住在那里。我确信巴尼尔家的人一定也在其中，但尽管我能运用圣光，如今这对我来说是种痛苦，我不再信任自己在战斗中的力量了。$B$B如果你有心，能否替我去让那些可怜的灵魂安息。总共有三个人，瓦拉、约鲁姆，和他们的儿子贾里姆。', '', '回到提瑞斯法林地的阿拉斯托神父那里。', 254936, 254937, 254938, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254055, 2, 8, 4, 85, 0, 0, 0, 0, 0, 0, 0, 5, 675, 315, 0, 0, 0, 0, 0, 8, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '黑暗猎犬的零食', '找到一份零食，交给埃德温的猎犬。', '你看起来还是有点紧张，别担心，它不会咬人的。除非我让它咬。$B$B好吧，来，你何不做点什么来赢得它一点信任呢？它很喜欢那些暗影蝠，我花了段时间才训练它不要在它们路过营地时直接扑上去。$B$B我一直在东边看到一只大的，一直想去为它猎一只，但既然你在这里，你何不去找到它，给它一块肉呢？', '', '回到埃德温·冷醒那里。', 449251, 0, 0, 0, 1, 0, 0, 0, 354652, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '埃德温的黑暗猎犬已喂食', '', '', ''),
(254056, 2, 12, 7, 85, 0, 0, 0, 0, 0, 0, 0, 5, 475, 202, 0, 0, 0, 0, 0, 8, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '酿造混乱', '在毒网谷杀死桑德斯中尉，并把他的头带给药剂师拉尔登。', '驻扎在这里，我们不断遭受血色十字军的攻击。迄今为止我们一直抵挡住他们的进攻，好让药剂师们能开展工作，他们大多也停止了派人来送死。$B$B但最近，某个新晋的中尉被任命指挥他们在毒网谷的营地，他一直在组织更协调的攻击来对付我们。我不确定我们还能撑多久，所以我想看到桑德斯中尉死掉。$B$B没有他，我们只能希望他们会变得足够混乱，暂时放过我们。药剂师拉尔登一直在问我们有没有砍下中尉的头，所以你做完了就把它带给他，好让他别再来烦我们。', '', '通知药剂师拉尔登桑德斯中尉的死讯。', 0, 0, 0, 0, 0, 0, 0, 0, 354678, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(254057, 2, 12, 7, 85, 0, 0, 0, 0, 0, 0, 0, 6, 975, 202, 0, 0, 0, 0, 354654, 0, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '这就是正义', '使用拉尔登的变形药剂潜入血色修道院的庭院，并感染他们的补给品。', '好了。完成了。有了这个，血色十字军甚至在为时已晚之前都不会知道自己已经输了。$B$B现在最后一步是把它送到他们那里而不引起怀疑。这就是中尉的脑袋的用处。$B$B我调配了一种药剂，能让你看起来和他一模一样。它应该能让你毫无麻烦地进入修道院。只要尽量别靠任何人太近，并保持移动。这种事并非万无一失，但只要你不做任何蠢事，就不会有事。$B$B还有，想都别想挑起战斗。修道院的守卫可不像那个营地的守卫。他们一挥就能把你的内脏撒满草地。如果他们发现你不是他们的中尉，他们会毫不犹豫地证明这一点。', '', '回到药剂师拉尔登那里。', -254679, 0, 0, 0, 6, 0, 0, 0, 354654, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '血色补给品已感染', '', '', ''),
(254064, 2, 8, 4, 85, 0, 0, 0, 0, 0, 0, 0, 5, 675, 315, 0, 0, 0, 0, 354655, 8, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '自由的本性', '在3个僵尸、3个骷髅、3个女妖和受折磨的马莱克身上测试罗德·毒击的药剂。', '你知道，既然你反正要在这附近走动，你可以帮我个忙。我是个科学家，不是战士，你看。不幸的是，这两个职位交叉的频率比我愿意承认的要高。$B$B我们被遗忘者摆脱了天灾，但许多人仍在为它效劳。有些处于严重得多的腐烂状态，比如这附近磨坊周围的大多数，但另一些则更难解释。我们的黑暗女士曾是一个女妖，可我在这个地区发现了一些仍受天灾束缚的女妖。$B$B也许这只是意志的问题。即便如此，肯定有办法至少推动一些仍保留部分自我的人切断他们与巫妖王的联系，对吧？这就是我理论的基础。唉，这种药剂已经是我能安全达到的极限了。$B$B也许你可以试试？它应该能激发一股短暂的力量涌动，如果我的论点正确，也许能给他们一个夺回控制权的机会。实际上，它本身作用不大，但如果像你这样的人先削弱束缚他们的力量，我预计它会有效得多。', '', '回到罗德·毒击那里。', 254956, 254957, 254958, 254959, 3, 3, 3, 1, 354655, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '药剂已在骷髅上测试', '药剂已在僵尸上测试', '药剂已在女妖上测试', '已测试异常体')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (254053, 254054, 254055, 254056, 254057, 254064);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(254053, 0, 0, 0, 0, 0),
(254054, 0, 0, 0, 0, 0),
(254055, 0, 0, 0, 0, 0),
(254056, 0, 0, 0, 0, 0),
(254057, 0, 0, 254056, 1, 0),
(254064, 0, 0, 0, 1, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (254053, 254054, 254055, 254056, 254057, 254064);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(254053, '为此我感谢你。我对这个世界及其中生灵的爱让这份痛苦尚可忍受，但我仍在运用一种如今与我自身存在相抗争的力量。有些日子我几乎能忘记它，但有时我必须留在这里，保存我的力气。$B$B……无敌的坟墓被打开了？！以圣光之名！阿尔萨斯造成的苦难还不够多吗，竟连那匹可怜的马都不让它安息？$B$B我很抱歉，至少感谢你带来这个消息，也感谢你替我走了这一趟。'),
(254054, '他们终于可以安息了。我感激不尽，你真是善良，又或者你只是接受任何交给你的工作。结果都一样。在被天灾留下的所有不安息灵魂之中，这只是微小的差别，但我仍然很高兴。'),
(254055, '好了，看吧，他现在会永远爱你了。$B$B剩下的我帮你收着，他以后再吃。'),
(254056, '他死了？好消息！$B$B没有他，我怀疑我们没什么好担心的了。一些低级炮灰顶多也就是守着营地对付当地野兽罢了。$B$B现在，让我们看看他这张脸……$B$B不错，相当不错，我能用这个。'),
(254057, '办好了？好，好。我们会从这里盯着他们，看看它传播得怎么样。$B$B科学总要试几次，但即使它现在不能就地消灭那些血色渣滓，至少也该削减他们的队伍，等我们组建一支像样的队伍攻打修道院时，能让他们虚弱一些。'),
(254064, '这个家伙不久前游荡到这里，我猜他是你唯一成功的一个？$B$B鉴于这项研究的性质，我们哪怕能让这帮家伙里有一个挣脱束缚，都算幸运了。就这点而言，对这一个来说更是幸运，因为他似乎很愿意协助我的研究。$B$B一位死灵法术的专家……这也许正是我取得更好成果所需要的东西。是的，这就行了。');

DELETE FROM `quest_request_items` WHERE `ID` IN (254053, 254054, 254055, 254056, 254057, 254064);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(254053, '“无敌”之墓比其他的要远得多，为此我向你道歉。'),
(254054, '那个可怜的家庭理应得到安息。我希望我们至少能给他们这个。'),
(254055, '它喜欢任何暗影蝠肉，但我相信那只大的尤其多汁。$B$B不过别一次性全给它，它不需要那么多，哪怕它会告诉你相反的话！一块就足够了。'),
(254056, '现在又怎么了？我很忙。除非你给我带来了有用的东西或者死人，别浪费我的时间。'),
(254057, '你还在这里做什么？我已经把药剂给你了。用它。快行动。还是说你宁愿我找个更慢的东西来测试它？'),
(254064, '到目前为止你收到任何结果了吗？我理解，这样的研究需要很多时间，等你完成后我们可以进一步讨论。');

DELETE FROM `creature_queststarter` WHERE `quest` IN (254053, 254054, 254055, 254056, 254057, 254064);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(991483, 254053),
(991483, 254054),
(449250, 254055),
(764555, 254056),
(764554, 254057),
(749136, 254064);

DELETE FROM `creature_questender` WHERE `quest` IN (254053, 254054, 254055, 254056, 254057, 254064);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(991483, 254053),
(991483, 254054),
(449250, 254055),
(764554, 254056),
(764554, 254057),
(749136, 254064);

-- ---------------------------------------------------------------------------
-- 5. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9010600, 9010601, 9010602, 9010603, 9010604, 9010605, 9010606, 9010607, 9010608, 9010609, 9010610, 9010611, 9010612, 9010613, 9010620, 9010621, 9010622, 9010623, 9010624, 9010625, 9010626, 9010627, 9010628, 9010629, 9010630, 9010631, 9010632, 9010633, 9010634, 9010635, 9010636, 9010637, 9010638, 9010639, 9010640, 9010641, 9010642, 9010643) OR `guid` BETWEEN 9010600 AND 9010849;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9010600, 991483, 0, 0, 0, 1, 1, 0, 1910.4, -152.63, 38.326, 5.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: ST8611, at the foot of the chapel dais, facing the nave and door'),
(9010601, 254936, 0, 0, 0, 1, 1, 0, 2042.9, -460.3, 35.894, 3.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: ST8614 on the barn floor, beside the water barrel'),
(9010602, 254937, 0, 0, 0, 1, 1, 0, 1965.86, -464.33, 34.62, 1.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: ST8615 in the burnt farmhouse garden'),
(9010603, 254938, 0, 0, 0, 1, 1, 0, 1998.77, -348.27, 35.452, 3.4, 300, 0, 0, 1, 0, 2, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: first Questie sighting, start of his ST8613 round'),
(9010604, 254939, 0, 0, 0, 1, 1, 0, 1647.39, -520.31, 46.609, 1.6, 300, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: ST8554 centre, in the duskbat meadow'),
(9010605, 449250, 0, 0, 0, 1, 1, 0, 1665.06, -368.91, 44.998, 4.71, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: ST8610 at his tent, facing the duskbat meadow'),
(9010606, 449251, 0, 0, 0, 1, 1, 0, 1666.84, -463.91, 44.999, 1.59, 120, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: ST8608, watching the meadow for duskbats'),
(9010607, 764555, 0, 0, 0, 1, 1, 1, 2479.64, -404.29, 77.27, 2.45, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: Questie point inside the lab door, facing it'),
(9010608, 764554, 0, 0, 0, 1, 1, 0, 2489.09, -392.8, 77.101, 3.61, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: ST8589 at his workbench, facing the door'),
(9010609, 764553, 0, 0, 0, 1, 1, 0, 2481.15, -400.68, 77.101, 1.91, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: Exiles point by the book table'),
(9010610, 764556, 0, 0, 0, 1, 1, 1, 2470, -398.2, 76.299, 3.14, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: west foot of the lab stair, facing out'),
(9010611, 764556, 0, 0, 0, 1, 1, 1, 2470.5, -405.5, 75.993, 3.14, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: east foot of the lab stair, facing out'),
(9010612, 749136, 0, 0, 0, 1, 1, 0, 2655, 1046.1, 105.028, 2.24, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: ST8620 (0.6 yd) in front of his log, facing the table'),
(9010613, 254584, 0, 0, 0, 1, 1, 0, 2773.54, 713.22, 160.791, 1.91, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Tirisfal: ST8576 on the ridge above the Mills'),
(9010620, 1529, 0, 0, 0, 1, 1, 0, 2072, -345, 37.223, 4.2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: north field below the ridge'),
(9010621, 1529, 0, 0, 0, 1, 1, 0, 2068, -318, 41.076, 3.6, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: north-west corner by the copper ridge'),
(9010622, 1529, 0, 0, 0, 1, 1, 0, 2066, -392, 38.212, 2.1, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: north field between the plough and the barn'),
(9010623, 1529, 0, 0, 0, 1, 1, 0, 2068, -485, 42.689, 3, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: rise east of the barn under the canopy trees'),
(9010624, 1529, 0, 0, 0, 1, 1, 0, 2058, -495, 43.355, 1.2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: behind the barn toward the open grave'),
(9010625, 1529, 0, 0, 0, 1, 1, 0, 1931, -340, 36.132, 0.4, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: west strip by the canopy trees'),
(9010626, 1529, 0, 0, 0, 1, 1, 0, 1942, -374, 35.452, 5.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: west field'),
(9010627, 1529, 0, 0, 0, 1, 1, 0, 1936, -462, 34.704, 0.9, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: south-west of the burnt farmhouse'),
(9010628, 1529, 0, 0, 0, 1, 1, 0, 1962, -500, 34.929, 1.8, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: south field past the planters'),
(9010629, 1529, 0, 0, 0, 1, 1, 0, 2006, -500, 39.243, 2.6, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: slope south of the silos'),
(9010630, 1529, 0, 0, 0, 1, 1, 0, 1966, -338, 35.452, 4.8, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: north-west of the yard'),
(9010631, 1529, 0, 0, 0, 1, 1, 0, 2026, -398, 35.452, 3.3, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: yard north of the hay wagon'),
(9010632, 1532, 0, 0, 0, 1, 1, 0, 2078, -395, 43.566, 3.9, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: foot of the north ridge'),
(9010633, 1532, 0, 0, 0, 1, 1, 0, 2084, -420, 43.201, 2.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: north-east field short of the canopy trees'),
(9010634, 1532, 0, 0, 0, 1, 1, 0, 2060, -330, 36.692, 5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: north-west field by the lone duskbat'),
(9010635, 1532, 0, 0, 0, 1, 1, 0, 2066, -512, 49.679, 0.7, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: grave rise north of the open grave'),
(9010636, 1532, 0, 0, 0, 1, 1, 0, 2030, -495, 41.166, 1.4, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: between the barn and the open grave'),
(9010637, 1532, 0, 0, 0, 1, 1, 0, 1950, -350, 35.452, 6, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: west field'),
(9010638, 1532, 0, 0, 0, 1, 1, 0, 1932, -430, 35.522, 0.2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: west edge of the farmhouse garden'),
(9010639, 1532, 0, 0, 0, 1, 1, 0, 1948, -485, 34.525, 2.2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: south field'),
(9010640, 1532, 0, 0, 0, 1, 1, 0, 1985, -505, 35.91, 1, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: south field toward the rise'),
(9010641, 1532, 0, 0, 0, 1, 1, 0, 1996, -475, 34.525, 3.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: by the broken wagon near the silos'),
(9010642, 1532, 0, 0, 0, 1, 1, 0, 1972, -420, 35.452, 4.4, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: west yard by the dead mule'),
(9010643, 1532, 0, 0, 0, 1, 1, 0, 2052, -395, 35.517, 2.9, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Balnir Farmstead: north yard between the plough and the shed');

DELETE FROM `creature_addon` WHERE `guid` BETWEEN 9010600 AND 9010849;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (9010603, 90106030, 0, 0, 1, 0, 0, NULL);

-- Jarim Balnir's round through both of his Questie sightings.
DELETE FROM `waypoint_data` WHERE `id` BETWEEN 90106000 AND 90108499;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `velocity`, `delay`, `smoothTransition`, `move_type`, `action`, `action_chance`, `wpguid`)
VALUES
(90106030, 1, 1998.77, -348.27, 35.452, NULL, 0, 3000, 0, 0, 0, 100, 0),
(90106030, 2, 1976.77, -341.95, 35.452, NULL, 0, 0, 0, 0, 0, 100, 0),
(90106030, 3, 1968, -370, 35.452, NULL, 0, 0, 0, 0, 0, 100, 0),
(90106030, 4, 1985, -400, 35.452, NULL, 0, 3000, 0, 0, 0, 100, 0),
(90106030, 5, 2012, -405, 35.452, NULL, 0, 0, 0, 0, 0, 100, 0),
(90106030, 6, 2022, -375, 35.452, NULL, 0, 0, 0, 0, 0, 100, 0);

DELETE FROM `gameobject` WHERE `guid` IN (7916220, 7916221, 7916222, 7916223, 7916224, 7916225, 7916226, 7916227, 7916228, 7916229, 7916230, 7916231, 7916232, 7916233, 7916234, 7916235, 7916236, 7916237, 7916240, 7916241, 7916242, 7916243, 7916244, 7916245, 7916246, 7916247, 7916248, 7916249, 7916250, 7916251, 7916252, 7916253, 7916254, 7916255, 7916256, 7916257, 7916270, 7916271, 7916272, 7916273, 7916274, 7916275, 7916276, 7916277, 7916278, 7916279, 7916280, 7916281, 7916282, 7916283, 7916284, 7916285, 7916286) OR `guid` BETWEEN 7916220 AND 7916399;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7916220, 254677, 0, 0, 0, 1, 1, 1909.34, -136.357, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Gravestone03 (atlas sighting)'),
(7916221, 254677, 0, 0, 0, 1, 1, 1910.1, -133.76, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Gravestone02'),
(7916222, 254677, 0, 0, 0, 1, 1, 1911.27, -131.27, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on 7FK_Forsaken_Grave03'),
(7916223, 254677, 0, 0, 0, 1, 1, 1912.68, -128.93, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Gravestone01'),
(7916224, 254677, 0, 0, 0, 1, 1, 1915.14, -123.84, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on 7FK_Forsaken_Grave04'),
(7916225, 254677, 0, 0, 0, 1, 1, 1916.17, -121.69, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Gravestone04'),
(7916226, 254677, 0, 0, 0, 1, 1, 1922.49, -125.37, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on 7FK_Forsaken_Grave04'),
(7916227, 254677, 0, 0, 0, 1, 1, 1920.47, -129.53, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Gravestone02'),
(7916228, 254677, 0, 0, 0, 1, 1, 1926.13, -129.61, 36.29, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on 7FK_Forsaken_Grave01'),
(7916229, 254677, 0, 0, 0, 1, 1, 1930.94, -129.6, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Gravestone02'),
(7916230, 254677, 0, 0, 0, 1, 1, 1936.21, -132.52, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Gravestone01'),
(7916231, 254677, 0, 0, 0, 1, 1, 1918.07, -134.3, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Gravestone04'),
(7916232, 254677, 0, 0, 0, 1, 1, 1915.46, -139.65, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on 7FK_Forsaken_Grave02'),
(7916233, 254677, 0, 0, 0, 1, 1, 1921.68, -139.57, 35.93, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Crypt03'),
(7916234, 254677, 0, 0, 0, 1, 1, 1920.13, -141.9, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on 7FK_Forsaken_Grave04'),
(7916235, 254677, 0, 0, 0, 1, 1, 1925.06, -144.7, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on 7FK_Forsaken_Grave03'),
(7916236, 254677, 0, 0, 0, 1, 1, 1929.44, -146.92, 36.41, 2.68, 0, 0, 0.973485, 0.228753, 60, 100, 1, '', 'CoA chapel yard: Gravestone on Worgen_Gravestone03'),
(7916237, 254678, 0, 0, 0, 1, 1, 2042.9, -520.3, 43.84, 3.05, 0, 0, 0.998952, 0.04578, 60, 100, 1, '', 'CoA Balnir: Invincible''s Gravestone, on the open grave before the monument (ST8556 0.96 yd)'),
(7916240, 254679, 0, 0, 0, 1, 1, 2838.56, -687.201, 139.904, 3.9, 0, 0, 0.92896, -0.370181, 60, 100, 1, '', 'CoA monastery grounds: atlas sighting on the bench under the gate arch'),
(7916241, 254679, 0, 0, 0, 1, 1, 2835.18, -683.96, 137.15, 0.8, 0, 0, 0.389418, 0.921061, 60, 100, 1, '', 'CoA monastery grounds: Questie sighting outside the gate arch'),
(7916242, 254679, 0, 0, 0, 1, 1, 2881.28, -642.84, 137.84, 1.6, 0, 0, 0.717356, 0.696707, 60, 100, 1, '', 'CoA monastery grounds: Questie sighting by the horse paddock'),
(7916243, 254679, 0, 0, 0, 1, 1, 2905.68, -755.34, 153.98, 5.1, 0, 0, 0.557684, -0.830054, 60, 100, 1, '', 'CoA monastery grounds: Questie sighting in the fountain garden'),
(7916244, 254679, 0, 0, 0, 1, 1, 2789.68, -842.99, 153.98, 0.1, 0, 0, 0.049979, 0.99875, 60, 100, 1, '', 'CoA monastery grounds: Questie sighting by the fence torch'),
(7916245, 254679, 0, 0, 0, 1, 1, 2794.8, -871.46, 154.05, 5.7, 0, 0, 0.287478, -0.957787, 60, 100, 1, '', 'CoA monastery grounds: Questie sighting before the field altar'),
(7916246, 254679, 0, 0, 0, 1, 1, 2819, -702, 137.11, 2.3, 0, 0, 0.912764, 0.408487, 60, 100, 1, '', 'CoA monastery grounds: under the Scarlet banner by the gate torch'),
(7916247, 254679, 0, 0, 0, 1, 1, 2786.5, -706.5, 129.63, 1.5, 0, 0, 0.681639, 0.731689, 60, 100, 1, '', 'CoA monastery grounds: between the two torches of the west path'),
(7916248, 254679, 0, 0, 0, 1, 1, 2779, -731, 130.06, 4, 0, 0, 0.909297, -0.416147, 60, 100, 1, '', 'CoA monastery grounds: at the west path bend by its torches'),
(7916249, 254679, 0, 0, 0, 1, 1, 2801.5, -756, 139.61, 1.9, 0, 0, 0.813416, 0.581683, 60, 100, 1, '', 'CoA monastery grounds: between the torches of the middle path'),
(7916250, 254679, 0, 0, 0, 1, 1, 2802, -786, 142.59, 1.4, 0, 0, 0.644218, 0.764842, 60, 100, 1, '', 'CoA monastery grounds: beside the torch pair of the upper path'),
(7916251, 254679, 0, 0, 0, 1, 1, 2811.5, -818, 153.24, 3.2, 0, 0, 0.999574, -0.0292, 60, 100, 1, '', 'CoA monastery grounds: at the torch where the path meets the upper field'),
(7916252, 254679, 0, 0, 0, 1, 1, 2791.5, -826, 154.62, 4.7, 0, 0, 0.711473, -0.702713, 60, 100, 1, '', 'CoA monastery grounds: inside the fence end by its torch'),
(7916253, 254679, 0, 0, 0, 1, 1, 2824, -876, 153.984, 2.6, 0, 0, 0.963558, 0.267499, 60, 100, 1, '', 'CoA monastery grounds: beside the field altar and its wall banner'),
(7916254, 254679, 0, 0, 0, 1, 1, 2885, -679, 137.17, 0.4, 0, 0, 0.198669, 0.980067, 60, 100, 1, '', 'CoA monastery grounds: against the paddock fence, north side'),
(7916255, 254679, 0, 0, 0, 1, 1, 2928, -745, 153.98, 3.5, 0, 0, 0.983986, -0.178246, 60, 100, 1, '', 'CoA monastery grounds: east of the fountain among the pines'),
(7916256, 254679, 0, 0, 0, 1, 1, 2850, -660, 137.6, 5.3, 0, 0, 0.472031, -0.881582, 60, 100, 1, '', 'CoA monastery grounds: on the lawn between the gate and the paddock'),
(7916257, 254679, 0, 0, 0, 1, 1, 2760, -770, 136.33, 0.6, 0, 0, 0.29552, 0.955336, 60, 100, 1, '', 'CoA monastery grounds: lower garden by the earthroot'),
(7916270, 97485, 0, 0, 0, 1, 1, 1913.83, -159.961, 38.344, 2.66, 0, 0, 0.971148, 0.238476, 180, 100, 1, '', 'CoA Tirisfal: chapel nave, candle stand'),
(7916271, 97486, 0, 0, 0, 1, 1, 1907.767, -156.561, 38.326, 2.66, 0, 0, 0.971148, 0.238476, 180, 100, 1, '', 'CoA Tirisfal: chapel pew before the dais'),
(7916272, 97487, 0, 0, 0, 1, 1, 1928.926, -159.641, 41.919, 2.66, 0, 0, 0.971148, 0.238476, 180, 100, 1, '', 'CoA Tirisfal: candle rope hung in the nave'),
(7916273, 97488, 0, 0, 0, 1, 1, 1919.19, -151.006, 38.329, 2.66, 0, 0, 0.971148, 0.238476, 180, 100, 1, '', 'CoA Tirisfal: grave frame in the nave'),
(7916274, 97489, 0, 0, 0, 1, 1, 1920.94, -152.082, 38.932, 2.66, 0, 0, 0.971148, 0.238476, 180, 100, 1, '', 'CoA Tirisfal: flowers on the grave'),
(7916275, 97490, 0, 0, 0, 1, 1, 1917.82, -150.311, 38.857, 2.66, 0, 0, 0.971148, 0.238476, 180, 100, 1, '', 'CoA Tirisfal: flowers on the grave'),
(7916276, 97491, 0, 0, 0, 1, 1, 1917.679, -149.855, 38.902, 2.66, 0, 0, 0.971148, 0.238476, 180, 100, 1, '', 'CoA Tirisfal: flowers on the grave'),
(7916277, 97492, 0, 0, 0, 1, 1, 1919.21, -151.201, 38.074, 2.66, 0, 0, 0.971148, 0.238476, 180, 100, 1, '', 'CoA Tirisfal: grave dirt in the frame'),
(7916278, 922365, 0, 0, 0, 1, 1, 1933.09, -150.787, 36.985, 1.1, 0, 0, 0.522687, 0.852525, 180, 100, 1, '', 'CoA Tirisfal: plate on Alastor''s own crypt'),
(7916279, 922366, 0, 0, 0, 1, 1, 1929.92, -137.859, 36.472, 5.71, 0, 0, 0.282686, -0.959213, 180, 100, 1, '', 'CoA Tirisfal: plaque on the yard crypt, facing the gate'),
(7916280, 3208962, 0, 0, 0, 1, 1, 1663.9, -364.729, 44.963, 4.98, 0, 0, 0.606454, -0.795119, 180, 100, 1, '', 'CoA Tirisfal: Edwin''s tent, opening toward him'),
(7916281, 3232091, 0, 0, 0, 1, 1, 2649.28, 1054.29, 104.521, 5.38, 0, 0, 0.436399, -0.899753, 180, 100, 1, '', 'CoA Tirisfal: Rod''s alchemy table'),
(7916282, 3239811, 0, 0, 0, 1, 1, 2648.15, 1051.85, 104.52, 5.38, 0, 0, 0.436399, -0.899753, 180, 100, 1, '', 'CoA Tirisfal: rug of Rod''s camp'),
(7916283, 3288426, 0, 0, 0, 1, 1, 2652.459, 1049.432, 105.64, 1, 0, 0, 0.479426, 0.877583, 180, 100, 1, '', 'CoA Tirisfal: root specimen at Rod''s camp'),
(7916284, 515424, 0, 0, 0, 1, 1, 2656.18, 1046.55, 105.551, 0.3, 0, 0, 0.149438, 0.988771, 180, 100, 1, '', 'CoA Tirisfal: log seat behind Rod'),
(7916285, 186658, 0, 0, 0, 1, 1, 2646.177, 1053.094, 104.375, 5.38, 0, 0, 0.436399, -0.899753, 180, 100, 1, '', 'CoA Tirisfal: Rod''s supply chest'),
(7916286, 90095, 0, 0, 0, 1, 1, 2945.158, 953.117, 121.992, 2, 0, 0, 0.841471, 0.540302, 180, 100, 1, '', 'CoA Tirisfal: cargo box at the north mill');

-- ---------------------------------------------------------------------------
-- 6. Scripts
-- ---------------------------------------------------------------------------
-- The darkhound credits its feeding; the concoction credits its test and the freed undead leave (ids
-- 100-109 on stock entries; their own rows stay).
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 1520;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (254584, 449251) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(254584, 0, 0, 1, 8, 0, 100, 0, 355193, 0, 5000, 5000, 0, 0, 33, 254959, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Mallek the Tormented - On Spellhit Rod''s Concoction - Quest Credit Unusual Subject Tested'),
(254584, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mallek the Tormented - Linked - Despawn In 2 Seconds'),
(449251, 0, 0, 1, 8, 0, 100, 0, 355164, 0, 5000, 5000, 0, 0, 33, 449251, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Edwin''s Darkhound - On Spellhit Feed Duskhound - Quest Credit Edwin''s Darkhound Fed'),
(449251, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 5, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Edwin''s Darkhound - Linked - Play Emote Eat');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1520 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(1520, 0, 100, 101, 8, 0, 100, 0, 355193, 0, 5000, 5000, 0, 0, 33, 254956, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rattlecage Soldier - On Spellhit Rod''s Concoction - Quest Credit Concoction Tested on Skeletons'),
(1520, 0, 101, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rattlecage Soldier - Linked - Despawn In 2 Seconds');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1522 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(1522, 0, 0, 0, 0, 0, 100, 0, 0, 0, 4000, 5000, 0, 0, 11, 13322, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkeye Bonecaster - In Combat CMC - Cast ''Frostbolt'''),
(1522, 0, 100, 101, 8, 0, 100, 0, 355193, 0, 5000, 5000, 0, 0, 33, 254956, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkeye Bonecaster - On Spellhit Rod''s Concoction - Quest Credit Concoction Tested on Skeletons'),
(1522, 0, 101, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkeye Bonecaster - Linked - Despawn In 2 Seconds');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1523 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(1523, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 589, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Cracked Skull Soldier - On Aggro - Cast ''589'''),
(1523, 0, 100, 101, 8, 0, 100, 0, 355193, 0, 5000, 5000, 0, 0, 33, 254956, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cracked Skull Soldier - On Spellhit Rod''s Concoction - Quest Credit Concoction Tested on Skeletons'),
(1523, 0, 101, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cracked Skull Soldier - Linked - Despawn In 2 Seconds');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1530 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(1530, 0, 0, 0, 0, 0, 100, 0, 2700, 3400, 9800, 12100, 0, 0, 11, 3322, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotting Ancestor - In Combat - Cast ''3322'''),
(1530, 0, 100, 101, 8, 0, 100, 0, 355193, 0, 5000, 5000, 0, 0, 33, 254957, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotting Ancestor - On Spellhit Rod''s Concoction - Quest Credit Concoction Tested on Zombies'),
(1530, 0, 101, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rotting Ancestor - Linked - Despawn In 2 Seconds');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1534 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(1534, 0, 0, 0, 0, 0, 75, 0, 12000, 12000, 24000, 24000, 0, 0, 11, 7713, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailing Ancestor - In Combat - Cast ''Wailing Dead'' (No Repeat)'),
(1534, 0, 100, 101, 8, 0, 100, 0, 355193, 0, 5000, 5000, 0, 0, 33, 254958, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailing Ancestor - On Spellhit Rod''s Concoction - Quest Credit Concoction Tested on Banshees'),
(1534, 0, 101, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wailing Ancestor - Linked - Despawn In 2 Seconds');

-- ---------------------------------------------------------------------------
-- 7. Stock re-floors and holiday turkeys
-- ---------------------------------------------------------------------------
-- Decrepit Darkhound by the chapel yard, re-floor
UPDATE `creature` SET `position_x` = 1916.13, `position_y` = -111.6, `position_z` = 36.474 WHERE `guid` = 44493 AND `id` = 1547;
-- Greater Duskbat behind the chapel, re-floor
UPDATE `creature` SET `position_x` = 1915.09, `position_y` = -175.58, `position_z` = 36.408 WHERE `guid` = 44542 AND `id` = 1553;
-- Cursed Darkhound by the lab, re-floor
UPDATE `creature` SET `position_x` = 2470.7, `position_y` = -384.806, `position_z` = 75.658 WHERE `guid` = 44062 AND `id` = 1548;
-- Peacebloom below the lab, re-floor
UPDATE `gameobject` SET `position_x` = 2439.13, `position_y` = -409.188, `position_z` = 70.389 WHERE `guid` = 201557 AND `id` = 1618;
-- Copper Vein behind the lab, re-floor
UPDATE `gameobject` SET `position_x` = 2510.69, `position_y` = -376.824, `position_z` = 78.064 WHERE `guid` = 201698 AND `id` = 1731;
-- Pilgrim turkey in the chapel yard, re-floor
UPDATE `creature` SET `position_x` = 1930.87, `position_y` = -132, `position_z` = 36.429 WHERE `guid` = 242493 AND `id` = 32820;
-- Pilgrim turkey buried under the raised slope, re-floor
UPDATE `creature` SET `position_x` = 2434.33, `position_y` = -404, `position_z` = 70.721 WHERE `guid` = 243174 AND `id` = 32820;
-- Pilgrim turkey buried under the raised slope, re-floor
UPDATE `creature` SET `position_x` = 2439.32, `position_y` = -400, `position_z` = 71.008 WHERE `guid` = 243179 AND `id` = 32820;
-- Pilgrim turkey by the lab, re-floor
UPDATE `creature` SET `position_x` = 2469.93, `position_y` = -414, `position_z` = 75.108 WHERE `guid` = 243215 AND `id` = 32820;
-- Pilgrim turkey behind the chapel, re-floor
UPDATE `creature` SET `position_x` = 1917.24, `position_y` = -189, `position_z` = 35.539 WHERE `guid` = 242484 AND `id` = 32820;
-- Pilgrim turkey on the Balnir grave rise, re-floor
UPDATE `creature` SET `position_x` = 2017.34, `position_y` = -514, `position_z` = 42.08 WHERE `guid` = 242603 AND `id` = 32820;
-- Pilgrim turkey buried in the Balnir grave rise, re-floor
UPDATE `creature` SET `position_x` = 2036.43, `position_y` = -502, `position_z` = 42.757 WHERE `guid` = 242635 AND `id` = 32820;
-- Pilgrim turkey behind the Balnir barn, re-floor
UPDATE `creature` SET `position_x` = 2050.19, `position_y` = -487, `position_z` = 41.495 WHERE `guid` = 242661 AND `id` = 32820;
-- Pilgrim turkey on the Balnir grave rise, re-floor
UPDATE `creature` SET `position_x` = 2051.93, `position_y` = -507, `position_z` = 43.843 WHERE `guid` = 242664 AND `id` = 32820;
-- Pilgrim turkey on the ridge above Balnir, re-floor
UPDATE `creature` SET `position_x` = 2074.73, `position_y` = -519, `position_z` = 54.526 WHERE `guid` = 242704 AND `id` = 32820;
-- Pilgrim turkey at Agamand Mills, re-floor
UPDATE `creature` SET `position_x` = 2680.93, `position_y` = 812.035, `position_z` = 108.752 WHERE `guid` = 243405 AND `id` = 32820;
