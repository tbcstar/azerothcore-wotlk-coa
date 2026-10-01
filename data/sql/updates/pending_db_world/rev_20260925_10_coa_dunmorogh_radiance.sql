-- CoA Coldridge Valley storyline: Groldha's search for her son through the Crash Site, the hidden path,
-- Runestone Forest and Radiance Town (quests 1660006-1660011 and 1660039), and the Radiant One Disguise.
-- Creature guids 9008000-9008399, gameobject guids 7914000-7914099, gossip menus 932200-932229.

-- ---------------------------------------------------------------------------
-- 1. Creatures
-- ---------------------------------------------------------------------------
-- Stand-in displays where the CoA model is missing from the client. Never spawned: the kill-credit
-- markers 161721, 161722, 161902 and the disguise looks 161778-161781.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `RegenHealth`, `flags_extra`, `KillCredit1`, `ScriptName`)
VALUES
(161718, '格罗尔达', NULL, 0, 8, 8, 0, 35, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 0.96, 1, 1, 1, 1, 0, 0, ''),
(161719, '死亡船员', NULL, 0, 9, 9, 0, 35, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 0.98, 1, 1, 1, 1, 0, 0, ''),
(161720, '阿拉斯罗尔', '安威玛尔山民', 932200, 20, 20, 0, 35, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 161722, ''),
(161820, '雷德娜', '光辉镇流放者', 932201, 8, 8, 0, 35, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 0.96, 1, 1, 1, 1, 0, 0, ''),
(161839, '拉胡德', NULL, 0, 3, 3, 0, 1374, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 256, 2048, 7, 0, 0, '', 0, 0.93, 1, 1, 1, 1, 2, 0, ''),
(161772, '光辉狂信徒', NULL, 0, 3, 3, 0, 1374, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 161772, '', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161773, '光辉守卫', NULL, 0, 5, 6, 0, 1374, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161786, '光辉信徒', NULL, 0, 3, 3, 0, 1374, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161775, '光辉陛下', NULL, 0, 7, 7, 0, 14, 0, 1, 1.14286, 20, 1, 2000, 2000, 1, 0, 2048, 7, 0, 0, 'SmartAI', 0, 2.4, 1, 1, 1, 1, 0, 0, ''),
(161835, '陛下之右手', NULL, 0, 4, 4, 0, 14, 0, 1, 1.14286, 20, 1, 2000, 2000, 1, 0, 2048, 9, 0, 0, 'SmartAI', 0, 2.79, 1, 1, 1, 1, 0, 0, ''),
(161776, '光辉软泥', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 4, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161721, '[KC] 已踏足隐藏路径', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(161722, '[KC] 请阿拉斯罗尔帮你穿上伪装', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(161902, '[KC] 光辉信徒已被浇灭', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, '', 0, 1, 1, 1, 1, 1, 130, 0, ''),
(161778, '光辉者', NULL, 0, 1, 1, 0, 1374, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161779, '光辉者', NULL, 0, 1, 1, 0, 1374, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161780, '光辉者', NULL, 0, 1, 1, 0, 1374, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161781, '光辉者', NULL, 0, 1, 1, 0, 1374, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `DamageModifier` = VALUES(`DamageModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `KillCredit1` = VALUES(`KillCredit1`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (161718, 161719, 161720, 161721, 161722, 161772, 161773, 161775, 161776, 161778, 161779, 161780, 161781, 161786, 161820, 161835, 161839, 161902);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(161718, 0, 1651, 1, 1),
(161719, 0, 7109, 1, 1),
(161720, 0, 1779, 1, 1),
(161820, 0, 3766, 1, 1),
(161839, 0, 141114, 1, 1),
(161772, 0, 3785, 1, 1),
(161772, 1, 3786, 1, 1),
(161772, 2, 6932, 1, 1),
(161772, 3, 6976, 1, 1),
(161773, 0, 1598, 1, 1),
(161773, 1, 1608, 1, 1),
(161773, 2, 6981, 1, 1),
(161773, 3, 6982, 1, 1),
(161786, 0, 3765, 1, 1),
(161786, 1, 3766, 1, 1),
(161786, 2, 6921, 1, 1),
(161786, 3, 6975, 1, 1),
(161775, 0, 6936, 1.25, 1),
(161835, 0, 6915, 1, 1),
(161776, 0, 33054, 1, 1),
(161721, 0, 11686, 1, 1),
(161722, 0, 11686, 1, 1),
(161902, 0, 11686, 1, 1),
(161778, 0, 3765, 1, 1),
(161779, 0, 3766, 1, 1),
(161780, 0, 6975, 1, 1),
(161781, 0, 6921, 1, 1);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (161718, 161719, 161720, 161721, 161722, 161772, 161773, 161775, 161776, 161778, 161779, 161780, 161781, 161786, 161820, 161835, 161839, 161902);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(161720, 1, 2023, 0, 2552);

-- The Dead Crewman lies dead (stand state 7) and still gives his quest.
DELETE FROM `creature_template_addon` WHERE `entry` = 161719;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`)
VALUES
(161719, 0, 0, 7, 0, 0, 0, NULL);

-- CoA displays 141114 (Lahud) and 33054 (Radiant Slime) lack model info; values of stock displays of the
-- same models.
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (33054, 141114);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
VALUES
(141114, 0.3519, 1.725, 0, 0),
(33054, 0.599, 1.25, 2, 0);

-- The cache lists each quest item in the creature query (questItem1).
DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (161772, 161776);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(161772, 0, 559142),
(161776, 0, 559162);

-- ---------------------------------------------------------------------------
-- 2. Dialogue
-- ---------------------------------------------------------------------------
-- Cached npc_text greetings; option texts INFERRED. Each of Arathror's three greetings is gated.
DELETE FROM `npc_text` WHERE `ID` IN (62611, 62615, 62618, 62701, 62708, 62709);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`)
VALUES
(62611, '伪装所需的一切我们都齐了。你那边准备好了吗？', '伪装所需的一切我们都齐了。你那边准备好了吗？', 0, 0, 1),
(62615, '一切都已就位。等你准备好，我会亲自为你打理伪装。', '一切都已就位。等你准备好，我会亲自为你打理伪装。', 0, 0, 1),
(62618, '<山民的注意力沿着步枪的瞄准线延伸，毫不动摇。那副严肃的僵硬面具，加上他动作中经过斟酌的冷静，标志着他是一名真正专业的行家。>', '<山民的注意力沿着步枪的瞄准线延伸，毫不动摇。那副严肃的僵硬面具，加上他动作中经过斟酌的冷静，标志着他是一名真正专业的行家。>', 0, 0, 1),
(62701, '<这个矮人呼吸得如此沉重，从她嘴里呼出的水汽几乎把她整个人都遮住了。凑近一看，皮肤上满是脓疱和绿色斑块，稀疏的头发上尽是秃斑和红肿溃烂的条纹。>$b$b怎么？在这上头丢了什么东西？', '<这个矮人呼吸得如此沉重，从她嘴里呼出的水汽几乎把她整个人都遮住了。凑近一看，皮肤上满是脓疱和绿色斑块，稀疏的头发上尽是秃斑和红肿溃烂的条纹。>$b$b怎么？在这上头丢了什么东西？', 0, 0, 1),
(62708, '和别处一样的故事。毫无新意。$b$b某个巧舌如簧的狂热分子聚集了一群容易上当的人，卖给他们一个疯狂到必定是真的理念。当然，每个谎言里总有一点真相。而那辐射……我不知道它是怎么运作的。我还在努力弄明白。但不知为何，莫名其妙地，它带来了变化；身体上的变化，变异。它确实把一些人逼疯了，但另一些人……它给了他们一种狂热的清明。他们会称之为才华。', '和别处一样的故事。毫无新意。$b$b某个巧舌如簧的狂热分子聚集了一群容易上当的人，卖给他们一个疯狂到必定是真的理念。当然，每个谎言里总有一点真相。而那辐射……我不知道它是怎么运作的。我还在努力弄明白。但不知为何，莫名其妙地，它带来了变化；身体上的变化，变异。它确实把一些人逼疯了，但另一些人……它给了他们一种狂热的清明。他们会称之为才华。', 0, 0, 1),
(62709, '<雷德娜移开目光，拳头攥紧。>$b$b我带着儿子来到光辉镇。他还只是个孩子。$b$b<她的声音颤抖着，几近破碎。>$b$b但长久居住在光辉镇的不只是邪教徒。日复一日，光辉软泥的数量不断增长。它们很少表现出敌意，但其中一只……把他整个吞了下去。我的儿子溺死在它胶质的肚腹里。$b$b我哭泣<就像她现在哭泣一样，一串泪水从她绿色镜片的护目镜后渗出>。我尖叫<就像她现在尖叫一样，嗓音撕裂而沙哑>。我跺着脚要求公道。我想找个人来怪罪。但在光辉镇没人追究罪责。更不用说，他们绝不会怪罪他们的领袖。$b$b于是他们把我赶了出来。$b$b', '<雷德娜移开目光，拳头攥紧。>$b$b我带着儿子来到光辉镇。他还只是个孩子。$b$b<她的声音颤抖着，几近破碎。>$b$b但长久居住在光辉镇的不只是邪教徒。日复一日，光辉软泥的数量不断增长。它们很少表现出敌意，但其中一只……把他整个吞了下去。我的儿子溺死在它胶质的肚腹里。$b$b我哭泣<就像她现在哭泣一样，一串泪水从她绿色镜片的护目镜后渗出>。我尖叫<就像她现在尖叫一样，嗓音撕裂而沙哑>。我跺着脚要求公道。我想找个人来怪罪。但在光辉镇没人追究罪责。更不用说，他们绝不会怪罪他们的领袖。$b$b于是他们把我赶了出来。$b$b', 0, 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (932200, 932201, 932202, 932203);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932200, 62611),
(932200, 62615),
(932200, 62618),
(932201, 62701),
(932202, 62708),
(932203, 62709);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (932200, 932201, 932202, 932203);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(932200, 0, 0, '我准备好了。帮我穿上伪装。', 0, 1, 1, 0, 0, 0, 0, '', 0),
(932201, 0, 0, '光辉镇发生了什么事？', 0, 1, 1, 932202, 0, 0, 0, '', 0),
(932201, 1, 0, '你为什么离开镇上？', 0, 1, 1, 932203, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` IN (932200, 932201, 932202, 932203) AND `SourceTypeOrReferenceId` IN (14, 15);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(14, 932200, 62618, 0, 0, 8, 0, 1660008, 0, 0, 1, 0, 0, '', 'Arathror greeting 62618 until A Fitting Disguise is rewarded'),
(14, 932200, 62611, 0, 0, 8, 0, 1660008, 0, 0, 0, 0, 0, '', 'Arathror greeting 62611 once A Fitting Disguise is rewarded'),
(14, 932200, 62615, 0, 0, 9, 0, 1660009, 0, 0, 0, 0, 0, '', 'Arathror greeting 62615 while His Radiant Majesty is taken'),
(15, 932200, 0, 0, 0, 8, 0, 1660008, 0, 0, 0, 0, 0, '', 'Disguise option: A Fitting Disguise rewarded'),
(15, 932200, 0, 0, 0, 1, 0, 256703, 0, 0, 1, 0, 0, '', 'Disguise option: not already wearing 256703'),
(15, 932200, 0, 0, 0, 1, 0, 256704, 0, 0, 1, 0, 0, '', 'Disguise option: not already wearing 256704'),
(15, 932200, 0, 0, 0, 1, 0, 256705, 0, 0, 1, 0, 0, '', 'Disguise option: not already wearing 256705'),
(15, 932200, 0, 0, 0, 1, 0, 256706, 0, 0, 1, 0, 0, '', 'Disguise option: not already wearing 256706'),
(15, 932200, 0, 0, 1, 9, 0, 1660009, 0, 0, 0, 0, 0, '', 'Disguise option: or His Radiant Majesty taken (its credit)');

-- ---------------------------------------------------------------------------
-- 3. World objects, pages and loot
-- ---------------------------------------------------------------------------
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `size`, `AIName`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`)
VALUES
(2300506, 6, 300360, '感应炸弹', '', 0.5, '', 0, 3, 2, 256480, 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300507, 10, 1010749, '装甲板', '调查中', 1, '', 93, 1660006, 0, 0, 0, 0, 0, 50014, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300508, 10, 1020313, '板条箱', '调查中', 1, '', 93, 1660006, 0, 0, 0, 0, 0, 50015, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300509, 10, 1024060, '水晶碎片', '调查中', 1, '', 93, 1660006, 0, 0, 0, 0, 0, 50016, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300510, 10, 7153, '旗帜', '调查中', 1, '', 93, 1660006, 0, 0, 0, 0, 0, 50017, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300525, 5, 7334, '婴儿', '', 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300539, 7, 138, '短木座椅', '', 1, '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `AIName` = VALUES(`AIName`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`);

-- The notes on the wreck pieces (pagetextcache).
DELETE FROM `page_text` WHERE `ID` IN (50014, 50015, 50016, 50017);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`)
VALUES
(50014, '<烧焦的装甲板，仍在冒烟。一张烧了一半的地精字条上写着：“向左转。我们会软着陆。”>', 0),
(50015, '<一个板条箱，里面的东西散落在地上。盖子上潦草地写着：“给那些教派疯子。切勿掉落。”>', 0),
(50016, '<曾装过某种液体的瓶子碎片。挂在一条带子上的字条写着：“致我们光荣的新犯罪伙伴！”>', 0),
(50017, '<一面作为礼物送给邪教徒的烧焦旗帜。只剩下两个词还能辨认：“利润”和“永恒”。>', 0);

-- Radiant Armor Piece from the fanatics: 75 % (INFERRED). The mutagen comes from the Extractor.
DELETE FROM `creature_loot_template` WHERE `Entry` = 161772;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(161772, 559142, 0, 75, 1, 1, 0, 1, 1, 'Radiant Fanatic - Radiant Armor Piece');

-- ---------------------------------------------------------------------------
-- 4. Quests
-- ---------------------------------------------------------------------------
-- Chain 1660006 -> 1660007 -> 1660008 -> {1660009, 1660039, 1660010}; 1660011 stands alone.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(1660006, 2, 6, 3, 132, 0, 0, 0, 0, 0, 0, 1660007, 4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5571, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风中浓烟', '沿着格罗尔达之子格雷尔宾的足迹，调查浓烟的来源。', '啊，一个旅人！看一眼你的衣着，我就知道你来自远方。$b$b靠近些，你看。我这个刚出生的孩子患了一种没有治疗师能治愈的病。他剩下的时间不多了。但他的哥哥拒绝接受这一点。$b$b在路上某处，他听说有一个“集会”声称能治愈一切疾病。格雷尔宾像溺水者抓住浮木一样紧紧抓住那份希望，出发去寻找他们了。$b$b那是两周前的事了。他还没有回来，更糟的是，风现在从我最后一次看到他离去的方向吹来丑陋的黑烟。我担心最坏的情况。$b$b求你了……沿着他的足迹，把他带回我身边。众神已经判定我必须放弃一个儿子。我不能两个都失去。', '', '检查死亡船员的尸体。', -2300507, -2300508, -2300509, -2300510, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '已检查装甲板', '已检查板条箱', '已检查水晶碎片', '已检查旗帜'),
(1660007, 2, -1, 3, 132, 0, 0, 0, 0, 0, 0, 1660008, 4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '一条有希望的路', '沿着山间小路，揭开那个神秘团体的所在地。', '<在搜刮尸体之前，你推断这个地精不会在意他口袋里的文件。>$b$b<翻阅这些文件，你拼凑出这个地精是一支被派往寒脊山脉寻找一群神秘苦修者的队伍的一员；正是格罗尔达的儿子格雷尔宾去寻找的那群人。>$b$b<在文件中，你找到一张地图，标出了通往那些苦修者隐秘领地的一条上山小路。>', '', '与山民交谈。', 161721, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '已踏足隐藏路径', '', '', ''),
(1660008, 2, -1, 3, 132, 0, 0, 0, 0, 0, 0, 1660009, 6, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '一件合身的伪装', '杀死光辉狂信徒并收集他们的盔甲部件。把它们交给阿拉斯罗尔，让他制作一件伪装。', '前面就是光辉镇的大门，那个教派乌合之众的老鼠窝。他们自称“光辉者”。我已经监视他们一个月了。$b$b他们相信浸泡在摧毁了诺莫瑞根的同一种辐射中会赐予他们某种启示，或者圣光才知道的什么东西。$b$b他们很危险；既是异端也是叛徒。他们的领袖自封为王，你信吗。而我有命令要将他处决。$b$b既然你来了……我有个主意。$b$b沿着路走，侦察前方的森林，砍倒几个那些狂热分子。给我带回来一些他们盔甲的部件。我有个主意……你会看到的！', '', '回到阿拉斯罗尔那里。', 0, 0, 0, 0, 0, 0, 0, 0, 559142, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, '', '', '', ''),
(1660009, 2, 6, 3, 132, 0, 2, 0, 0, 0, 0, 0, 7, 35, 0, 0, 0, 0, 0, 0, 8, 0, 559182, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '光辉陛下', '告诉阿拉斯罗尔你准备好穿上伪装。然后潜入光辉镇，杀死教派领袖——光辉陛下。', '我和光辉者有过太多次冲突；他们一眼就能认出我。但你……你是新面孔。一张陌生的脸。$b$b是啊，我想这件伪装能过关。等你准备好就告诉我，我会帮你穿上它。不，不是那样，别犯傻。$b$b一旦你伪装好，就低下头。穿过村庄到远侧，不要引起注意，找到他们所谓的国王。大多数教派没了强有力的领袖就会瓦解。$b$b如果这是其中之一，你也许正好来得及救下格罗尔达的儿子，不让他失去理智。', '', '回到安威玛尔，告诉格罗尔达你关于她儿子和那个教派的发现。', 161722, 161775, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '请阿拉斯罗尔帮你穿上伪装', '光辉陛下已击杀', '', ''),
(1660039, 2, -1, 3, 132, 0, 2, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 559176, 1, 559177, 1, 559178, 1, 559185, 1, 559186, 1, 559181, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '斩断右手', '在光辉镇击败陛下之右手。', '你遇到过那个流放者雷德娜吗？$b她把营地扎在我们正上方的山丘上。$b$b上次我和她说话时，她说了一句我一直无法释怀的话：$b“唯一会比说谎者更拼命捍卫谎言的人，就是相信了它的傻瓜。”$b$b那个被称为“陛下之右手”的人就是活生生的证据。他不是普通的追随者；雷德娜发誓说他比他的主人更残忍、更专制、更狂热。$b$b如果你有那份胆量，在穿过光辉镇时把他砍倒。然后去向雷德娜报告。她和他之间有……未了结的事。', '', '回到雷德娜那里。', 161835, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(1660010, 2, 6, 3, 132, 0, 0, 0, 0, 0, 0, 0, 5, 25, 0, 0, 0, 0, 0, 559161, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '解读辐射', '杀死光辉镇的辐射软泥，并对它们的尸体使用污染提取器来采集诱变剂。', '如果你能潜入光辉镇……有件事我需要你帮忙。$b$b我一直在试图理解辐射是如何运作的，寻找一种对抗其影响的方法。为此……我造了这个：$b$b<雷德娜向你展示了一个只有模糊地像步枪的装置。>$b$b杀几只辐射软泥，然后对这个美人扣下扳机。它会从软泥中抽取精华，运气好的话，能让我分离出诱变剂。', '', '把采集到的诱变剂带给雷德娜。', 0, 0, 0, 0, 0, 0, 0, 0, 559162, 559161, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, '', '', '', ''),
(1660011, 2, 6, 3, 132, 0, 0, 0, 0, 0, 0, 0, 4, 15, 0, 0, 0, 0, 0, 559163, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '浇灌群众', '使用辐射喷洒器给光辉镇的镇民喷洒辐射。', '新来的？$b$b原谅我；也许我以前见过你，但我的记忆……它一闪一闪的，像一盏快坏掉的灯泡。$b$b朋友也好，陌生人也罢，我需要你帮忙。<拉胡德憋住一声内疚的小笑，显然很尴尬。>别以为我想推卸我的职责；我本来打算做的，真的！但后来我头晕了……$b$b<侏儒咽回一个嗝，猛地挺直身子，抽搐着，仿佛抓到了一根带电的电线。>$b$b你只需要在一些镇民身上喷一点祝福辐射。你知道的，他们每周的剂量。替我做这件事，我永远欠你人情！', '', '与拉胡德交谈。', 161902, 0, 0, 0, 5, 0, 0, 0, 559163, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '光辉信徒已被浇灭', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (1660006, 1660007, 1660008, 1660009, 1660010, 1660011, 1660039);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(1660006, 0, 0, 0, 0, 0),
(1660007, 0, 0, 1660006, 0, 0),
(1660008, 0, 0, 1660007, 0, 0),
(1660009, 0, 0, 1660008, 0, 0),
(1660039, 0, 0, 1660008, 0, 0),
(1660010, 0, 0, 1660008, 1, 0),
(1660011, 0, 0, 0, 1, 0);

-- Progress and completion texts from the AscensionES archive (pEN / cEN).
DELETE FROM `quest_offer_reward` WHERE `ID` IN (1660006, 1660007, 1660008, 1660009, 1660010, 1660011, 1660039);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(1660006, '<地精从火箭残骸中尽力爬出，直到力气耗尽，最后一口气从他被灼烧的喉咙中嘶哑地逸出。>$B$B<尽管坠毁把他的双腿砸成了血淋淋的肉泥，一卷文件仍然从他烧焦、破旧的裤子口袋里露出来。>'),
(1660007, '以我的胡子起誓……！我差点一枪打穿你。差点把我吓掉半条命。$B$B来，坐下吧。<矮人热情地朝一张凳子示意，那是这片冰封荒原上你唯一能找到的温暖。>$B$B你在找格罗尔达的儿子，是吗？可怜的女人。他是最新加入那群疯子行列的新兵。'),
(1660008, '嗯，这个行……$B$B虽然不太合你的身量，但总比穿在我身上合适。光我这鼻子就塞不进那么小的头盔里。'),
(1660009, '你回来了！我本想告诉你，但不知道去哪儿找你：你离开后不久，格雷尔宾就回来了。你简直不会相信……他带回了那个他听说过的“奇迹疗法”。$B$B我还不能说它改善了小家伙的健康，但这个险值得冒。$B$B可惜格雷尔宾现在不在；没有什么比把你介绍给他更让我骄傲的了。我那个儿子……强壮、勇敢，和他父亲一样固执。$B$B他回集会去了。说他在那些学者中间交到了好朋友。也许，如果他回来时你还在安威玛尔，你会亲自见到他……'),
(1660039, '<矮人仔细听着，几乎抑制不住一个没有牙齿的笑容。>$B$B你杀了那个混蛋？$B$B<她麻风斑驳的脸亮了起来。>$B$B你给了他应得的下场。作为回报，我会给你应得的：一份配得上你带给我的满足感的奖赏。'),
(1660010, '成功了。有意思。说实话，我并不完全确定它不会在你手里炸开。$B$B<雷德娜挠着头发稀疏斑驳的头皮，用的手指因辐射而指甲脱落。然后她调整了一下翠绿色的护目镜，那让她有种像变色龙般诡异的模样。>$B$B用我这里简陋的工具分析样本需要一些时间。但我会把这件事查个水落石出。等我查明了，我会拿上镐子，挖得更深。$B$B我会找到解药的。'),
(1660011, '<抽搐越来越严重了。侏儒几乎连一只眼睛都睁不开。>$B$B你做完了？太好了……$B$B<一串胆汁挂在他嘴边。你不在的时候他一直在呕吐。>$B$B自从我加入这帮人以来……病症只是越来越深。这完全说不通……对吧？');

DELETE FROM `quest_request_items` WHERE `ID` IN (1660006, 1660007, 1660008, 1660009, 1660010, 1660011, 1660039);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(1660006, '<这只地精毫无疑问已经彻底死了。>'),
(1660007, '你到底是谁？'),
(1660008, '暖和过来了吗？没有什么比一场痛快的打斗更能抵御山里的严寒了！'),
(1660009, '回安威玛尔了？却没带回我的儿子……我猜你没找到他。哦，我好苦命啊！'),
(1660039, '你杀了他吗？他还在喘气吗？一定要让他受尽折磨！'),
(1660010, '有了这些诱变剂样本，我离揭开辐射之谜又近了一步。'),
(1660011, '你……做完了……？');

DELETE FROM `creature_queststarter` WHERE `quest` IN (1660006, 1660007, 1660008, 1660009, 1660010, 1660011, 1660039);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(161718, 1660006),
(161719, 1660007),
(161720, 1660008),
(161720, 1660009),
(161820, 1660010),
(161839, 1660011),
(161720, 1660039);

DELETE FROM `creature_questender` WHERE `quest` IN (1660006, 1660007, 1660008, 1660009, 1660010, 1660011, 1660039);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(161719, 1660006),
(161720, 1660007),
(161720, 1660008),
(161718, 1660009),
(161820, 1660010),
(161839, 1660011),
(161820, 1660039);

-- ---------------------------------------------------------------------------
-- 5. The hidden path trigger
-- ---------------------------------------------------------------------------
-- AreaTrigger.dbc 6137 = SuperTrack 8662, the 1660007 objective at the top of the hidden path.
DELETE FROM `areatrigger` WHERE `entry` = 6137;
INSERT INTO `areatrigger` (`entry`, `map`, `x`, `y`, `z`, `radius`, `length`, `width`, `height`, `orientation`)
VALUES
(6137, 0, -6034.8, 698.825, 486.014, 0, 17, 5, 5, 0);

DELETE FROM `areatrigger_scripts` WHERE `entry` = 6137;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`)
VALUES
(6137, 'SmartTrigger');

-- ---------------------------------------------------------------------------
-- 6. The Radiant One Disguise
-- ---------------------------------------------------------------------------
-- Worn only in Runestone Forest and Radiance Town; leaving or death removes it (DESIGN).
DELETE FROM `spell_area` WHERE `spell` IN (256703, 256704, 256705, 256706);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_status`, `quest_end_status`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`)
VALUES
(256703, 10202, 0, 64, 11, 0, 0, 0, 2, 0),
(256703, 10203, 0, 64, 11, 0, 0, 0, 2, 0),
(256704, 10202, 0, 64, 11, 0, 0, 0, 2, 0),
(256704, 10203, 0, 64, 11, 0, 0, 0, 2, 0),
(256705, 10202, 0, 64, 11, 0, 0, 0, 2, 0),
(256705, 10203, 0, 64, 11, 0, 0, 0, 2, 0),
(256706, 10202, 0, 64, 11, 0, 0, 0, 2, 0),
(256706, 10203, 0, 64, 11, 0, 0, 0, 2, 0);

