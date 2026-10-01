-- CoA Deathknell: the Cain Family Estate chain (1660024-1660029, 1660042), CoA 363 and 6395, the east
-- slope re-floors, the Pilgrim's Bounty turkeys there and the recorded Deathknell props;
-- Kobold Desecrators in the Cain crypt (1660025 texts; points inferred).
-- Creature guids 9010000-9010349, gameobject guids 7916000-7916119, gossip menus 932400-932414.

-- ---------------------------------------------------------------------------
-- 1. Creatures
-- ---------------------------------------------------------------------------
-- Stand-in displays where the CoA model is missing from the client.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `family`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `RegenHealth`, `flags_extra`, `KillCredit1`, `ScriptName`)
VALUES
(161739, '安东', '遗产联盟代表', 0, 7, 7, 0, 68, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 0.96, 1, 1, 1, 1, 0, 0, ''),
(161740, '里斯塞尔·该隐', '遗产联盟', 0, 13, 13, 0, 68, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161741, '埃克桑格', '死亡潜行者', 0, 20, 20, 0, 68, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161742, '死亡守卫埃里克', NULL, 0, 15, 15, 0, 68, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161746, '卡利斯', '遗产联盟', 0, 12, 12, 0, 68, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161747, '斯里斯', '遗产联盟', 932402, 14, 14, 0, 68, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161748, '塞勒维斯', '遗产联盟', 932400, 12, 12, 0, 68, 1, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 0.98, 1, 1, 1, 1, 0, 0, ''),
(161743, '坏死熊', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 4, 1, 1, 0, '', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161749, '僵尸', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, '', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161752, '食尸鬼', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, '', 0, 0.93, 1, 1, 1, 1, 0, 0, ''),
(161753, '无脑总管', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 161753, '', 0, 2, 1, 1, 1, 1, 0, 0, ''),
(161754, '无脑女仆', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 161754, '', 0, 2, 1, 1, 1, 1, 0, 0, ''),
(161755, '无脑兽栏管理员', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 161755, '', 0, 2, 1, 1, 1, 1, 0, 0, ''),
(161757, '畸变子嗣', NULL, 0, 7, 7, 0, 7, 0, 1, 1.14286, 20, 1, 2000, 2000, 1, 0, 2048, 0, 3, 0, 0, '', 0, 5.76, 1, 1, 1, 1, 0, 0, ''),
(161762, '母亲', NULL, 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161763, '父亲', NULL, 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161764, '表亲萨勒姆', NULL, 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161765, '阿贝尔叔叔', NULL, 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, ''),
(161836, '该隐家族猎犬', NULL, 0, 4, 4, 0, 7, 0, 1, 1.14286, 20, 1, 2000, 2000, 1, 0, 2048, 0, 1, 0, 0, '', 0, 2.79, 1, 1, 1, 1, 0, 0, ''),
(161751, '狗头人亵渎者', NULL, 0, 3, 3, 0, 26, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 0.93, 1, 1, 1, 1, 0, 0, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `family` = VALUES(`family`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `DamageModifier` = VALUES(`DamageModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `KillCredit1` = VALUES(`KillCredit1`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (161739, 161740, 161741, 161742, 161743, 161746, 161747, 161748, 161749, 161751, 161752, 161753, 161754, 161755, 161757, 161762, 161763, 161764, 161765, 161836);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(161739, 0, 14756, 1, 1),
(161740, 0, 15113, 1, 1),
(161741, 0, 2863, 1, 1),
(161742, 0, 2855, 1, 1),
(161746, 0, 12290, 1, 1),
(161747, 0, 27289, 1, 1),
(161748, 0, 22537, 1, 1),
(161743, 0, 1082, 1, 1),
(161749, 0, 10979, 1, 1),
(161752, 0, 519, 1, 1),
(161753, 0, 828, 1, 1),
(161754, 0, 1200, 1, 1),
(161755, 0, 1196, 1, 1),
(161757, 0, 76125, 1, 1),
(161762, 0, 11835, 1, 1),
(161763, 0, 3222, 1, 1),
(161764, 0, 10483, 1, 1),
(161765, 0, 10478, 1, 1),
(161836, 0, 9021, 1, 1),
(161751, 0, 2299, 1, 1);

-- The Aberrant Progeny display lacks model info.
DELETE FROM `creature_model_info` WHERE `DisplayID` = 76125;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
VALUES
(76125, 1, 1.5, 2, 0);

-- ---------------------------------------------------------------------------
-- 2. Dialogue
-- ---------------------------------------------------------------------------
DELETE FROM `npc_text` WHERE `ID` IN (62702, 62710, 85169, 85170);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`)
VALUES
(62702, '<仔细端详这位被遗忘者，你意识到唯一阻止她两颗眼球坠落地面的，是她那副深色镜片的眼镜。眼球平贴在镜片上，由视神经松松地悬吊着，让她看起来有种睁着又大又警觉的眼睛的诡异模样。>$b$b你好！', '<仔细端详这位被遗忘者，你意识到唯一阻止她两颗眼球坠落地面的，是她那副深色镜片的眼镜。眼球平贴在镜片上，由视神经松松地悬吊着，让她看起来有种睁着又大又警觉的眼睛的诡异模样。>$b$b你好！', 0, 0, 1),
(62710, '<被遗忘者热情地点点头，带动眼镜（以及镜片后悬吊的眼睛）上下晃动。>$b$b哎呀，我可是它资历最老的成员之一！$b$b我还活着的时候，曾在洛丹伦首都担任皇家历史学家。我最后的著作，一部泰瑞纳斯国王的传记，是有史以来任何君主最杰出的编年史。当然，不全都是我的功劳；命运本身给了我完美的结局：王储，亲手处决自己父亲的刽子手。一个几乎自己写成的故事！$b$b啊，请原谅，我扯远了。正如我所说，我很久以前就加入了遗产联盟。我几乎参加了每一次深入低语森林及更远地区的远征。你无法相信我们修复了多少庄园、宅邸和宫殿。而且还有那么多事要做……$b$b如果你的路有一天带你进入低语森林，去峭岩镇找我的同事塞尔多恩。他会欢迎多一双手的。$b$b', '<被遗忘者热情地点点头，带动眼镜（以及镜片后悬吊的眼睛）上下晃动。>$b$b哎呀，我可是它资历最老的成员之一！$b$b我还活着的时候，曾在洛丹伦首都担任皇家历史学家。我最后的著作，一部泰瑞纳斯国王的传记，是有史以来任何君主最杰出的编年史。当然，不全都是我的功劳；命运本身给了我完美的结局：王储，亲手处决自己父亲的刽子手。一个几乎自己写成的故事！$b$b啊，请原谅，我扯远了。正如我所说，我很久以前就加入了遗产联盟。我几乎参加了每一次深入低语森林及更远地区的远征。你无法相信我们修复了多少庄园、宅邸和宫殿。而且还有那么多事要做……$b$b如果你的路有一天带你进入低语森林，去峭岩镇找我的同事塞尔多恩。他会欢迎多一双手的。$b$b', 0, 0, 1),
(85169, '<被遗忘者的眼睛是两颗小弹珠。她每转动一次头，它们就在骨瘦如柴的眼窝里滚动，由视神经系着，还有一根不断把她们按回原位的食指。>$b$b<她的注意力落在桌上摊开的账本上。>', '<被遗忘者的眼睛是两颗小弹珠。她每转动一次头，它们就在骨瘦如柴的眼窝里滚动，由视神经系着，还有一根不断把她们按回原位的食指。>$b$b<她的注意力落在桌上摊开的账本上。>', 0, 0, 1),
(85170, '<被遗忘者以掘墓人不慌不忙的谨慎把目光从书上移开。>$b$b我管理这些遗产。尽管洛丹伦已成废墟，我们还是抢救出许多东西：珠宝、家具、陶瓷、挂毯、地毯、鞋子、衣裙……那些生前拥有它们的人，期望死后能收回它们。$b$b当然没那么简单，对贵族尤其如此。他们跑来要求废除生前写下的遗嘱——如今死后，那些遗嘱让他们任由家人摆布。而我们并不总能找到他们的家人；不是每个死去的人都被天灾复活，也不是每个变成亡灵的人都恢复了自由意志……', '<被遗忘者以掘墓人不慌不忙的谨慎把目光从书上移开。>$b$b我管理这些遗产。尽管洛丹伦已成废墟，我们还是抢救出许多东西：珠宝、家具、陶瓷、挂毯、地毯、鞋子、衣裙……那些生前拥有它们的人，期望死后能收回它们。$b$b当然没那么简单，对贵族尤其如此。他们跑来要求废除生前写下的遗嘱——如今死后，那些遗嘱让他们任由家人摆布。而我们并不总能找到他们的家人；不是每个死去的人都被天灾复活，也不是每个变成亡灵的人都恢复了自由意志……', 0, 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (932400, 932401, 932402, 932403);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932400, 62702),
(932401, 62710),
(932402, 85169),
(932403, 85170);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (932400, 932401, 932402, 932403);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(932400, 0, 0, '什么是遗产联盟？', 0, 1, 1, 932401, 0, 0, 0, '', 0),
(932402, 0, 0, '你在这里做什么？', 0, 1, 1, 932403, 0, 0, 0, '', 0);

-- ---------------------------------------------------------------------------
-- 3. World objects and loot
-- ---------------------------------------------------------------------------
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `AIName`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`)
VALUES
(2300524, 0, 300448, '地下城大门', '', '', 1, '', 0, 1903, 5000, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300528, 3, 69772, '华而不实的画作', '', '', 1, '', 1689, 2300528, 0, 0, 0, 0, 0, 0, 1660028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300529, 3, 7075, '微光珠宝', '', '', 1, '', 1689, 2300529, 0, 0, 0, 0, 0, 0, 1660028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300530, 3, 621, '水晶球', '', '', 1, '', 1689, 2300530, 0, 0, 0, 0, 0, 0, 1660028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300531, 3, 1011043, '家族印章', '', '', 1, '', 1689, 2300531, 0, 0, 0, 0, 0, 0, 1660028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300540, 10, 84863, '里斯塞尔亲属的遗骸', '', '', 1, 'SmartGameObjectAI', 0, 1660025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300541, 10, 84864, '里斯塞尔亲属的遗骸', '', '', 1, 'SmartGameObjectAI', 0, 1660025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300542, 10, 84865, '里斯塞尔亲属的遗骸', '', '', 1, 'SmartGameObjectAI', 0, 1660025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2300543, 10, 84863, '里斯塞尔亲属的遗骸', '', '', 1, 'SmartGameObjectAI', 0, 1660025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(600632, 5, 8618, '旗帜道具', '', '', 1.42242, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(600633, 5, 8364, '瘟疫蓄水池道具', '', '', 0.327267, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(600636, 5, 63383, '大锅道具', '', '', 1.42242, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 5, 166, '普通铁砧', '', '', 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(520048, 5, 515675, '坚固箭矢道具', '', '拾取中', 0.1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(523523, 5, 406, '古老雕像', '', '', 8, '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9303400, 10, 6479, '旧挖掘铲', '', '', 1, 'SmartGameObjectAI', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `AIName` = VALUES(`AIName`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`);

-- The cellar door is locked like stock key doors; the quest objects are usable only while needed.
DELETE FROM `gameobject_template_addon` WHERE `entry` IN (2300524, 2300528, 2300529, 2300530, 2300531, 2300540, 2300541, 2300542, 2300543);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`)
VALUES
(2300524, 0, 2),
(2300528, 0, 4),
(2300529, 0, 4),
(2300530, 0, 4),
(2300531, 0, 4),
(2300540, 0, 4),
(2300541, 0, 4),
(2300542, 0, 4),
(2300543, 0, 4);

DELETE FROM `creature_loot_template` WHERE `Entry` IN (161753, 161754, 161755);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(161753, 559138, 0, 100, 1, 1, 0, 1, 1, 'Brainless Majordomo - key fragment'),
(161754, 559139, 0, 100, 1, 1, 0, 1, 1, 'Brainless Maid - key fragment'),
(161755, 559140, 0, 100, 1, 1, 0, 1, 1, 'Brainless Stablemaster - key fragment');

DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (161753, 161754, 161755);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(161753, 0, 559138),
(161754, 0, 559139),
(161755, 0, 559140);

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (2300528, 2300529, 2300530, 2300531);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(2300528, 559164, 0, 100, 1, 1, 0, 1, 1, 'Gaudy Painting'),
(2300529, 559165, 0, 100, 1, 1, 0, 1, 1, 'Shimmering Jewel'),
(2300530, 559166, 0, 100, 1, 1, 0, 1, 1, 'Crystal Ball'),
(2300531, 559167, 0, 100, 1, 1, 0, 1, 1, 'Family Signet');

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` IN (2300528, 2300529, 2300530, 2300531);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(2300528, 0, 559164),
(2300529, 0, 559165),
(2300530, 0, 559166),
(2300531, 0, 559167);

-- ---------------------------------------------------------------------------
-- 4. Quests
-- ---------------------------------------------------------------------------
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(1660024, 2, 6, 3, 154, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '心怀高尚意图的怪物', '与遗产联盟营地的里斯塞尔·该隐交谈。', '你好。$B$B我是安东，遗产联盟的骄傲成员。奉我们女王之命，我的组织承担了整理、回收并修复洛丹伦文化遗产的皇家职责，好让它能为被遗忘者服务。$B$B离这里不远，道路向西蜿蜒上山，通往该隐家族的庄园。$B$B我会在地图上标出我同事营地的位置。他们需要一双手；甚至在洛丹伦陷落之前，就有传言说那座庄园被诅咒了……全都是因为某个女巫。', '', '与里斯塞尔·该隐交谈。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(1660025, 2, -1, 3, 154, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5571, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '不安息的家族成员', '净化该隐家族墓穴中里斯塞尔已故亲属的遗骸，将他们的灵魂送回彼岸。', '我们自己已经取得了不错的进展，但前面还有大量工作。$B$B我直说吧。我的父母在天灾降临几年前就去世了，可他们的墓穴却遭受了我几乎说不出口的亵渎和羞辱。以至于他们的灵魂如今仍徘徊在他们生前走过的大厅里；困惑、饱受折磨。$B$B下到家族墓穴，我的祖先长眠的地方，为他们的灵魂做一段简短的祈祷。那应该会把他们的灵魂引回遗骸……在那里你可以面对他们，送他们去他们该去的彼岸。', '', '回到里斯塞尔那里。', 161762, 161763, 161764, 161765, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '母亲已驱逐', '父亲已驱逐', '表亲萨勒姆已驱逐', '阿贝尔叔叔已驱逐'),
(1660026, 2, -1, 3, 154, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 8, 0, 828, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '难以言说的秘密', '取回庄园总管、女仆和兽栏管理员所持的钥匙碎片。', '灵魂的事处理完了，还有另一件事……远远超出我同事们能力范围的事。$B$B我的妹妹普里西拉，诅咒她的名字，把庄园变成了巫术的巢穴。她最恶劣的实验被封存在地下室里，而地下室的钥匙——我们刚发现——被断成了三块，分别由前任总管、女仆和兽栏管理员持有。那三个无脑的躯壳。$B$B杀了他们，取回他们的钥匙碎片。埃克桑格会把它重铸，好让你能打开地下室……给它来个彻底的清洁。', '', '把钥匙碎片交给死亡潜行者埃克桑格。', 0, 0, 0, 0, 0, 0, 0, 0, 559138, 559139, 559140, 0, 0, 0, 1, 1, 1, 0, 0, 0, '', '', '', ''),
(1660027, 2, 6, 3, 154, 0, 2, 0, 0, 0, 0, 0, 7, 25, 0, 0, 0, 0, 0, 559141, 8, 0, 559183, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '该隐家族的真正继承人', '用钥匙进入地下室，击败里面的生物。', '好了。$B$B<埃克桑格把钥匙交给你，它由原钥匙参差的残片拼合而成。扭曲、碎裂……它能否支撑住，和门后等待着的东西一样令人怀疑。>$B$B我会确保在你对付……锁在下面的那个东西时，没有蹒跚的尸体偷偷靠近你。$B$B不止一次，我以为我听到一声哀号，随后是咕噜声和尖叫。小心行事。', '', '向里斯塞尔报告发生了什么。', 161757, 0, 0, 0, 1, 0, 0, 0, 559141, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '畸变子嗣已击败', '', '', ''),
(1660028, 2, 6, 3, 154, 0, 0, 0, 0, 0, 0, 0, 6, 50, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '高贵的遗产', '探索该隐家族庄园，回收所有残留的贵重物品。然后把它们带给斯里斯。', '你知道遗产联盟是怎么给自己提供资金的吗？$B$B我们女王允许我们保留所回收财宝的一部分。所以到现在为止，我们修复的宫殿远比要塞多。$B$B陷落之前，该隐家族是王国最富有的家族之一。我敢打赌那座庄园里还有不少值得下手的东西。$B$B去看看，好吗？根据你找到什么，我们也许能达成一笔交易。$B$B但要小心。庄园的前女主人，里斯塞尔的妹妹……这么说吧，那地方闹鬼。', '', '回到斯里斯那里。', 0, 0, 0, 0, 0, 0, 0, 0, 559164, 559165, 559166, 559167, 0, 0, 1, 1, 1, 1, 0, 0, '', '', '', ''),
(1660029, 2, -1, 3, 154, 0, 0, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '一路上结交的朋友', '杀死在该隐庄园游荡的生物：僵尸、食尸鬼和熊。', '你注意到了，对吧？我在这里几乎撑不住了。而这些可怜虫总能找到新办法给自己惹麻烦。$B$B我认识一个能帮上忙的人……如果我们能弄到合适的材料。$B$B我必须留在这里，保护营地。但你……你已经证明了自己能应付。$B$B杀死在庄园周围游荡的生物：僵尸、食尸鬼、熊……别费劲把他们留下的东西拖回来；他们的器官不稳定，处理不当就会腐坏……或者更糟。等这一切结束后，我会负责从他们尸体里取出我们需要的东西。', '', '回到死亡守卫埃里克那里。', 161743, 161752, 161749, 0, 1, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(1660042, 2, 6, 3, 154, 0, 2, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 559176, 1, 559177, 1, 559178, 1, 559179, 1, 559180, 1, 559181, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '我回来了', '击败庄园后方的该隐家族猎犬。', '我们是怪物。但比我们的命运更悲哀的，是在我们林间和田野中游荡的野兽那困惑、痛苦的惨状。$B$B曾经，我想我的心也许还会怜悯它们。但我已经没有怜悯了。而且，务实地说，也该让它们安息了。$B$B尤其是该隐家族那只忠诚的老猎犬。$B$B绕庄园一圈，找到他的坟墓，确保他真的死了。他不会是第一只嗅到主人气味……然后把他吞掉的亡灵獒犬。', '', '回到卡利斯那里。', 161836, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (1660024, 1660025, 1660026, 1660027, 1660028, 1660029, 1660042);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(1660024, 0, 0, 0, 0, 0),
(1660025, 0, 0, 1660024, 0, 0),
(1660026, 0, 0, 1660025, 0, 0),
(1660027, 0, 0, 1660026, 1, 0),
(1660028, 0, 0, 1660025, 0, 0),
(1660029, 0, 0, 1660025, 0, 0),
(1660042, 0, 0, 1660025, 0, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (1660024, 1660025, 1660026, 1660027, 1660028, 1660029, 1660042);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(1660024, '是安东派你来的？他上次拖来的那个被遗忘者惹的麻烦比他的价值还大……不过你的筋腱似乎保存得更好。也许你终究能为我们做点有用的事。$B$B容我自我介绍一下：$B$B我是里斯塞尔·该隐。是的；严格来说，我是对这些土地拥有继承权的最后一位活着的继承人……至少，本来会是。$B$B不过，我觉得它们仍然是我的责任。所以我加入了遗产联盟，决心帮助修复我家族的庄园，让它为新秩序服务。'),
(1660025, '你说狗头人？最下等的货色；破坏者、拾荒者、小偷小摸。让他们烂掉！我会亲自让他们的洞穴被瘟疫堵满。$B$B至于你的工作……我印象深刻。我们驻扎在庄园的死亡潜行者报告说，灵魂不再徘徊于大厅和房间了。$B$B你知道这意味着什么吗？我们准备好下一步了。'),
(1660026, '你拿到钥匙碎片了？$B$B太好了，我都开始不耐烦了。$B$B给我一点时间……'),
(1660027, '<当你叙述你所见之事时，里斯塞尔缓缓摇头。>$B$B那个生物……我听过传言，但即便对我妹妹而言，那些传言也太过怪诞，令人难以置信。$B$B想想普里西拉竟与一个恶魔厮混……还生下了那个“东西”。$B$B无论如何，你为遗产联盟立下了大功，也在此过程中恢复了我家族姓氏的尊严。你拥有我“不死”的感激。'),
(1660028, '<如果贪婪有颜色，那一定是这个被遗忘者眼中的黄色。>$B$B一幅艳俗的画……一个水晶球（很可能是被诅咒的），一颗需要鉴定后才能庆祝的珠宝，还有一枚家族印章，我敢打赌它的价值纯粹是情感上的。$B$B其实没多少。<她耸耸肩，仿佛这不算什么。但她的眼睛……说的可不是这样。>$B$B我怀疑这些东西卖不了多少钱，但总比没有好。至于家族印章……咱们帮里斯塞尔一个忙，留着它吧。你知道翻起旧日回忆有多痛苦……'),
(1660029, '你回来了。而且你身后留下了一长串尸体。$B$B很好。$B$B<被遗忘者想到能从尸体上收获什么，咧嘴笑了。>$B$B有了这些，再加上一点电流，我认识的被遗忘者就能给我们缝出一个朋友。你知道，一个能搭把手的人。或者两只手。或者三只手。我说的是那种我们称之为“憎恶”的巨大臃肿的东西。'),
(1660042, '那只猎犬……死了？$B$B<被遗忘者摇着头，满心悲伤。>$B$B真可惜。腐烂扭曲了太多心智，不冒险才是更稳妥的。$B$B谁知道呢……也许这只狗本来会不一样。$B$B来。这是你应得的。');

DELETE FROM `quest_request_items` WHERE `ID` IN (1660024, 1660025, 1660026, 1660027, 1660028, 1660029, 1660042);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(1660025, '你已经净化了我家族的遗骸吗？真希望我妹妹的名字也在那些壁龛之中……'),
(1660026, '拿到钥匙碎片了吗？别告诉我我们把它弄得太难了……'),
(1660027, '我相信你已经完成任务了。否则，你不会这么随意地站在这里跟我说话……对吧？'),
(1660028, '你在里面找到什么值钱的东西了吗？'),
(1660029, '买完东西了吗？'),
(1660042, '我想我听到那野兽在远处嚎叫。请快点解决它。');

DELETE FROM `creature_queststarter` WHERE `quest` IN (1660024, 1660025, 1660026, 1660027, 1660028, 1660029, 1660042);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(161739, 1660024),
(161740, 1660025),
(161740, 1660026),
(161741, 1660027),
(161747, 1660028),
(161742, 1660029),
(161746, 1660042);

DELETE FROM `creature_questender` WHERE `quest` IN (1660024, 1660025, 1660026, 1660027, 1660028, 1660029, 1660042);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(161740, 1660024),
(161740, 1660025),
(161741, 1660026),
(161740, 1660027),
(161747, 1660028),
(161742, 1660029),
(161746, 1660042);

-- 363 is a kill quest in CoA; 6395 also asks for Samuel Fipps.
UPDATE `quest_template` SET `LogDescription` = '在通往丧钟镇的路上击败暗影蝠。', `QuestDescription` = '你终于醒了。我们差点就放弃你了。我是莫尔多，丧钟镇墓穴的看护人。你现在已经摆脱巫妖王的控制了。$B$B要离开墓穴，沿着台阶上去。$B$B在通往丧钟镇的路上击败暗影蝠，然后到山下的礼拜堂与暗影牧师萨维斯会面，听取进一步的指示。', `QuestCompletionLog` = '与丧钟镇的暗影牧师萨维斯交谈。', `RequiredNpcOrGo1` = 1512, `RequiredNpcOrGoCount1` = 8 WHERE `ID` = 363;
UPDATE `quest_template` SET `RequiredNpcOrGo2` = 1919, `RequiredNpcOrGoCount2` = 1 WHERE `ID` = 6395;

-- ---------------------------------------------------------------------------
-- 5. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9010000, 9010001, 9010002, 9010003, 9010004, 9010005, 9010006, 9010007, 9010008, 9010009, 9010010, 9010011, 9010012, 9010020, 9010021, 9010022, 9010023, 9010024, 9010025, 9010026, 9010027, 9010028, 9010029, 9010030, 9010031, 9010032, 9010033, 9010034, 9010035, 9010036, 9010037, 9010038, 9010039, 9010040, 9010041, 9010042, 9010043, 9010050, 9010051, 9010052, 9010053, 9010054, 9010055, 9010056, 9010057, 9010058, 9010059, 9010060, 9010061, 9010062, 9010063, 9010064, 9010065, 9010066, 9010080, 9010081, 9010082, 9010083, 9010084, 9010085, 9010086, 9010087, 9010100, 9010101, 9010102, 9010103, 9010104, 9010105, 9010106, 9010107, 9010108, 9010109, 9010110, 9010111, 9010112, 9010113, 9010114, 9010115, 9010116, 9010117, 9010118, 9010119, 9010120, 9010121, 9010122, 9010123, 9010124, 9010130, 9010131, 9010132, 9010133) OR `guid` BETWEEN 9010000 AND 9010349;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9010000, 161739, 0, 0, 0, 1, 1, 0, 1847.8, 1597.3, 94.144, 0.52, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Questie point on the village street; faces the square'),
(9010001, 161740, 0, 0, 0, 1, 1, 0, 1869.9, 1838.75, 157.928, 3.4, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8678, League camp; faces the estate path'),
(9010002, 161742, 0, 0, 0, 1, 1, 0, 1865.4, 1845, 157.761, 3.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8704 (1.5 yd), League camp, clear of the bush; guards the path'),
(9010003, 161746, 0, 0, 0, 1, 1, 0, 1870.34, 1843.6, 157.936, 3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8719, League camp table'),
(9010004, 161747, 0, 0, 0, 1, 1, 0, 1873.87, 1843.89, 158.043, 3.79, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8703, League camp; faces the ledger on the table'),
(9010005, 161748, 0, 0, 0, 1, 1, 0, 1878, 1839, 158.24, 2.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: between the two League tents; the League historian (INFERRED)'),
(9010006, 161741, 0, 0, 0, 1, 1, 0, 1936.42, 1974.28, 156.64, 5.48, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8686, manor hall; watches the cellar door'),
(9010007, 161753, 0, 0, 0, 1, 1, 0, 1921.41, 1929.9, 163.038, 3.9, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8683, manor upper floor'),
(9010008, 161754, 0, 0, 0, 1, 1, 0, 1916.91, 2005.17, 156.602, 0.8, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8684, outside the north wing'),
(9010009, 161754, 0, 0, 0, 1, 1, 0, 1934.19, 1991.89, 156.449, 2.3, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Questie point behind the manor'),
(9010010, 161755, 0, 0, 0, 1, 1, 0, 1887.46, 1946.77, 154.999, 5.5, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8685, in the stable'),
(9010011, 161757, 0, 0, 0, 1, 1, 0, 1931.89, 1957.86, 148.653, 0.83, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8687, manor cellar; faces the stair'),
(9010012, 161836, 0, 0, 0, 1, 1, 0, 1942.72, 1985.06, 156.079, 0.8, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: ST8718, at his grave behind the manor'),
(9010020, 161749, 0, 0, 0, 1, 1, 0, 1858, 1888.5, 157.09, 1.2, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; lower path bend, out of the bush on the Questie point'),
(9010021, 161749, 0, 0, 0, 1, 1, 0, 1864.83, 1895.24, 157.513, 0.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, path east of the camp'),
(9010022, 161749, 0, 0, 0, 1, 1, 0, 1867.59, 1902.22, 158.766, 2.1, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, path east of the camp'),
(9010023, 161749, 0, 0, 0, 1, 1, 0, 1872.1, 1893.5, 157.911, 4, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, path east of the camp'),
(9010024, 161749, 0, 0, 0, 1, 1, 0, 1879.44, 1902.33, 159.066, 3.1, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, rise before the fence'),
(9010025, 161749, 0, 0, 0, 1, 1, 0, 1879.73, 1912.9, 158.92, 5.2, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, rise before the fence'),
(9010026, 161749, 0, 0, 0, 1, 1, 0, 1888.17, 1911.48, 158.974, 0.9, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, by the broken fence'),
(9010027, 161749, 0, 0, 0, 1, 1, 0, 1880.17, 1871.93, 157.663, 2.7, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, beside the stone bench'),
(9010028, 161749, 0, 0, 0, 1, 1, 0, 1889.19, 1869.86, 158.224, 4.4, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, beside the stone bench'),
(9010029, 161749, 0, 0, 0, 1, 1, 0, 1888.31, 1861.68, 158.558, 1.6, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, by the red rock'),
(9010030, 161749, 0, 0, 0, 1, 1, 0, 1861.92, 1933.49, 157.115, 5.9, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, west meadow'),
(9010031, 161749, 0, 0, 0, 1, 1, 0, 1857.7, 1936.1, 157.551, 3.3, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, west meadow'),
(9010032, 161749, 0, 0, 0, 1, 1, 0, 1850.14, 1934.69, 156.384, 0.3, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, west meadow'),
(9010033, 161749, 0, 0, 0, 1, 1, 0, 1855, 1942.5, 157.577, 2.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; under the canopy tree, out of the bush on the Questie point'),
(9010034, 161749, 0, 0, 0, 1, 1, 0, 1835.89, 1940.14, 156.165, 4.8, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, meadow toward the crypt'),
(9010035, 161749, 0, 0, 0, 1, 1, 0, 1829.2, 1937.96, 157.308, 1.9, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, meadow toward the crypt'),
(9010036, 161749, 0, 0, 0, 1, 1, 0, 1818.44, 1917.8, 158.72, 3.7, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, below the crypt hill'),
(9010037, 161749, 0, 0, 0, 1, 1, 0, 1852.5, 1916.5, 155.802, 0.7, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; south meadow, off the fallen tree on the Questie point'),
(9010038, 161749, 0, 0, 0, 1, 1, 0, 1839.8, 1907.8, 155.649, 5.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; south meadow, out of the bush on the Questie point'),
(9010039, 161749, 0, 0, 0, 1, 1, 0, 1900.96, 1916.93, 158.252, 2.2, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, beside the hearse'),
(9010040, 161749, 0, 0, 0, 1, 1, 0, 1903.8, 1923.36, 157.237, 4.1, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, beside the hearse'),
(9010041, 161749, 0, 0, 0, 1, 1, 0, 1865.7, 1964.76, 158.418, 1, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, lake shore'),
(9010042, 161749, 0, 0, 0, 1, 1, 0, 1860.25, 1960.73, 158, 3.6, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, lake shore'),
(9010043, 161749, 0, 0, 0, 1, 1, 0, 1865.85, 1958.33, 157.455, 5.1, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Zombie; Questie point, lake shore'),
(9010050, 161752, 0, 0, 0, 1, 1, 0, 1924.96, 1956.37, 155.808, 2.4, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; Questie point, manor great hall'),
(9010051, 161752, 0, 0, 0, 1, 1, 0, 1943.14, 1957.35, 155.806, 3.9, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; Questie point, manor east hall'),
(9010052, 161752, 0, 0, 0, 1, 1, 0, 1927.94, 1939.05, 154.141, 0.8, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; Questie point, manor south room'),
(9010053, 161752, 0, 0, 0, 1, 1, 0, 1932, 1943, 154.141, 5.5, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; Questie point moved 2 yd off the stair edge, manor south room'),
(9010054, 161752, 0, 0, 0, 1, 1, 0, 1925.83, 1916.82, 157.345, 1.4, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; Questie point, south lawn'),
(9010055, 161752, 0, 0, 0, 1, 1, 0, 1936.01, 1924.12, 154.996, 0.2, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; Questie point, south lawn'),
(9010056, 161752, 0, 0, 0, 1, 1, 0, 1963.06, 1931.53, 155.922, 3, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; Questie point, east field'),
(9010057, 161752, 0, 0, 0, 1, 1, 0, 1924.45, 1989.71, 157.971, 4.6, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; Questie point, behind the manor'),
(9010058, 161752, 0, 0, 0, 1, 1, 0, 1903.58, 1980.12, 159.343, 2.9, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; Questie point, lakeside garden'),
(9010059, 161752, 0, 0, 0, 1, 1, 0, 1960, 1944, 156.903, 3.5, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; east field, before the manor front'),
(9010060, 161752, 0, 0, 0, 1, 1, 0, 1893, 1959, 156.006, 5, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; north of the stable door'),
(9010061, 161752, 0, 0, 0, 1, 1, 0, 1910, 1968, 156.177, 1.1, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; garden between the stable and the north wing'),
(9010062, 161752, 0, 0, 0, 1, 1, 0, 1948, 1924, 156.393, 2, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; south-east lawn corner'),
(9010063, 161752, 0, 0, 0, 1, 1, 0, 1955, 1972, 156.012, 4.2, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; by the red rock east of the north wing'),
(9010064, 161752, 0, 0, 0, 1, 1, 0, 1968, 1960, 157.481, 3.4, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; east field, toward the woods'),
(9010065, 161752, 0, 0, 0, 1, 1, 0, 1915, 1910, 158.292, 0.6, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; south lawn by the path'),
(9010066, 161752, 0, 0, 0, 1, 1, 0, 1946, 1935, 155.148, 2.8, 180, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Ghoul; east lawn by the manor wall'),
(9010080, 161743, 0, 0, 0, 1, 1, 0, 1802.95, 1961.38, 156.206, 1.5, 180, 8, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Necrotic Bear; Questie point, above the crypt mouth'),
(9010081, 161743, 0, 0, 0, 1, 1, 0, 1968.29, 1938.94, 155.868, 3.3, 180, 8, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Necrotic Bear; Questie point, east field'),
(9010082, 161743, 0, 0, 0, 1, 1, 0, 1976.8, 1952.12, 155.415, 4.1, 180, 8, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Necrotic Bear; Questie point, east field edge'),
(9010083, 161743, 0, 0, 0, 1, 1, 0, 1822, 1960, 156.327, 0.4, 180, 8, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Necrotic Bear; meadow between the crypt and the lake'),
(9010084, 161743, 0, 0, 0, 1, 1, 0, 1845, 1885, 156.835, 5.8, 180, 8, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Necrotic Bear; south slope below the camp'),
(9010085, 161743, 0, 0, 0, 1, 1, 0, 1904.8, 1997, 157.476, 2.2, 180, 8, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Necrotic Bear; lake shore north of the stable, out of the reeds'),
(9010086, 161743, 0, 0, 0, 1, 1, 0, 1830, 1890, 157.673, 1, 180, 8, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Necrotic Bear; south-west woods edge'),
(9010087, 161743, 0, 0, 0, 1, 1, 0, 1975, 1968, 154.888, 3.8, 180, 8, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Cain estate: Necrotic Bear; north-east field toward the woods'),
(9010130, 161751, 0, 0, 0, 1, 1, 0, 1781, 1970, 124.072, 2.84, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain crypt: Kobold Desecrator; lower hall between the parents'' niches, prying at Mother''s'),
(9010131, 161751, 0, 0, 0, 1, 1, 0, 1789, 1964, 124.072, 0.96, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain crypt: Kobold Desecrator; lower hall south side, rummaging toward Father''s niche'),
(9010132, 161751, 0, 0, 0, 1, 1, 0, 1757, 1944, 132.057, 2.62, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain crypt: Kobold Desecrator; west chamber, picking at Cousin Salem''s coffin'),
(9010133, 161751, 0, 0, 0, 1, 1, 0, 1788, 1940, 132.057, 4.54, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Cain crypt: Kobold Desecrator; south-east chamber floor, turned toward Uncle Abel''s niche'),
(9010100, 1512, 0, 0, 0, 1, 1, 0, 1718, 1645, 124.696, 5.5, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; north of the upper road bend below the crypt hill'),
(9010101, 1512, 0, 0, 0, 1, 1, 0, 1726, 1622, 120.178, 0.8, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; south of the upper road'),
(9010102, 1512, 0, 0, 0, 1, 1, 0, 1729, 1638, 120.878, 4.9, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; above the road by the grave frame'),
(9010103, 1512, 0, 0, 0, 1, 1, 0, 1741, 1633, 117.757, 3.6, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; north flank of the road'),
(9010104, 1512, 0, 0, 0, 1, 1, 0, 1735, 1616, 117.794, 1.3, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; west of the three canopy trees'),
(9010105, 1512, 0, 0, 0, 1, 1, 0, 1757, 1631, 115.51, 2.4, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; north flank, below the hearse'),
(9010106, 1512, 0, 0, 0, 1, 1, 0, 1763, 1605, 110.306, 0.1, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; south of the road past the stump'),
(9010107, 1512, 0, 0, 0, 1, 1, 0, 1767, 1639, 113.398, 5, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; beside the coffin pile'),
(9010108, 1512, 0, 0, 0, 1, 1, 0, 1779, 1605, 108.839, 3.2, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; road side past the fallen tree'),
(9010109, 1512, 0, 0, 0, 1, 1, 0, 1787, 1590, 105.201, 1.9, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; south of the lower road'),
(9010110, 1512, 0, 0, 0, 1, 1, 0, 1796, 1598, 102.314, 4.3, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; lower road toward the chapel'),
(9010111, 1512, 0, 0, 0, 1, 1, 0, 1741, 1592, 114.824, 0.6, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; by the tombstone monuments'),
(9010112, 1512, 0, 0, 0, 1, 1, 0, 1761, 1585, 110.969, 2.9, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; south of the monuments'),
(9010113, 1512, 0, 0, 0, 1, 1, 0, 1729, 1598, 117.625, 5.3, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; below the canopy trees'),
(9010114, 1512, 0, 0, 0, 1, 1, 0, 1714, 1616, 122.071, 1.7, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; west slope under the crypt'),
(9010115, 1512, 0, 0, 0, 1, 1, 0, 1705, 1627, 123.058, 0, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; top of the road by the crypt stairs'),
(9010116, 1512, 0, 0, 0, 1, 1, 0, 1720, 1605, 120.134, 3.9, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; west slope south of the road'),
(9010117, 1512, 0, 0, 0, 1, 1, 0, 1770, 1580, 111.435, 2.2, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; south hillside'),
(9010118, 1512, 0, 0, 0, 1, 1, 0, 1795, 1627, 110.214, 4.6, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; north bank of the lower road'),
(9010119, 1512, 0, 0, 0, 1, 1, 0, 1767, 1612, 111.137, 1.1, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; between the stump and the fallen tree'),
(9010120, 1512, 0, 0, 0, 1, 1, 0, 1728, 1568, 124.275, 0.9, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; south-west hillside'),
(9010121, 1512, 0, 0, 0, 1, 1, 0, 1782, 1645, 111.97, 5.9, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; north of the coffin pile'),
(9010122, 1512, 0, 0, 0, 1, 1, 0, 1706, 1598, 122.902, 2.7, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; west edge below the crypt'),
(9010123, 1512, 0, 0, 0, 1, 1, 0, 1756, 1566, 113.409, 1.4, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; south edge by the lantern path'),
(9010124, 1512, 0, 0, 0, 1, 1, 0, 1778, 1631, 111.006, 3, 180, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA 363 crypt road: Duskbat; by the coffins and lantern');

DELETE FROM `creature_addon` WHERE `guid` BETWEEN 9010000 AND 9010349;

DELETE FROM `gameobject` WHERE `guid` IN (7916000, 7916001, 7916002, 7916003, 7916004, 7916005, 7916006, 7916007, 7916008, 7916010, 7916011, 7916012, 7916013, 7916014, 7916015, 7916018, 7916019) OR `guid` BETWEEN 7916000 AND 7916119;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7916000, 2300540, 0, 0, 0, 1, 1, 1767.97, 1974.13, 124.202, 4.38, 0, 0, 0.814341, -0.580387, 60, 100, 1, '', 'CoA Cain estate: ST8679, Mother''s niche; along the wall'),
(7916001, 2300541, 0, 0, 0, 1, 1, 1795.55, 1973.23, 124.202, 5.95, 0, 0, 0.165823, -0.986156, 60, 100, 1, '', 'CoA Cain estate: ST8680, Father''s niche'),
(7916002, 2300542, 0, 0, 0, 1, 1, 1751.59, 1947.12, 133.006, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Cain estate: atlas point on Salem''s coffin (ST8681)'),
(7916003, 2300543, 0, 0, 0, 1, 1, 1785.96, 1928.36, 132.544, 5.95, 0, 0, 0.165823, -0.986156, 60, 100, 1, '', 'CoA Cain estate: ST8682, Abel''s niche'),
(7916004, 2300524, 0, 0, 0, 1, 1, 1941.74, 1968.71, 155.844, 2.356, 0, 0, 0.923842, 0.382773, 0, 100, 1, '', 'CoA Cain estate: atlas point, top of the cellar stair; across the stairwell'),
(7916005, 2300528, 0, 0, 0, 1, 1, 1924.93, 1976.02, 158.776, 5.5, 0, 0, 0.381661, -0.924302, 120, 100, 1, '', 'CoA Cain estate: ST8699, upper floor wall; faces the room'),
(7916006, 2300529, 0, 0, 0, 1, 1, 1921.2, 1931.49, 154.155, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Cain estate: ST8700, south room floor'),
(7916007, 2300530, 0, 0, 0, 1, 1, 1924.93, 1955.26, 177.579, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Cain estate: ST8701, on the top floor round table'),
(7916008, 2300531, 0, 0, 0, 1, 1, 1939.4, 1945.25, 176.445, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Cain estate: ST8702, on the roof'),
(7916019, 9303400, 0, 0, 0, 1, 1, 1940, 1961, 148.651, 0.35, 0, 0, 0.174108, 0.984727, 60, 100, 1, '', 'CoA Cain estate: cellar floor west of the stair foot; lifts a player locked below the door back to the ground floor'),
(7916010, 600632, 0, 0, 0, 1, 1, 1659.56, 1687.91, 120.841, 5.62, 0, 0, 0.325549, -0.945525, 300, 100, 1, '', 'CoA Deathknell prop: atlas point, beside Mordo; faces him'),
(7916011, 600633, 0, 0, 0, 1, 1, 1659.31, 1692.19, 120.635, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Deathknell prop: atlas point, beside Mordo'),
(7916012, 600636, 0, 0, 0, 1, 1, 1656.3, 1686.93, 119.953, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Deathknell prop: atlas point, beside Mordo'),
(7916013, 191351, 0, 0, 0, 1, 1, 1659.34, 1691.34, 120.719, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Deathknell prop: atlas point, over the cistern'),
(7916014, 174, 0, 0, 0, 1, 1, 1939.53, 1545.6, 90.165, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Deathknell prop: atlas point, abandoned smithy'),
(7916015, 520048, 0, 0, 0, 1, 1, 1849.41, 1759.76, 137.669, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Deathknell prop: atlas point, western gully'),
(7916018, 523523, 0, 0, 0, 1, 1, 2196.577, 1452.045, 87.955, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Deathknell prop: atlas point, east road');

-- ---------------------------------------------------------------------------
-- 6. Scripts
-- ---------------------------------------------------------------------------
-- Each remains summons its spirit at the player who prayed, and the spirit attacks that player; the remains
-- despawn for 60 s. The cellar shovel returns a player locked below the door to the ground floor.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (161762, 161763, 161764, 161765) AND `source_type` = 0;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2300540, 2300541, 2300542, 2300543, 9303400) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(2300540, 1, 0, 1, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 161762, 1, 120000, 1, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Remains of Riscell''s relatives - On Use - Summon Mother'),
(2300540, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remains of Riscell''s relatives - Linked - Despawn until it respawns'),
(2300541, 1, 0, 1, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 161763, 1, 120000, 1, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Remains of Riscell''s relatives - On Use - Summon Father'),
(2300541, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remains of Riscell''s relatives - Linked - Despawn until it respawns'),
(2300542, 1, 0, 1, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 161764, 1, 120000, 1, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Remains of Riscell''s relatives - On Use - Summon Cousin Salem'),
(2300542, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remains of Riscell''s relatives - Linked - Despawn until it respawns'),
(2300543, 1, 0, 1, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 161765, 1, 120000, 1, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Remains of Riscell''s relatives - On Use - Summon Uncle Abel'),
(2300543, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remains of Riscell''s relatives - Linked - Despawn until it respawns'),
(9303400, 1, 0, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1934.5, 1972, 156.64, 0.87, 'Old Digging Shovel - On Gossip Hello - Teleport to the manor ground floor');

-- ---------------------------------------------------------------------------
-- 7. Stock rows: Marla's Grave, the east slope and its turkeys
-- ---------------------------------------------------------------------------
-- Marla's Grave to CoA's point in the graveyard's first row (ST6961).
UPDATE `gameobject` SET `position_x` = 1884.37, `position_y` = 1587.55, `position_z` = 89.559 WHERE `guid` = 45015 AND `id` = 178090;
-- East slope: terrain CoA raised or lowered around the new Felo camp.
UPDATE `creature` SET `position_x` = 1920.77, `position_y` = 1754.41, `position_z` = 102.131 WHERE `guid` = 38317 AND `id` = 1512;
UPDATE `creature` SET `position_x` = 1911.89, `position_y` = 1753.78, `position_z` = 100.186 WHERE `guid` = 41897 AND `id` = 1512;
UPDATE `creature` SET `position_x` = 1936, `position_y` = 1678, `position_z` = 83.163 WHERE `guid` = 44730 AND `id` = 1512;
UPDATE `creature` SET `position_x` = 1942.02, `position_y` = 1673.68, `position_z` = 81.193 WHERE `guid` = 44829 AND `id` = 1508;
UPDATE `creature` SET `position_x` = 1888.92, `position_y` = 1729.84, `position_z` = 94.972 WHERE `guid` = 44825 AND `id` = 1508;
UPDATE `creature` SET `position_x` = 1930.21, `position_y` = 1662.69, `position_z` = 80.665 WHERE `guid` = 44831 AND `id` = 1502;
UPDATE `creature` SET `position_x` = 1884.93, `position_y` = 1772.64, `position_z` = 117.882 WHERE `guid` = 41900 AND `id` = 1512;
UPDATE `creature` SET `position_x` = 1907.38, `position_y` = 1691.07, `position_z` = 86.34 WHERE `guid` = 44731 AND `id` = 1512;
UPDATE `creature` SET `position_x` = 1905.41, `position_y` = 1601.54, `position_z` = 85.682 WHERE `guid` = 44926 AND `id` = 1501;
UPDATE `creature` SET `position_x` = 1919.49, `position_y` = 1623.68, `position_z` = 82.311 WHERE `guid` = 44935 AND `id` = 1501;
-- Pilgrim's Bounty turkeys (event 26) on the same slope.
UPDATE `creature` SET `position_x` = 1927.26, `position_y` = 1692.24, `position_z` = 85.932 WHERE `guid` = 240648 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1912.12, `position_y` = 1645.39, `position_z` = 82.448 WHERE `guid` = 242380 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1922.86, `position_y` = 1625.93, `position_z` = 81.841 WHERE `guid` = 242408 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1912.84, `position_y` = 1604.96, `position_z` = 83.023 WHERE `guid` = 242483 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1922.86, `position_y` = 1660.1, `position_z` = 81.55 WHERE `guid` = 242490 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1881.93, `position_y` = 1774.41, `position_z` = 118.742 WHERE `guid` = 242769 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1917.79, `position_y` = 1752.5, `position_z` = 101.037 WHERE `guid` = 242784 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1908, `position_y` = 1752, `position_z` = 99.697 WHERE `guid` = 242820 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1913.28, `position_y` = 1698.36, `position_z` = 88.259 WHERE `guid` = 242824 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1908.9, `position_y` = 1605.24, `position_z` = 83.32 WHERE `guid` = 243899 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1910.31, `position_y` = 1641.54, `position_z` = 84.086 WHERE `guid` = 243904 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1926.77, `position_y` = 1661.55, `position_z` = 81.155 WHERE `guid` = 243906 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1931.45, `position_y` = 1688.03, `position_z` = 84.995 WHERE `guid` = 243914 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1936, `position_y` = 1542, `position_z` = 90.14 WHERE `guid` = 241974 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1905.91, `position_y` = 1666.46, `position_z` = 83.728 WHERE `guid` = 242845 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1960, `position_y` = 1604, `position_z` = 88.174 WHERE `guid` = 241984 AND `id` = 32820;
UPDATE `creature` SET `position_x` = 1870, `position_y` = 1557, `position_z` = 93.207 WHERE `guid` = 242420 AND `id` = 32820;
