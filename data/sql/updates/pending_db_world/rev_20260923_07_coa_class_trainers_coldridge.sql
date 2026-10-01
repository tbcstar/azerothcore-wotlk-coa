-- Conquest of Azeroth class trainers in Coldridge Valley (package ct-coldridge): the fifteen trainers of
-- the Coldridge intro letters, the letters themselves, and the first class chains with every chain NPC,
-- object, drop and credit they need. Builds on rev_20260923_05_coa_class_trainer_core.sql (trainer
-- kits 900000+class, class menus 930000+class, shared chain templates).
--
-- WHERE EACH VALUE COMES FROM
--   trainer positions  SOURCED-CLIENT: the QuestSuperTrack turn-in point of each intro letter, z from the
--     server floor (surface.floor). Zipak Cogweight stands at the CoA-only grave scene in Kharanos that his
--     point marks. Facings are INFERRED toward the way players arrive; each spawn comment says which.
--   trainer names  SOURCED-CACHE (creaturecache) for 13; Yiro the Vanquisher and Zipak Cogweight are new
--     NPCs named by their letters. Letter texts that name older NPCs (Elund Stormbelch, Savina Gloom, Aldus
--     Hammerfist, Harodormu) stay verbatim; the NPC at the point is the cache record.
--   looks  no capture of any trainer exists: every creature_display_preset is a stand-in copied from a
--     stock NPC of the right race, sex and craft (named per row) and then varied (INFERRED).
--   quests  SOURCED-CACHE questcache. Letters start at Sten Stoutarm after Dwarven Outfitters (179), the
--     stock letter pattern (INFERRED); chains start at the letter trainer. Letter pages 6002, 6003, 6006,
--     6011, 6013, 6014 and 6015 come from pagetextcache (paragraph breaks restored as $B$B); 6001, 6004,
--     6005, 6007, 6008, 6009, 6010 and 6012 are missing everywhere and are new text in CoA's voice.
--   chain places  INFERRED from the quest texts and hand-placed on the CoA terrain: the frozen lake
--     (Scorch), the ruined excavation camp among the Burly Rockjaw Troggs (the ritual circle and the
--     scrap), the broken-cart camp south of Anvilmar (the pendant), the flat valley floor at the foot of
--     the Coldridge Pass road (the statue), Anvilmar itself (wand, riddle answer, Efry, the disguised
--     witch); Gyrothor beside Zipak at the Kharanos grave (200199 "in this very room").
--   drops  SOURCED-EXILES creature_loot chances (724: 45/55/45% bones, flesh, skull, 33% power core;
--     707: 25% small sword); Scorch 100%.
--   stock spawns  every stock class trainer keeps its post and role. Marryk Nurribit (guid 1025), 0.24 yd
--     from Grelin Ironbeard's point, steps aside and Bromos Grummner (guid 403) is hidden while the
--     Cultist kill copy stands at his post (rev_20260924_13).
--
-- Blocks: creature guid 9003300-9003499, gameobject guid 7912200-7912299, creature entry 9300150-9300199,
-- gameobject entry 9301150-9301199, gossip and npc_text 930250-930299.