-- Arathror dresses the player: gnomes get the gnome look of their gender, others the dwarf look.
DELETE FROM `conditions` WHERE `SourceEntry` = 161720 AND `SourceTypeOrReferenceId` = 22 AND `SourceId` = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(22, 3, 161720, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, '', 'Arathror disguise row 2: men of every race but gnomes'),
(22, 3, 161720, 0, 0, 16, 0, 64, 0, 0, 1, 0, 0, '', 'Arathror disguise row 2: men of every race but gnomes'),
(22, 4, 161720, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, '', 'Arathror disguise row 3: women of every race but gnomes'),
(22, 4, 161720, 0, 0, 16, 0, 64, 0, 0, 1, 0, 0, '', 'Arathror disguise row 3: women of every race but gnomes'),
(22, 5, 161720, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, '', 'Arathror disguise row 4: gnome men'),
(22, 5, 161720, 0, 0, 16, 0, 64, 0, 0, 0, 0, 0, '', 'Arathror disguise row 4: gnome men'),
(22, 6, 161720, 0, 0, 20, 0, 1, 0, 0, 0, 0, 0, '', 'Arathror disguise row 5: gnome women'),
(22, 6, 161720, 0, 0, 16, 0, 64, 0, 0, 0, 0, 0, '', 'Arathror disguise row 5: gnome women');

