-- Conquest of Azeroth class trainers in Shadowglen (Teldrassil): the 19 CoA trainers of Aldrassil and
-- its grounds, the intro letters Conservator Ilthalaine hands out after The Balance of Nature, each
-- class's first quest chain (27 quests) and every creature and object those chains need. Builds on
-- rev_20260923_05 (class kits, class menus, shared chain templates).
--
-- WHERE EACH VALUE COMES FROM
--   trainer points  SOURCED-CLIENT: the QuestSuperTrack turn-in point of each letter (z from the server
--     floor). Facings are chosen by hand toward the way players arrive (reasons in the spawn comments).
--   trainers  name and title SOURCED-CACHE (creaturecache); Exodite Telusaara is new (the letter names
--     her; no cache record). Looks are stand-ins: no mirror-image capture of any Shadowglen trainer
--     exists and their CoA displays do not resolve, so each look copies a stock NPC of the inferred race
--     and theme, restyled so no two match. Named greetings: 25002 Nerdris, 25008 Shadowglen's ranger.
--   letters  SOURCED-CACHE quests 650141-650159; giver INFERRED from the stock letter pattern (Ilthalaine
--     after quest 456, as 3116-3120). Letter pages SOURCED-CACHE where cached (7004, 7005, 7007, 7009,
--     7010, 7012, 7013, 7014, 7019); the other ten are new in the same voice (INFERRED).
--   chains  SOURCED-CACHE quests; starters, enders and places from their texts; chain links by
--     PrevQuestID only. Drop chances SOURCED-EXILES. Every target, holder, object and marker is placed
--     by hand at a named landmark; where no source exists the choice is marked INFERRED.
--   stock trainers  Frahun Shadewhisper (46179) stands within 1.7 yd of a CoA trainer point and steps
--     aside; Alyissia (46178) is hidden while her Cultist kill copy stands in (rev_20260924_13).
--   stock spawn moved  Lyrai (46171), 2.5 yd west to stand beside Kaleidormu on his point (INFERRED).
--   map markers  quest_poi for 200046 and 200056, whose texts mark the map (INFERRED points).
--
-- Blocks: creature guid 9004100-9004299, gameobject guid 7912600-7912699, creature entry 9300350-9300399,
-- gameobject entry 9301350-9301399, gossip menu and npc_text 930450-930499. 19 trainers, 19 letters, 27 chain
-- quests, 29 creature and 22 gameobject spawns.