-- ---------------------------------------------------------------------------
-- 1. Trainers
-- ---------------------------------------------------------------------------
-- 502952 Grelin Ironbeard (Barbarian): name and subname from creaturecache 502952 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 3 male from dwarf male from Granis
--   Swiftaxe 1229 (Ironforge warrior trainer), changed iron-grey hair and a braided beard, bare chest under one
--   plate pauldron, mountaineer bracers; race from Barbarian, "I be Grelin Ironbeard ... every dwarf's heart"
--   (npccache 587577)
-- 502771 Freja Stormbelch (Stormbringer): name and subname from creaturecache 502771 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 3 female from dwarf female from
--   Karrina Mekenda 2879 (mail pauldrons), changed helm removed to show braided hair, storm-blue mail; race from
--   the Stormbelch surname is dwarven; the cache record is a woman (the letter names Elund)
-- 503241 Kharzon the Hammer (Guardian): name and subname from creaturecache 503241 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 3 male from dwarf male from Jern
--   Hornhelm 1105 (Ironforge plate helm), changed darker hair and a forked beard; race from page 6002 signs
--   "Kharzon the Hammer"; 200119 calls the trainer "he"
-- 502800 Thiduis Pride (Templar): name and subname from creaturecache 502800 (SOURCED-CACHE); look is a stand-
--   in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 3 male from dwarf male from Azar
--   Stronghammer 1232 (paladin trainer), changed white hair and beard, plate shoulders added; race from page
--   6003 "By beard and hammer ... dwarven devotion"
-- 503411 Baruhr Mightmane (Ranger): name and subname from creaturecache 503411 (SOURCED-CACHE); look is a stand-
--   in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 3 male from dwarf male from Grif Wildheart
--   1231 (hunter trainer), changed leather cap added, darker mane and beard; race from the Mightmane surname and
--   the Coldridge letter
-- 502820 Bieko (Chronomancer): name and subname from creaturecache 502820 (SOURCED-CACHE); look is a stand-in,
--   no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 7 male from gnome male from Magis Sparkmantle
--   1228 (mage trainer), changed sand-coloured hair, leather mantle for bronze tones; race from Chronomancer was
--   a gnome class, not a dwarf one (RACE-CLASS.md)
-- 502924 Ophana Gloom (Necromancer): name and subname from creaturecache 502924 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 7 female from gnome female from
--   Twilight Acolyte 4809 (hooded robes), changed pale skin and black hair under the hood; race from Necromancer
--   was a gnome class, not a dwarf one (RACE-CLASS.md)
-- 503400 Debbie Whirlyflame (Pyromancer): name and subname from creaturecache 503400 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 7 female from gnome female from
--   Dalaran Mage 1914, changed ember-red hair, Dalaran tabard removed; race from the gnomish name and the
--   whirling voice of 200143
-- 502830 Clippo Doomwhistle (Cultist): name and subname from creaturecache 502830 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 7 male from gnome male from Twilight
--   Loreseeker 4812 (cultist robes), changed changed hair, beard and face; race from the gnomish name
-- 503271 Cleric Stonelight (Sun Cleric): name and subname from creaturecache 503271 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 3 female from dwarf female from Dun
--   Garok Priest 2346, changed hood removed to show fair hair, white vestments; race from the dwarven surname;
--   nothing in 200060 names a sex, so a woman varies the dwarf roster
-- 502870 Binkle Coldbolt (Tinker): name and subname from creaturecache 502870 (SOURCED-CACHE); look is a stand-
--   in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 7 male from gnome male from Finbus
--   Geargrind 1676 (engineering trainer, goggles), changed changed hair and beard; race from the gnomish name;
--   200089 calls him "he"
-- 9300151 Zipak Cogweight (Reaper): new NPC Zipak Cogweight, named as the letter 51014 and page 6015 ("Zipak
--   Cogweight, Reaper Trainer") (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA
--   capture of this trainer exists: race 7 male from gnome male from Gimrizz Shadowcog 5612 (warlock trainer),
--   changed ashen skin, dark hood added; race from the gnomish name Cogweight (letter 51014, page 6015)
-- 50342 Katho Hammerfist (Primalist): name and subname from creaturecache 50342 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 3 male from dwarf male from Hegnar
--   Rumbleshot 1243, changed leather pauldrons added, wild hair; race from the Hammerfist surname (page 6014)
-- 502910 Murmon Fuseforge (Runemaster): name and subname from creaturecache 502910 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 3 male from dwarf male from Tognus
--   Flintfire 1241 (smith apron), changed forge gloves added, changed hair and beard; race from page 6011 "our
--   oldest halls"
-- 9300150 Yiro the Vanquisher (Witch Hunter): new NPC Yiro the Vanquisher, named as the letter 51012 and page
--   6013 ("Yiro the Vanquisher, Witch Hunter Trainer") (INFERRED: no cache record); look is a stand-in, no
--   SMSG_MIRRORIMAGE_DATA capture of this trainer exists: race 1 male from human male from Osborne the Night Man
--   918 (dark leathers), changed wide-brimmed hunter hat added, black hair; race from Witch Hunter was never a
--   dwarf or gnome class (RACE-CLASS.md), so Yiro is a human hunter of witches
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(502952, '格雷林·铁须', '野蛮人训练师', 930250, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502771, '弗蕾娅·风暴吐息', '风暴使者训练师', 930016, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(503241, '卡松·巨锤', '守护者训练师', 930018, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502800, '西杜伊斯·普莱德', '圣殿骑士训练师', 930019, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(503411, '巴鲁尔·强鬃', '游侠训练师', 930021, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502820, '比科', '时光术士训练师', 930022, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502924, '奥法娜·幽暗', '死灵法师训练师', 930023, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(503400, '黛比·旋焰', '炎术师训练师', 930024, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502830, '克利波·末日哨', '邪教徒训练师', 930025, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(503271, '石光教士', '太阳祭司训练师', 930027, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502870, '宾克尔·寒矢', '工匠训练师', 930028, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300151, '齐帕克·齿轮配重', '死神训练师', 930030, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50342, '卡索·锤拳', '仪祭师训练师', 930031, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502910, '穆尔蒙·引信熔炉', '符文大师训练师', 930032, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300150, '伊罗·征服者', '猎魔人训练师', 930015, 10, 10, 0, 55, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (50342, 502771, 502800, 502820, 502830, 502870, 502910, 502924, 502952, 503241, 503271, 503400, 503411, 9300150, 9300151);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(502952, 0, 53, 1, 1),
(502771, 0, 54, 1, 1),
(503241, 0, 53, 1, 1),
(502800, 0, 53, 1, 1),
(503411, 0, 53, 1, 1),
(502820, 0, 1563, 1, 1),
(502924, 0, 1564, 1, 1),
(503400, 0, 1564, 1, 1),
(502830, 0, 1563, 1, 1),
(503271, 0, 54, 1, 1),
(502870, 0, 1563, 1, 1),
(9300151, 0, 1563, 1, 1),
(50342, 0, 53, 1, 1),
(502910, 0, 53, 1, 1),
(9300150, 0, 49, 1, 1);

DELETE FROM `creature_display_preset` WHERE `entry` IN (50342, 502771, 502800, 502820, 502830, 502870, 502910, 502924, 502952, 503241, 503271, 503400, 503411, 9300150, 9300151);
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`, `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`, `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`)
VALUES
(502952, 53, 3, 0, 1, 3, 6, 5, 8, 9, 0, 0, 7326, 0, 0, 1326, 2038, 2370, 3520, 1027, 0, 0),
(502771, 54, 3, 1, 1, 2, 3, 7, 4, 0, 0, 0, 10583, 10584, 0, 10585, 4499, 10586, 0, 0, 0, 0),
(503241, 53, 3, 0, 1, 1, 3, 3, 2, 5, 0, 12033, 0, 11641, 9812, 3369, 642, 3542, 3560, 1214, 0, 0),
(502800, 53, 3, 0, 1, 2, 8, 7, 9, 10, 0, 0, 13715, 0, 3671, 1346, 3672, 2938, 3673, 3674, 0, 0),
(503411, 53, 3, 0, 1, 5, 2, 1, 6, 8, 0, 12487, 0, 548, 0, 2286, 7510, 7511, 0, 7512, 0, 0),
(502820, 1563, 7, 0, 1, 1, 7, 2, 8, 3, 0, 0, 145942, 7343, 0, 7020, 7344, 6247, 0, 0, 0, 0),
(502924, 1564, 7, 1, 1, 4, 2, 8, 1, 0, 0, 144978, 0, 147150, 148598, 150212, 10349, 154354, 0, 156852, 0, 0),
(503400, 1564, 7, 1, 1, 0, 2, 5, 2, 0, 0, 0, 0, 0, 148616, 150266, 152208, 154412, 0, 0, 0, 0),
(502830, 1563, 7, 0, 1, 3, 1, 6, 5, 2, 0, 0, 0, 147154, 148601, 150215, 1973, 154357, 0, 156855, 0, 0),
(503271, 54, 3, 1, 1, 1, 5, 4, 9, 0, 0, 0, 0, 0, 147255, 150323, 152268, 154478, 156238, 156935, 0, 0),
(502870, 1563, 7, 0, 1, 1, 8, 5, 3, 4, 0, 8997, 0, 8998, 7415, 3531, 5405, 546, 0, 670, 0, 0),
(9300151, 1563, 7, 0, 1, 7, 3, 0, 0, 6, 0, 144980, 0, 3292, 0, 2468, 3279, 7122, 0, 2825, 0, 0),
(50342, 53, 3, 0, 1, 6, 7, 10, 5, 3, 0, 0, 2540, 7306, 0, 1236, 6528, 2162, 0, 0, 0, 0),
(502910, 53, 3, 0, 1, 0, 9, 4, 3, 2, 0, 0, 0, 7314, 7315, 5398, 598, 3351, 0, 5628, 0, 0),
(9300150, 49, 1, 0, 1, 2, 4, 2, 0, 5, 0, 12488, 0, 9951, 2988, 1420, 1199, 1112, 0, 3358, 0, 0);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (50342, 502771, 502800, 502820, 502830, 502870, 502910, 502924, 502952, 503241, 503271, 503400, 503411, 9300150, 9300151);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(502952, 1, 2025, 0, 0),
(502771, 1, 2072, 0, 0),
(503241, 1, 2028, 12997, 0),
(502800, 1, 1976, 0, 0),
(503411, 1, 2878, 0, 2511),
(502820, 1, 16894, 0, 0),
(502924, 1, 2013, 0, 0),
(503400, 1, 5201, 0, 0),
(502830, 1, 7166, 2944, 0),
(503271, 1, 22980, 0, 0),
(502870, 1, 6219, 0, 2508),
(9300151, 1, 13054, 0, 0),
(50342, 1, 1317, 0, 0),
(502910, 1, 5956, 4838, 0),
(9300150, 1, 3572, 1172, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (50342, 502771, 502800, 502820, 502830, 502870, 502910, 502924, 502952, 503241, 503271, 503400, 503411, 9300150, 9300151);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`)
VALUES
(502952, 900012),
(502771, 900016),
(503241, 900018),
(502800, 900019),
(503411, 900021),
(502820, 900022),
(502924, 900023),
(503400, 900024),
(502830, 900025),
(503271, 900027),
(502870, 900028),
(9300151, 900030),
(50342, 900031),
(502910, 900032),
(9300150, 900015);

-- ---------------------------------------------------------------------------
-- 2. Named menus and texts
-- ---------------------------------------------------------------------------
-- Grelin Ironbeard keeps his own cached greeting (npccache 587577) with the Barbarian refusal and
-- training option; Gyrothor Turbospark talks to the Reaper of 200199 (INFERRED text).
DELETE FROM `npc_text` WHERE `ID` IN (587577, 930251);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`)
VALUES
(587577, '哈！又一个战士来寻求原始狂怒之道了，嗯？俺是格雷林·铁须，小子，俺在你出生之前就一直在砸碎头骨了！在铁炉堡最深的隧道里，在熔炉烧得最旺的地方，俺明白了真正的力量不是来自锤子和铁砧，而是来自每个矮人心中燃烧的野蛮之火。你肚子里有那团火吗？那就上前一步，俺会教你像山岭本身一样战斗！', '哈！又一个战士来寻求原始狂怒之道了，嗯？俺是格雷林·铁须，小子，俺在你出生之前就一直在砸碎头骨了！在铁炉堡最深的隧道里，在熔炉烧得最旺的地方，俺明白了真正的力量不是来自锤子和铁砧，而是来自每个矮人心中燃烧的野蛮之火。你肚子里有那团火吗？那就上前一步，俺会教你像山岭本身一样战斗！', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(930251, '哼。来看一个老齿轮慢慢停转，是吧？八十年齿轮和油污，到头来我得到的只有一把冷椅子和一杯更冷的酒。', '哼。来看一个老齿轮慢慢停转，是吧？八十年齿轮和油污，到头来我得到的只有一把冷椅子和一杯更冷的酒。', 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (930250, 930251);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(930250, 587577),
(930250, 287575),
(930251, 930251);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (930250, 930251);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(930250, 0, 3, '我想接受野蛮人训练。', 0, 5, 16, 0, 0, 0, 0, '', 0),
(930251, 0, 0, '齐帕克·齿轮配重让我来陪你一会儿。', 0, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` IN (930250, 930251) AND `SourceTypeOrReferenceId` IN (14, 15);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(14, 930250, 587577, 0, 0, 15, 0, 2048, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Barbarian'),
(14, 930250, 287575, 0, 0, 15, 0, 2048, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Barbarian'),
(15, 930250, 0, 0, 0, 15, 0, 2048, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Barbarian'),
(15, 930251, 0, 0, 0, 9, 0, 200199, 0, 0, 0, 0, 0, '', 'Gyrothor Turbospark - option only while Call of the Shadowlands is taken');

-- ---------------------------------------------------------------------------
-- 4. Chain NPCs
-- ---------------------------------------------------------------------------
-- 9300154 Gyrothor Turbospark: new NPC named by quest 200199 ("a gnome who is near his end, Gyrothor
--   Turbospark"); INFERRED look; look gnome male from Doctor Draxlegauge 2774 (monocle, coat), changed aged
--   face, pale hair, long beard (INFERRED stand-in)
-- 9300155 Hulda Frostwhisper: new NPC: the witch of 200255 in her disguise ("She's here in Anvilmar"); name
--   INFERRED; look dwarf female from Rudra Amberstill 1265 (homespun dress), changed grey hair, older face
--   (INFERRED stand-in)
-- 299326 Kali: fixed quest entry 299326 of 200105 ("They're known as Kali. Kill her"); INFERRED dwarf rookie;
--   look dwarf female from Bael'dun Digger 2989 (rough leathers), changed changed hair and face (INFERRED stand-
--   in)
-- 254000 Efry Cogspark: creaturecache 254000 with its CoA display 254001 (model info in rev_20260925_11); a
--   gnome woman and inventor (npccache 58058 "Efry's the brightest gnome"); unarmed because 200118 asks for a
--   weapon
-- 299236 Bromos Grummner: fixed quest entry 299236 of 200072; the stock paladin trainer 926 look (display 3393)
--   and mace 1903; neutral faction 7 so the Anvilmar guards stay out of it
-- 9300152 Talos: new NPC named by quest 200002 ("my falcon, Talos"); display 25103 is the small eagle (scale
--   0.45), the nearest bird of prey in the client (INFERRED stand-in)
-- 9300153 Scorch: new NPC named by quest 200143 ("a fire elemental ... his name is Scorch"); display 1405 small
--   fire elemental
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(9300154, '盖罗索·涡轮火花', '', 930251, 8, 8, 0, 55, 1, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(9300155, '胡尔达·霜语', '', 0, 5, 5, 0, 55, 0, 1, 1.14286, 20, 0, 2000, 2000, 8, 0, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(299326, '卡莉', '', 0, 4, 4, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 134217728, 0, 'SmartAI', 0, 1.2, 1, 1, 1, 0, ''),
(254000, '埃弗里·齿轮火花', '', 0, 10, 10, 0, 55, 2, 1, 1.14286, 20, 0, 2000, 2000, 8, 0, 2048, 7, 134217728, 0, '', 0, 1.225, 1, 1, 1, 2, ''),
(299236, '布罗莫斯·格鲁姆纳', '', 0, 5, 5, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 2, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(9300152, '塔洛斯', '巴鲁尔的猎鹰', 0, 3, 3, 0, 35, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 1, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(9300153, '灼烧', '', 0, 5, 5, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 8, 0, 2048, 4, 0, 9300153, '', 0, 1.5, 1, 1, 1, 0, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (254000, 299236, 299326, 9300152, 9300153, 9300154, 9300155);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(9300154, 0, 1563, 1, 1),
(9300155, 0, 54, 1, 1),
(299326, 0, 54, 1, 1),
(254000, 0, 254001, 1, 1),
(299236, 0, 3393, 1, 1),
(9300152, 0, 25103, 1, 1),
(9300153, 0, 1405, 1, 1);

DELETE FROM `creature_display_preset` WHERE `entry` IN (254000, 299326, 9300154, 9300155);
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`, `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`, `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`)
VALUES
(9300154, 1563, 7, 0, 1, 0, 11, 1, 6, 6, 0, 2330, 0, 8475, 8476, 5398, 2848, 3382, 0, 8478, 0, 0),
(9300155, 54, 3, 1, 1, 4, 11, 10, 8, 0, 0, 0, 0, 3254, 0, 3255, 3256, 3257, 0, 0, 0, 0),
(299326, 54, 3, 1, 1, 3, 6, 9, 2, 0, 0, 0, 0, 147258, 148641, 3408, 152272, 1246, 0, 156939, 0, 0);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (254000, 299236, 299326, 9300152, 9300153, 9300154, 9300155);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(299326, 1, 2491, 0, 0),
(299236, 1, 1903, 0, 0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (299326, 9300154, 9300155);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `comment`)
VALUES
(9300154, 0, 0, '暗影界，是吗？哼。只是又一台我还没拆开的装置罢了。谢谢你陪我坐着，$n。', 12, 0, 100, 1, '盖罗索·涡轮火花 - 在死神陪伴他之后（推断）'),
(9300155, 0, 0, '所以征服者派了个小崽子来嗅出我！那就和我一起燃烧吧！', 14, 0, 100, 0, '胡尔达·霜语 - 被猎魔人的火炬揭露（推断）'),
(299326, 0, 0, '战团把我拒之门外？那我就自己杀出一条路来，从你开始！', 14, 0, 100, 0, '卡莉 - 进入战斗时（推断）');

-- ---------------------------------------------------------------------------
-- 5. Chain objects
-- ---------------------------------------------------------------------------
-- 9301150 Training Wand: 200166: Harodormu's wand left in Anvilmar; the wand model 100515 (INFERRED object, no
--   cache record)
-- 9301151 Eye of the Beholder: 200110: the answer to the Riddlestone, inside Anvilmar; a crystal-ball model
--   (4891) (INFERRED object, no cache record)
-- 9301152 Ritual Circle: 200043-200045: Ophana's ritual circle; display 6679 at size 0.4, CoA's own Magic Circle
--   Visual pairing (gameobjectcache 90267) (INFERRED object, no cache record)
-- 9301153 Lost Pendant: 200060: the Sun Cleric's pendant dropped at the pillaged camp; the necklace model
--   1010146 (INFERRED object, no cache record)
-- 9301154 Scrap Metal: 200066: salvage left at the ruined excavation camp that the Burly Rockjaw Troggs overran
--   ("one of those abandoned camps that are infested with troggs"); the ruined steam-tank gear model 7000
--   (INFERRED object, no cache record)
-- 9301155 Statue of Uther: 200083: "a statue erected ... in honor of a powerful Paladin who fell during the
--   third war"; UtherStatue.mdx (6815) (INFERRED object, no cache record)
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`)
VALUES
(9301150, 3, 100515, '训练魔杖', '', 1, 43, 9301150, 0, 1, 0, 0, 0, 0, 200166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301151, 3, 4891, '观察者之眼', '', 0.6, 43, 9301151, 0, 1, 0, 0, 0, 0, 200110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301152, 2, 6679, '仪式法阵', '', 0.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI'),
(9301153, 3, 1010146, '遗失的项链', '', 1, 43, 9301153, 0, 1, 0, 0, 0, 0, 200060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301154, 3, 7000, '废金属', '', 0.8, 43, 9301154, 0, 1, 0, 0, 0, 0, 200066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301155, 5, 6815, '乌瑟尔雕像', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '')
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`), `AIName` = VALUES(`AIName`);

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (9301150, 9301151, 9301153, 9301154);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(9301150, 661335, 0, 100, 1, 1, 0, 1, 1, 'CoA Coldridge: Training Wand (quest 200166)'),
(9301151, 661330, 0, 100, 1, 1, 0, 1, 1, 'CoA Coldridge: Eye of the Beholder (quest 200110)'),
(9301153, 663319, 0, 100, 1, 1, 0, 1, 1, 'CoA Coldridge: Lost Pendant (quest 200060)'),
(9301154, 663320, 0, 100, 1, 1, 0, 1, 1, 'CoA Coldridge: Scrap Metal (quest 200066)');

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` IN (9301150, 9301151, 9301153, 9301154);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(9301150, 0, 661335),
(9301151, 0, 661330),
(9301153, 0, 663319),
(9301154, 0, 663320);

-- ---------------------------------------------------------------------------
-- 6. Drops
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE (`Entry`, `Item`) IN ((724, 458421), (724, 458422), (724, 458423), (724, 661417), (707, 662330), (9300153, 662331));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(724, 458421, 0, 45, 1, 1, 0, 1, 1, 'Burly Rockjaw Trogg - Bones (200044; Exiles creature_loot 45%)'),
(724, 458422, 0, 55, 1, 1, 0, 1, 1, 'Burly Rockjaw Trogg - Fresh Flesh (200044; Exiles creature_loot 55%)'),
(724, 458423, 0, 45, 1, 1, 0, 1, 1, 'Burly Rockjaw Trogg - Skull (200044; Exiles creature_loot 45%)'),
(724, 661417, 0, 33, 1, 1, 0, 1, 1, 'Burly Rockjaw Trogg - Power Core (200090; Exiles creature_loot 33%)'),
(707, 662330, 0, 25, 1, 1, 0, 1, 1, 'Rockjaw Trogg - Small Sword (200118; Exiles creature_loot 25%)'),
(9300153, 662331, 0, 100, 1, 1, 0, 1, 1, 'Scorch - Heart of Scorch (200143; the text: "obtain his heart")');

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`, `Idx`) IN ((724, 0), (724, 1), (724, 2), (724, 3), (707, 0), (9300153, 0));
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(724, 0, 458421),
(724, 1, 458422),
(724, 2, 458423),
(724, 3, 661417),
(707, 0, 662330),
(9300153, 0, 662331);

-- ---------------------------------------------------------------------------
-- 7. Quests
-- ---------------------------------------------------------------------------
-- The Ranger's Path (200002) carries the Northshire copy's map point (-8799.29, -412.93) in the cache;
-- it points at Talos's post here, the quest's own target (DERIVED). The Stolen Power Core (200090):
-- ObjectiveText1 is '0' in the cache (a CoA data quirk on its seven copies only); left blank.
-- RewardNextQuest (the next step is offered at turn-in): questcache NextQuestInChain where the next quest is in
--   this file: 200117->200118, 200118->200119, 200043->200044, 200044->200045, 200002->200003, 200003->200004,
--   200089->200090, 200090->200091.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(51000, 2, 2, 2, -525, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴法典', '寻找风暴法典，并到寒脊山谷寻找埃伦德·风暴吐息。', '这本书周围的空气噼啪作响，$N。即使已经处理了那些难缠的狼，我仍能感觉到其中蕴含的雷电之力。山中的风暴猛烈而无情——也许你有毅力掌握它们的狂怒？', '', '到安威玛尔寻找埃伦德·风暴吐息。', 0, 0, 0, 0, 0, 0, 0, 0, 660011, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读风暴法典，并到寒脊山谷寻找埃伦德·风暴吐息。', '', '', ''),
(51001, 2, 2, 2, -529, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '守护者誓言', '寻找守护者誓言，并到寒脊山谷寻找卡松·巨锤。', '这份誓言回响着山岩的力量，$N。你面对那些狼时展现了勇气——如今这些话讲述的是像山峰本身一样屹立不倒，在任何风暴面前都不可动摇。你有毅力成为一名不可动摇的守护者吗？', '', '到安威玛尔寻找卡松·巨锤。', 0, 0, 0, 0, 0, 0, 0, 0, 660012, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读守护者誓言，并到寒脊山谷寻找卡松·巨锤。', '', '', ''),
(51002, 2, 2, 2, -524, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '圣殿骑士誓约', '寻找圣殿骑士誓约，并到寒脊山谷寻找西杜伊斯·普莱德。', '以我的胡子起誓！这份文件上的圣光如炉火般闪耀，$N。你以荣誉应对了那些狼——山地矮人一直知道，真正的信仰如我们熔炉的永恒之火般燃烧——稳定、强大、不可熄灭。', '', '到安威玛尔寻找西杜伊斯·普莱德。', 0, 0, 0, 0, 0, 0, 0, 0, 660013, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读圣殿骑士誓约，并到寒脊山谷寻找西杜伊斯·普莱德。', '', '', ''),
(51003, 2, 2, 2, -505, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '游侠指南', '寻找游侠指南，并到寒脊山谷寻找巴鲁尔·强鬃。', '有意思！这份指南仍带着高山空气的气息，$N。你展现了追踪那些狼的技巧——我几乎能听到鹰的鸣叫，感受到山隘中风雪的刺骨。山地荒野召唤着那些有勇气回应的人。', '', '到安威玛尔寻找巴鲁尔·强鬃。', 0, 0, 0, 0, 0, 0, 0, 0, 660014, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读游侠指南，并到寒脊山谷寻找巴鲁尔·强鬃。', '', '', ''),
(51004, 2, 2, 2, -530, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '时光手稿', '寻找时光手稿，并到寒脊山谷寻找比科。', '奇怪……这份手稿似乎同时存在于多个高度，$N。看着你处理那些狼之后，我明白了稀薄的山间空气一定使时光魔法更加可见。只有心智最清晰的人才应该尝试这种研究。', '', '到安威玛尔寻找比科。', 0, 0, 0, 0, 0, 0, 0, 0, 660015, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读时光手稿，并到寒脊山谷寻找比科。', '', '', ''),
(51005, 2, 2, 2, -521, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死灵日志', '寻找死灵日志，并到寒脊山谷寻找萨维娜·幽暗。', '这本日志周围的石头都变冷了，$N。这些山脉藏着许多古老的秘密，而在看到你如何处理那些狼之后，其中一些秘密涉及不安的死者。对待这种危险知识要小心。', '', '到安威玛尔寻找奥法娜·幽暗。', 0, 0, 0, 0, 0, 0, 0, 0, 660016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读死灵日志，并到寒脊山谷寻找奥法娜·幽暗。', '', '', ''),
(51006, 2, 2, 2, -528, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '烈焰法典', '寻找烈焰法典，并到寒脊山谷寻找黛比·旋焰。', '像炉火一样热，这本！法典散发出的热量足以温暖这些寒冷的山间大厅，$N。你在对抗那些狼时展现了精神中的火焰——火焰魔法在这里受到尊重。我们矮人知道永不熄灭的火焰的价值。', '', '到安威玛尔寻找黛比·旋焰。', 0, 0, 0, 0, 0, 0, 0, 0, 660017, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读烈焰法典，并到寒脊山谷寻找黛比·旋焰。', '', '', ''),
(51007, 2, 2, 2, -522, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '禁忌论著', '寻找禁忌论著，并到寒脊山谷寻找克利波·末日哨。', '你好，$N。克利波·末日哨最近来过，让我把这个给你。以山岭之王起誓……这份论著上的符号在我没有直视它们时似乎在移动和扭动，$N。看着你面对那些狼之后，当这东西靠近时，山中的回声会带着奇怪的耳语。极其小心地处理它。', '', '到安威玛尔寻找克利波·末日哨。', 0, 0, 0, 0, 0, 0, 0, 0, 660018, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读禁忌论著，并到寒脊山谷寻找克利波·末日哨。', '', '', ''),
(51008, 2, 2, 2, -507, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '太阳圣典', '寻找太阳圣典，并到寒脊山谷寻找石光教士。', '圣光保佑！这份圣典如阳光映照新雪般闪耀，$N。你面对那些狼时展现了正义的勇气——山峰更接近天堂，也许这就是为什么在这个高度圣光的祝福感觉如此强烈。', '', '到安威玛尔寻找石光教士。', 0, 0, 0, 0, 0, 0, 0, 0, 660019, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读太阳圣典，并到寒脊山谷寻找石光教士。', '', '', ''),
(51009, 2, 2, 2, -520, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '工程手册', '寻找工程手册，并到寒脊山谷寻找宾克尔·寒矢。', '这才是正宗的矮人工艺！光拿着这本手册我就能听到齿轮咔嗒作响、蒸汽嘶嘶喷出，$N。看到你对那些狼的实际处理方式后，看来宾克尔·寒矢认为你有机会向最优秀的人学习。毕竟，我们的山地工程是全世界最精湛的——如果你够聪明，能在不把自己炸飞的情况下学会它！', '', '到安威玛尔寻找宾克尔·寒矢。', 0, 0, 0, 0, 0, 0, 0, 0, 660020, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读工程手册，并到寒脊山谷寻找宾克尔·寒矢。', '', '', ''),
(51010, 2, 2, 2, -527, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '符文铭文', '寻找符文铭文，并到寒脊山谷寻找穆尔蒙·引信熔炉。', '古老的力量流经这块石板，$N。这里刻的符文比我们最古老的大厅还要古老，是由塑造了山脉本身的双手刻下的。看着你面对那些狼之后，这样的知识伴随着巨大的责任。', '', '到安威玛尔寻找穆尔蒙·引信熔炉。', 0, 0, 0, 0, 0, 0, 0, 0, 660021, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读符文铭文，并到寒脊山谷寻找穆尔蒙·引信熔炉。', '', '', ''),
(51011, 2, 2, 2, -526, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '古老石板', '寻找古老石板，并到寒脊山谷寻找格雷林·铁须。', '这块石板脉动着原始、原始的能量，$N。你像真正的战士一样与那些狼战斗——野蛮人的方式严酷但诚实。没有花哨的技巧，只有纯粹的力量和决心。山脉孕育战士，不是舞者。', '', '到安威玛尔寻找格雷林·铁须。', 0, 0, 0, 0, 0, 0, 0, 0, 660022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读古老石板，并到寒脊山谷寻找格雷林·铁须。', '', '', ''),
(51012, 2, 2, 2, -519, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '猎手令状', '到寒脊山谷寻找伊罗·征服者。', '这份令状带有征服者的印记，$N。山脉中隐藏着许多必须根除的邪恶，伊罗召唤那些有勇气在这些冰封山峰中猎杀黑暗的人。你有能力成为邪恶的猎手吗？', '', '到安威玛尔寻找伊罗·征服者。', 0, 0, 0, 0, 0, 0, 0, 0, 660023, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读神圣信函，并到寒脊山谷寻找伊罗·征服者。', '', '', ''),
(51013, 2, 2, 2, -531, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '原始法典', '寻找原始法典，并到寒脊山谷寻找卡索·锤拳。', '原始的元素力量围绕着这本法典旋转，$N！看到你如何应对那些狼之后，其中蕴含的魔法像山间风暴一样狂野，而且危险加倍。只有有力量拥抱混沌的人才应该敢于研究这种原始力量。', '', '到安威玛尔寻找卡索·锤拳。', 0, 0, 0, 0, 0, 0, 0, 0, 660024, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读原始法典，并到寒脊山谷寻找奥尔德斯·锤拳。', '', '', ''),
(51014, 2, 2, 2, -508, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 660025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡手册', '寻找死亡手册，并到寒脊山谷寻找齐帕克·齿轮配重。', '当这本手册靠近时，空气本身都变冷了，$N。死亡在这些严酷的山脉中是永恒的伴侣，而在看着你让那些狼解脱之后，也许这就是为什么有些人学会引导它而不是恐惧它。以应有的尊重对待这份知识。', '', '到安威玛尔寻找齐帕克·齿轮配重。', 0, 0, 0, 0, 0, 0, 0, 0, 660025, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读死亡手册，并到寒脊山谷寻找齐帕克·齿轮配重。', '', '', ''),
(200105, 2, 3, 3, -526, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 532805, 1, 532806, 1, 395861, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '欢迎加入战团', '杀死卡莉，然后回到你的训练师身边。', '哈！哈！欢迎，$N。很高兴你能加入战团。你可能会问，战团是什么？考虑到你的到来，我本以为你已经知道了。好吧，小$c，这将是一次粗鲁的觉醒。战团是所有野蛮人、暴徒和壮汉聚集在一起竞争，看谁是最强壮、最残暴、最强大的个体。这是我们唯一能真正考验我们勇气的方式。就是这个！你可能对此很陌生，但绝对没有人会对你手下留情。你的第一个考验将和所有其他新兵一样。有一个人一直在捣乱并散布谣言，就因为他们不够格，被拒绝进入战团。他们被称为卡莉。杀了她，哈哈哈！如果你能完成这样的任务，我会奖励你一把非常适合你这种菜鸟的武器。活着回来见我，否则就死。', '', '回到你的训练师身边。', 299326, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200166, 2, 3, 3, -530, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 553122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '完美时机', '在安威玛尔找到哈罗多姆的魔杖。', '啊，$N，我很久以前就看到了你的到来。现在是时候教你成为时光术士意味着什么了。编织空间和时间的织锦。等同于神……让我不要得意忘形。因为你对时光魔法还很陌生，$N，在我允许你以如此潜在的力量存在于这个世界之前……你必须学会控制自己。作为时光术士，你是时间魔法的大师。这意味着你必须在最基础的层面上尊重时间。碰巧的是，我把魔杖落在了这座建筑的某个地方。你有2分钟。给我找到它。', '', '回到哈罗多姆身边。', 0, 0, 0, 0, 0, 0, 0, 0, 661335, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200072, 2, 3, 3, -522, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 532803, 1, 532804, 1, 532881, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '陷入疯狂！', '杀死布罗莫斯·格鲁姆纳。', '你在最合适的时机到来了，$N。我听到了彼岸的低语。它告诉我一个对我们事业特别危险的人。我需要你迅速消灭他们。如果你这样做，我会奖励你一把适合上古之神追随者的武器。你要找的人就在安威玛尔里面。他们叫“布罗莫斯·格鲁姆纳”。终结他。', '', '回到你的训练师身边。', 299236, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200117, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 200118, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '以力量求和平', '在安威玛尔找到埃弗里·齿轮火花。', '很高兴见到你，$N。我们有很多工作要一起完成，而你，我的朋友，有很多要学！我们是守护者，因此我们的任务从字面上说就是守护艾泽拉斯。从偶尔抢劫路人的不法之徒，到对我们人民构成威胁的更危险的怪物。我们是响应召唤的人。而且，正如我的例子所示，我今天就有一个这样的任务给你。如果你能做到，你就完全准备好进一步训练了。附近有一个叫埃弗里·齿轮火花的人，我相信她需要我的帮助。去拜访她，看看她需要什么。', '', '在安威玛尔找到埃弗里·齿轮火花。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200118, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 200119, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '优先防御', '杀死石颚穴居人，直到你找到一把适合埃弗里·齿轮火花的武器。', '嗨，朋友！你来帮忙，太好了！我需要一把用于自卫的武器，如果你能帮我弄到一把，我愿意奖励你。附近的穴居人……我一直在研究它们。它们有一把特别适合我的剑。如果你能帮我弄到一把完好无损的，那就完美了！', '', '回到埃弗里·齿轮火花身边。', 0, 0, 0, 0, 0, 0, 0, 0, 662330, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200119, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 0, 2, 25, 0, 0, 0, 0, 0, 0, 0, 0, 245712, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '帮助朋友', '带着成功的消息回到你的训练师身边。', '现在我可以在这个世界上保护自己了，我感觉好安全！谢谢你！我在一次随机矿洞冒险中发现了一面盾牌——我想是有人掉的。我把它给了你的训练师，现在他会把它给你！', '', '带着成功的消息回到你的训练师身边。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200043, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200044, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡召唤', '找到并与仪式法阵互动。', '你好，$C。很高兴你今天能来墓地加入我。美好的一天，不是吗？看来你已经与亡灵打过交道了，我对你复活死者的能力印象深刻。也许你能为我所用，我相信你不会介意的。我有一个特别强大的亡灵想要召唤，但我不敢自己尝试——我太重要了。然而，你如果能成功，可以学到很多。如果你失败了呢？我就直接把你复活成我的仆从。不要想太多。让我在地图上标记我必须进行仪式的具体位置。你必须收集特定物品才能完成仪式。现在，去吧。', '', '与仪式法阵互动。', 685121, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '找到仪式法阵', '', '', ''),
(200044, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200045, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡呼唤', '杀死穴居人并拾取他们的骨头、血肉和头骨。', '为了召唤亡灵怪物，我必须将以下材料带到仪式法阵。- 骨头 - 新鲜血肉 - 头骨 附近的穴居人正好有需要的东西。', '', '回到仪式法阵。', 0, 0, 0, 0, 0, 0, 0, 0, 458421, 458422, 458423, 0, 0, 0, 1, 1, 1, 0, 0, 0, '', '', '', ''),
(200045, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 660053, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '亡者召唤', '杀死亡灵怪物。', '<材料消散到仪式法阵中，化作一团烟雾>……似乎有些不对劲。召唤失败了，再次检查仪式法阵。但要小心，它不稳定。', '', '回到你的训练师身边。', 299232, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200160, 2, 3, 3, -531, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 296200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '熊之道', '杀死8只霜鬃巨魔幼崽。', '欢迎，$C。我在寒脊山谷等待你的到来。你来向我寻求智慧，因此我会传授。成为$C大师的第一步是掌握熊之道。每一次掌握都会带来新的挑战，但现在，让我们专注于释放你内心的野蛮本能意味着什么。熊是巨大而凶猛的生物。它们只知道生存所必需的，那就是杀戮。任何想要结束自己生命的熊，几乎无法逃脱。通过熊，我们获得野蛮、凶狠和力量，毫不留情。通过杀死这里西边的冰巨魔来向我展示你明白这一点，我会奖励你。', '', '回到你的训练师身边。', 706, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200143, 2, 3, 3, -528, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 293203, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '炎术师之道', '击败灼烧并获取他的心脏。', '哇……我感觉不太舒服，$N。好多旋转……我不该盯着火看那么久。当我旋转……我是说当我打转……打转……哦……一群 rogue 炎术师旋转着召唤了一个火元素！他被束缚在冰冻湖上的一个营火旁，如果你不阻止他，他会伤害很多无辜的人！找到这个元素，他的名字是灼烧。用你的火焰旋转他，获取他的心脏，带回来给我研究。', '', '回到你的训练师身边。', 0, 0, 0, 0, 0, 0, 0, 0, 662331, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200002, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200003, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -6153, 594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '游侠之路', '在寒脊山谷找到巴鲁尔的猎鹰。', '成为游侠不仅仅是拿起弓，或在树荫下战斗，$n。成为游侠，其核心意味着你与荒野有着深刻的联系。你是它的保护者。我派我的猎鹰塔洛斯去侦察周围地区，但他没有回来。请找到他，并引导他回到我身边。', '', '在寒脊山谷找到巴鲁尔的猎鹰。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200003, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200004, 3, 0, 0, 0, 0, 0, 0, 662316, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '突然袭击！', '杀死可疑的生物。', '附近的灌木丛里有东西在沙沙作响。你遭到了攻击！', '', '照料猎鹰。', 299222, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200004, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 0, 2, 70, 0, 0, 0, 0, 0, 662317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 818000, 1, 727000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '猎鹰是朋友', '对猎鹰使用红色小瓶。', '你发现猎鹰身上附着一张纸条，上面写着：<如果你正在读这个，说明你找到了我的朋友。这张纸条上附着一个红色小瓶。如果他受伤了，就给他，他会知道下一步该怎么做。>', '', '回到你的训练师身边。', 685011, 0, 0, 0, 1, 0, 0, 0, 662317, 662316, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '照料塔洛斯的伤口', '', '', ''),
(200199, 2, 3, 3, -508, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 540070, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '暗影界的呼唤', '拜访安威玛尔的盖罗索·涡轮火花。', '啊，终于，我等待另一个像我自己一样的$R来追求如此令人羡慕的技艺！……你很大胆。我能感觉到你是来向我学习的。我今天确实有一个简单的任务给你，年轻的$C。在这个房间里有一个侏儒，他已经接近生命的尽头，盖罗索·涡轮火花。尽管一生充满冒险和成就，他对即将到来的终结感到痛苦。他会死去，暗影界会收走他。但今天不是他的日子。然而，我能感觉到他渴望离开这个位面，但他不知道离开后会面临什么。你可能没想到会有这样的任务，但我谦卑地请求你去拜访他，聊一聊。', '', '回到你的训练师身边。', 685022, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '与盖罗索·涡轮火花交谈', '', '', ''),
(200110, 2, 3, 3, -527, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 661329, 0, 0, 293202, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '力量符文', '解开刻在符文石上的谜语。', '你好，$N。很高兴你终于能加入我，我一直在等待你的到来。今天，给你一个简单的解决问题的课程，适合你这样的符文大师学徒。也许你会成功，也许不会。这里，我有一个符文。符文上刻着一个谜语。解开谜语，然后回到我身边。提示？我能做的最好的就是告诉你，这个谜语的答案就在这座建筑里。不在外面。当你回来时我会知道你是否解开了它，别担心。成功的话，我会奖励你。', '', '回到你的训练师身边。', 0, 0, 0, 0, 0, 0, 0, 0, 661330, 661329, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', '', '', ''),
(200089, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 200090, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '发挥你自己的用处', '协助宾克尔·寒矢进行他的修补恶作剧。', '你好，$N，很高兴认识你，在你到来之前我就听说过很多关于你的事。你来向我学习，作为$C，你已经证明了自己是一个尽职的奥术学生。但我们召唤的力量远不止闪电和电力。随着时间的推移，你会学到你的潜力有多深。但现在……我确实有一个小任务给你。附近有一个叫“宾克尔·寒矢”的人，他总是为他的……修补恶作剧……呼唤我的帮助……他需要一些闪电，$N，但我很忙。你能去协助他吗？', '', '协助宾克尔·寒矢进行他的修补恶作剧。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200090, 2, 3, 0, -520, 0, 0, 0, 0, 0, 0, 200091, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '被盗的能量核心', '杀死壮硕的石颚穴居人，直到其中一个掉落能量核心。', '你好，$N！很高兴你的训练师终于派人来帮我了。这是一个非常简单的任务，我只需要一些能量！但不幸的是，我的能量核心被附近一个壮硕的石颚穴居人偷走了。你能帮我拿回来吗？', '', '回到宾克尔·寒矢身边。', 0, 0, 0, 0, 0, 0, 0, 0, 661417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200091, 2, 3, 0, -525, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 663317, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴使者的工作', '告诉你的训练师你成功了。', '感谢你取回这个能量核心！你现在可以回到你的训练师身边，告诉他你为我做了什么。', '', '告诉你的训练师你成功了。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200060, 2, 3, 3, -507, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 454381, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '遗失的项链', '找到遗失的项链。', '你好，$C。你来得正是时候。我丢了一条相当强大的项链。遗失可能用词不当，但唉，我们最好不要在语义上纠结。好吧，我想我至少欠你一个解释，如果你要帮我的话。事情是这样的。我在安威玛尔南边露营，试图监视当地的穴居人。不幸的是，一天晚上我睡觉时被一群穴居人伏击，他们把我赶了出去，洗劫了我的营地。匆忙中，我丢了我的项链。请帮我找到它。', '', '回到你的训练师身边。', 0, 0, 0, 0, 0, 0, 0, 0, 663319, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200083, 2, 3, 3, -524, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 52855, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '平静的生活', '参观寒脊山口的乌瑟尔雕像。', '欢迎加入教团，$N。我一直在等待你的到来。作为圣殿骑士，我们已经上升到神圣信仰的最高教团，因此我们肩上有相当多的责任。圣骑士和牧师与我们并肩工作，通过圣光维持这个世界的和平，我们每个人，虽然各自有微妙的不同，都希望再次将光明带给艾泽拉斯。尽管有危险。我们的道路可能不同，但有些人可能会说它更加严苛。成为圣殿骑士意味着保持对情绪、战斗流程和思想的极其精确的控制。为了保持自己的健康，我喜欢在离这里不远的一座雕像附近冥想，这座雕像是为了纪念一位在第三次战争中阵亡的强大圣骑士而竖立的。请你自己去参观那个地方。回来时告诉我你的体验。', '', '参观寒脊山口的乌瑟尔雕像。', 685037, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '参观乌瑟尔雕像', '', '', ''),
(200066, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 415000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '巧夺天工！', '收集3块废金属。', '哎呀！你好啊！$N，是你吧？？我看你就是那种修补匠，老实说我一直在我找一个像你这样的人。我正在尝试制作一种特殊的枪，有人说是自制枪，但我需要更多金属。那些被穴居人占据的废弃营地附近有一些金属，可以用来为你和我制造一把枪。帮我收集一些，我就去修补！', '', '回到你的训练师身边。', 0, 0, 0, 0, 0, 0, 0, 0, 663320, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, '', '', '', ''),
(200255, 2, 3, 3, -519, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 662219, 0, 0, 717002, 1, 410005, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '狩猎开始', '揭露女巫并杀死她。', '我能感觉到邪恶的存在。你也能感觉到，不是吗？这就是为什么你在最合适的时机来找我。这里有一个。一个女巫。充满邪恶和恶意。愿圣光保佑我们即将要做的事。来，拿着这个火炬。她就在安威玛尔，我已经在地图上标记了她的位置。对她使用火炬来揭露她的真面目。杀了它。毫不留情。被杀后回到我身边。该死的女巫。', '', '回到你的训练师身边。', 685221, 299333, 0, 0, 1, 1, 0, 0, 662219, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '找到女巫', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

UPDATE `quest_template` SET `TimeAllowed` = 120 WHERE `ID` = 200166;

DELETE FROM `quest_template_addon` WHERE `ID` IN (51000, 51001, 51002, 51003, 51004, 51005, 51006, 51007, 51008, 51009, 51010, 51011, 51012, 51013, 51014, 200002, 200003, 200004, 200043, 200044, 200045, 200060, 200066, 200072, 200083, 200089, 200090, 200091, 200105, 200110, 200117, 200118, 200119, 200143, 200160, 200166, 200199, 200255);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(51000, 0, 32768, 179, 1, 0),
(51001, 0, 131072, 179, 1, 0),
(51002, 0, 262144, 179, 1, 0),
(51003, 0, 1048576, 179, 1, 0),
(51004, 0, 2097152, 179, 1, 0),
(51005, 0, 4194304, 179, 1, 0),
(51006, 0, 8388608, 179, 1, 0),
(51007, 0, 16777216, 179, 1, 0),
(51008, 0, 67108864, 179, 1, 0),
(51009, 0, 134217728, 179, 1, 0),
(51010, 0, 2147483648, 179, 1, 0),
(51011, 0, 2048, 179, 1, 0),
(51012, 0, 16384, 179, 1, 0),
(51013, 0, 1073741824, 179, 1, 0),
(51014, 0, 536870912, 179, 1, 0),
(200105, 0, 2048, 51011, 0, 0),
(200166, 0, 2097152, 51004, 0, 0),
(200072, 0, 16777216, 51007, 0, 0),
(200117, 0, 131072, 51001, 0, 0),
(200118, 0, 131072, 200117, 0, 0),
(200119, 0, 131072, 200118, 0, 0),
(200043, 0, 4194304, 51005, 0, 0),
(200044, 0, 4194304, 200043, 0, 0),
(200045, 0, 4194304, 200044, 0, 0),
(200160, 0, 1073741824, 51013, 0, 0),
(200143, 0, 8388608, 51006, 0, 0),
(200002, 0, 1048576, 51003, 0, 0),
(200003, 0, 1048576, 200002, 1, 0),
(200004, 0, 1048576, 200003, 1, 0),
(200199, 0, 536870912, 51014, 0, 0),
(200110, 0, 2147483648, 51010, 1, 0),
(200089, 0, 32768, 51000, 0, 0),
(200090, 0, 32768, 200089, 0, 0),
(200091, 0, 32768, 200090, 0, 0),
(200060, 0, 67108864, 51008, 0, 0),
(200083, 0, 262144, 51002, 0, 0),
(200066, 0, 134217728, 51009, 0, 0),
(200255, 0, 16384, 51012, 1, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (51000, 51001, 51002, 51003, 51004, 51005, 51006, 51007, 51008, 51009, 51010, 51011, 51012, 51013, 51014, 200002, 200003, 200004, 200043, 200044, 200045, 200060, 200066, 200072, 200083, 200089, 200090, 200091, 200105, 200110, 200117, 200118, 200119, 200143, 200160, 200166, 200199, 200255);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(51000, '太棒了，$N！你听从了山间风暴的召唤，证明了自己的价值。风与雷电的力量如今在你体内流淌，如同加冕我们山峰的永恒暴风雨。作为风暴使者，你将号令塑造山脉本身的力量。$B$B欢迎踏上高山风暴之路。让你的敌人畏惧你的元素之怒吧！'),
(51001, '干得好，$N！你明白这个使命所伴随的神圣职责。山地守护者如山峰本身一样不可动摇，永不屈服，永不折断，就像我们脚下的岩石。$B$B你的训练现在开始。记住——你的生命属于那些你保护的人。以山岳本身的力量来捍卫这份信任。'),
(51002, '圣光在你体内明亮闪耀，$N！你已拥抱圣殿骑士的道路，在这些神圣殿堂中将灵魂奉献给神圣的侍奉。通过信仰与虔诚，你将化身为神圣正义的器皿，如炉火般明亮燃烧。$B$B你的神圣职责今日开始。愿你的信念如山中岩石般持久，愿你的信仰燃烧不息。'),
(51003, '高山荒野选择了正确的你，$N。你体内承载着高处的灵魂，古老的方式在召唤你的血脉。作为山地游侠，你将成为石厅与蛮荒山峰之间的桥梁。$B$B欢迎加入高山荒野兄弟会。愿你的箭矢百发百中，愿你的道路通往高处的自由。'),
(51004, '令人着迷，$N。你能感知时间本身的流动，这是一份在这个高度极少凡人能获得的恩赐。作为时光术士，你将学会随你的意志弯曲因果，在这些古老山峰间回响的时间片段之间行走。$B$B时间如今是你的盟友。明智地使用这份力量，因为时空操控的后果会在山脉的所有时代中回响。'),
(51005, '你有潜力，$N。在这些长眠着无数古老者的殿堂中，死亡对你而言毫无恐惧，这……令人耳目一新。作为死灵法师，你将学会与山中的死亡协作，而非对抗。$B$B你的古老艺术教育现在开始。记住——死亡并非邪恶，只是不可避免。在这些神圣的石厅中好好引导它。'),
(51006, '壮丽非凡，$N！火焰在你周围欢快起舞，被你矮人灵魂中的炉火所吸引。作为炎术师，你将明白毁灭与创造不过是同一把锤子的两面。$B$B让山中之火在你体内燃烧！从旧世界的灰烬中，我们将以矮人的方式锻造出崭新而美丽的事物。'),
(51007, '是的，$N……山中的低语告诉我你会来。你已被超越凡人理解的力量所标记，被选中去侍奉那些在这些古老石厅中回响的真相。上古之神从深处眷顾着你。$B$B疯狂不过是挣脱束缚的清明，年轻的邪教徒。拥抱沉睡在山下的混沌，让它将你重塑为……更伟大的存在。'),
(51008, '你是有福的，$N！太阳的光辉流经你的存在，将你标记为在这些纯净高处被选中进行治愈与新生之人。作为太阳祭司，你将把希望带给绝望之人，把光明带给最深的山间殿堂。$B$B你的治愈之路现在开始。愿你的光芒永不暗淡，愿你永远为迷失在山中黑暗中的人带来黎明。'),
(51009, '精彩，$N！我几乎能听到你那颗聪慧矮人头脑中齿轮转动的声音。作为工匠，你将学会将山地工程的精密与魔法的奇迹融合——这种融合甚至会让铁炉堡嫉妒。$B$B你在创新中的学徒生涯今日开始！我们将共同建造令世界惊叹、让我们的山地先祖骄傲的奇迹。'),
(51010, '古老的力量认可古老的力量，$N。你拥有解读魔法第一语言的罕见天赋——那些由泰坦刻入这座山脉骨骼的符文。这是来自世界之初的知识。$B$B你的符文魔法学习今日开始。古老的方式之所以延续，是因为它们如山中岩石般永恒。愿你证明自己配得上这份信任。'),
(51011, '对，就是这种精神，$N！你有一颗真正山地战士的心，如山峰本身一样凶猛而不可摧折。作为野蛮人，你将学会以山岳的原始力量战斗——没有花哨的技巧，只有纯粹的矮人力量。$B$B你的训练现在开始。记住——山岳不谈判，不妥协，永不屈服。你也不应该！'),
(51012, '圣光已引导你来到我面前，$N。$B$B这些冰封山峰看似平静，但邪恶潜藏在每一道阴影、每一个洞穴、每一处被遗忘的废墟中。作为猎魔人，你将成为圣光对抗腐化的武器。你将追踪邪教徒，摧毁恶魔影响，净化一切滋生的黑暗。$B$B你正义的怒火将燃穿最寒冷的山间空气。你受祝福的武器将击倒不洁之物。在这片严酷土地上，你将成为一切腐化与毁灭之物的征服者。$B$B欢迎加入永恒狩猎。让邪恶在你逼近时颤抖吧！'),
(51013, '原始力量流经你体内，$N！你明白，最纯粹形态的元素丝毫不关心文明的规则。作为仪祭师，你将像山岳本身一样驾驭土、风、火、水——狂野、不羁、不可阻挡。$B$B你的原始魔法训练现在开始。记住——山岳是你的老师，它对弱者毫不留情。'),
(51014, '你明白了真相，$N。很好。死亡会降临所有行走在这些山路上的人，但通过你的工作，它不必被恐惧。作为死神，你将引导灵魂归于应有的安息，并在这些古老殿堂中维持平衡。$B$B你对永恒循环的侍奉现在开始。山中的死者是耐心的老师——好好向他们学习。'),
(200105, ''),
(200166, '欢迎回来，$N。我就知道你会及时找到我的魔杖。字面意义上的。$B$B这根魔杖是给你的。我希望它能好好为你服务。事实上，我知道它一定会的。'),
(200072, ''),
(200117, ''),
(200118, ''),
(200119, ''),
(200043, '<仪式法阵脉动着死灵能量>'),
(200044, '<仪式法阵开始喷发。怪物正在被召唤>'),
(200045, '好吧，这完全就是我想象中会发生的事。$B$B但是，嘿，你没死。你已经是一个更好的死灵法师了！$B$B拿着，我派了其他学徒去收集你战斗后的残骸，他们做了这个。$B$B拿着它然后从我眼前消失。'),
(200160, '啊哈！你向我证明了你是真正强大的。为此，我奖励你一个熊本身的象征。愿它在你旅途中指引你，并赐予你战胜敌人的力量。'),
(200143, ''),
(200002, '这似乎就是那只猎鹰，而且它似乎受伤了。'),
(200003, '猎鹰看起来很痛苦。一定是那个可疑的生物袭击了它！'),
(200004, '谢谢你找到塔洛斯。他已经回到我身边了，和以前一样健康。$B$B我已经派他去执行另一次侦察任务了。$B$B……你说在塔洛斯附近看到了一个奇怪的生物，它还攻击了你？那一定就是伤害我的孩子的生物。$B$B我得进一步调查这件事。根据你的描述，不管这是什么，它都不是丹莫罗的本土生物。'),
(200199, '你可能没想到会有这样的任务，$N。但重要的是要明白，暗影界召唤的是那些准备好的人，知道何时索取灵魂与夺回灵魂本身同样重要。$B$B为了帮助我们的朋友，我将用这双靴子奖励你。愿它们好好为你服务，因为它们被附魔了，能让你在水面上行走。'),
(200110, ''),
(200089, ''),
(200090, ''),
(200091, ''),
(200060, '<项链微微发光。它散发出强烈的神圣气息>$B$B你做得很好，$N。这条项链，我送给你。$B$B把它带在身边，因为总有一天，你可能会再次需要它，而我也许会教你如何解锁它更多的力量。'),
(200083, ''),
(200066, '嗯，这太完美了！$B$B我用这些金属为我完成了一把新枪，而且，你猜怎么着，我也给你做了一把！$B$B拿着它，祝你今天过得愉快！'),
(200255, '又一个邪恶生物被从我们的世界驱逐了。$B$B……然而。$B$B还有那么多其他的要消灭。保持警惕。$B$B拿着这些，让它们在对抗邪恶的战斗中指引你。');

DELETE FROM `quest_request_items` WHERE `ID` IN (51000, 51001, 51002, 51003, 51004, 51005, 51006, 51007, 51008, 51009, 51010, 51011, 51012, 51013, 51014, 200002, 200003, 200004, 200043, 200044, 200045, 200060, 200066, 200072, 200083, 200089, 200090, 200091, 200105, 200110, 200117, 200118, 200119, 200143, 200160, 200166, 200199, 200255);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(51000, '我能感觉到风暴的能量在你周围噼啪作响，$N。你带来风暴法典了吗？高山暴风雨召唤着那些想要掌握其力量的人。'),
(51001, '挺直身姿，$N。你携带守护者誓言了吗？真正的山地守护者必须理解其神圣职责的分量。'),
(51002, '圣光照耀着你，$N。你带来圣殿骑士誓约了吗？只有通过绝对的虔诚，才能在这些神圣山峰中侍奉神圣意志。'),
(51003, '高山荒野的空气谈论着你，$N。你带来游侠指南了吗？自然认得自己的子民，并召唤你走上高处的古老之道。'),
(51004, '时间在你周围异常流动，$N。你拥有时光手稿吗？时间之流在这个高度以不同的方式流动。'),
(51005, '山中的死者低语着你，$N。你带来死灵日志了吗？在这些古老殿堂中，死亡魔法会仔细挑选它的使用者。'),
(51006, '我感觉到炉火从你身上散发，$N。你携带烈焰法典吗？火焰寻找那些有激情驾驭其毁灭之美的人，如同古老的矮人铁匠。'),
(51007, '当你靠近时山中的声音变得更响，$N。你带来禁忌论著了吗？上古之神在这些石厅中回响。'),
(51008, '你的存在为这处圣地带来温暖，$N。你有太阳圣典吗？太阳的祝福在这些纯净高处流动得最强烈。'),
(51009, '我听到齿轮转动和蒸汽嘶嘶的声音，$N。你带来工程手册了吗？创新召唤着那些能够进行真正矮人工程的心智。'),
(51010, '古老的力量在你体内共鸣，$N。你带来符文铭文了吗？刻入这座山脉骨骼的最初魔法认可那些配得上其秘密的人。'),
(51011, '你身上带着战斗的气息，$N。你带来古老石板了吗？山岳只孕育最强大的战士。'),
(51012, '你带着猎手的精神，$N。你带来猎手令状了吗？邪恶等待审判。'),
(51013, '原始的元素力量在你周围旋转，$N。你携带原始法典吗？山中不羁的元素召唤着它们选中的人。'),
(51014, '你周围的帷幕变得稀薄，$N。你携带死亡手册吗？侍奉自然规律的人理解死亡在山岳循环中的位置。'),
(200105, ''),
(200166, '啊，你回来了。'),
(200072, ''),
(200117, ''),
(200118, ''),
(200119, ''),
(200043, ''),
(200044, '<你将材料放置在仪式法阵上>'),
(200045, ''),
(200160, ''),
(200143, ''),
(200002, '而且你把我的小瓶带回来了。我知道这意味着什么。谢谢你，小子。'),
(200003, ''),
(200004, '是的，小子，塔洛斯已经回来了。谢谢你。'),
(200199, ''),
(200110, ''),
(200089, ''),
(200090, ''),
(200091, ''),
(200060, '是的，小子。你做到了。'),
(200083, ''),
(200066, '你找到废金属了吗？'),
(200255, '你回来了，哇！');

-- Map markers the texts promise ("Let me mark your map", "I have marked her location"): the target spawn.
DELETE FROM `quest_poi` WHERE `QuestID` IN (200043, 200255);
INSERT INTO `quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`)
VALUES
(200043, 0, 0, 0, 27, 0, 0, 1),
(200255, 0, 0, 0, 27, 0, 0, 1);

DELETE FROM `quest_poi_points` WHERE `QuestID` IN (200043, 200255);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`)
VALUES
(200043, 0, 0, -6247, 483),
(200255, 0, 0, -6068, 392);

DELETE FROM `creature_queststarter` WHERE `quest` IN (51000, 51001, 51002, 51003, 51004, 51005, 51006, 51007, 51008, 51009, 51010, 51011, 51012, 51013, 51014, 200002, 200003, 200004, 200043, 200044, 200045, 200060, 200066, 200072, 200083, 200089, 200090, 200091, 200105, 200110, 200117, 200118, 200119, 200143, 200160, 200166, 200199, 200255);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(658, 51000),
(658, 51001),
(658, 51002),
(658, 51003),
(658, 51004),
(658, 51005),
(658, 51006),
(658, 51007),
(658, 51008),
(658, 51009),
(658, 51010),
(658, 51011),
(658, 51012),
(658, 51013),
(658, 51014),
(503411, 200002),
(9300152, 200003),
(9300152, 200004),
(502924, 200043),
(503271, 200060),
(502870, 200066),
(502830, 200072),
(502800, 200083),
(502771, 200089),
(502870, 200090),
(502870, 200091),
(502952, 200105),
(502910, 200110),
(503241, 200117),
(254000, 200118),
(254000, 200119),
(503400, 200143),
(50342, 200160),
(502820, 200166),
(9300151, 200199),
(9300150, 200255);

DELETE FROM `creature_questender` WHERE `quest` IN (51000, 51001, 51002, 51003, 51004, 51005, 51006, 51007, 51008, 51009, 51010, 51011, 51012, 51013, 51014, 200002, 200003, 200004, 200043, 200044, 200045, 200060, 200066, 200072, 200083, 200089, 200090, 200091, 200105, 200110, 200117, 200118, 200119, 200143, 200160, 200166, 200199, 200255);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(502771, 51000),
(503241, 51001),
(502800, 51002),
(503411, 51003),
(502820, 51004),
(502924, 51005),
(503400, 51006),
(502830, 51007),
(503271, 51008),
(502870, 51009),
(502910, 51010),
(502952, 51011),
(9300150, 51012),
(50342, 51013),
(9300151, 51014),
(9300152, 200002),
(9300152, 200003),
(503411, 200004),
(502924, 200045),
(503271, 200060),
(502870, 200066),
(502830, 200072),
(502800, 200083),
(502870, 200089),
(502870, 200090),
(502771, 200091),
(502952, 200105),
(502910, 200110),
(254000, 200117),
(254000, 200118),
(503241, 200119),
(503400, 200143),
(50342, 200160),
(502820, 200166),
(9300151, 200199),
(9300150, 200255);

DELETE FROM `gameobject_queststarter` WHERE `quest` IN (200044, 200045);
INSERT INTO `gameobject_queststarter` (`id`, `quest`)
VALUES
(9301152, 200044),
(9301152, 200045);

DELETE FROM `gameobject_questender` WHERE `quest` IN (200043, 200044);
INSERT INTO `gameobject_questender` (`id`, `quest`)
VALUES
(9301152, 200043),
(9301152, 200044);

-- ---------------------------------------------------------------------------
-- 8. Readable pages
-- ---------------------------------------------------------------------------
-- The letters 660011-660025 point at pages 6001-6015, none of which the world DB has. The pages shared
-- by every zone, 11112 (Note of the Ranger chain) and 27575 (Riddlestone), are written once by
-- ct-deathknell, which claimed them first.
DELETE FROM `page_text` WHERE `ID` IN (6001, 6002, 6003, 6004, 6005, 6006, 6007, 6008, 6009, 6010, 6011, 6012, 6013, 6014, 6015);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`)
VALUES
(6001, '你能感觉到它在空气中噼啪作响吗，小子？山间风暴是卡兹莫丹全境最猛烈的，劈开这些山峰的闪电会回应那些有胆量召唤它的人。$B$B如果你宁愿投掷雷霆也不愿躲避它，来安威玛尔找我。$B$B-弗蕾娅·风暴吐息，风暴使者训练师', 0),
(6002, '山脉锻造出最强大的守护者，小子。$B$B石头教导耐心。钢铁教导坚韧。而锤子教导保护来自力量，而不仅仅是勇气。矮人守护者像山一样屹立——不可动摇，不可摧折。$B$B当你准备好成为邪恶撞碎于其上的铁砧时，到寒脊山谷找我。$B$B-卡松·巨锤，守护者训练师', 0),
(6003, '以胡须和锤子起誓，圣光在召唤你！$B$B在定居这些山脉之前，我曾在铁炉堡的大厅中服役。圣光在石厅中燃烧得如同在镀金大教堂中一样明亮。是的，也许更明亮，因为它有山岳的力量作为后盾。$B$B到寒脊山谷找我，了解矮人虔诚的真正含义。$B$B-西杜伊斯·普莱德，圣殿骑士训练师', 0),
(6004, '高山隘口教导耐心。狼群教导狡诈。鹰教导你从一英里外看见兔子的抽动。$B$B我走遍了从寒脊到洛克的每一条小径，我身边还有位置再容纳一双敏锐的眼睛。到寒脊山谷找我。$B$B-巴鲁尔·强鬃，游侠训练师', 0),
(6005, '你已经读过这封信了。你还会再读一遍。这里的时间流逝得又薄又冷，就像空气。$B$B我在安威玛尔的楼梯顶端等你的时间比你活过的岁月还长，也就等了几分钟。不要迟到。$B$B-比科，时光术士训练师', 0),
(6006, '死亡在这些古老殿堂中大声回响。$B$B这些山脉是巨人的墓地，充满了世界年轻时行走的生物的骸骨。我从这些沉默的老师身上学到了很多，而山中的死者……对他们的智慧很慷慨。$B$B如果你能忍受来自最深墓穴的课程，到寒脊山谷找我。$B$B-萨维娜·幽暗，死灵法师训练师', 0),
(6007, '火！真正的火，不是铁匠们留在炉膛里的温顺小火苗！这里的雪和别处一样会融化，相信我，我检查过。$B$B到安威玛尔的铁砧旁找我，我们看看你能燃烧得多明亮。$B$B-黛比·旋焰，炎术师训练师', 0),
(6008, '不要大声读这个。$B$B山下的低语已经说出了你的名字，它们很有耐心。当寒冷让你的思绪变慢时，倾听它们。我会在山谷中心西边的松树下等待。$B$B-克利波·末日哨，邪教徒训练师', 0),
(6009, '在这里，太阳从雪上升起，圣光来得加倍明亮。就连山岳也记得温暖。$B$B如果黎明在你心中激起了什么，来安威玛尔的楼上，学习将它带给他人。$B$B-石光教士，太阳祭司训练师', 0),
(6010, '齿轮、弹簧、一撮爆破火药和一只稳定的手。这就是全部所需，也许还要一两根眉毛。$B$B如果你手痒想造点会轰隆响的东西，来安威玛尔的枪架旁找我。$B$B-宾克尔·寒矢，工匠训练师', 0),
(6011, '最深邃的符文刻在山石之中。$B$B这些山峰记得最初的力量之语，那时泰坦用符文魔法塑造世界。我花了数十年学习解读他们古老双手刻入大地骨骼的符号。$B$B到寒脊山谷找我，那里最古老的魔法仍在活石中脉动。$B$B-穆尔蒙·引信熔炉，符文大师训练师', 0),
(6012, '哈！言语教不会你战斗，所以我就长话短说。$B$B到安威玛尔找我。带上你的拳头。把你的礼貌留在家里。$B$B-格雷林·铁须，野蛮人训练师', 0),
(6013, '以锤子和圣光起誓！邪恶在这些冰封山峰中找不到庇护所！$B$B我花了多年在这些山脉中追猎腐化，追踪那些以为寒冷能隐藏他们罪行的邪教徒和恶魔崇拜者。圣光在山中霜寒面前燃烧得最明亮。$B$B到寒脊山谷找我，我会教你征服一切隐藏的邪恶。$B$B伊罗·征服者$B猎魔人训练师', 0),
(6014, '山脉本身就是原始力量，小子！$B$B在这里，元素是原始的、不羁的、未被文明的腐化触碰过滤的。我学会了以最纯粹、最混沌的形态引导土、风、火、水。没有花哨的法术——只有原始的元素狂怒！$B$B当你准备好释放自然的原始怒火时，到寒脊山谷找我。$B$B-卡索斯·锤拳，仪祭师训练师', 0),
(6015, '死亡会降临所有人，但在这个高度，它来得更快。$B$B山间空气稀薄，寒冷刺骨，古老的骸骨安息在这些古老殿堂深处。我已引导无数灵魂跨过门槛，从冻伤的矿工到倒下的战士。死亡并非邪恶——它只是……不可避免。$B$B如果你明白这个真相，到寒脊山谷找我。$B$B-齐帕克·齿轮配重，死神训练师', 0);

-- ---------------------------------------------------------------------------
-- 9. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9003300, 9003301, 9003302, 9003303, 9003304, 9003305, 9003306, 9003307, 9003308, 9003309, 9003310, 9003311, 9003312, 9003313, 9003314, 9003320, 9003321, 9003322, 9003323, 9003324, 9003325, 9003326, 9003327) OR `guid` BETWEEN 9003300 AND 9003499;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9003300, 502771, 0, 0, 0, 1, 1, 1, -6099.43, 405.44, 395.536, 4.87, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Freja Stormbelch, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51000, z from surface.floor; Anvilmar main hall (floor 395.54), west side by the chairs, faces east across the hall toward the forge'),
(9003301, 503241, 0, 0, 0, 1, 1, 1, -6104.15, 389.07, 395.542, 3.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Kharzon the Hammer, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51001, z from surface.floor; Anvilmar main hall (floor 395.54), by the south-west anvils, faces the south door past the forge'),
(9003302, 502800, 0, 0, 0, 1, 1, 1, -6056.34, 374.58, 392.763, 2.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Thiduis Pride, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51002, z from surface.floor; Anvilmar north room (floor 392.76), east end by the stairs, faces south-west toward the middle room'),
(9003303, 503411, 0, 0, 0, 1, 1, 1, -6185.74, 338.42, 404.128, 3.29, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Baruhr Mightmane, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51003, z from surface.floor; Coldridge Valley, top of the graveyard knoll, faces down the slope to the start clearing'),
(9003304, 502820, 0, 0, 0, 1, 1, 1, -6053.65, 390.14, 398.871, 4.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Bieko, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51004, z from surface.floor; Anvilmar upper floor (398.87), south side, faces the head of the stairs where players arrive'),
(9003305, 502924, 0, 0, 0, 1, 1, 1, -6167.75, 345.83, 399.922, 2.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Ophana Gloom, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51005, z from surface.floor; Coldridge Valley, inside the graveyard fence by the coffins, faces the lamp-lit path climbing from the start'),
(9003306, 503400, 0, 0, 0, 1, 1, 1, -6101.3, 377.48, 395.542, 3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Debbie Whirlyflame, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51006, z from surface.floor; Anvilmar main hall (floor 395.54), by the south-east anvils, faces the south door'),
(9003307, 502830, 0, 0, 0, 1, 1, 1, -6232.22, 393.42, 389.945, 4.55, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Clippo Doomwhistle, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51007, z from surface.floor; Coldridge Valley, under the big pine west of the start, faces south between the two saplings toward Sten and the start clearing'),
(9003308, 503271, 0, 0, 0, 1, 1, 1, -6053.69, 382.02, 398.873, 4.95, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Cleric Stonelight, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51008, z from surface.floor; Anvilmar upper floor (398.87), east side, faces the head of the stairs'),
(9003309, 502870, 0, 0, 0, 1, 1, 1, -6116.33, 396.93, 395.542, 3.7, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Binkle Coldbolt, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51009, z from surface.floor; Anvilmar main hall (floor 395.54), by the gun racks, faces the south door'),
(9003310, 502910, 0, 0, 0, 1, 1, 1, -6115.39, 384.21, 395.542, 3.14, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Murmon Fuseforge, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51010, z from surface.floor; Anvilmar main hall (floor 395.54), among the south tables, faces the south door'),
(9003311, 502952, 0, 0, 0, 1, 1, 1, -6055.95, 388.11, 392.761, 3.14, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Grelin Ironbeard, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51011, z from surface.floor; Anvilmar north room (floor 392.76), faces south across the room toward the doorway from the middle room, crates behind him'),
(9003312, 9300150, 0, 0, 0, 1, 1, 1, -6126.68, 384.03, 395.543, 3.14, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Yiro the Vanquisher, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51012, z from surface.floor; Anvilmar main hall (floor 395.54), entrance hall, faces the south door'),
(9003313, 50342, 0, 0, 0, 1, 1, 1, -6217.5, 384.67, 388.619, 4.5, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Katho Hammerfist, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51013, z from surface.floor; Coldridge Valley, by the fallen tree on the path, faces the path and the start clearing'),
(9003314, 9300151, 0, 0, 0, 1, 1, 1, -5597.9, -607.87, 452.097, 1.9, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Zipak Cogweight, Coldridge: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 51014, z from surface.floor; Kharanos grave scene (CoA-only dirt mound, lampposts and candles), at the head of the fresh grave, turned toward the path from Kharanos'),
(9003320, 299236, 0, 0, 0, 1, 1, 1, -6120.68, 382.09, 395.543, 6.161, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Anvilmar, Bromos Grummner''s stock post in the entrance hall, stock facing north into the hall; replaces stock guid 403'),
(9003321, 254000, 0, 0, 0, 1, 1, 0, -6111.03, 369.59, 395.542, 1.02, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Anvilmar, main hall (395.54) at the Coldridge Mountaineer post by the powder kegs and cargo: the turn-in point ST1088 of 254000/254001 (SOURCED-CLIENT, Questie 1.0 yd), moved there by dm-coldridge-misc; faces north-west into the hall toward the anvils'),
(9003322, 9300154, 0, 0, 0, 1, 1, 0, -5600.5, -607.5, 452.134, 2.43, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Kharanos grave scene, sitting on the ground 2.6 yd from Zipak Cogweight ("In this very room is a gnome who is near his end", 200199), facing the fresh grave'),
(9003323, 9300155, 0, 0, 0, 1, 1, 0, -6068, 392, 392.762, 4.3, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Anvilmar, north room west end by the candle-lit tables, faces the ramp and doorway from the middle room where players come in; the witch of 200255'),
(9003324, 299326, 0, 0, 0, 1, 1, 1, -6108, 706, 433.593, 4.48, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: shelf above the crash site, brooding by her campfire, faces the ramp that climbs from the south-east'),
(9003325, 9300152, 0, 0, 0, 1, 1, 0, -6153, 594, 386.31, 4.585, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: north meadow at the foot of the big pine, the scouting falcon grounded, faces south toward Baruhr and the start'),
(9003326, 9300153, 0, 0, 0, 1, 1, 0, -6317, 714, 384.687, 4.92, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: frozen lake in the south-west of the valley, on the ice beside his campfire, faces the east shore where players come from'),
(9003327, 685037, 0, 0, 0, 1, 1, 0, -5906.5, 22.7, 367.209, 5.1, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Coldridge Pass (area 800), flat valley floor at the foot of the pass road, 4 yd in front of the Statue of Uther, facing it; walk-in credit marker for 200083');

DELETE FROM `creature_addon` WHERE `guid` = 9003322 OR `guid` BETWEEN 9003300 AND 9003499;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`)
VALUES
(9003322, 0, 0, 1, 1, 0, 0, NULL);

DELETE FROM `gameobject` WHERE `guid` IN (7912200, 7912201, 7912202, 7912203, 7912204, 7912205, 7912206, 7912207, 7912208, 7912209, 7912210, 7912211, 7912212, 7912213, 7912214, 7912215, 7912216, 7912217, 7912218, 7912219, 7912220, 7912221) OR `guid` BETWEEN 7912200 AND 7912299;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7912200, 9301152, 0, 0, 0, 1, 1, -6247, 483, 386.548, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, north edge of the ruins, open ground'),
(7912201, 9301150, 0, 0, 0, 1, 1, -6063.8, 379.4, 393.658, 0.7, 0, 0, 0.342898, 0.939373, 60, 100, 1, '', 'CoA Coldridge: Anvilmar, north room, on the south table beside the candelabra'),
(7912202, 9301150, 0, 0, 0, 1, 1, -6114.9, 379.2, 396.438, 2.3, 0, 0, 0.912764, 0.408487, 60, 100, 1, '', 'CoA Coldridge: Anvilmar, main hall, on the south-east table among the chairs'),
(7912203, 9301151, 0, 0, 0, 1, 1, -6063.8, 386.4, 393.658, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Coldridge: Anvilmar, north room, on the north table beside the bread'),
(7912204, 9301151, 0, 0, 0, 1, 1, -6097.6, 404.6, 396.411, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Coldridge: Anvilmar, main hall, on the west table behind Freja Stormbelch'),
(7912205, 9301153, 0, 0, 0, 1, 1, -6422.5, 352, 390.738, 1.1, 0, 0, 0.522687, 0.852525, 60, 100, 1, '', 'CoA Coldridge: pillaged camp at the broken cart south of Anvilmar, in the snow north-east of the cart'),
(7912206, 9301153, 0, 0, 0, 1, 1, -6419.5, 343.5, 391.155, 4, 0, 0, 0.909297, -0.416147, 60, 100, 1, '', 'CoA Coldridge: pillaged camp at the broken cart south of Anvilmar, in the snow east of the cart, where she fled'),
(7912207, 9301154, 0, 0, 0, 1, 1, -6270.5, 489, 386.188, 2.6, 0, 0, 0.963558, 0.267499, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, at the collapsed south end of the west tent'),
(7912208, 9301154, 0, 0, 0, 1, 1, -6268, 479.5, 386.28, 0.9, 0, 0, 0.434966, 0.900447, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, between the camp chair and the dig-site rocks'),
(7912209, 9301154, 0, 0, 0, 1, 1, -6277.5, 476, 386.148, 4.1, 0, 0, 0.887362, -0.461073, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, beside the abandoned excavation hammers'),
(7912210, 9301154, 0, 0, 0, 1, 1, -6256, 475.5, 386.037, 5.5, 0, 0, 0.381661, -0.924302, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, by the broken barrel east of the east tent'),
(7912211, 9301154, 0, 0, 0, 1, 1, -6246, 470, 385.919, 1.7, 0, 0, 0.75128, 0.659983, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, north-east edge, below the old stump'),
(7912212, 9301154, 0, 0, 0, 1, 1, -6244.5, 495, 387.122, 3.4, 0, 0, 0.991665, -0.128844, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, north of the tents, beyond the small pines'),
(7912213, 9301154, 0, 0, 0, 1, 1, -6247, 507, 386.225, 0.3, 0, 0, 0.149438, 0.988771, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, north-west edge, beyond the big pine'),
(7912214, 9301154, 0, 0, 0, 1, 1, -6268, 509, 386.918, 2.2, 0, 0, 0.891207, 0.453596, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, west side, beside the lone snow pine'),
(7912215, 9301154, 0, 0, 0, 1, 1, -6283, 497, 386.137, 5, 0, 0, 0.598472, -0.801144, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, south-west, past the paired snow pines'),
(7912216, 9301154, 0, 0, 0, 1, 1, -6285.5, 478, 386.11, 1.1, 0, 0, 0.522687, 0.852525, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, south edge, south of the paired snow pines'),
(7912217, 9301154, 0, 0, 0, 1, 1, -6268, 463.5, 386.077, 3.8, 0, 0, 0.9463, -0.32329, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, east edge, beyond the excavation hammers'),
(7912218, 9301154, 0, 0, 0, 1, 1, -6258, 528, 386.144, 6, 0, 0, 0.14112, -0.989992, 60, 100, 1, '', 'CoA Coldridge: ruined excavation camp west of the start among the Burly Rockjaw Troggs, west end, south of the lone pines'),
(7912219, 9301155, 0, 0, 0, 1, 1, -5905, 19, 367.05, 1.95, 0, 0, 0.827702, 0.561168, 300, 100, 1, '', 'CoA Coldridge: Coldridge Pass (area 800), flat valley floor at the foot of the pass road, south of the road''s end where the mountaineer''s patrol turns, faces up the road toward the pass mouth; base within 0.06 yd of the ground over its whole footprint'),
(7912220, 1798, 0, 0, 0, 1, 1, -6319.5, 711, 384.687, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Coldridge: frozen lake in the south-west of the valley, Scorch''s campfire on the ice (200143)'),
(7912221, 1798, 0, 0, 0, 1, 1, -6111, 703, 433.087, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Coldridge: shelf above the crash site, Kali''s campfire');

-- ---------------------------------------------------------------------------
-- 10. Scripts
-- ---------------------------------------------------------------------------
-- Entry scripts on the package's own NPCs and circle; the shared visit marker 685037 runs a guid script.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (299326, 9300152, 9300154, 9300155) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(299326, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Kali - On Aggro - Say Line 0'),
(9300152, 0, 0, 0, 19, 0, 100, 0, 200003, 0, 0, 0, 0, 0, 12, 299222, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, -6146, 598.5, 388.437, 4, 'Talos - On Quest A Surprise Attack! Accepted - Summon Suspicious Creature from the pines'),
(9300152, 0, 1, 0, 8, 0, 100, 0, 684328, 0, 3000, 3000, 0, 0, 33, 685011, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Talos - On Spellhit Tend Jo''s Wounds (Red Vial) - Quest Credit Tend to Talos'' wounds'),
(9300154, 0, 0, 1, 62, 0, 100, 0, 930251, 0, 0, 0, 0, 0, 33, 685022, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gyrothor Turbospark - On Gossip Option 0 Selected - Quest Credit Chat with Gyrothor'),
(9300154, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gyrothor Turbospark - Linked - Say Line 0'),
(9300154, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gyrothor Turbospark - Linked - Close Gossip'),
(9300155, 0, 0, 1, 8, 0, 100, 0, 512352, 0, 10000, 10000, 0, 0, 33, 685221, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulda Frostwhisper - On Spellhit Witcher''s Torch - Quest Credit Find the Witch'),
(9300155, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulda Frostwhisper - Linked - Say Line 0'),
(9300155, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 299333, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, -6068, 392, 392.762, 4.3, 'Hulda Frostwhisper - Linked - Summon the Witch in her place attacking the torch-bearer'),
(9300155, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hulda Frostwhisper - Linked - Despawn the disguise');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 9301152 AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(9301152, 1, 0, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 33, 685121, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ritual Circle - On Gossip Hello - Quest Credit Find the ritual circle'),
(9301152, 1, 1, 0, 19, 0, 100, 0, 200045, 0, 0, 0, 0, 0, 12, 299232, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, -6243, 479.5, 386.972, 3.3, 'Ritual Circle - On Quest Call of the Dead Accepted - Summon the Undead Monstrosity'),
(9301152, 1, 2, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 299232, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, -6243, 479.5, 386.972, 3.3, 'Ritual Circle - On Use - Summon the Undead Monstrosity again if none is near');

DELETE FROM `conditions` WHERE `SourceEntry` = 9301152 AND `SourceTypeOrReferenceId` = 22;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(22, 3, 9301152, 1, 0, 9, 0, 200045, 0, 0, 0, 0, 0, '', 'Ritual Circle - re-summon only while Call of the Dead is taken'),
(22, 3, 9301152, 1, 0, 29, 1, 299232, 20, 0, 1, 0, 0, '', 'Ritual Circle - re-summon only if no living Undead Monstrosity is within 20 yd');

DELETE FROM `smart_scripts` WHERE `entryorguid` = -9003327 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(-9003327, 0, 0, 0, 10, 0, 100, 0, 1, 8, 1000, 1000, 1, 0, 33, 685037, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Visit marker at the Statue of Uther - On OOC LOS - Quest Credit Visit the statue of Uther');