-- ---------------------------------------------------------------------------
-- 7. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9008000, 9008001, 9008002, 9008003, 9008004, 9008005, 9008006, 9008010, 9008011, 9008012, 9008013, 9008014, 9008015, 9008016, 9008017, 9008020, 9008021, 9008022, 9008023, 9008024, 9008025, 9008026, 9008027, 9008028, 9008029, 9008030, 9008031, 9008032, 9008033, 9008034, 9008035, 9008036, 9008037, 9008038, 9008039, 9008040, 9008041, 9008042, 9008043, 9008060, 9008061, 9008062, 9008063, 9008064, 9008065, 9008066, 9008067, 9008068, 9008069, 9008070, 9008071, 9008072, 9008073, 9008074, 9008075, 9008076, 9008077, 9008078, 9008079, 9008100, 9008101, 9008102, 9008103, 9008104, 9008105, 9008106, 9008107, 9008108, 9008109, 9008110, 9008111, 9008112, 9008113, 9008114, 9008115, 9008116, 9008117, 9008118, 9008119, 9008120, 9008121, 9008122) OR `guid` BETWEEN 9008000 AND 9008399;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9008000, 161718, 0, 0, 0, 1, 1, 0, -6094.24, 405.02, 395.537, 4.02, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: SOURCED-CLIENT ST8665, the 1660006 start and 1660009 turn-in point in Anvilmar hall (Anvilmar.wmo floor 395.54), on Solm Hargrin''s retired post beside her baby; 5.2 yd from Freja Stormbelch; faces 4.02 into the hall, the way players come'),
(9008001, 161719, 0, 0, 0, 1, 1, 0, -6168.98, 771.89, 377.819, 3.94, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: SOURCED-CLIENT ST8661, the 1660006 turn-in point on the goblin Crash Site (area 10201) crater floor, 4 yd north of the rocket hull; lies dead, head toward the wreck he was thrown from'),
(9008002, 161720, 0, 0, 0, 1, 1, 1, -6010.67, 680.58, 484.997, 5.59, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: SOURCED-CLIENT ST8663, the turn-in point at Arathror''s post in Runestone Forest (area 10202) beside his gun tripod and seat; faces 5.59 north-east down the forest road toward the Radiance Town gate'),
(9008003, 161820, 0, 0, 0, 1, 1, 0, -5996.89, 752.26, 530.365, 4.52, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: SOURCED-CLIENT ST8697, the 1660010/1660039 turn-in point at her exile camp on the hill above Arathror (the ST z reads 530.41, the terrain 530.365); faces 4.52 down the hill path'),
(9008004, 161839, 0, 0, 0, 1, 1, 0, -5897.32, 498.61, 526.018, 2.05, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: SOURCED-CLIENT ST8698, the 1660011 turn-in point in Radiance Town (area 10203) by the Gnomehut table; faces 2.05 toward the devotees in the town below'),
(9008005, 161775, 0, 0, 0, 1, 1, 0, -5946.74, 440.96, 508.563, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: SOURCED-CLIENT ST8664, the 1660009 objective 2 point on the hall floor of the gear tower (Dwarven_Snowtower_Bronzebeard.wmo, 508.56) at the far end of town; faces 0.0 north toward the hall door'),
(9008006, 161835, 0, 0, 0, 1, 1, 0, -5930.44, 490.09, 508.128, 1.39, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: SOURCED-QUESTIE sighting of 161835 in the middle of Radiance Town on the path to the tower; faces 1.39 north-west toward the gate road'),
(9008010, 161773, 0, 0, 0, 1, 1, 0, -5905, 582, 496.186, 1.57, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Guard; Radiance Town (area 10203): inside the gate by the gnome pipe, facing the gate'),
(9008011, 161773, 0, 0, 0, 1, 1, 0, -5914, 583.5, 495.725, 1.57, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Guard; Radiance Town (area 10203): inside the gate on the other side of the road, facing the gate'),
(9008012, 161773, 0, 0, 0, 1, 1, 0, -5943.5, 445.5, 508.532, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Guard; the gear tower hall (Dwarven_Snowtower_Bronzebeard.wmo, 508.56): at the king''s left under the lantern, facing the hall door'),
(9008013, 161773, 0, 0, 0, 1, 1, 0, -5940, 437.5, 508.563, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Guard; the gear tower hall (Dwarven_Snowtower_Bronzebeard.wmo, 508.56): at the king''s right by the gnome machinery, facing the hall door'),
(9008014, 161773, 0, 0, 0, 1, 1, 0, -5951, 444.5, 508.554, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Guard; the gear tower hall (Dwarven_Snowtower_Bronzebeard.wmo, 508.56): behind the king at the back of the hall, facing the door, clear of the dm-radiance-king album sightline'),
(9008015, 161773, 0, 0, 0, 1, 1, 0, -5909, 540, 501.758, 1.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Guard; Radiance Town (area 10203): on the square by the hovel, facing the gate road'),
(9008016, 161773, 0, 0, 0, 1, 1, 0, -5938.95, 475.14, 508.601, 0.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Guard; Radiance Town (area 10203): at the tower approach by the oil drum and steam-tank gear, on a Questie devotee sighting'),
(9008017, 161773, 0, 0, 0, 1, 1, 0, -5919, 505, 504.937, 1.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Guard; Radiance Town (area 10203): mid-town at the Kezan smokestack, 18.8 yd from the Right Hand, facing the square'),
(9008020, 161772, 0, 0, 0, 1, 1, 0, -5939.45, 644.63, 487.486, 1.2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), Questie sighting on the road below the steel-plate barricade'),
(9008021, 161772, 0, 0, 0, 1, 1, 0, -5949.39, 654.77, 485.814, 0.9, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), Questie sighting where the road leaves the ridge from Arathror'),
(9008022, 161772, 0, 0, 0, 1, 1, 0, -5942.5, 662, 486.834, 0.3, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), by the snow mound and fallen branch, 13.1 yd from the Questie sighting (-5946.61, 674.4), which stands against a gun tripod'),
(9008023, 161772, 0, 0, 0, 1, 1, 0, -5933.06, 686.82, 486.015, 5.8, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), Questie sighting west of the tent camp'),
(9008024, 161772, 0, 0, 0, 1, 1, 0, -5926.5, 674, 487.115, 3.4, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), at the gun rack under the excavation pavilion of the tent camp, 8.2 yd from the Questie sighting (-5931.29, 667.31), which lies on the grain sacks'),
(9008025, 161772, 0, 0, 0, 1, 1, 0, -5915.88, 709.75, 486.192, 4.4, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), Questie sighting beside the snow-covered runestone'),
(9008026, 161772, 0, 0, 0, 1, 1, 0, -5891.5, 704, 483.565, 4.9, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), on the frozen shore beside the Anvilmar dock, 6.1 yd from the Questie sighting (-5896.93, 706.71), which is under the dock'),
(9008027, 161772, 0, 0, 0, 1, 1, 0, -5874.12, 703.79, 483.565, 3.3, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), Questie sighting on the shore by the powder kegs and the buried gyrocopter'),
(9008028, 161772, 0, 0, 0, 1, 1, 0, -5872.35, 711.78, 483.565, 3.9, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), Questie sighting by the frozen waterfall'),
(9008029, 161772, 0, 0, 0, 1, 1, 0, -5872.09, 663.64, 488.594, 2.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), Questie sighting at the gun tripod and gnome signpost, watching the road'),
(9008030, 161772, 0, 0, 0, 1, 1, 0, -5888.34, 671.74, 485.967, 1.9, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), Questie sighting among the tower rocks'),
(9008031, 161772, 0, 0, 0, 1, 1, 0, -5897, 657.5, 486.242, 2.2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), by the oil drum and maintenance light, 4.1 yd from the Questie sighting (-5899.21, 660.98), which stands against the light'),
(9008032, 161772, 0, 0, 0, 1, 1, 0, -5902.74, 620.57, 490.504, 1.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), Questie sighting at the rocket platform below the town gate, facing the gate'),
(9008033, 161772, 0, 0, 0, 1, 1, 0, -5926, 695, 486.248, 0.8, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), east side of the snow-covered runestone by the crate'),
(9008034, 161772, 0, 0, 0, 1, 1, 0, -5924, 655, 487.231, 1.4, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), on the road between the tent camp and the steel plates'),
(9008035, 161772, 0, 0, 0, 1, 1, 0, -5932.5, 681, 486.966, 5.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), at the powder kegs and barrels on the north side of the tent camp'),
(9008036, 161772, 0, 0, 0, 1, 1, 0, -5910, 640, 487.909, 1, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), open road between the tent camp and the gate ramp'),
(9008037, 161772, 0, 0, 0, 1, 1, 0, -5895, 648, 487.481, 1.7, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), east edge of the road below the rocky rise'),
(9008038, 161772, 0, 0, 0, 1, 1, 0, -5862, 690, 483.729, 3, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), north end of the forest on the frozen shore'),
(9008039, 161772, 0, 0, 0, 1, 1, 0, -5885, 718, 483.59, 3.6, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), shore below the frozen waterfall'),
(9008040, 161772, 0, 0, 0, 1, 1, 0, -5955, 668, 485.91, 0.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), head of the road where it climbs from Arathror''s camp, watching it'),
(9008041, 161772, 0, 0, 0, 1, 1, 0, -5906, 692, 485.689, 4, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), under the snow trees in the middle of the forest'),
(9008042, 161772, 0, 0, 0, 1, 1, 0, -5920, 622, 489.166, 1.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), at the foot of the gate ramp, facing the gate'),
(9008043, 161772, 0, 0, 0, 1, 1, 0, -5873, 685, 483.757, 3.2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Fanatic; Runestone Forest road (area 10202), open shore between the gun tripod and the powder kegs'),
(9008060, 161776, 0, 0, 0, 1, 1, 0, -5895.67, 569.13, 502.387, 2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): north end by the elevator car under the excavation pavilion'),
(9008061, 161776, 0, 0, 0, 1, 1, 0, -5892.64, 564.32, 503.432, 5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): beside the parked spider tank'),
(9008062, 161776, 0, 0, 0, 1, 1, 0, -5920.09, 573.31, 501.389, 1, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): by the robot arm of the two-storey house'),
(9008063, 161776, 0, 0, 0, 1, 1, 0, -5907.96, 556.47, 500.664, 3, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): open ground below the two-storey house'),
(9008064, 161776, 0, 0, 0, 1, 1, 0, -5911.84, 549.12, 502.005, 4.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): between the two-storey house and the hovel'),
(9008065, 161776, 0, 0, 0, 1, 1, 0, -5916.72, 544.68, 503.216, 2.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): by the barrels of the two-storey gnome hut'),
(9008066, 161776, 0, 0, 0, 1, 1, 0, -5920, 528.72, 502.463, 0.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): among the gnome pipes at the excavation barrier'),
(9008067, 161776, 0, 0, 0, 1, 1, 0, -5927.41, 521.5, 504.87, 3.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): at the excavation barrier by the hovel'),
(9008068, 161776, 0, 0, 0, 1, 1, 0, -5916.64, 500.73, 505.983, 1.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): by the gnome screw and the Kezan smokestack'),
(9008069, 161776, 0, 0, 0, 1, 1, 0, -5931.2, 501.23, 507.771, 5.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): under the robot arm by the hovel'),
(9008070, 161776, 0, 0, 0, 1, 1, 0, -5943.41, 504.53, 512.401, 2, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): on the slope below the fortress wall'),
(9008071, 161776, 0, 0, 0, 1, 1, 0, -5918.99, 467.54, 510.225, 4, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): in front of the gear tower'),
(9008072, 161776, 0, 0, 0, 1, 1, 0, -5920.5, 456, 510.479, 0.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): beside the Kezan smokestack before the tower, 6.4 yd from the Questie sighting (-5917.23, 461.46) on the steep bank'),
(9008073, 161776, 0, 0, 0, 1, 1, 0, -5949, 494, 516.808, 3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): below the landing pad by the fallen tree, 9.1 yd from the Questie sighting (-5953.77, 501.74) inside the hovel eaves; stays put on the 34-degree bank'),
(9008074, 161776, 0, 0, 0, 1, 1, 0, -5972.04, 457.78, 509.893, 1, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): west of the gear tower by the snow trees'),
(9008075, 161776, 0, 0, 0, 1, 1, 0, -5971.62, 465.76, 510.569, 4, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): west of the gear tower'),
(9008076, 161776, 0, 0, 0, 1, 1, 0, -5984.33, 460.57, 510.331, 2.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): by the rocks at the west end of the tower'),
(9008077, 161776, 0, 0, 0, 1, 1, 0, -5915.5, 440, 510.79, 5.5, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): east of the tower, 5.1 yd from the Questie sighting (-5918.57, 435.99) against the fallen tree'),
(9008078, 161776, 0, 0, 0, 1, 1, 0, -5921.27, 427.38, 506.832, 3, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): by the gnome tubes at the south-east corner of the tower'),
(9008079, 161776, 0, 0, 0, 1, 1, 0, -5906.62, 424.21, 510.009, 1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Slime; Radiance Town (area 10203): on the bank at the far south-east of town; stays put on the 37-degree bank'),
(9008100, 161786, 0, 0, 0, 1, 1, 0, -5889.5, 553, 504.692, 4, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): by the gnome tools, 2.9 yd from the Questie sighting (-5891.29, 555.33), which stands on a lunchbox'),
(9008101, 161786, 0, 0, 0, 1, 1, 0, -5913.69, 524.92, 502.122, 2, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): among the gnome pipes of the excavation'),
(9008102, 161786, 0, 0, 0, 1, 1, 0, -5913.5, 560.5, 500.346, 4.5, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): in front of the two-storey house by the barrels, 1.5 yd from the Questie sighting (-5914.95, 560.65) against its wall'),
(9008103, 161786, 0, 0, 0, 1, 1, 0, -5921.94, 565.59, 502.177, 1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the ground floor of the two-storey house (502.18)'),
(9008104, 161786, 0, 0, 0, 1, 1, 0, -5886, 566.5, 503.91, 3.1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): beside the parked spider tank below the excavation pavilion, 7.1 yd from the Questie sighting (-5886.75, 573.57) on the elevator car'),
(9008105, 161786, 0, 0, 0, 1, 1, 0, -5896.26, 550.76, 503.463, 2.5, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): open ground by the hovel'),
(9008106, 161786, 0, 0, 0, 1, 1, 0, -5877.15, 557.23, 507.989, 3.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the east hovel floor (507.99) by the barrel at its door'),
(9008107, 161786, 0, 0, 0, 1, 1, 0, -5874.62, 552.03, 507.989, 2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): inside the east hovel on its floor (507.99); the Questie sighting'),
(9008108, 161786, 0, 0, 0, 1, 1, 0, -5893.48, 544.05, 504.116, 1.5, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): beside the hovel under the snow trees'),
(9008109, 161786, 0, 0, 0, 1, 1, 0, -5900.22, 535.18, 504.093, 0.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the floor of the hovel by the excavation (504.09)'),
(9008110, 161786, 0, 0, 0, 1, 1, 0, -5885.73, 516.56, 522.59, 4.2, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the upper terrace by the iron stump'),
(9008111, 161786, 0, 0, 0, 1, 1, 0, -5882.62, 526.19, 520.502, 3, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the upper terrace by the oil tank'),
(9008112, 161786, 0, 0, 0, 1, 1, 0, -5930.53, 510.86, 505.355, 1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the floor of the middle hovel (505.36)'),
(9008113, 161786, 0, 0, 0, 1, 1, 0, -5933.98, 495.15, 509.602, 5, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): open ground by the robot arm, beside the Right Hand'),
(9008114, 161786, 0, 0, 0, 1, 1, 0, -5955.2, 486.54, 522.927, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the landing pad by the bucket and barrel'),
(9008115, 161786, 0, 0, 0, 1, 1, 0, -5955, 479, 536.493, 1.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the Landingpad01 deck (536.49) under the excavation pavilion, headroom 3.6; 0.9 yd north of the Questie x/y, clear of the bucket'),
(9008116, 161786, 0, 0, 0, 1, 1, 0, -5936.17, 472.6, 508.578, 5.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): at the tower approach by the steam-tank gear and the barrel'),
(9008117, 161786, 0, 0, 0, 1, 1, 0, -5909, 519, 509.977, 0.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the Fortress02_04 deck (509.98) at the excavation barrier, 1 yd south of the parked spider tank''s box, facing the tank'),
(9008118, 161786, 0, 0, 0, 1, 1, 0, -5927, 533, 510.139, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): in the north doorway of the two-storey gnome hut on its ground floor (510.14), facing out onto the deck; the Questie sighting (-5930.7, 527.58) outside its wall has the wall and a barrel within 0.9 yd'),
(9008119, 161786, 0, 0, 0, 1, 1, 0, -5936, 540, 510.139, 0.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): at the gnome table with the tools and whistle on the ground floor of the two-storey gnome hut (510.14), facing it'),
(9008120, 161786, 0, 0, 0, 1, 1, 0, -5932.5, 537, 510.139, 5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): inside the two-storey gnome hut on its ground floor (510.14)'),
(9008121, 161786, 0, 0, 0, 1, 1, 0, -5886.24, 497.43, 529.088, 3, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the bank below Lahud'),
(9008122, 161786, 0, 0, 0, 1, 1, 0, -5887.67, 479.32, 534.506, 1.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Radiance: Radiant Devotee; Radiance Town (area 10203): on the floor of Lahud''s hut (534.51) at its gnome table');

DELETE FROM `gameobject` WHERE `guid` IN (7914000, 7914001, 7914002, 7914003, 7914004, 7914005, 7914006) OR `guid` BETWEEN 7914000 AND 7914099;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7914000, 2300525, 0, 0, 0, 1, 1, -6093.37, 404.29, 395.537, 4.02, 0, 0, 0.905091, -0.425219, 60, 100, 1, '', 'CoA Radiance: SOURCED-ATLAS sighting beside Groldha in Anvilmar hall (Anvilmar.wmo floor 395.54)'),
(7914001, 2300507, 0, 0, 0, 1, 1, -6214.3, 720.65, 386.585, 1.2, 0, 0, 0.564642, 0.825336, 30, 100, 1, '', 'CoA Radiance: SOURCED-CLIENT ST8657 objective 1 point on the goblin Crash Site (area 10201) crater floor, west rim'),
(7914002, 2300508, 0, 0, 0, 1, 1, -6197.39, 735.64, 380.246, 2.6, 0, 0, 0.963558, 0.267499, 30, 100, 1, '', 'CoA Radiance: SOURCED-CLIENT ST8658 objective 2 point on the goblin Crash Site (area 10201) crater floor; the ST z floats 0.79, so it stands on the floor below'),
(7914003, 2300509, 0, 0, 0, 1, 1, -6175.24, 744.28, 377.641, 0.4, 0, 0, 0.198669, 0.980067, 30, 100, 1, '', 'CoA Radiance: SOURCED-CLIENT ST8659 objective 3 point on the goblin Crash Site (area 10201) crater floor beside the rocket'),
(7914004, 2300510, 0, 0, 0, 1, 1, -6160.98, 753.42, 378.197, 5.1, 0, 0, 0.557684, -0.830054, 30, 100, 1, '', 'CoA Radiance: SOURCED-CLIENT ST8660 objective 4 point on the goblin Crash Site (area 10201) crater floor, east side'),
(7914005, 2300506, 0, 0, 0, 1, 1, -6207.21, 739.52, 381.196, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Radiance: SOURCED-ATLAS sighting on the goblin Crash Site (area 10201) crater floor between the plating and the crate; the atlas z sinks 0.33, so it stands on the floor'),
(7914006, 2300539, 0, 0, 0, 1, 1, -6010.39, 678.37, 484.794, 3.14, 0, 0, 1, 0.000796, 60, 100, 1, '', 'CoA Radiance: SOURCED-ATLAS sighting at Arathror''s post in Runestone Forest (area 10202), on the WestfallChair doodad of the CoA map, turned 3.14 like that doodad');

-- ---------------------------------------------------------------------------
-- 8. Scripts
-- ---------------------------------------------------------------------------
-- The Contamination Extractor (256717) works only on a dead Radiant Slime.
DELETE FROM `conditions` WHERE `SourceEntry` = 256717 AND `SourceTypeOrReferenceId` = 17;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(17, 0, 256717, 0, 0, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Syphoning Mutagen: the target is dead'),
(17, 0, 256717, 0, 0, 31, 1, 3, 161776, 0, 0, 0, 0, '', 'Syphoning Mutagen: the target is a Radiant Slime');

-- "Call the cult" (DESIGN): the king and the Right Hand hand their attacker to nearby guards and
-- devotees, who take the king's faction until they evade. Areatrigger rows use source_type 2.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (161720, 161773, 161775, 161776, 161786, 161835) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(161720, 0, 0, 1, 62, 0, 100, 0, 932200, 0, 0, 0, 0, 0, 33, 161722, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Arathror - On Gossip Option 0 Selected - Quest Credit Ask Arathror to help you put on the disguise'),
(161720, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Arathror - Linked - Close Gossip'),
(161720, 0, 2, 0, 62, 0, 100, 0, 932200, 0, 0, 0, 0, 0, 134, 256703, 34, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Arathror - On Gossip Option 0 Selected - Invoker Casts Radiant One Disguise 256703'),
(161720, 0, 3, 0, 62, 0, 100, 0, 932200, 0, 0, 0, 0, 0, 134, 256704, 34, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Arathror - On Gossip Option 0 Selected - Invoker Casts Radiant One Disguise 256704'),
(161720, 0, 4, 0, 62, 0, 100, 0, 932200, 0, 0, 0, 0, 0, 134, 256705, 34, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Arathror - On Gossip Option 0 Selected - Invoker Casts Radiant One Disguise 256705'),
(161720, 0, 5, 0, 62, 0, 100, 0, 932200, 0, 0, 0, 0, 0, 134, 256706, 34, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Arathror - On Gossip Option 0 Selected - Invoker Casts Radiant One Disguise 256706'),
(161773, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Guard - On Data Set 1 1 - Take the king''s side'),
(161773, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Radiant Guard - Linked - Attack the king''s attacker'),
(161773, 0, 2, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Guard - On Evade - Restore the cult faction'),
(161773, 0, 3, 0, 1, 0, 100, 0, 5000, 5000, 5000, 5000, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Guard - Out of Combat every 5 s - Restore the cult faction'),
(161775, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'His Radiant Majesty - On Aggro - Store the attacker'),
(161775, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 9, 161773, 0, 40, 1, 0, 0, 0, 0, 'His Radiant Majesty - Linked - Send the attacker to the Radiant Guards within 40 yd'),
(161775, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 9, 161786, 0, 15, 1, 0, 0, 0, 0, 'His Radiant Majesty - Linked - Send the attacker to the Radiant Devotees within 15 yd'),
(161775, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 161773, 0, 40, 1, 0, 0, 0, 0, 'His Radiant Majesty - Linked - Call the Radiant Guards within 40 yd'),
(161775, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 161786, 0, 15, 1, 0, 0, 0, 0, 'His Radiant Majesty - Linked - Call the Radiant Devotees within 15 yd'),
(161776, 0, 0, 1, 8, 0, 100, 0, 256717, 0, 0, 0, 0, 0, 56, 559162, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Slime - On Spellhit Syphoning Mutagen - Add Radioactive Slime Mutagen to the invoker'),
(161776, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Slime - Linked - Despawn the drained corpse'),
(161786, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Devotee - On Data Set 1 1 - Take the king''s side'),
(161786, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Radiant Devotee - Linked - Attack the king''s attacker'),
(161786, 0, 2, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Devotee - On Evade - Restore the cult faction'),
(161786, 0, 3, 0, 1, 0, 100, 0, 5000, 5000, 5000, 5000, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Devotee - Out of Combat every 5 s - Restore the cult faction'),
(161786, 0, 4, 5, 8, 0, 100, 0, 256718, 0, 60000, 60000, 0, 0, 33, 161902, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Devotee - On Spellhit Dousing Radiation - Quest Credit Radiant Devotees doused'),
(161786, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 5, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Radiant Devotee - Linked - Cheer for the dose'),
(161835, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Right Hand of His Majesty - On Aggro - Store the attacker'),
(161835, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 9, 161773, 0, 40, 1, 0, 0, 0, 0, 'Right Hand of His Majesty - Linked - Send the attacker to the Radiant Guards within 40 yd'),
(161835, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 9, 161786, 0, 15, 1, 0, 0, 0, 0, 'Right Hand of His Majesty - Linked - Send the attacker to the Radiant Devotees within 15 yd'),
(161835, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 161773, 0, 40, 1, 0, 0, 0, 0, 'Right Hand of His Majesty - Linked - Call the Radiant Guards within 40 yd'),
(161835, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 161786, 0, 15, 1, 0, 0, 0, 0, 'Right Hand of His Majesty - Linked - Call the Radiant Devotees within 15 yd');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 6137 AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(6137, 2, 0, 0, 46, 0, 100, 0, 6137, 0, 0, 0, 0, 0, 33, 161721, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Areatrigger 6137 - On Trigger - Quest Credit Hidden path tread');