-- ---------------------------------------------------------------------------
-- 1. Trainers
-- ---------------------------------------------------------------------------
-- 50295 Barbarian: template, look and weapons are ct-northshire's (second spawn of the Northshire Barbarian,
--   INFERRED: the cache has one Amanda)
-- 50344 Felsworn: night elf woman (page text 7005 "seek her"; Felsworn is a night elf class): Illidari look of
--   Alandien 21171, hair restyled; her warglaives
-- 503250 Witch Hunter: human man (page text 7019: "has brought his expertise to Teldrassil", "his"): Scarlet
--   Champion 4302 plate and crusader hat without the Scarlet tabard, restyled; sword and crossbow of a witch
--   hunter
-- 502772 Stormbringer: draenei woman (page text 7014: "has brought her knowledge to Teldrassil. This powerful
--   shaman"): Farseer Umbrua 20407 mail, restyled; Farseer Javad's staff
-- 502780 Knight of Xoroth: draenei woman (page text 7007 "her"; the chain's "mortal visage" of a demon): the
--   draenei death knight look 28424 in dark plate, restyled; a runeblade
-- 503240 Guardian: night elf woman (letter "herself", npccache 25002 "Analyze how I wield my mace"): Champion
--   Sentinel 13427 plate, restyled; a mace and the Darnassus Champion's shield
-- 502801 Templar: draenei woman (Templar is a draenei class, not a night elf one): Aldor Vindicator 18549 plate
--   and circlet, restyled; Vindicator's Brand and a draenei shield
-- 502920 Bloodmage: night elf man (Bloodmage is a night elf class): Highborne Summoner 11466 robes, hair
--   restyled; the Summoner's staff
-- 50341 Ranger: night elf man (npccache 25008, the Shadowglen ranger who "mastered the bow"): Cenarion Scout
--   Landion 15609 leathers, restyled; dagger and bow
-- 502821 Chronomancer: night elf man (letter: a bronze dragon teaching chronomancy; his mortal guise INFERRED as
--   a night elf in Teldrassil): Lorekeeper Lydros 14368 hat and robes, hair restyled bronze; staff
-- 50294 Necromancer: draenei man ("of the Auchenai"): Auchenai Necromancer 18702 robes, restyled; the Auchenai
--   staff
-- 502831 Cultist: night elf woman (page text 7004 "She"): Twilight Geomancer 5862 robes, restyled; the
--   Geomancer's staff
-- 50326 Starcaller: night elf woman (page text 7013 "she"): Huntress Skymane 14378, restyled; a glaive-spear and
--   a bow
-- 9300350 Sun Cleric: draenei woman ("Exodite", from the Exodar): Aldor Anchorite 19142 robes, restyled;
--   Ishanah's staff
-- 502871 Tinker: gnome man ("Rapidspyre", the chain's tinkering Jimb'les): Tinkmaster Overspark 7944 goggles and
--   leathers, restyled; a wrench and a rifle
-- 50343 Venomancer: night elf man ("Fangshifter"; Venomancer is a night elf class): Boahn 3672, Druid of the
--   Fang, restyled; the Druid of the Fang claws
-- 502890 Reaper: night elf man, hooded (INFERRED: "the Shade" who "walks between life and death"): Arantir's
--   Shadow 7229 hooded leathers, restyled; a scythe
-- 503420 Primalist: night elf woman (page text 7009 "her home"): Cenarion Druid 4052 leathers, restyled; Arch
--   Druid Renferal's staff
-- 502911 Runemaster: night elf woman (page text 7012: "Though the night elves have their own magical traditions,
--   she studies the runic arts"): Shen'dralar Ancient 14358, restyled; a lorekeeper's tome
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(50344, '邪能触碰者弗洛齐', '恶魔猎手训练师', 930014, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(503250, '黑暗杀手哈伦多', '猎魔人训练师', 930015, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(502772, '库鲁', '风暴使者训练师', 930016, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502780, '阿赫拉瓦拉', '克索诺斯骑士训练师', 930017, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(503240, '内德里斯·暗击', '守护者训练师', 930450, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502801, '艾蕾奥拉', '圣殿骑士训练师', 930019, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502920, '阿拉马杜斯', '血法师训练师', 930020, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50341, '海德里尔·羽翔', '游侠训练师', 930451, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502821, '卡莱多姆', '时光术士训练师', 930022, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50294, '奥金尼的巴雷拉姆', '死灵法师训练师', 930023, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(502831, '赛琳娜·影歌', '邪教徒训练师', 930025, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50326, '女猎手娜莉亚', '唤星者训练师', 930026, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300350, '流放者泰卢萨拉', '太阳祭司训练师', 930027, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(502871, '乔罗·迅尖', '工匠训练师', 930028, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50343, '科拉尔·毒牙', '剧毒术士训练师', 930029, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502890, '幽影卡尼', '死神训练师', 930030, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(503420, '普里穆拉', '仪祭师训练师', 930031, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502911, '雷瑟尔·达尔特拉尔', '符文大师训练师', 930032, 10, 10, 0, 80, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (50294, 50326, 50341, 50343, 50344, 502772, 502780, 502801, 502821, 502831, 502871, 502890, 502911, 502920, 503240, 503250, 503420, 9300350);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(50344, 0, 56, 1, 1),
(503250, 0, 49, 1, 1),
(502772, 0, 16126, 1, 1),
(502780, 0, 16126, 1, 1),
(503240, 0, 56, 1, 1),
(502801, 0, 16126, 1, 1),
(502920, 0, 55, 1, 1),
(50341, 0, 55, 1, 1),
(502821, 0, 55, 1, 1),
(50294, 0, 16125, 1, 1),
(502831, 0, 56, 1, 1),
(50326, 0, 56, 1, 1),
(9300350, 0, 16126, 1, 1),
(502871, 0, 1563, 1, 1),
(50343, 0, 55, 1, 1),
(502890, 0, 55, 1, 1),
(503420, 0, 56, 1, 1),
(502911, 0, 56, 1, 1);

DELETE FROM `creature_display_preset` WHERE `entry` IN (50294, 50326, 50341, 50343, 50344, 502772, 502780, 502801, 502821, 502831, 502871, 502890, 502911, 502920, 503240, 503250, 503420, 9300350);
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`, `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`, `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`)
VALUES
(50344, 56, 4, 1, 1, 5, 1, 3, 4, 8, 0, 145533, 146604, 148105, 149525, 151375, 153487, 155566, 156552, 157838, 0, 0),
(503250, 49, 1, 0, 1, 1, 3, 5, 0, 4, 0, 144968, 145916, 147121, 148574, 10337, 2871, 154317, 0, 156825, 0, 0),
(502772, 16126, 11, 1, 1, 7, 7, 8, 2, 2, 0, 0, 27943, 0, 33624, 27940, 33625, 0, 0, 27941, 0, 0),
(502780, 16126, 11, 1, 1, 4, 2, 6, 0, 2, 0, 0, 44227, 0, 44228, 44236, 44230, 41584, 0, 44232, 0, 0),
(503240, 56, 4, 1, 1, 4, 2, 6, 1, 2, 0, 163917, 164031, 149088, 12629, 164997, 164033, 164034, 0, 164035, 0, 0),
(502801, 16126, 11, 1, 1, 5, 0, 9, 1, 0, 0, 144904, 146450, 148047, 149294, 151197, 153279, 155387, 0, 157707, 0, 158500),
(502920, 55, 4, 0, 1, 5, 8, 1, 7, 1, 0, 0, 12046, 0, 5210, 0, 5212, 19079, 0, 12546, 0, 0),
(50341, 55, 4, 0, 1, 0, 1, 6, 0, 5, 0, 0, 19612, 26711, 26714, 9458, 4600, 26713, 9847, 26185, 0, 0),
(502821, 55, 4, 0, 1, 5, 3, 3, 3, 1, 0, 18390, 0, 53683, 53684, 54655, 29586, 53686, 0, 13116, 0, 0),
(50294, 16125, 11, 0, 1, 13, 7, 4, 2, 3, 0, 0, 146485, 0, 149343, 151234, 153325, 0, 0, 0, 0, 0),
(502831, 56, 4, 1, 1, 5, 1, 0, 6, 4, 0, 0, 146122, 147683, 148881, 150724, 152732, 154901, 156344, 157318, 0, 0),
(50326, 56, 4, 1, 1, 5, 6, 5, 0, 4, 0, 11956, 24198, 20145, 5673, 7493, 22646, 8801, 0, 8802, 0, 0),
(9300350, 16126, 11, 1, 1, 8, 5, 3, 3, 0, 0, 0, 42894, 0, 31526, 30780, 31527, 31779, 0, 0, 0, 0),
(502871, 1563, 7, 0, 1, 3, 0, 1, 5, 4, 0, 14208, 14209, 8998, 7915, 6092, 1648, 14210, 1549, 14206, 0, 0),
(50343, 55, 4, 0, 1, 4, 7, 2, 3, 1, 0, 0, 0, 0, 147339, 150409, 8867, 154573, 0, 157027, 0, 0),
(502890, 55, 4, 0, 1, 2, 4, 5, 7, 0, 0, 12569, 0, 3564, 7557, 12555, 1174, 12570, 0, 12571, 0, 0),
(503420, 56, 4, 1, 1, 2, 6, 2, 2, 8, 0, 0, 0, 0, 147352, 150419, 152386, 154587, 156248, 157038, 0, 0),
(502911, 56, 4, 1, 1, 5, 3, 1, 3, 6, 0, 8051, 0, 7851, 24144, 19168, 5745, 7378, 13359, 9198, 0, 0);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (50294, 50326, 50341, 50343, 50344, 502772, 502780, 502801, 502821, 502831, 502871, 502890, 502911, 502920, 503240, 503250, 503420, 9300350);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(50344, 1, 30208, 30209, 0),
(503250, 1, 1899, 0, 2551),
(502772, 1, 1908, 0, 0),
(502780, 1, 38707, 0, 0),
(503240, 1, 2810, 14825, 0),
(502801, 1, 29124, 24331, 0),
(502920, 1, 13061, 0, 0),
(50341, 1, 10619, 0, 5258),
(502821, 1, 49311, 0, 0),
(50294, 1, 13698, 0, 0),
(502831, 1, 5303, 0, 0),
(50326, 1, 13632, 0, 2550),
(9300350, 1, 28738, 0, 0),
(502871, 1, 1911, 0, 12523),
(50343, 1, 3494, 35719, 0),
(502890, 1, 28650, 0, 0),
(503420, 1, 13721, 0, 0),
(502911, 1, 12742, 0, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (50294, 50326, 50341, 50343, 50344, 502772, 502780, 502801, 502821, 502831, 502871, 502890, 502911, 502920, 503240, 503250, 503420, 9300350);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`)
VALUES
(50344, 900014),
(503250, 900015),
(502772, 900016),
(502780, 900017),
(503240, 900018),
(502801, 900019),
(502920, 900020),
(50341, 900021),
(502821, 900022),
(50294, 900023),
(502831, 900025),
(50326, 900026),
(9300350, 900027),
(502871, 900028),
(50343, 900029),
(502890, 900030),
(503420, 900031),
(502911, 900032);

-- Named menus: Nerdris Darkstrike and Hydriel Featherflight speak their own cached greetings; Thalador
-- talks with the Reaper (INFERRED text).
DELETE FROM `npc_text` WHERE `ID` IN (25002, 25008, 930452);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`)
VALUES
(25002, '来吧，$c。是我，内德里斯·暗击。见到你真是太好了。$B$B分析我如何使用我的锤子，$c。$B$B勇气。力量。承诺。$n，这些必须胜过所有其他美德！', '来吧，$c。是我，内德里斯·暗击。见到你真是太好了。$B$B分析我如何使用我的锤子，$c。$B$B勇气。力量。承诺。$n，这些必须胜过所有其他美德！', 0, 0, 1, 1, 1, 0, 0, 0, 0),
(25008, '我们暗影谷的许多人都会运用魔法，然而我不会。$B$B但让我告诉你一件事——保护这些古老森林的方法不止一种。$B$B当其他人召唤奥术力量时，我已精通弓术，并学会了像影子一样在树林中穿行。$B$B如果你寻求游侠之路，我可以向你展示自然本身如何成为你最伟大的盟友。', '我们暗影谷的许多人都会运用魔法，然而我不会。$B$B但让我告诉你一件事——保护这些古老森林的方法不止一种。$B$B当其他人召唤奥术力量时，我已精通弓术，并学会了像影子一样在树林中穿行。$B$B如果你寻求游侠之路，我可以向你展示自然本身如何成为你最伟大的盟友。', 0, 0, 1, 1, 1, 0, 0, 0, 0),
(930452, '<年迈的精灵倚在栏杆上，目光落在下方远处的树冠上。>$B$B啊，一个年轻人。当我在你这个年纪时，我手持战刃对抗燃烧军团本身，我埋葬的朋友多得数不清。如今我的日子很平静，我在这里度过，看着树叶。$B$B是什么让你来找一个老兵的，$c？', '<年迈的精灵倚在栏杆上，目光落在下方远处的树冠上。>$B$B啊，一个年轻人。当我在你这个年纪时，我手持战刃对抗燃烧军团本身，我埋葬的朋友多得数不清。如今我的日子很平静，我在这里度过，看着树叶。$B$B是什么让你来找一个老兵的，$c？', 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (930450, 930451, 930452);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(930450, 25002),
(930450, 175050),
(930451, 25008),
(930451, 102056),
(930452, 930452);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (930450, 930451, 930452);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(930450, 0, 3, '我想接受守护者的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0),
(930451, 0, 3, '我想接受游侠的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0),
(930452, 0, 0, '幽影卡尼让我来和你谈谈此生之后等待着什么。', 0, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` IN (930450, 930451, 930452) AND `SourceTypeOrReferenceId` IN (14, 15);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(14, 930450, 25002, 0, 0, 15, 0, 131072, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Guardian'),
(14, 930450, 175050, 0, 0, 15, 0, 131072, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Guardian'),
(15, 930450, 0, 0, 0, 15, 0, 131072, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Guardian'),
(14, 930451, 25008, 0, 0, 15, 0, 1048576, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Ranger'),
(14, 930451, 102056, 0, 0, 15, 0, 1048576, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Ranger'),
(15, 930451, 0, 0, 0, 15, 0, 1048576, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Ranger'),
(15, 930452, 0, 0, 0, 9, 0, 200038, 0, 0, 0, 0, 0, '', 'Thalador - option only while Call of the Shadowlands is taken');

-- ---------------------------------------------------------------------------
-- 2. Chain creatures and credit markers
-- ---------------------------------------------------------------------------
-- 9300350 Exodite Telusaara: the Sun Cleric trainer letter 650155 names (INFERRED new entry: no cache record)
-- 299237 Alyissia: Cultist "Going MAD!" target: the stock warrior trainer's name, display 1721 and sword
--   (SOURCED-CACHE creaturecache 3593 keeps name and display); neutral faction 7 so that she fights back without
--   attacking passers-by or drawing the sentinels
-- 299227 Satyr Trickster: Knight of Xoroth "The Demon Inside" target (name from the quest text); the Bleakheart
--   Trickster satyr (display 2018) and its demon faction 90, INFERRED
-- 299327 Alanor: Barbarian "Welcome to the Warband" target ("Kill Alanor ... bring her head back"): a night elf
--   woman who failed the Warband (display 2183) with a great axe, neutral faction 7, INFERRED
-- 9300351 Suspicious Night Elf: Bloodmage "Blood Is Power": the "suspicious Night Elf in the Grell camps" who
--   holds the Tome of Blood; the grells' own faction 189 (he is one of them), hooded display 2530, INFERRED
-- 9300352 Brim: Ranger chain: Hydriel's falcon Brim (name from 200005); the Hunting Hawk display 81083 of this
--   realm's own Hunting Hawk 116130, INFERRED
-- 9300353 Thalador: Reaper "Call of the Shadowlands": "an old elf who is nearing his end ... he lives a quaint
--   life in Aldrassil"; Elder Moonwarden's white-haired look (display 15621), INFERRED
-- 9300354 Wandering Herbalist: Witch Hunter "The Hunt Begins": the witch in her disguise, a night elf herbalist
--   (display 4182, Cylania Rootstalker's look); the Witcher's Torch reveals her, INFERRED
-- 685015 [KC] Splash Exodite Telusaara: Poisoning the World objective 1: Telusaara credits it on the Mysterious
--   Concoction
-- 685016 [KC] Splash Darkslayer Harrendor: Poisoning the World objective 2
-- 685017 [KC] Splash Baarelam of the Auchenai: Poisoning the World objective 3
-- 685032 Invisible Dummy (Starcaller1): SOURCED-CACHE name; waits in the Shadowglen moonwell and credits 685031
--   to a player who steps into the water
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(299237, '阿莉西娅', NULL, 0, 4, 4, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(299227, '萨特欺诈者', NULL, 0, 4, 4, 0, 90, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 3, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(299327, '阿拉诺', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(9300351, '可疑的暗夜精灵', NULL, 0, 3, 3, 0, 189, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 9300351, '', 0, 1, 1, 1, 1, 0, ''),
(9300352, '布里姆', '海德里尔的猎鹰', 0, 3, 3, 0, 35, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 1, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 0, ''),
(9300353, '萨拉多', NULL, 930452, 10, 10, 0, 80, 1, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 0, ''),
(9300354, '流浪草药师', NULL, 0, 4, 4, 0, 80, 0, 1, 1.14286, 20, 0, 2000, 2000, 8, 0, 2048, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 0, ''),
(685015, '[KC] 溅水 流放者泰卢萨拉', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 130, ''),
(685016, '[KC] 溅水 黑暗杀手哈伦多', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 130, ''),
(685017, '[KC] 溅水 奥金尼的巴雷拉姆', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 130, ''),
(685032, '隐形假人（唤星者1）', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 130, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (299227, 299237, 299327, 685015, 685016, 685017, 685032, 9300351, 9300352, 9300353, 9300354);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(299237, 0, 1721, 1, 1),
(299227, 0, 2018, 1, 1),
(299327, 0, 2183, 1, 1),
(9300351, 0, 2530, 1, 1),
(9300352, 0, 81083, 1, 1),
(9300353, 0, 15621, 1, 1),
(9300354, 0, 4182, 1, 1),
(685015, 0, 11686, 1, 1),
(685016, 0, 11686, 1, 1),
(685017, 0, 11686, 1, 1),
(685032, 0, 11686, 1, 1);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (299237, 299327, 9300351);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(299237, 1, 1899, 0, 0),
(299327, 1, 14475, 0, 0),
(9300351, 1, 2711, 0, 0);

-- ---------------------------------------------------------------------------
-- 3. World objects
-- ---------------------------------------------------------------------------
-- 9301350 Training Wand: Chronomancer "Perfect Timing": the wand lying where Kaleidormu left it (wand model
--   100515 of the stock chest Galgosh's Other Bone)
-- 9301351 Eye of the Beholder: Runemaster "Runes of Power": the gemstone the riddle points to (EyeOfAzora model
--   621 of the stock chest Ryson's All Seeing Eye, standing on the floor as the other zones' Eye chests do)
-- 9301352 Skull of L'ok: Felsworn "Coming into Demonhood": the demon skull (skull model 4173 of Horgus' Skull)
-- 9301353 Lost Pendant: Sun Cleric "Lost Pendant" (necklace model 63520 of the CoA Frozen Pendant 356439)
-- 9301354 Scrap Metal: Tinker "Ingenuity At It's Finest!" (gnome steel plate 450 of the stock Super Strong Metal
--   Plate)
-- 9301355 Statue of Uther: Templar "A Quiet Life": Uther's statue (UtherStatue.mdx, display 6815 of the stock
--   Uther's Statue 181653)
-- 9301356 Ritual Circle: Necromancer chain: the ritual circle (the Dire Maul warlock circle 5812); ends Call of
--   Death, gives and ends Death Calls, gives Call of the Dead; SmartGameObjectAI credits and summons
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`)
VALUES
(9301350, 3, 100515, '训练魔杖', '', 1, 43, 9301350, 0, 1, 0, 0, 0, 0, 200167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301351, 3, 621, '观者之眼', '', 1, 43, 9301351, 0, 1, 0, 0, 0, 0, 200111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301352, 3, 4173, '洛克的头骨', '', 1.2, 43, 9301352, 0, 1, 0, 0, 0, 0, 200021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301353, 3, 63520, '遗失的吊坠', '', 1, 43, 9301353, 0, 1, 0, 0, 0, 0, 200061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301354, 3, 450, '废金属', '', 0.8, 43, 9301354, 0, 1, 0, 0, 0, 0, 200067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301355, 5, 6815, '乌瑟尔的雕像', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301356, 2, 5812, '仪式法阵', '', 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI')
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`), `AIName` = VALUES(`AIName`);

-- ---------------------------------------------------------------------------
-- 4. Quests
-- ---------------------------------------------------------------------------
-- The Ranger's Path (200005) carries the Northshire copy's map point (-8799.29, -412.93) in the cache;
-- it points at Brim's glade here, the quest's own target (DERIVED). The Stolen Power Core (200093):
-- ObjectiveText1 is '0' in the cache (a CoA data quirk on its seven copies only); left blank.
-- RewardNextQuest (the next step is offered at turn-in): questcache NextQuestInChain where the next quest is in
--   this file: 200005->200006, 200006->200007, 200046->200047, 200047->200048, 200092->200093, 200093->200094,
--   200131->200132, 200132->200133.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(650141, 2, 2, 2, -526, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '战士的信件', '前往暗影谷寻找阿曼达。', '有人嘱咐我把这个交给你，$N。这是一块古老的石板，刻有原始的野蛮人符文，脉动着原始怒火。石头本身散发着狂野的力量，它似乎来自阿曼达——在暗影谷传授野蛮人之道的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找阿曼达。', 0, 0, 0, 0, 0, 0, 0, 0, 650141, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与阿曼达交谈', '', '', ''),
(650142, 2, 2, 2, -516, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '血法师的信件', '前往暗影谷寻找阿拉马杜斯。', '有人嘱咐我把这个交给你，$N。这是一卷猩红卷轴，沾着看起来可疑地像血迹的东西。羊皮纸有节奏地脉动着黑暗魔法能量，它似乎来自阿拉马杜斯——在暗影谷修行这些禁忌之术的血法师。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找阿拉马杜斯。', 0, 0, 0, 0, 0, 0, 0, 0, 650142, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与阿拉马杜斯交谈', '', '', ''),
(650143, 2, 2, 2, -530, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '时空信件', '前往暗影谷寻找卡莱多姆。', '有人嘱咐我把这个交给你，$N。这是一份似乎同时存在于多个时刻的时空手稿。文字在我眼前变换，显示过去与未来的片段，它似乎来自卡莱多姆——在暗影谷传授时光术士之道的青铜龙。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找卡莱多姆。', 0, 0, 0, 0, 0, 0, 0, 0, 650143, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与卡莱多姆交谈', '', '', ''),
(650144, 2, 2, 2, -522, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '低语之书', '前往暗影谷寻找赛琳娜·影歌。', '有人嘱咐我把这个交给你，$N。这是一份低语羊皮纸，上面覆满了在不被直接注视时会变换的符号。奇怪的声音从里面回响，它似乎来自赛琳娜·影歌——在暗影谷与禁忌力量沟通的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找赛琳娜·影歌。', 0, 0, 0, 0, 0, 0, 0, 0, 650144, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与赛琳娜·影歌交谈', '', '', ''),
(650145, 2, 2, 2, -517, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '恶魔契约', '前往暗影谷寻找邪能触碰者弗洛齐。', '有人嘱咐我把这个交给你，$N。这是一份被绿色邪能火焰缠绕的恶魔契约。羊皮纸上带有灼烧双眼的地狱文字，它似乎来自邪能触碰者埃利里——在暗影谷教导他人束缚恶魔力量的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找邪能触碰者弗洛齐。', 0, 0, 0, 0, 0, 0, 0, 0, 650145, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与邪能触碰者埃利里交谈', '', '', ''),
(650146, 2, 2, 2, -529, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '神圣守护', '前往暗影谷寻找内德里斯·暗击。', '有人嘱咐我把这个交给你，$N。这是一份刻有庄严保护誓言的神圣守护。羊皮纸散发着坚不可摧的防御光环，它似乎来自内德里斯·暗击——将毕生奉献给保护他人的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找内德里斯·暗击。', 0, 0, 0, 0, 0, 0, 0, 0, 650146, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与内德里斯·暗击交谈', '', '', ''),
(650147, 2, 2, 2, -518, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '黑暗骑士精神', '前往暗影谷寻找阿赫拉瓦拉。', '有人嘱咐我把这个交给你，$N。这是一份带有克索诺斯印章的黑暗宣告，缠绕着冰冷的暗影火焰。文件中谈及以黑暗服务于光明，它似乎来自阿赫拉瓦拉——在暗影谷行走于这条危险道路上的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找阿赫拉瓦拉。', 0, 0, 0, 0, 0, 0, 0, 0, 650147, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与阿赫拉瓦拉交谈', '', '', ''),
(650148, 2, 2, 2, -521, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡束缚法典', '前往暗影谷寻找奥金尼的巴雷拉姆。', '有人嘱咐我把这个交给你，$N。这是一本骨制装订的法典，让周围的空气都变冷了。我能听到从其书页中传出的微弱亡者低语，它似乎来自奥金尼的巴雷拉姆——在暗影谷修行死灵法术的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找奥金尼的巴雷拉姆。', 0, 0, 0, 0, 0, 0, 0, 0, 650148, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与奥金尼的巴雷拉姆交谈', '', '', ''),
(650149, 2, 2, 2, -531, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '元素召唤', '前往暗影谷寻找普里穆拉。', '有人嘱咐我把这个交给你，$N。这是一份噼啪作响着原始能量的元素卷轴。微型风暴、火焰和大地震颤在其表面旋转，它似乎来自普里穆拉——在暗影谷号令元素的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找普里穆拉。', 0, 0, 0, 0, 0, 0, 0, 0, 650149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与普里穆拉交谈', '', '', ''),
(650150, 2, 2, 2, -505, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '守望者的呼唤', '前往暗影谷寻找海德里尔·羽翔。', '有人嘱咐我把这个交给你，$N。这是一份带有深野痕迹的自然羊皮纸——松针、苔藓，以及古老森林的气息。它似乎来自海德里尔·羽翔——保护暗影谷荒野的游侠。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找海德里尔·羽翔。', 0, 0, 0, 0, 0, 0, 0, 0, 650150, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与海德里尔·羽翔交谈', '', '', ''),
(650151, 2, 2, 2, -508, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '灵魂收割', '前往暗影谷寻找幽影卡尼。', '有人嘱咐我把这个交给你，$N。这是一封用黑色皮革装订的阴森信件，似乎会吸走周围的光线。秋末的气息附着在它的书页上，它似乎来自幽影卡尼——在暗影谷行走于生死之间的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找幽影卡尼。', 0, 0, 0, 0, 0, 0, 0, 0, 650151, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与幽影卡尼交谈', '', '', ''),
(650152, 2, 2, 2, -527, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '铭刻石板', '前往暗影谷寻找雷瑟尔·达尔特拉尔。', '有人嘱咐我把这个交给你，$N。这是一块刻有脉动着原始力量的发光符文的石板。这些符号似乎比文明本身还要古老，它似乎来自雷瑟尔·达尔特拉尔——居住在暗影谷的符文大师。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找雷瑟尔·达尔特拉尔。', 0, 0, 0, 0, 0, 0, 0, 0, 650152, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与雷瑟尔·达尔特拉尔交谈', '', '', ''),
(650153, 2, 2, 2, -506, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '天界指引', '前往暗影谷寻找女猎手娜莉亚。', '有人嘱咐我把这个交给你，$N。这是一幅包含闪烁着真实星光的星图的天界图表。羊皮纸尽管散发着空灵的寒意，摸起来却温暖，它似乎来自女猎手娜莉亚——在暗影谷研究星辰的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找女猎手娜莉亚。', 0, 0, 0, 0, 0, 0, 0, 0, 650153, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与女猎手娜莉亚交谈', '', '', ''),
(650154, 2, 2, 2, -525, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '雷霆呼唤', '前往暗影谷寻找库鲁。', '有人嘱咐我把这个交给你，$N。这是一份噼啪作响着电能的风暴手稿。雷声从它的书页中低低回响，它似乎来自库鲁——在暗影谷号令暴风的风暴使者。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找库鲁。', 0, 0, 0, 0, 0, 0, 0, 0, 650154, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与库鲁交谈', '', '', ''),
(650155, 2, 2, 2, -507, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '太阳祝福', '前往暗影谷寻找流放者泰卢萨拉。', '有人嘱咐我把这个交给你，$N。这是一份散发着黎明温暖光芒的金色经文。受祝福的羊皮纸闪耀着治疗能量，它似乎来自流放者泰卢萨拉——将光明带到暗影谷的太阳祭司。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找流放者泰卢萨拉。', 0, 0, 0, 0, 0, 0, 0, 0, 650155, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与流放者泰卢萨拉交谈', '', '', ''),
(650156, 2, 2, 2, -524, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '神圣誓言', '前往暗影谷寻找艾蕾奥拉。', '有人嘱咐我把这个交给你，$N。这是一份写在受祝福羊皮纸上的神圣誓言，散发着神圣光芒。这份文件让附近的心灵充满勇气，它似乎来自艾蕾奥拉——在暗影谷担任圣殿骑士的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找艾蕾奥拉。', 0, 0, 0, 0, 0, 0, 0, 0, 650156, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与艾蕾奥拉交谈', '', '', ''),
(650157, 2, 2, 2, -520, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '机械图纸', '前往暗影谷寻找乔罗·迅尖。', '有人嘱咐我把这个交给你，$N。这是充满复杂蓝图的技术图纸。我能听到从书页中传出的微弱时钟机械滴答声，它似乎来自乔罗·迅尖——在暗影谷工作的工匠。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找乔罗·迅尖。', 0, 0, 0, 0, 0, 0, 0, 0, 650157, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与乔罗·迅尖交谈', '', '', ''),
(650158, 2, 2, 2, -515, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '毒素配方', '前往暗影谷寻找科拉尔·毒牙。', '有人嘱咐我把这个交给你，$N。这是一本散发着异域毒素气味的皮革汇编，绿色蒸汽偶尔从书页间渗出。它似乎来自科拉尔·毒牙——在暗影谷研究毒液与解药之术的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找科拉尔·毒牙。', 0, 0, 0, 0, 0, 0, 0, 0, 650158, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与科拉尔·毒牙交谈', '', '', ''),
(650159, 2, 2, 2, -519, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '审判官的命令', '前往暗影谷寻找黑暗杀手哈伦多。', '有人嘱咐我把这个交给你，$N。这是一份燃烧着正义之火的受祝福命令。它的神圣文字旨在让腐化者的心中充满恐惧，它似乎来自黑暗杀手哈伦多——在暗影谷追猎腐化的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往暗影谷寻找黑暗杀手哈伦多。', 0, 0, 0, 0, 0, 0, 0, 0, 650159, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '在暗影谷与黑暗杀手哈伦多交谈', '', '', ''),
(200005, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200006, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10688, 728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '游侠之路', '在暗影谷找到海德里尔的猎鹰。', '成为游侠不仅仅是拿起弓，或在树荫下战斗，$n。成为游侠，其核心意味着你与荒野有着深刻的联系。你是它的保护者。我派我的猎鹰布里姆去侦察周围地区，但它还没回来。请找到它，并指引它回到我这里。', '', '在暗影谷找到海德里尔的猎鹰。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200006, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200007, 3, 0, 0, 0, 0, 0, 0, 662316, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '突袭！', '杀死可疑的生物。', '附近的灌木丛里有什么东西在沙沙作响。你遭到了攻击！', '', '照料猎鹰。', 299222, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200007, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 0, 2, 70, 0, 0, 0, 0, 0, 662317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 818000, 1, 727000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '猎鹰是朋友', '对猎鹰使用红色药瓶。', '你发现猎鹰身上附着一张纸条，上面写着：<如果你在读这个，你已经找到了我的朋友。纸条上附着一小瓶红色药剂。如果它受伤了，就给它，它会知道接下来该怎么做。>', '', '回到你的训练师那里。', 685011, 0, 0, 0, 1, 0, 0, 0, 662317, 662316, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '照料布里姆的伤口', '', '', ''),
(200018, 2, 3, 3, -516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 661317, 1, 1505015, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '血即力量', '从可疑的暗夜精灵那里收集鲜血之书。', '啊，$C。你的日子终于到了。鲜血。你此刻应该已经以某种方式对它相当熟悉了。血即生命。但鲜血，你很快就会明白，也是力量。我要你想象一下，在一个你能控制其他生物体内生命精髓的世界里，你能做到什么。只需一挥手就能碾碎他们的内脏……令人陶醉。假以时日，你会学到更多。现在，我需要你协助我进行自己的研究，通过这个我也能帮你学习。附近有一本书，被一个在格雷尔营地里的可疑暗夜精灵拿着，我需要它来进行研究。替我收集它。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661316, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200021, 2, 3, 3, -517, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 727002, 1, 727001, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '步入恶魔之道', '取回洛克的头骨。', '于是就这样开始了。你好，$N。我已经能感觉到你开始感受到在你血脉中燃烧的残余邪能之力。我羡慕你，曾经有一段时间我还不像现在这样习惯它。你是恶魔猎手，因此，你处于凡人与恶魔之间的边界。然而，不像某些人，你和我不会堕入邪能魔法提供的力量陷阱，而许多其他修行者却常常在不知不觉中堕入其中。也许有一天你甚至会强大到能化身为恶魔形态，但现在，你的邪能强化将奇妙地激发出你真正的潜力。让我说清楚，部落和联盟对我们毫无用处，但他们必须相信我们是他们的盟友，这样我们更伟大的目标才能实现。不要忘记这一点。当一切达到顶点时，不要忘记你真正的效忠对象在哪里。现在，一个考验。一个强大恶魔的头骨，名为洛克，被放置在周围地区。替我找到它。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661319, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200025, 2, 3, 3, -515, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 662217, 0, 0, 292200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '毒害世界', '把神秘药剂泼洒在附近的居民身上。', '欢迎，$C。你是来给水井下毒的，可以这么说吗？我总是愿意教导新的、有抱负的剧毒艺术大师，但作为回报，我有时需要帮个忙。这没问题，对吧？看看你周围。有各种肤色的居民。但他们是纯洁的，这很好，他们未受污染。我这里有一瓶我调制的药剂。它的作用，你不必关心。我需要你做的是把它泼在三个特定的人身上；第一，流放者泰卢萨拉，第二，黑暗杀手哈伦多，第三，奥金尼的巴雷拉姆。完成后来找我，我会让你的时间值得。', '', '回到你的训练师那里。', 685015, 685016, 685017, 0, 1, 1, 1, 0, 662217, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '流放者泰卢萨拉', '黑暗杀手哈伦多', '奥金尼的巴雷拉姆', ''),
(200031, 2, 3, 3, -506, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300100, 1, 300101, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '艾露恩的勇士', '前往附近的月井去赞美艾露恩。', 'Ishnu-alah，$N。我看艾露恩没有忘记你，很好，我正需要一个如此受祝福的人。作为唤星者，我们是艾露恩的勇士，因此，我们必须执行她的意志——无论它把我们带到哪里，无论它是什么。但是，当大地处于和平之中时，一个人必须学会仍然向艾露恩致敬，这样当大地再次充满战争与绝望时，她就会在那里指引我们。前往附近的月井朝圣，踏入它的魔法之水，冥想，向女神致敬，然后回到我这里。', '', '回到你的训练师那里。', 685031, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '向艾露恩致敬', '', '', ''),
(200036, 2, 3, 3, -518, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 2000124, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '内在的恶魔', '杀死暗影谷的萨特欺诈者。', '啊哈，$N，欢迎，你喜欢你的凡人外表吗？时候到了，我们要一步步向艾泽拉斯释放地狱。如你所知，我们数量有限，但我们的队伍会随时间壮大。我想我不需要提醒你，联盟的困境不是你首要关心的事。他们只是一个工具，一面盾牌，好让我们推进自己的目标。每一步，每一刻，我们都必须在这个世界上制造混乱，但我们绝不能泄露我们的秘密——我们是恶魔——因此，我有个小任务给你。有一个不应该在这里的萨特。他正在给暗影谷的当地居民制造麻烦。我的上级让我处理他。杀了他，萨特在这里不受欢迎。', '', '回到你的训练师那里。', 299227, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200038, 2, 3, 3, -508, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 540070, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '暗影之地的召唤', '拜访奥达希尔的萨拉多。', '欢迎，$C。我听说过很多关于你来到暗影谷的事。我有很多要教你。但你来得正是时候，因为我有个特别的任务给你。在奥达希尔这里有一位年迈的精灵已近末日。在他巅峰时期，他是战场上的巨兽，夺走了许多生命。但现在，他在奥达希尔过着平静的生活。他会死，暗影之地会收走他。但今天还不是他的日子。然而，我能感觉到他渴望离开这个位面，但他不知道离开后会面对什么。你可能没想到会有这样的任务，但我想谦卑地请你去看望他，聊一聊。', '', '回到你的训练师那里。', 685022, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '与萨拉多交谈', '', '', ''),
(200046, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200047, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡的召唤', '找到并与仪式法阵互动。', '你好，$C。很高兴你今天能来墓地加入我。美好的一天，不是吗？看来你已经对亡灵有所了解了，你复活死者的能力让我印象深刻。也许你能为我所用，我相信你不会介意。我有一个特别强大的亡灵想要召唤，但我不敢亲自尝试——我太重要了。然而，你在这里成功的话能学到很多。如果你失败了呢？我就干脆把你复活成我的仆从。别想太多。让我在地图上标记我举行仪式的确切位置。你必须收集特定物品才能完成仪式。现在，去吧。', '', '与仪式法阵互动。', 685121, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '找到仪式法阵', '', '', ''),
(200047, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200048, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡在召唤', '杀死格雷尔，拾取他们的骨头、血肉和头骨。', '为了召唤亡灵怪物，我必须把以下材料带到仪式法阵。—— 骨头 —— 新鲜血肉 —— 头骨 附近的格雷尔正好有这些东西。', '', '回到仪式法阵。', 0, 0, 0, 0, 0, 0, 0, 0, 458421, 458422, 458423, 0, 0, 0, 1, 1, 1, 0, 0, 0, '', '', '', ''),
(200048, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 660053, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '亡者的召唤', '杀死亡灵怪物。', '<材料消散成一阵烟雾融入仪式法阵> ……似乎有些不对劲。召唤失败了，再次检查仪式法阵。但要小心，它不稳定。', '', '回到你的训练师那里。', 299232, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200056, 2, 3, 3, -519, 0, 0, 0, 0, 0, 0, 0, 4, 66, 0, 0, 0, 0, 0, 662219, 0, 0, 717002, 1, 410005, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '狩猎开始', '揭露女巫并杀死她。', '我能感觉到一股邪恶的存在。你也能感觉到，对吧？这就是你为什么在最合适的时机来找我。这里有一个。一个女巫。充满邪恶和恶意。愿圣光祝福我们即将要做的事。来，拿着这个火炬。她就在这里，我已经在地图上标记了她的位置。对她使用火炬来揭露她的真面目。杀了它。不留情。杀死后回到我这里。该死的女巫。', '', '回到你的训练师那里。', 685221, 299333, 0, 0, 1, 1, 0, 0, 662219, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '找到女巫', '', '', ''),
(200061, 2, 3, 3, -507, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 454381, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '遗失的吊坠', '找到遗失的吊坠。', '你好，$C。你来得正是时候。我丢了一个吊坠，它相当强大。丢可能不是合适的词，但算了，我们最好别纠结于语义。好吧，我想既然你要帮我，我至少该解释一下发生了什么。事情是这样的。我试图向格雷尔展示他们也可以转向圣光……但结果并不好。他们把我赶出了他们的营地，我勉强活着逃了出来。匆忙之中，我掉了吊坠。请帮我找到它。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 663319, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200067, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 415000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '巧夺天工！', '收集3块废金属。', '你好。$N，是吧？欢迎来到奥达希尔。你看起来是搞工匠的料，我正想找一个像你这样的人。我想做一把特殊的枪，可以说是自制的枪，但我需要更多的金属。格雷尔营地附近有一些金属，可以用来为你和我造一把枪。给我收集一些，我就去捣鼓起来！', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 663320, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, '', '', '', ''),
(200073, 2, 3, 3, -522, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 532803, 1, 532804, 1, 532881, 1, 0, 0, 0, 0, 0, 0, 1, 10348.9, 700.849, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '陷入疯狂！', '杀死阿莉西娅。', '你在最合适的时机到来了，$N。我听到了彼岸的低语。它告诉我一个对我们事业特别危险的个体。我需要你迅速消灭他们。如果你做到这一点，我会奖励你一把适合上古之神追随者的武器。你要找的人就在奥达希尔里面。我想在外面某个地方。她叫“阿莉西娅”。终结她。', '', '回到你的训练师那里。', 299237, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200079, 2, 3, 3, -524, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 52855, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '平静的生活', '参观暗影谷的乌瑟尔雕像。', '欢迎加入教团，$N。我一直在等待你的到来。作为圣殿骑士，我们已经晋升到神圣信仰的最高教团，因此我们肩负着相当大的责任。圣骑士和牧师与我们并肩工作，通过圣光维护这个世界的和平，我们每个人，虽然各有微妙不同，都希望再次将圣光带给艾泽拉斯。尽管它有种种危险。我们的道路可能不同，但有人可能会说它更加严苛。成为圣殿骑士意味着要极其精确地控制你的情绪、战斗节奏和心智。为了保持自己的健康，我喜欢在一座山丘上冥想，那里有第三次战争后一些来访的圣骑士为纪念一位强大的圣骑士而竖立的雕像。请亲自去那里看看。回来时告诉我你的体验。', '', '参观暗影谷的乌瑟尔雕像。', 685037, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '参观乌瑟尔雕像', '', '', ''),
(200092, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 200093, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '你自有你的用处', '协助金布尔斯·迅尖搞他的工匠把戏。', '你好，$N，很高兴认识你，在你到来之前我就听说过很多关于你的事。你来找我学习，作为$C你已经证明了自己是奥术的勤勉学生。但我们召唤的力量远不止闪电和电流。假以时日，你会明白你的潜力有多深。但现在……我确实有个小任务给你。附近有个叫“金布尔斯·迅尖”的人，他总是找我帮忙搞他的……工匠把戏……他需要一些闪电，$N，但我很忙。你能去帮帮他吗？', '', '协助金布尔斯·迅尖搞他的工匠把戏。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200093, 2, 3, 0, -520, 0, 0, 0, 0, 0, 0, 200094, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '被盗的能量核心', '杀死格雷尔，直到其中一个掉落能量核心。', '你好啊，$N！很高兴你的训练师终于派人来帮我了。这是个非常简单的任务，我只需要一些能量！但不幸的是，我的能量核心被附近的一个格雷尔偷走了。你能帮我拿回来吗？', '', '回到金布尔斯·迅尖那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200094, 2, 3, 0, -525, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 663317, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴使者的任务', '告诉你的训练师你成功了。', '感谢你取回这个能量核心！你现在可以回去告诉你的训练师你为我做了什么。', '', '告诉你的训练师你成功了。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200106, 2, 3, 3, -526, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 532805, 1, 532806, 1, 395861, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '欢迎加入战团', '杀死阿拉诺，并把她的头带回来给你的训练师。', '哈！哈！欢迎，$N。很高兴你能加入战团。你可能会想，什么是战团？考虑到你的到来，我还以为你早就知道了。好吧，小$c，这将会是一次残酷的觉醒。战团是所有野蛮人、暴徒和壮汉聚集在一起，竞争看谁是最强壮、最残暴、最强大的个体的地方。那是我们真正考验自己的唯一方式。就是这个！你可能对此很陌生，但绝对没人会对你手下留情。你的第一个考验和其他所有新兵一样。有个家伙一直在捣乱、散布谣言，就因为她不够格，被拒绝加入战团。她叫阿拉诺。杀了她，哈哈哈！如果你能完成这个任务，我会奖励你一把适合你这种菜鸟的武器。活着回来，或者死。', '', '回到你的训练师那里。', 299327, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200111, 2, 3, 3, -527, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 661329, 0, 0, 293202, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '力量符文', '解开刻在符文石上的谜语。', '你好，$N。很高兴你终于能来加入我，我一直在等待你的到来。今天，给像你这样有抱负的符文大师上一堂简单的解题课。也许你会成功，也许不会。来，我有一个符文。符文上刻着一个谜语。解开谜语，然后回到我这里。要提示？我能告诉你的最好提示就是，这个谜语的答案就在奥达希尔里面。不在外面。你回来时我就知道你解开了没有，别担心。成功的话，我会奖励你。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661330, 661329, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', '', '', ''),
(200131, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 200132, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '以力量求和平', '在暗影谷找到吉尔沙兰·风行者。', '很高兴认识你，$N。我们有很多工作要一起完成，而你，我的朋友，有很多要学！我们是守护者，因此我们的任务就是，字面意义上的，守护艾泽拉斯。从偶尔抢劫路人的恶棍，到对我们人民构成威胁的更可怕的怪物。我们是响应召唤的人。而且，正如我的例子所示，我今天就有这样一个任务给你。如果你能完成它，你就完全准备好进一步训练了。附近有个叫吉尔沙兰·风行者的人，也许你已经见过他了？我相信他需要我的帮助。去看看他需要什么。', '', '在暗影谷找到吉尔沙兰·风行者。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200132, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 200133, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '防御优先', '杀死格雷尔，直到你找到一把适合吉尔沙兰·风行者的武器。', '你好，$N。我看你是来帮忙的，太好了！我需要一把自卫的武器，如果你能帮我弄到一把，我会奖励你。附近的格雷尔……我一直在研究它们。其中一个有一把特别的武器，对我来说再合适不过了。如果你能给我弄到一把完好无损的，那就完美了！', '', '回到吉尔沙兰·风行者那里。', 0, 0, 0, 0, 0, 0, 0, 0, 662330, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200133, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 0, 2, 25, 0, 0, 0, 0, 0, 0, 0, 0, 245712, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '帮助朋友', '带着成功的消息回到你的训练师那里。', '你把这个带给我做得很好。现在，我也会为你做好事。来，我在离这里不远的蜘蛛矿里找到了这面盾牌。愿它好好为你服务。', '', '带着成功的消息回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200161, 2, 3, 3, -531, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 296200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '熊之道', '杀死8只蛛网蜘蛛。', '欢迎，$C。我在奥达希尔等待你的到来。你来找我寻求智慧，因此我会给予。成为大师级$C的第一步就是掌握熊之道。每一次精进都会带来新的挑战，但现在，让我们专注于解锁你内心的野性本能意味着什么。熊是巨大、凶猛的生物。它们只知道生存所需的东西，那就是杀戮。想要从一头想要终结你生命的熊手中逃脱，几乎无计可施。通过熊，我们获得野性、凶残和力量，毫无怜悯。通过杀死附近洞穴中的蛛网蜘蛛来向我展示你理解了这一点，我会奖励你。', '', '回到你的训练师那里。', 1986, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200167, 2, 3, 3, -530, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 553122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '完美时机', '在奥达希尔找到卡莱多姆的魔杖。', '啊，$N，我早就看到你的到来了。现在是时候教你成为时光术士意味着什么了。编织空间与时间的织锦。等同于神……让我别太超前了。对你来说，$N，时光术士的世界是全新的，在我允许你带着如此潜在的力量存在于这个世界之前……你必须学会控制自己。作为时光术士，你是时间魔法的大师。这意味着你必须在最基础的层面上尊重时间。正好我把魔杖落在了这座建筑的某个地方。你有2分钟。替我找到它。', '', '回到卡莱多姆那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661335, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

UPDATE `quest_template` SET `TimeAllowed` = 120 WHERE `ID` = 200167;

DELETE FROM `quest_template_addon` WHERE `ID` IN (200005, 200006, 200007, 200018, 200021, 200025, 200031, 200036, 200038, 200046, 200047, 200048, 200056, 200061, 200067, 200073, 200079, 200092, 200093, 200094, 200106, 200111, 200131, 200132, 200133, 200161, 200167, 650141, 650142, 650143, 650144, 650145, 650146, 650147, 650148, 650149, 650150, 650151, 650152, 650153, 650154, 650155, 650156, 650157, 650158, 650159);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(650141, 0, 2048, 456, 1, 0),
(650142, 0, 524288, 456, 1, 0),
(650143, 0, 2097152, 456, 1, 0),
(650144, 0, 16777216, 456, 1, 0),
(650145, 0, 8192, 456, 1, 0),
(650146, 0, 131072, 456, 1, 0),
(650147, 0, 65536, 456, 1, 0),
(650148, 0, 4194304, 456, 1, 0),
(650149, 0, 1073741824, 456, 1, 0),
(650150, 0, 1048576, 456, 1, 0),
(650151, 0, 536870912, 456, 1, 0),
(650152, 0, 2147483648, 456, 1, 0),
(650153, 0, 33554432, 456, 1, 0),
(650154, 0, 32768, 456, 1, 0),
(650155, 0, 67108864, 456, 1, 0),
(650156, 0, 262144, 456, 1, 0),
(650157, 0, 134217728, 456, 1, 0),
(650158, 0, 268435456, 456, 1, 0),
(650159, 0, 16384, 456, 1, 0),
(200005, 0, 1048576, 650150, 0, 0),
(200006, 0, 1048576, 200005, 1, 0),
(200007, 0, 1048576, 200006, 1, 0),
(200018, 0, 524288, 650142, 0, 0),
(200021, 0, 8192, 650145, 0, 0),
(200025, 0, 268435456, 650158, 1, 0),
(200031, 0, 33554432, 650153, 0, 0),
(200036, 0, 65536, 650147, 0, 0),
(200038, 0, 536870912, 650151, 0, 0),
(200046, 0, 4194304, 650148, 0, 0),
(200047, 0, 4194304, 200046, 0, 0),
(200048, 0, 4194304, 200047, 0, 0),
(200056, 0, 16384, 650159, 1, 0),
(200061, 0, 67108864, 650155, 0, 0),
(200067, 0, 134217728, 650157, 0, 0),
(200073, 0, 16777216, 650144, 0, 0),
(200079, 0, 262144, 650156, 0, 0),
(200092, 0, 32768, 650154, 0, 0),
(200093, 0, 32768, 200092, 0, 0),
(200094, 0, 32768, 200093, 0, 0),
(200106, 0, 2048, 650141, 0, 0),
(200111, 0, 2147483648, 650152, 1, 0),
(200131, 0, 131072, 650146, 0, 0),
(200132, 0, 131072, 200131, 0, 0),
(200133, 0, 131072, 200132, 0, 0),
(200161, 0, 1073741824, 650149, 0, 0),
(200167, 0, 2097152, 650143, 0, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (200005, 200006, 200007, 200018, 200021, 200025, 200031, 200036, 200038, 200046, 200047, 200048, 200056, 200061, 200067, 200073, 200079, 200092, 200093, 200094, 200106, 200111, 200131, 200132, 200133, 200161, 200167, 650141, 650142, 650143, 650144, 650145, 650146, 650147, 650148, 650149, 650150, 650151, 650152, 650153, 650154, 650155, 650156, 650157, 650158, 650159);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(650141, '我能看到原始怒火在你的血脉中觉醒，$N！你选择了野蛮人的古老道路，拥抱流经那些拒绝被驯服之人血脉的狂野怒火。$B$B作为野蛮人，你将学会将内心最深处的狂怒引导为毁灭性的战斗技巧。你的敌人将在你的狂战士之怒前逃窜，而你的盟友将从你未驯服的勇气中汲取力量。荒野本身将成为你的盟友，教你像森林中的野兽一样战斗。$B$B这条道路不适合心灵或意志软弱者。你必须学会以智慧平衡怒火，以荣誉平衡狂怒。但对于掌握这种平衡的人来说，战场上没有比全力狂怒的野蛮人更可怕的力量。$B$B欢迎，荒野的兄弟。让你的训练开始吧！'),
(650142, '猩红之术如今流经你，$N。我能感觉到你血脉中的力量，愿意为更强大的魔法力量牺牲生命本身的意愿。你选择了血魔法的危险道路。$B$B作为血法师，你将学会操纵生命本身的精髓，将血液转化为原始魔法能量。你自己的生命力将为强大法术提供燃料，而你敌人的生命之力将成为你的武器。这是最原始也最危险的魔法。$B$B永远记住，每一次施法都有代价。你自己的血、敌人的血、牺牲之血——都成为你黑暗之术的组成部分。但对于那些勇敢到愿意付出这个代价的人来说，回报超越普通理解。$B$B猩红之路现在由你行走。愿你的力量随着每一滴洒出的血而增长。'),
(650143, '时间本身在你周围变换，$N！你选择了研究所有魔法技艺中最复杂也最危险的一门——操纵时间现实本身。很少有凡人具备时光术士所需的精神纪律。$B$B作为时光术士，你将学会减慢敌人直到他们像雕像一样移动，加速盟友到超人速度，甚至窥见过去与未来的事件回响。时间本身的织锦将屈从于你的意志。$B$B这种魔法要求完美的精确和坚定不移的专注。一次误算就可能将你困在时间循环中，在数秒内让你老化数十年，或更糟。但掌握这些技巧，你将在战斗中几乎不可触碰。$B$B时间之流等待你的命令。让我们从时间操纵的基本原理开始。'),
(650144, '既然你加入了我们，低语变得更响了，$N。我能听到上古存在谈论你的潜力，它们古老的声音乘着正常心智无法感知的风传来。你选择了禁忌知识之路。$B$B作为邪教徒，你将学会与超越凡人理解的实体沟通，通过危险的契约和诡异智慧获得力量。你的魔法将触及文明本身之前的力量。$B$B这些知识伴随着巨大的风险。低语能将脆弱的心智逼向疯狂，而你所接触的存在丝毫不关心凡人的事务。但对于那些有力量承受的人来说，宇宙本身的秘密触手可及。$B$B仔细聆听我教你的东西。上古存在一直在注视，它们不会容忍侍奉它们的人失败。'),
(650145, '邪能如今认出了你，$N。你的灵魂带有毫不犹豫拥抱恶魔力量之人的印记。在一个被火焰与毁灭统治的时代，只有足够强大去夺取腐化的人才能生存。$B$B作为恶魔猎手的一员，你将通过支配和契约束缚恶魔精髓，从扭曲虚空中撕扯出地狱盟友，将燃烧军团的火焰弯折于你的意志。这份力量从来就不该被约束。它存在就是为了被夺取。$B$B许多走上这条路的人因缺乏命令它的意志而被腐化吞噬。你不会。恶魔的低语不是警告，而是启示，是只提供给足够无情去聆听之人的真相。$B$B邪能火焰如今在你体内燃烧。让它们吞噬怀疑、怜悯和软弱。力量本身就是理由。愿这份馈赠以你的形象重塑世界。'),
(650146, '神圣守护在你周围增强，$N！你接受了最高贵的使命——成为永恒的守护者，毫不犹豫、毫无保留地将他人的安危置于自身之上。$B$B作为守护者，你将学会成为一座活的堡垒，你的身体与魔法在盟友与伤害之间形成不可穿透的屏障。你的防御技巧将使你几乎无懈可击，而你的保护法术将庇护整个队伍免受危险。$B$B这条道路要求无私的奉献。你将承受痛苦，让他人不必承受；面对死亡，让他人得以生存。荣耀与认可往往绕过那些阻止灾难而非制造灾难的人。但要知道，没有比保护无辜生命更高的荣誉。$B$B泰达希尔本身祝福你的保护誓言。准备好，守护者——世界非常需要你的牺牲。'),
(650147, '暗影拥抱你，而荣誉指引你，$N。你选择了最矛盾的的道路——以黑暗服务于光明，成为克索诺斯骑士。$B$B作为克索诺斯骑士，你将学会在保持道德原则的同时引导虚空能量和暗影魔法。你的黑暗法术将迷惑那些期待圣骑士般神圣魔法的敌人，而你正义的事业证明了他人的禁忌手段是正当的。$B$B这条道路行走在救赎与诅咒之间的刀刃上。你绝不能让黑暗吞噬你的目的，即使你从暗影中汲取力量。你的誓言约束你以任何必要的手段保护无辜者。$B$B虚空低语着轻松力量的承诺，但你的荣誉必须比任何诱惑都更强大。欢迎加入教团，黑暗圣骑士。'),
(650148, '死亡认你为它的仆人，$N，但不是它的主人。你选择了成为世界之间的牧者，引导灵魂归于应有的安息，并为正义的目的号令亡灵之力。$B$B作为死灵法师，你将学会与死者交谈，复活骷髅仆从，操纵生与死的精髓。但永远记住，这份力量的存在是为了维护自然秩序，而非嘲弄它。$B$B许多人恐惧死灵法术，只看到它可能带来的腐化。但真正的死灵法师充当生死之间边界的守护者，确保死者安息，并在需要时让他们的知识帮助生者。$B$B逝者的灵魂低语着对你选择的认可。明智地使用这份力量，愿你永远记住死亡不是终结，而是过渡。'),
(650149, '原始元素如今在你体内汹涌，$N！你选择了拥抱创世本身最原始的力量，成为土、风、火、水最纯粹形态的导管。$B$B作为仪祭师，你将学会以空前的力量和怒火号令元素魔法。你的法术将召唤火山爆发、毁灭性地震、飓风级狂风和山洪暴发。现实的基石本身将回应你的呼唤。$B$B这份力量来自世界的根基本身，比任何凡人设计的魔法都更古老、更危险。元素丝毫不关心文明的事务——它们只回应力量和尊重。显露弱点，它们就会吞噬你。$B$B原始力量已接受你为它们的勇士。愿你证明自己配得上驾驭创世本身的基本力量。'),
(650150, '荒野认出了自己的同类，$N！我能从你眼中看到森林的祝福，那种标志着真正游侠的荒野召唤。你选择了成为自然本身的守护者。$B$B作为游侠，你将学会在任何地形中潜行移动，像兄弟一样与野兽沟通，从暗影中以致命的精准出击。森林将隐藏你，动物将协助你，你的敌人将永远看不到死亡的逼近。$B$B泰达希尔的神圣丛林有很多东西要教你。你将学会读懂他人错过的迹象，在任何表面上追踪猎物，并在最严酷的荒野中生存。你的弓将唱响死亡之歌，你的刀刃将尝到那些威胁自然世界之人的鲜血。$B$B森林之灵欢迎它们的新保护者。愿你的箭矢飞行精准，愿你的道路对心怀不轨之人永远隐藏。'),
(650151, '永恒的收割在召唤你，$N。你选择了服务于生死循环本身，在指定时刻到来时成为灵魂的收割者。$B$B作为死神，你将学会感知一个存在的时刻何时到来，温柔地引导灵魂归于安息，并收割那些拒绝自然命运之人的生命之力。你的魔法从生死之间的边界汲取力量。$B$B这不是杀人者的道路，而是确保自然秩序延续的神圣代理者之路。你将学会区分应该被拯救的生命和必须终结的生命，区分仁慈与必要的职责。$B$B存在循环本身已选择你为它的仆人。愿你永远记住，你的目的不是带来死亡，而是确保生命的旅程到达应有的终点。'),
(650152, '古老的符文脉动着认可，$N！你选择了掌握文明所知最古老的魔法形式——以完美精确度将符号刻入石头与钢铁的力量。$B$B作为符文大师，你将学会铭刻比创造它们的文明更持久的魔法公式。你的附魔将被刻入现实的织锦中，创造出在其他魔法消退后仍长久持续的效果。$B$B这门艺术要求绝对的精确。一条错位的线就能将保护结界变成死亡陷阱，而完美的执行则能创造看似不可能的奇迹。你的工具是锤子和凿子，但你真正的武器是知识和耐心。$B$B诞生符文魔法的原始力量认可你的价值。愿你的铭刻完美无瑕，愿你的附魔永恒不朽。'),
(650153, '群星本身在你面前闪耀得更明亮，$N！你选择了研习天界之术，从无尽黑夜中在头顶旋转的遥远光芒中汲取魔法力量。$B$B作为唤星者，你将学会解读书写在天空中的宇宙图案，将星辰能量引导为毁灭性法术，并通过占星预言窥见未来。天空本身将成为你的力量来源。$B$B艾露恩的祝福已为你的这条道路做好了准备，但你将学会汲取所有星辰的力量，而不仅仅是我们月之女神。每个星座提供不同的礼物，每个天体为理解其本质的人提供独特的能量。$B$B宇宙力量欢迎它们的新学生。愿星光指引你的法术，愿天界智慧照亮你穿越黑暗的道路。'),
(650154, '雷霆在天际翻滚以表认可，$N！你选择了成为风暴本身的大师，将风与闪电的怒火作为你的武器。$B$B作为风暴使者，你将学会从晴空中召唤暴风雨，呼唤下劈裂山岳的闪电，乘着风本身投入战斗。大气本身将屈从于你的意志，成为毁灭性的力量武器。$B$B这种魔法如同暴风雨本身一样原始而狂野。你必须学会驾驭它的怒火而不被它吞噬，引导它的力量而不在它的混乱本质中迷失自己。风暴只尊重力量和决心。$B$B暴风之灵已将你标记为它们的勇士。愿你的闪电永不偏离目标，愿你的风永远带你走向胜利。'),
(650155, '圣光以光辉的温暖拥抱你，$N！你选择了成为治愈与希望的灯塔，引导黎明本身的纯净力量将黑暗从世界中驱逐。$B$B作为太阳祭司，你将学会治愈他人认为致命的伤口，净化已在凡人灵魂中扎根的腐化，呼唤只燃烧邪恶的净化之火。你的存在本身将为受苦者带来安慰。$B$B这条道路要求坚定不移的慈悲和对他人福祉的绝对奉献。你将耗尽自己治疗陌生人，冒着生命危险保护无辜者，面对他人逃避的黑暗。$B$B黎明本身祝福你神圣的使命。愿你的光芒永不黯淡，愿你永远为迷失在最深黑夜中的人带来希望。'),
(650156, '神圣正义如熔金般流经你，$N！你已宣誓圣殿骑士的神圣誓言，选择成为服务于正义本身的圣战士。$B$B作为圣殿骑士，你将学会将神圣力量引导为对邪恶的毁灭性打击，用受祝福的魔法治疗盟友，并在最黑暗的时刻作为不可动摇的信仰支柱屹立不倒。你的剑将由神圣意志指引，你的盾将由正义之怒赋予力量。$B$B这个使命要求绝对的道德清晰和对正义的不懈奉献。你必须是法官和行刑者、治疗者和保护者，全部由超越凡人理解的神圣智慧指引。$B$B圣光本身已选择你为它的勇士。愿你的信仰成为你的力量，你的信念成为你的武器，你的正义成为你永恒的指引。'),
(650157, '辉煌的创新在你脑海中迸发，$N！你选择了走上连接魔法与机械的道路，创造出将奥术力量与机械精确融合的奇迹。$B$B作为工匠，你将学会建造那些只懂传统魔法或世俗工程的人看来不可能的装置。你的发明将帮助盟友、迷惑敌人，并证明进步与保存可以和谐共存。$B$B泰达希尔似乎不太可能是机械之术的地方，但自然本身是最伟大的工程师。你将学会创造与自然力量合作而非对抗的装置，证明技术可以增强而非取代荒野的智慧。$B$B创新的齿轮为你转动。愿你的发明既是功能的奇迹，也是美的奇迹，在不抛弃自然世界的同时服务于进步。'),
(650158, '生死、毒药与解药的平衡如今流经你，$N。你选择了掌握毒素的双重本质——它们伤害的力量以及同等的治愈力量。$B$B作为剧毒术士，你将学会调配能击倒最强大敌人的致命毒液，但也创造能拯救他人认为无望生命的解药和治疗药剂。每种毒药都有其解药，每种毒素都有其疗法，只要理解其中的原理。$B$B这些知识承载着巨大的责任。杀死腐化野兽的同一化合物可能拯救中毒的孩子。你的智慧必须指引何时释放死亡，何时保全生命，因为你所驾驭的力量是双刃的。$B$B自然平衡认可你的理解。愿你的毒液对邪恶精准命中，愿你的解药为无辜者带来治愈。'),
(650159, '正义之火在你灵魂中燃烧，$N！你选择了将生命奉献给对腐化的永恒狩猎，成为誓要净化一切潜伏邪恶的猎魔人。$B$B作为猎魔人，你将学会识别愚弄他人的超自然威胁，使用专门设计来摧毁腐化生物的神圣武器，并抵抗那些注定你猎物的诱惑。你的职责是警惕隐藏在无辜面孔后的黑暗。$B$B这个使命要求持续的警惕和绝对的道德坚毅。你将面对看似朋友的敌人，对抗戴着美德面具的邪恶，做出他人永远不会理解的选择。这些知识的重担将沉重地压在你身上。$B$B圣光祝福你神圣的狩猎。愿你的武器对腐化永不失效，愿你的眼睛永不被邪恶的伪装欺骗，愿你的决心在黑暗面前永不退缩。'),
(200005, '这似乎就是那只猎鹰，看起来受伤了。'),
(200006, '猎鹰看起来很痛苦。一定是那个可疑的生物袭击了它！'),
(200007, '谢谢你找到布里姆。她已经回到我身边，和以前一样健康。$B$B我已经派他执行又一次侦察任务了。$B$B……你说在布里姆附近看到了一个奇怪的生物，它还攻击了你？那一定就是伤害我孩子的生物。$B$B我得进一步调查这件事。根据你的描述，不管这是什么，它都不是泰达希尔的原生物。'),
(200018, '一个血巫师？$B$B有趣……$B$B好吧，经过进一步检查，这本书毫无价值。你可以留着它。$B$B以后你更强壮的时候再回来找我。也许我们可以再次合作。'),
(200021, '你可能想知道我为什么让你取回这个头骨。$B$B恶魔头骨往往是巨大邪能力量的容器。今天，我把这个给你。$B$B不过，如果你愿意，我可以将这个头骨的力量注入一把强大的剑中。$B$B选择权在你，无论你选择什么，它都会好好为你服务。'),
(200025, '我知道你在想我为什么让你做这件事。$B$B到时候，你会明白的。$B$B现在没有什么其他要担心的了。我给你做了一份类似的药剂，带上它，明智地使用。$B$B再会，$N。'),
(200031, '艾露恩的恩典从你身上散发出来，$N。女神很满意。$B$B我有两把受艾露恩祝福的武器供你选择。$B$B作为艾露恩的选民前进吧。我们会再见的。'),
(200036, '好，好。萨特死了。$B$B他活该去死，还有很多人也活该。$B$B作为你血腥成功的纪念，我送给你一件强大的装备，在地狱之火中锻造。Dioniss aca，或者什么的。啊哈！'),
(200038, '你可能没想到会有这样的任务，$N。但重要的是要明白，暗影之地召唤那些准备好的人，知道何时收取灵魂，与灵魂的回收本身一样重要。$B$B为了帮助我们的朋友，我将奖励你这双靴子。愿它们好好为你服务，它们被附魔，可以让你在水面上行走。'),
(200046, '<仪式法阵随着死灵能量脉动>'),
(200047, '<仪式法阵开始喷发。怪物正在被召唤>'),
(200048, '好吧，这正是我预料到的。$B$B但是，嘿，你没死。你已经是个更好的死灵法师了！$B$B来，我派了其他学徒去收集你战斗的残骸，他们做了这个。$B$B拿着它，从我眼前消失。'),
(200056, '又一个邪恶生物被从我们的世界驱逐。$B$B……然而。$B$B还有那么多其他邪恶需要摧毁。保持警惕。$B$B来，拿着这些，让它们在与邪恶的战斗中指引你。'),
(200061, '<吊坠闪烁着微光。它散发出强烈的神圣气息>$B$B你做得很好，$N。这个吊坠，我送给你。$B$B好好保管，因为有一天你可能再次需要它，而我也许会教你如何解锁它更多的力量。'),
(200067, '嗯，这太完美了！$B$B我用这些金属为我完成了一把新枪，而且，你猜怎么着，我也给你做了一把！$B$B拿着它，祝你过得愉快！'),
(200073, ''),
(200079, ''),
(200092, ''),
(200093, ''),
(200094, ''),
(200106, ''),
(200111, ''),
(200131, ''),
(200132, ''),
(200133, ''),
(200161, '啊哈！你已经向我证明了你真正强大。为此，我奖励你一个熊本身的象征。愿它在你的旅途中指引你，并赋予你战胜敌人的力量。'),
(200167, '欢迎回来，$N。我就知道你会及时找到我的魔杖。字面意义上的。$B$B这根魔杖是给你的。我希望它能好好为你服务。事实上，我知道它会的。');

DELETE FROM `quest_request_items` WHERE `ID` IN (200005, 200006, 200007, 200018, 200021, 200025, 200031, 200036, 200038, 200046, 200047, 200048, 200056, 200061, 200067, 200073, 200079, 200092, 200093, 200094, 200106, 200111, 200131, 200132, 200133, 200161, 200167, 650141, 650142, 650143, 650144, 650145, 650146, 650147, 650148, 650149, 650150, 650151, 650152, 650153, 650154, 650155, 650156, 650157, 650158, 650159);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(650141, '我感觉到原始怒火在你体内觉醒，$N。所以你想学习野蛮人的怒火与荒野战斗之道？'),
(650142, '猩红之术在召唤你，$N。所以你想掌握血魔法，将生命本身作为武器？'),
(650143, '时间本身在你周围弯曲，$N。所以你想研习时光术士之道，操纵时间现实之流？'),
(650144, '低语在你面前变得更加强烈，$N。所以你想侍奉上古存在，学习邪教徒的禁忌之术？'),
(650145, '邪能自你的灵魂中散发出来，$N。所以你想成为恶魔猎手，号令恶魔之力？'),
(650146, '你的保护光环闪耀明亮，$N。所以你想成为守护者，为他人抵挡一切伤害？'),
(650147, '暗影与荣誉都在召唤你，$N。所以你想加入克索诺斯骑士，以黑暗服务于光明？'),
(650148, '亡者之灵在你周围低语，$N。所以你想成为死灵法师，在世界之间引导灵魂？'),
(650149, '元素回应你的存在，$N。所以你想成为仪祭师，号令自然的原始力量？'),
(650150, '荒野在召唤你的心，$N。所以你想成为游侠，保护泰达希尔的神圣丛林？'),
(650151, '生与死平等地流经你，$N。所以你想成为死神，在时辰到来时收割灵魂？'),
(650152, '古老的力量在你面前涌动，$N。所以你想成为符文大师，将魔法刻入石头与钢铁？'),
(650153, '当你靠近时群星闪耀得更加明亮，$N。所以你想成为唤星者，引导天界魔法？'),
(650154, '雷霆在你靠近时轰鸣，$N。所以你想成为风暴使者，号令风与闪电？'),
(650155, '神圣光芒从你的存在中散发出来，$N。所以你想成为太阳祭司，以黎明的力量治愈？'),
(650156, '神圣正义在你体内燃烧，$N。所以你想成为圣殿骑士，作为圣战士服役？'),
(650157, '创新在你脑海中迸发，$N。所以你想成为工匠，将魔法与机械融合？'),
(650158, '毒素与解药的平衡在召唤你，$N。所以你想成为剧毒术士，掌握毒药与治愈？'),
(650159, '正义之怒在你心中燃烧对抗腐化，$N。所以你想成为猎魔人，将邪恶从世界中净化？'),
(200005, ''),
(200006, ''),
(200007, '太棒了。布里姆回来了！'),
(200018, '令人印象深刻。你再说一遍是谁拿着这本书的？'),
(200021, '你做得很好，$N。'),
(200025, '欢迎回来。我让你做的事完成了吗？'),
(200031, ''),
(200036, ''),
(200038, ''),
(200046, ''),
(200047, '<你把材料放在仪式法阵上>'),
(200048, ''),
(200056, '你回来了。'),
(200061, '耶，你做到了！！'),
(200067, '你找到废金属了吗？'),
(200073, ''),
(200079, ''),
(200092, ''),
(200093, ''),
(200094, ''),
(200106, ''),
(200111, ''),
(200131, ''),
(200132, ''),
(200133, ''),
(200161, '你完成任务了吗，$N？'),
(200167, '啊，你回来了。');

DELETE FROM `page_text` WHERE `ID` IN (7001, 7002, 7003, 7004, 7005, 7006, 7007, 7008, 7009, 7010, 7011, 7012, 7013, 7014, 7015, 7016, 7017, 7018, 7019);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`)
VALUES
(7001, '力量无需许可。野蛮人之路是所有道路中最古老的一条：迎头面对每一个挑战，不让任何与你为敌者继续站立。$B$B你将学会将痛苦化为怒火，将怒火化为胜利；学会对会让弱小战士倒下的伤口视若无物，击碎任何阻挡你前路之物。$B$B阿曼达，一位战斧之名远播这片林地之外的战士，训练那些足够大胆加入她战团的人。在奥达希尔里面找到她。', 0),
(7002, '血即生命，生命即力量。血法师学会理解他人恐惧的东西：流经每一个活物的精髓，可以像任何其他魔法一样被塑造。$B$B你将学会以自身生命为法术供能，以同样的猩红之术治愈与创伤，并掌握一种会吞噬粗心者的饥渴。$B$B阿拉马杜斯在奥达希尔的大厅中研习这些禁忌之术。如果你有胆量，就去找他。', 0),
(7003, '时间是一条河流，大多数人都满足于随流漂流。时光术士则学会逆流而游：减缓一次心跳，加速一个步伐，或在某个瞬间到来之前窥见它。$B$B你将学会让时间的流动服从你的意志，最重要的是，学会尊重它，因为那些粗心干预时间的人会被冲走。$B$B卡莱多姆，一位披着凡人外表的时光之道守护者，在奥达希尔等待着你。他说他已经等了你相当长一段时间了。', 0),
(7004, '黑暗中的低语并非都在诉说邪恶。有些预示着凡人不敢承认的古老真相。邪教徒之路是禁忌知识之路。$B$B你将与超越凡人理解的实体沟通，通过危险的契约和诡异智慧获得力量。行走时要小心，因为知识伴随着代价。$B$B赛琳娜·影歌居住在泰达希尔暗影最深处。她将向你介绍从帷幕之外呼唤而来的低语。', 0),
(7005, '军团的失败并不意味着它们的力量永远消失。有些人学会了将恶魔精髓束缚于自己的意志，成为拥有可怕力量的恶魔猎手战士。$B$B你将号令邪能能量并召唤恶魔盟友，但要小心——这样的力量要求持续的警惕，否则它会将你彻底吞噬。$B$B邪能触碰者弗洛齐，一位选择救赎的恶魔猎手，如今教导他人掌握邪能之力而不失去灵魂。在泰达希尔较暗的丛林中找到她。', 0),
(7006, '没有握住它的意志，盾牌毫无意义。守护者屹立于无辜者与任何会伤害他们的事物之间，绝不退让。$B$B你将学会挡开本应击中他人的攻击，在任何敌人面前守住阵地，并以你信念的力量回击。$B$B内德里斯·暗击已将自身誓约于保护暗影谷。在奥达希尔脚下找到她。', 0),
(7007, '荣誉与暗影不必是对立面。克索诺斯骑士拥抱黑暗以服务于更伟大的善，为正义的目的驾驭虚空魔法。$B$B你将学会在保持道德准则的同时引导暗影能量，成为一名以非常规手段保护无辜者的黑暗圣骑士。$B$B阿赫拉瓦拉在泰达希尔行走于光明与暗影之间的艰难道路上。如果你想加入这个独特的黑暗骑士团，就寻求她的指引。', 0),
(7008, '死亡不是终结，而是门槛，理解它的人可以跨越呼唤。死灵法师号令彼岸之物，将不安息的灵魂和堕落的血肉束缚于某种目的。$B$B你将学会复活死者，抽取敌人的生命，并在他人逃散之处无所畏惧地屹立。$B$B奥金尼的巴雷拉姆远道而来分享他教团的秘密。你会在奥达希尔下方的墓地中找到他守夜的身影。', 0),
(7009, '原始元素回应那些理解塑造现实的根本力量的人。仪祭师以土、风、火、水最纯粹的形态号令它们。$B$B你将与流经艾泽拉斯本身的原始能量合为一体，以空前的力量和怒火驾驭元素魔法。$B$B普里穆拉在泰达希尔的元素能量汇聚之处安了家。找到她，开始你进入原始力量的旅程。', 0),
(7010, '艾泽拉斯的荒野需要理解自然之美与其凶猛保护本能的守护者。游侠充当自然世界的守卫。$B$B你将掌握林地技能，与野兽沟通，与你所保护的森林、平原和山脉融为一体。$B$B海德里尔·羽翔长久以来守望泰达希尔的神圣丛林。找到这位经验丰富的游侠，学习自然守护者之道。', 0),
(7011, '每个灵魂终会迎来它的收割。死神行走于生死之间的细线上，斩断生者并引导留存之物前往彼岸。$B$B你将学会驾驭镰刀与暗影，并从你终结的每一个生命中汲取力量。$B$B幽影卡尼在奥达希尔中等候，寂静如坟墓。如果你准备好行走于世界之间，就去找他。', 0),
(7012, '古老的符文拥有超越凡人魔法的力量。刻在石头与金属上，这些符号引导着比文明本身更古老的力量。$B$B作为符文大师，你将把力量铭刻进你周围的世界，创造出在其他魔法消退后仍长久持续的恒久附魔。$B$B雷瑟尔·达尔特拉尔将符文智慧带到泰达希尔。虽然暗夜精灵有自己的魔法传统，但她研习许多文化的符文之术。在暗影谷寻求她的指引。', 0),
(7013, '群星本身为懂得如何聆听的人歌唱着力量。唤星者从头顶旋转的天体中汲取魔法。$B$B你将学会解读宇宙图案并引导星辰能量，将遥远太阳的力量带入战斗。$B$B女猎手娜莉亚一直受艾露恩之光的祝福，但如今她也研习其他星辰的魔法。在泰达希尔最高的枝干间找到她，她正在那里观察夜空。', 0),
(7014, '雷霆与闪电回应那些理解风暴怒火之人的呼唤。风暴使者将天气本身作为武器号令。$B$B你将召唤暴风雨，呼唤闪电，驾驭风本身投入战斗。天空本身成为你的盟友。$B$B库鲁，风暴魔法大师，将她的知识带到泰达希尔。这位强大的萨满将教你与风之灵和风暴之灵对话。', 0),
(7015, '太阳平等地照耀朋友与敌人，它的光芒回应那些忠诚信奉它的人。太阳祭司引导那份光辉来治愈伤者、灼烧邪恶者。$B$B你将学会呼唤太阳的温暖，以它的光辉庇护盟友，烧尽威胁他们的黑暗。$B$B流放者泰卢萨拉从埃索达远道而来，将光明带到泰达希尔。在奥达希尔的上层露台找到她。', 0),
(7016, '圣光在赐予力量之前要求纪律。圣殿骑士将身体与心智作为一体训练，以平静的心和稳健的刃面对每一个敌人。$B$B你将学会通过每一次打击引导神圣力量，承受会击垮他人的东西，并在战斗的炽热中保持灵魂清明。$B$B艾蕾奥拉来到泰达希尔训练那些想加入教团的人。在奥达希尔的上层露台找到她。', 0),
(7017, '他人看到废料的地方，工匠看到可能性。齿轮、弹簧、黑火药加一点巧思，就能匹敌任何施放过的法术。$B$B你将学会打造自己的武器和装置，修理破碎之物，炸毁需要炸毁之物。$B$B乔罗·迅尖在奥达希尔搭建了他的工作台，令德鲁伊们十分不满。在底层北端的商人附近找他。', 0),
(7018, '自然以毒液武装它的生物，研习它的人会明白，最小的一滴也能击倒最强壮的野兽。剧毒术士精通毒素、解药，以及两者之间的细线。$B$B你将学会调配毒药与解药，从内部削弱敌人，以蛇一般的耐心出击。$B$B科拉尔·毒牙在奥达希尔南边照料他的大锅。去那里找他，不要碰任何他没有主动给你的东西。', 0),
(7019, '腐化隐藏在许多形态中，猎魔人将生命奉献给根除潜伏各处的邪恶。你的武器受祝福以击倒不洁之物。$B$B你将学会识别超自然威胁，使用专门设计来摧毁腐化生物的特殊武器和魔法。$B$B黑暗杀手哈伦多将他的专长带到泰达希尔，即使在这片神圣之地也警惕着腐化的迹象。找到他，加入对抗黑暗的永恒狩猎。', 0);

-- ---------------------------------------------------------------------------
-- 5. Who offers and who takes them back
-- ---------------------------------------------------------------------------
DELETE FROM `creature_queststarter` WHERE `quest` IN (200005, 200006, 200007, 200018, 200021, 200025, 200031, 200036, 200038, 200046, 200047, 200048, 200056, 200061, 200067, 200073, 200079, 200092, 200093, 200094, 200106, 200111, 200131, 200132, 200133, 200161, 200167, 650141, 650142, 650143, 650144, 650145, 650146, 650147, 650148, 650149, 650150, 650151, 650152, 650153, 650154, 650155, 650156, 650157, 650158, 650159);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(50341, 200005),
(9300352, 200006),
(9300352, 200007),
(502920, 200018),
(50344, 200021),
(50343, 200025),
(50326, 200031),
(502780, 200036),
(502890, 200038),
(50294, 200046),
(503250, 200056),
(9300350, 200061),
(502871, 200067),
(502831, 200073),
(502801, 200079),
(502772, 200092),
(502871, 200093),
(502871, 200094),
(50295, 200106),
(502911, 200111),
(503240, 200131),
(2082, 200132),
(2082, 200133),
(503420, 200161),
(502821, 200167),
(2079, 650141),
(2079, 650142),
(2079, 650143),
(2079, 650144),
(2079, 650145),
(2079, 650146),
(2079, 650147),
(2079, 650148),
(2079, 650149),
(2079, 650150),
(2079, 650151),
(2079, 650152),
(2079, 650153),
(2079, 650154),
(2079, 650155),
(2079, 650156),
(2079, 650157),
(2079, 650158),
(2079, 650159);

DELETE FROM `creature_questender` WHERE `quest` IN (200005, 200006, 200007, 200018, 200021, 200025, 200031, 200036, 200038, 200046, 200047, 200048, 200056, 200061, 200067, 200073, 200079, 200092, 200093, 200094, 200106, 200111, 200131, 200132, 200133, 200161, 200167, 650141, 650142, 650143, 650144, 650145, 650146, 650147, 650148, 650149, 650150, 650151, 650152, 650153, 650154, 650155, 650156, 650157, 650158, 650159);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(9300352, 200005),
(9300352, 200006),
(50341, 200007),
(502920, 200018),
(50344, 200021),
(50343, 200025),
(50326, 200031),
(502780, 200036),
(502890, 200038),
(50294, 200048),
(503250, 200056),
(9300350, 200061),
(502871, 200067),
(502831, 200073),
(502801, 200079),
(502871, 200092),
(502871, 200093),
(502772, 200094),
(50295, 200106),
(502911, 200111),
(2082, 200131),
(2082, 200132),
(503240, 200133),
(503420, 200161),
(502821, 200167),
(50295, 650141),
(502920, 650142),
(502821, 650143),
(502831, 650144),
(50344, 650145),
(503240, 650146),
(502780, 650147),
(50294, 650148),
(503420, 650149),
(50341, 650150),
(502890, 650151),
(502911, 650152),
(50326, 650153),
(502772, 650154),
(9300350, 650155),
(502801, 650156),
(502871, 650157),
(50343, 650158),
(503250, 650159);

DELETE FROM `gameobject_queststarter` WHERE `quest` IN (200047, 200048);
INSERT INTO `gameobject_queststarter` (`id`, `quest`)
VALUES
(9301356, 200047),
(9301356, 200048);

DELETE FROM `gameobject_questender` WHERE `quest` IN (200046, 200047);
INSERT INTO `gameobject_questender` (`id`, `quest`)
VALUES
(9301356, 200046),
(9301356, 200047);

-- Map markers where the text promises them: "Let me mark your map to the location of where my ritual must
-- be had" (200046, the ritual circle) and "I've marked her location on your map" (200056, the disguised
-- witch).
DELETE FROM `quest_poi` WHERE `QuestID` IN (200046, 200056);
INSERT INTO `quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`)
VALUES
(200046, 0, 0, 1, 41, 0, 0, 1),
(200056, 0, 0, 1, 41, 0, 0, 1);

DELETE FROM `quest_poi_points` WHERE `QuestID` IN (200046, 200056);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`)
VALUES
(200046, 0, 0, 10395, 991),
(200056, 0, 0, 10376, 858);

-- ---------------------------------------------------------------------------
-- 6. Loot
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE (`Entry`, `Item`) IN ((1988, 662330), (1988, 661417), (1989, 662330), (1989, 458421), (1989, 458422), (1989, 458423), (9300351, 661316));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(1988, 662330, 0, 100, 1, 1, 0, 1, 1, 'Grell - Small Sword (Prioritizing Defense, Exiles 100%)'),
(1988, 661417, 0, 33, 1, 1, 0, 1, 1, 'Grell - Power Core (The Stolen Power Core, Exiles 33%)'),
(1989, 662330, 0, 33, 1, 1, 0, 1, 1, 'Grellkin - Small Sword (Prioritizing Defense, Exiles 33%)'),
(1989, 458421, 0, 45, 1, 1, 0, 1, 1, 'Grellkin - Bones (Death Calls, Exiles 45%)'),
(1989, 458422, 0, 55, 1, 1, 0, 1, 1, 'Grellkin - Fresh Flesh (Death Calls, Exiles 55%)'),
(1989, 458423, 0, 45, 1, 1, 0, 1, 1, 'Grellkin - Skull (Death Calls, Exiles 45%)'),
(9300351, 661316, 0, 100, 1, 1, 0, 1, 1, 'Suspicious Night Elf - Tome of Blood (Blood Is Power, inferred carrier)');

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`, `Idx`) IN ((1988, 2), (1988, 3), (1989, 2), (1989, 3), (1989, 4), (1989, 5), (9300351, 0));
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(1988, 2, 662330),
(1988, 3, 661417),
(1989, 2, 662330),
(1989, 3, 458421),
(1989, 4, 458422),
(1989, 5, 458423),
(9300351, 0, 661316);

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (9301350, 9301351, 9301352, 9301353, 9301354);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(9301350, 661335, 0, 100, 1, 1, 0, 1, 1, 'CoA Shadowglen: quest item from Training Wand'),
(9301351, 661330, 0, 100, 1, 1, 0, 1, 1, 'CoA Shadowglen: quest item from Eye of the Beholder'),
(9301352, 661319, 0, 100, 1, 1, 0, 1, 1, 'CoA Shadowglen: quest item from Skull of L''ok'),
(9301353, 663319, 0, 100, 1, 1, 0, 1, 1, 'CoA Shadowglen: quest item from Lost Pendant'),
(9301354, 663320, 0, 100, 1, 1, 0, 1, 1, 'CoA Shadowglen: quest item from Scrap Metal');

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` IN (9301350, 9301351, 9301352, 9301353, 9301354);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(9301350, 0, 661335),
(9301351, 0, 661330),
(9301352, 0, 661319),
(9301353, 0, 663319),
(9301354, 0, 663320);

-- ---------------------------------------------------------------------------
-- 7. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9004100, 9004101, 9004102, 9004103, 9004104, 9004105, 9004106, 9004107, 9004108, 9004109, 9004110, 9004111, 9004112, 9004113, 9004114, 9004115, 9004116, 9004117, 9004118, 9004130, 9004131, 9004132, 9004133, 9004134, 9004135, 9004136, 9004137, 9004138, 9004139) OR `guid` BETWEEN 9004100 AND 9004299;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9004100, 50295, 1, 0, 0, 1, 1, 1, 10411.9, 783.47, 1322.709, 4.1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Barbarian trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650141, z from surface.floor; Aldrassil base hall (floor 1322.7), entered through the south-east opening, by the west wall; faces 4.10 toward the south-east opening of the hall, the way players come in'),
(9004101, 50344, 1, 0, 0, 1, 1, 1, 10345.4, 757.2, 1326.452, 0.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Felsworn trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650145, z from surface.floor; foot of Aldrassil where the paths meet, the great tree''s roots at her back; faces 0.90 north over the open lawn, the way round the roots from the start (the start itself lies behind a root 2.4 yd away)'),
(9004102, 503250, 1, 0, 0, 1, 1, 1, 10434.3, 795.62, 1322.705, 3.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Witch Hunter trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650159, z from surface.floor; Aldrassil base hall (floor 1322.7), entered through the south-east opening, west wall, 2.5 yd from Keina the bowyer (both CoA placements); faces 3.80 down the hall toward the south-east opening'),
(9004103, 502772, 1, 0, 0, 1, 1, 1, 10432.8, 769.56, 1322.669, 2.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Stormbringer trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650154, z from surface.floor; Aldrassil base hall (floor 1322.7), entered through the south-east opening, east side under the ramp; faces 2.80 across the hall toward the opening and the walkway'),
(9004104, 502780, 1, 0, 0, 1, 1, 1, 10347.1, 761.64, 1325.494, 0.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Knight of Xoroth trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650147, z from surface.floor; foot of Aldrassil where the paths meet, beside Flowzie; faces 0.80 north over the open lawn (a root 1.3 yd to her south-west)'),
(9004105, 503240, 1, 0, 0, 1, 1, 1, 10410.2, 876.07, 1320.036, 4.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Guardian trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650146, z from surface.floor; the meadow at the west foot of Aldrassil, 9 yd from Gilshalan Windwalker, her chain''s helper; faces 4.30 toward the graveyard basin and the fountain, the way players come from the start'),
(9004106, 502801, 1, 0, 0, 1, 1, 1, 10464.1, 799.49, 1346.753, 3.23, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Templar trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650156, z from surface.floor; Aldrassil upper terrace (1346.75) by the benches; faces 3.23 toward the ramp that arrives from the 1337 level'),
(9004107, 502920, 1, 0, 0, 1, 1, 1, 10485.4, 816.9, 1322.744, 3.88, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Bloodmage trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650142, z from surface.floor; north room of the base hall among the merchants; faces 3.88 toward the room''s opening to the hall'),
(9004108, 50341, 1, 0, 0, 1, 1, 1, 10425.4, 835.6, 1318.796, 3.19, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Ranger trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650150, z from surface.floor; the meadow at the west foot of Aldrassil; faces 3.19 toward the start, the way players come with the letter'),
(9004109, 502821, 1, 0, 0, 1, 1, 1, 10444.6, 783.79, 1337.285, 3.42, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Chronomancer trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650143, z from surface.floor; 1337 level at the table between the two benches; Lyrai 3587 moves 2.5 yd west to stand 2.8 yd beside him (section 7); faces 3.42 like Lyrai beside him, toward the walkway from the base hall ramp'),
(9004110, 50294, 1, 0, 0, 1, 1, 1, 10386.7, 811.88, 1317.531, 2.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Necromancer trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650148, z from surface.floor; the graveyard basin by the rune stones and the grave mound ("Glad you could join me in the graveyard"); faces 2.90 toward the start, the way players come with the letter'),
(9004111, 502831, 1, 0, 0, 1, 1, 1, 10518.1, 778.34, 1329.599, 1.54, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Cultist trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650144, z from surface.floor; the 1329.6 room above the base hall, on Frahun Shadewhisper''s stock post (Frahun''s spawn is deleted, see section 7); faces 1.54, the stock facing of the post, toward the ramp that arrives from the base hall'),
(9004112, 50326, 1, 0, 0, 1, 1, 1, 10527.9, 777.12, 1329.599, 2.48, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Starcaller trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650153, z from surface.floor; the 1329.6 room, on Alyissia''s stock post (her spawn is deleted, see section 7); faces 2.48, the stock facing of the post, toward the room''s entrance'),
(9004113, 9300350, 1, 0, 0, 1, 1, 1, 10458.2, 807.65, 1346.754, 3.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Sun Cleric trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650155, z from surface.floor; Aldrassil upper terrace (1346.75) by the benches; faces 3.80 toward the ramp that arrives from the 1337 level'),
(9004114, 502871, 1, 0, 0, 1, 1, 1, 10481.5, 805.79, 1322.744, 3.1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Tinker trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650157, z from surface.floor; north end of the base hall beside the ramp to the 1329.6 room; faces 3.10 down the hall, the way players arrive'),
(9004115, 50343, 1, 0, 0, 1, 1, 1, 10405.4, 717.75, 1321.645, 2.25, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Venomancer trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650158, z from surface.floor; south of Aldrassil beside the cauldron; faces 2.25 toward the start with the cauldron at his left side, not facing it'),
(9004116, 502890, 1, 0, 0, 1, 1, 1, 10439.6, 774.65, 1322.669, 2.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Reaper trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650151, z from surface.floor; Aldrassil base hall (floor 1322.7), entered through the south-east opening, east side; faces 2.20 toward the hall walkway (a pillar blocks the opening 4 yd to his south)'),
(9004117, 503420, 1, 0, 0, 1, 1, 1, 10476.7, 815.7, 1322.744, 3.97, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Primalist trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650149, z from surface.floor; north room of the base hall; faces 3.97 toward the room''s opening to the hall'),
(9004118, 502911, 1, 0, 0, 1, 1, 1, 10460.7, 829.84, 1380.939, 3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen Runemaster trainer: Shadowglen: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 650152, z from surface.floor; the 1381 platform between the kept stock NPCs Ayanna Everstride (3.0 yd) and Mardant Strongoak (3.3 yd); faces 3.00 toward the outer ramp arrival, as Mardant 2.90 beside her'),
(9004130, 299237, 1, 0, 0, 1, 1, 1, 10527, 781, 1329.599, 2.48, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: Aldrassil 1329.6 room, 2.9 yd from Alyissia''s stock post (the text: "inside Aldrassil ... somewhere outside"); her post itself is 1.6 yd from Huntress Naalia, so she stands 4.0 yd from Naalia and 9.3 yd from Saelina with the post''s facing'),
(9004131, 299227, 1, 0, 0, 1, 1, 0, 10603, 866, 1310.029, 3.3, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: north shore of Shadowglen''s pond among the lilies, fouling the water the residents use; faces the pond; 112 yd from the nearest sentinel so the guards leave him to the player'),
(9004132, 299327, 1, 0, 0, 1, 1, 1, 10533, 656, 1330.761, 2.18, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: crown of the open rise east of Aldrassil, where she rants toward the tree at anyone passing; 145 yd from the nearest sentinel'),
(9004133, 9300351, 1, 0, 0, 1, 1, 1, 10340.5, 1028, 1338.362, 5.03, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: grell camp 2 (Grellkin campfire 10335.3, 1034.1), beside the animal cages, watching the path to Aldrassil'),
(9004134, 9300351, 1, 0, 0, 1, 1, 1, 10510.5, 1057, 1324.608, 4.38, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: grell camp 3 (Grellkin campfire 10498.3, 1054.0), north-east of the fire, watching the path to Aldrassil; a second holder so two players need not wait on one respawn'),
(9004135, 9300352, 1, 0, 0, 1, 1, 0, 10688, 728, 1325.132, 2.75, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: east woods glade 22 yd west of the lone Kalidartree07 (10687-10708, 684-706), below the Shadowglen moonwell rise, where the scouting falcon came down (tel-integrate: moved off the Carrion Path treant ground, 60 yd from every treant, area 188); faces 2.75 toward Aldrassil, the way Hydriel''s student comes'),
(9004136, 9300353, 1, 0, 0, 1, 1, 0, 10504, 801, 1397.267, 4.62, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: the crown of Aldrassil (1397.3), away from the three sentinels (5.5-9 yd) and the benches, facing 4.62 toward the outer ramp arrival'),
(9004137, 9300354, 1, 0, 0, 1, 1, 0, 10376, 858, 1324.5, 4.96, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: the open lawn west of the graveyard, south-east of the great tree''s hollow trunk, gathering among the grass; faces 4.96 toward the Aldrassil hall entry, the way Harrendor''s students come; 55 yd from the nearest sentinel and 5.7 yd above it, so her true self is the player''s fight'),
(9004138, 685032, 1, 0, 0, 1, 1, 0, 10710.5, 762.9, 1321.279, 0, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: in the Shadowglen moonwell pool (Nightelfmoonwellornate.wmo, pool floor 1321.2), 1.1 yd from the stock Moonwell objects 49687 and 49719 at its centre; its 5 yd sight radius plus both combat reaches (7.5 yd) covers all of the water'),
(9004139, 685037, 1, 0, 0, 1, 1, 0, 10659, 815.5, 1328.85, 3.24, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Shadowglen: at the foot of the statue of Uther on the knoll west of the moonwell, where the Templar meditates');

DELETE FROM `gameobject` WHERE `guid` IN (7912600, 7912601, 7912602, 7912603, 7912604, 7912605, 7912606, 7912607, 7912608, 7912609, 7912610, 7912611, 7912612, 7912613, 7912614, 7912615, 7912616, 7912617, 7912618, 7912619, 7912620, 7912621) OR `guid` BETWEEN 7912600 AND 7912699;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7912600, 9301356, 1, 0, 0, 1, 1, 10395, 991, 1327.487, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Shadowglen: flat hollow at the foot of the great tree''s arching roots, 175 yd north-west of Baarelam''s graveyard ("Let me mark your map to the location of where my ritual must be had"), between grell camps 2 and 3 whose Grellkin carry the bones, flesh and skull'),
(7912601, 9301355, 1, 0, 0, 1, 1, 10659, 814, 1328.971, 3.24, 0, 0, 0.99879, -0.049184, 300, 100, 1, '', 'CoA Shadowglen: top of the knoll west of the moonwell (terrain 1328.8, prominence 6-9 yd over the meadow), "a hill where a statue of a powerful Paladin was erected"; faces 3.24 toward Aldrassil'),
(7912602, 9301350, 1, 0, 0, 1, 1, 10450.5, 790, 1345.646, 1.2, 0, 0, 0.564642, 0.825336, 60, 100, 1, '', 'CoA Shadowglen: Aldrassil 1345.7 landing beside the bench at the top of Kaleidormu''s ramp, where he left it'),
(7912603, 9301350, 1, 0, 0, 1, 1, 10424, 788.5, 1322.705, 4.4, 0, 0, 0.808496, -0.588501, 60, 100, 1, '', 'CoA Shadowglen: Aldrassil base hall by the stone benches of the west wall; a second copy so two students can search at once'),
(7912604, 9301351, 1, 0, 0, 1, 1, 10506, 792, 1397.215, 0.7, 0, 0, 0.342898, 0.939373, 60, 100, 1, '', 'CoA Shadowglen: the crown of Aldrassil (1397.2) at the top of the outer ramp: the riddle''s answer "lays within Aldrassil"'),
(7912605, 9301351, 1, 0, 0, 1, 1, 10516.5, 823.5, 1354.791, 2.1, 0, 0, 0.867423, 0.497571, 60, 100, 1, '', 'CoA Shadowglen: the 1354.8 landing of the outer ramp inside the tree; a second copy'),
(7912606, 9301352, 1, 0, 0, 1, 1, 10362, 749.5, 1321.836, 5.6, 0, 0, 0.334988, -0.942222, 60, 100, 1, '', 'CoA Shadowglen: against the fallen log (Kalidartreelog02) 17 yd north-east of Flowzie''s post: "placed in the surrounding area"'),
(7912607, 9301352, 1, 0, 0, 1, 1, 10371, 737, 1323.46, 0.4, 0, 0, 0.198669, 0.980067, 60, 100, 1, '', 'CoA Shadowglen: at the foot of the junction signpost south-east of Flowzie; a second copy'),
(7912608, 9301353, 1, 0, 0, 1, 1, 10292, 938, 1334.508, 2, 0, 0, 0.841471, 0.540302, 60, 100, 1, '', 'CoA Shadowglen: on the path out of the Grell camp (camp 1) toward Aldrassil, where Telusaara dropped it fleeing'),
(7912609, 9301353, 1, 0, 0, 1, 1, 10486, 1030, 1327.336, 5.1, 0, 0, 0.557684, -0.830054, 60, 100, 1, '', 'CoA Shadowglen: south-east edge of grell camp 3 on the way back to Aldrassil; a second copy'),
(7912610, 9301354, 1, 0, 0, 1, 1, 10276, 965, 1340.047, 0.6, 0, 0, 0.29552, 0.955336, 90, 100, 1, '', 'CoA Shadowglen: grell camp 1, north-east of the campfire where the edge is least steep (13 degrees; the rim falls at 15-16)'),
(7912611, 9301354, 1, 0, 0, 1, 1, 10271, 951, 1340.79, 2.2, 0, 0, 0.891207, 0.453596, 90, 100, 1, '', 'CoA Shadowglen: grell camp 1, east edge below the drums'),
(7912612, 9301354, 1, 0, 0, 1, 1, 10264, 953, 1341.757, 4, 0, 0, 0.909297, -0.416147, 90, 100, 1, '', 'CoA Shadowglen: grell camp 1, south-east edge on a level step above the slope'),
(7912613, 9301354, 1, 0, 0, 1, 1, 10279, 974, 1340.48, 5.5, 0, 0, 0.381661, -0.924302, 90, 100, 1, '', 'CoA Shadowglen: grell camp 1, north edge under the tree'),
(7912614, 9301354, 1, 0, 0, 1, 1, 10347, 1030, 1338.386, 1.1, 0, 0, 0.522687, 0.852525, 90, 100, 1, '', 'CoA Shadowglen: grell camp 2, north-east of the fire'),
(7912615, 9301354, 1, 0, 0, 1, 1, 10326, 1026, 1338.474, 3.3, 0, 0, 0.996865, -0.079121, 90, 100, 1, '', 'CoA Shadowglen: grell camp 2, south-east edge by the big tree'),
(7912616, 9301354, 1, 0, 0, 1, 1, 10354, 1037, 1341.16, 0.2, 0, 0, 0.099833, 0.995004, 90, 100, 1, '', 'CoA Shadowglen: grell camp 2, north edge by the totem'),
(7912617, 9301354, 1, 0, 0, 1, 1, 10321, 1038, 1339.318, 4.6, 0, 0, 0.745705, -0.666276, 90, 100, 1, '', 'CoA Shadowglen: grell camp 2, south side beside the tent'),
(7912618, 9301354, 1, 0, 0, 1, 1, 10512, 1047, 1323.584, 1.8, 0, 0, 0.783327, 0.62161, 90, 100, 1, '', 'CoA Shadowglen: grell camp 3, north-east of the fire'),
(7912619, 9301354, 1, 0, 0, 1, 1, 10501, 1044, 1325.23, 3.9, 0, 0, 0.92896, -0.370181, 90, 100, 1, '', 'CoA Shadowglen: grell camp 3, east edge'),
(7912620, 9301354, 1, 0, 0, 1, 1, 10489, 1041, 1327.119, 5.9, 0, 0, 0.190423, -0.981702, 90, 100, 1, '', 'CoA Shadowglen: grell camp 3, south-east edge by the big tree'),
(7912621, 9301354, 1, 0, 0, 1, 1, 10514, 1058, 1323.933, 2.7, 0, 0, 0.975723, 0.219007, 90, 100, 1, '', 'CoA Shadowglen: grell camp 3, north edge on the level ground beside the totem');

-- Lyrai (46171): Kaleidormu's sourced point (650143) is 1.7 yd behind her stock spot between two garden benches,
-- where no spot within 2 yd of the point is clear of her and the benches except directly behind her; she moves
-- 2.5 yd west, keeps her stock facing and stands 2.8 yd beside him, both facing the walkway. The UPDATE matches
-- guid and entry.
UPDATE `creature` SET `position_x` = 10443.7, `position_y` = 786.4, `position_z` = 1337.285, `orientation` = 3.42085 WHERE `guid` = 46171 AND `id` = 3587;

-- ---------------------------------------------------------------------------
-- 8. Scripts
-- ---------------------------------------------------------------------------
-- Credits: the concoction on three trainers, the Red Vial on Brim, the torch on the disguised witch,
-- Thalador's gossip, the moonwell and the statue by line of sight, the ritual circle on use. Summons: the
-- Suspicious Creature on accepting A Surprise Attack!, the Undead Monstrosity on accepting Call of the
-- Dead, each again on gossip/use while its quest is taken and none is alive nearby.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-9004139, 50294, 503250, 685032, 9300350, 9300352, 9300353, 9300354) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(-9004139, 0, 0, 0, 10, 0, 100, 0, 1, 8, 1000, 1000, 1, 0, 33, 685037, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '[KC] Visit at the statue of Uther - On a player near - Quest Credit Visit the statue of Uther'),
(50294, 0, 0, 0, 8, 0, 100, 0, 685013, 0, 0, 0, 0, 0, 33, 685017, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '50294 - On Spellhit Mysterious Concoction - Quest Credit 685017'),
(503250, 0, 0, 0, 8, 0, 100, 0, 685013, 0, 0, 0, 0, 0, 33, 685016, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '503250 - On Spellhit Mysterious Concoction - Quest Credit 685016'),
(685032, 0, 0, 0, 10, 0, 100, 0, 1, 5, 1000, 1000, 1, 0, 33, 685031, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Invisible Dummy (Starcaller1) - On a player in the moonwell - Quest Credit Pay respects to Elune'),
(9300350, 0, 0, 0, 8, 0, 100, 0, 685013, 0, 0, 0, 0, 0, 33, 685015, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '9300350 - On Spellhit Mysterious Concoction - Quest Credit 685015'),
(9300352, 0, 0, 0, 8, 0, 100, 0, 684328, 0, 0, 0, 0, 0, 33, 685011, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Brim - On Spellhit Red Vial - Quest Credit Tend Brim''s Wounds'),
(9300352, 0, 1, 0, 19, 0, 100, 0, 200006, 0, 0, 0, 0, 0, 12, 299222, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, 10697, 721, 1326.859, 2.48, 'Brim - On Quest A Surprise Attack! Accepted - Summon Suspicious Creature (attacks)'),
(9300352, 0, 2, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 299222, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, 10697, 721, 1326.859, 2.48, 'Brim - On Gossip Hello - Summon Suspicious Creature again if none is near'),
(9300353, 0, 0, 1, 62, 0, 100, 0, 930452, 0, 0, 0, 0, 0, 33, 685022, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Thalador - On Gossip Option 0 Selected - Quest Credit Chat with Thalador'),
(9300353, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Thalador - Linked - Say Line 0'),
(9300353, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Thalador - Linked - Close Gossip'),
(9300354, 0, 0, 1, 8, 0, 100, 0, 512352, 0, 0, 0, 0, 0, 33, 685221, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Wandering Herbalist - On Spellhit Witcher''s Torch - Quest Credit Find the Witch'),
(9300354, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Wandering Herbalist - Linked - Yell Line 0'),
(9300354, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 299333, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, 10376, 858, 1324.5, 4.96, 'Wandering Herbalist - Linked - Summon her true self, the Witch, in her place to attack the torch bearer'),
(9300354, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wandering Herbalist - Linked - Despawn the disguise (respawns with the spawn timer)');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 9301356 AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(9301356, 1, 0, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 33, 685121, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ritual Circle - On Use - Quest Credit Find the ritual circle'),
(9301356, 1, 1, 0, 19, 0, 100, 0, 200048, 0, 0, 0, 0, 0, 12, 299232, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, 10398, 987.5, 1327.524, 2.3, 'Ritual Circle - On Quest Call of the Dead Accepted - Summon Undead Monstrosity (attacks)'),
(9301356, 1, 2, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 299232, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, 10398, 987.5, 1327.524, 2.3, 'Ritual Circle - On Use - Summon Undead Monstrosity again if none is near');

DELETE FROM `conditions` WHERE `SourceEntry` IN (9300352, 9301356) AND `SourceTypeOrReferenceId` = 22;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(22, 3, 9300352, 0, 0, 9, 0, 200006, 0, 0, 0, 0, 0, '', 'Brim - re-summon only while A Surprise Attack! is taken'),
(22, 3, 9300352, 0, 0, 29, 1, 299222, 20, 0, 1, 0, 0, '', 'Brim - re-summon only if no living Suspicious Creature is within 20 yd'),
(22, 1, 9301356, 1, 0, 9, 0, 200046, 0, 0, 0, 0, 0, '', 'Ritual Circle - credit only while Call of Death is taken'),
(22, 3, 9301356, 1, 0, 9, 0, 200048, 0, 0, 0, 0, 0, '', 'Ritual Circle - re-summon only while Call of the Dead is taken'),
(22, 3, 9301356, 1, 0, 29, 1, 299232, 20, 0, 1, 0, 0, '', 'Ritual Circle - re-summon only if no living Undead Monstrosity is within 20 yd');

DELETE FROM `creature_text` WHERE `CreatureID` IN (9300353, 9300354);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `comment`)
VALUES
(9300353, 0, 0, '暗影之地，你说……我送了许多人过去。也许我的日子到来时，他们会善待我。谢谢你听我说，孩子。这宽慰了一颗苍老的心。', 12, 0, 100, 1, '萨拉多 - 死神与他交谈后（推断）'),
(9300354, 0, 0, '那火炬！你烧不到我的，猎人！', 14, 0, 100, 0, '流浪草药师 - 被揭露为女巫（推断）');
