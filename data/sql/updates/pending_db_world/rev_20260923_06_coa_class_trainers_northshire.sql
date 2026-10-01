-- Conquest of Azeroth class trainers in Northshire Valley: the 16 trainers CoA placed at the abbey, the
-- "seek out your trainer" letters Marshal McBride hands out after Kobold Camp Cleanup, and the first quest
-- chain of every class with the creatures and objects it needs. Builds on
-- rev_20260923_05_coa_class_trainer_core.sql (trainer spells, class menus, Mathrengyl Bearwalker's Primalist role).
--
-- WHERE EACH VALUE COMES FROM
--   trainer spots  SOURCED-CLIENT: the QuestSuperTrack turn-in point of each letter (z from the server
--     floor). Chaplain Nysoni stands 1.03 yd off hers (a Pilgrim's Bounty turkey shares the point); Patal
--     the Mad stands 0.2 yd in front of his, clear of the bench it touches. Facings are hand-checked, the
--     reason on each row.
--   trainer templates  name and subname from creaturecache; faction, level and flags from the class
--     trainer recipe (ct_common). Amanda the Reaver's template also serves her Shadowglen spawn.
--   looks  no capture of any CoA trainer exists, so every look is a stand-in: a stock NPC of the right
--     race, sex and trade copied through CreatureDisplayInfoExtra, then restyled and redressed so no two
--     Northshire trainers look alike (reason on each preset). Weapons are stock items.
--   menus  Amanda (87576) and Norman Goldshire (25018/125018) keep their own CoA texts; Doctor Yara, a
--     human, gets neutral texts instead of the troll-spoken class menu (INFERRED, 930202/930203).
--   stock trainers  every stock class trainer keeps its post and role. Priestess Anetta, 0.28 yd from
--     Nysoni's point, steps aside and Brother Sammuel is hidden while the Cultist kill copy stands in
--     (rev_20260924_13).
--   quests  the realm's questcache (D13 mapping). Letters: starter McBride after Kobold Camp Cleanup
--     (the stock letter pattern 3100-3105, INFERRED), ender the trainer, the letter a provided item. Chains
--     are linked by PrevQuestID only; each quest is gated to its class.
--   places the texts name  the Kobold mine = Echo Ridge Mine; the Defias encampment = the camp by the river
--     south-east of the abbey; the waterfall = the Northshire falls, where CoA's own "Uther's Statue"
--     goober stood (SOURCED-ATLAS) on a ledge no path reaches, so a walk-in marker at the foot of the falls
--     credits the visit; Jo = the Damaged Guard Tower supply yard at the quest point of The Ranger's Path
--     (SOURCED-CACHE); Old Man Jenkins' home = the furnished CoA farmhouse north of the abbey;
--     kobold camps = the three camps north of the abbey and the mine mouth. Everything else is hand-placed
--     (INFERRED) with its reason on the row.
--   drops  SOURCED-EXILES creature_loot for the Defias Thug and Kobold Worker drops; the named holders drop
--     their item always.
--   letter pages  pagetextcache where CoA had them; the rest are written in the trainers' voices
--     (INFERRED). The quest item pages the zones share (Tome of Blood, Riddlestone, Note) are ct-deathknell's.
--
-- Blocks: creature guids 9003100-9003299, gameobject guids 7912100-7912199, creature entries 9300100-9300104,
-- gameobject entries 9301100-9301105, gossip menus and texts 930200-930206.

-- ---------------------------------------------------------------------------
-- 1. Trainers
-- ---------------------------------------------------------------------------
-- 50295 Amanda the Reaver (Barbarian): name and subname from creaturecache 50295 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human female from Syndicate Mercenary
--   (display 3988): leather and black plate shoulders, Defias hood removed, face 4, hair 14 in red, changed as
--   listed; weapons Blackrock Champion's Axe (her text: the axe of a Blackrock Champion).
-- 502960 Doctor Yara (Witch Doctor): name and subname from creaturecache 502960 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human female from Herbalist Pomeroy's
--   build (display 3269) in the tribal outfit of the human Kurzen Witch Doctor (display 4450), face 8, hair 7
--   dark, changed as listed; weapons Witching Stave.
-- 50325 Deacon Frost (Witch Hunter): name and subname from creaturecache 50325 (SOURCED-CACHE); look is a stand-
--   in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from Night Watch watcher (display
--   2392) with a black buckled hat, grey hair and a full beard, changed as listed; weapons Torch of Holy Flame
--   and Silver Crossbow.
-- 502770 Niki Thesla (Stormbringer): name and subname from creaturecache 502770 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human female from Dalaran Summoner
--   (display 3718) robes without the Kirin Tor tabard, hair 18 storm-white, changed as listed; weapons Windstorm
--   Hammer and Orb of Power.
-- 50324 Vanguard Gus (Guardian): name and subname from creaturecache 50324 (SOURCED-CACHE); look is a stand-in,
--   no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from Stormwind guard (display 3453) in
--   helm and plate without the city tabard, beard 5, changed as listed; weapons Mercenary Sword and Veteran
--   Shield.
-- 50280 Brother William (Templar): name and subname from creaturecache 50280 (SOURCED-CACHE); look is a stand-
--   in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from Brother Wilhelm's paladin plate
--   (display 1299), golden hair, face 5, clean-shaven, changed as listed; weapons Light Hammer and Shield of the
--   Faith.
-- 50292 Whisp the Silent (Bloodmage): name and subname from creaturecache 50292 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from Scarlet Magus robes
--   (display 10329) in crimson without the Crusade tabard, dark hair, clean-shaven, changed as listed; weapons
--   Bloody Dagger (the chain reward) and Mystic Tome.
-- 503410 Owen of Moonbrook (Ranger): name and subname from creaturecache 503410 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from People's Militia scout
--   (display 2373, Westfall - he is of Moonbrook), hair 10, beard 3, changed as listed; weapons Engraved Sword
--   and Blackwood Recurve Bow.
-- 50282 Soridormi (Chronomancer): name and subname from creaturecache 50282 (SOURCED-CACHE); look is a stand-in,
--   no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human female from Dawn Brightstar (display 3347)
--   arcane dress and silver circlet, sand-gold hair, face 6, changed as listed; weapons feathered gold staff.
-- 502923 Halbert the Scoundrel (Necromancer): name and subname from creaturecache 502923 (SOURCED-CACHE); look
--   is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from Scourge Necromancer
--   (display 2582) build in the black Death Speaker Robes (display 9861, Robe_B_01Black), pale skin, white hair,
--   face 3, goatee, changed as listed; weapons Cryptbone Staff.
-- 50340 Koby the Incinerator (Pyromancer): name and subname from creaturecache 50340 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from Twilight Fire Guard
--   (display 7826) flame-red plate, ember-red hair, face 10, changed as listed; weapons Emberstone Staff.
-- 50283 Patal the Mad (Cultist): name and subname from creaturecache 50283 (SOURCED-CACHE); look is a stand-in,
--   no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from Jaedenar Cultist robes (display
--   11279), wild grey hair, face 11, changed as listed; weapons Ritual Blade.
-- 50286 Chaplain Nysoni (Sun Cleric): name and subname from creaturecache 50286 (SOURCED-CACHE); look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human female from High Priestess Laurena
--   (display 1495) white vestments with a sun crown, golden hair, face 9, changed as listed; weapons Crested
--   Scepter and Tome of the Dawn (a book model, for her "every dawn" letter).
-- 50287 Norman Goldshire (Tinker): name and subname from creaturecache 50287 (SOURCED-CACHE); look is a stand-
--   in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from Neal Allen (display 3459,
--   engineering supplies) work clothes with engineer goggles, changed as listed; weapons Tinker's Wrench and
--   Rough Boomstick.
-- 50289 Troes the Remover (Reaper): name and subname from creaturecache 50289 (SOURCED-CACHE); look is a stand-
--   in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human male from Shadowy Executioner (display
--   18111) with his crimson hood-helm ("my helmet"), darker skin, face 2, changed as listed; weapons Darkwater
--   Talwar and Deathstalker Shortsword ("these blades").
-- 50291 Wanda Belezin (Runemaster): name and subname from creaturecache 50291 (SOURCED-CACHE); look is a stand-
--   in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: human female from Dalaran Mage (display 3560)
--   robes without the Kirin Tor tabard, black hair, face 12, changed as listed; weapons Clear Crystal Rod.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(50295, '掠夺者阿曼达', '野蛮人训练师', 930200, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502960, '雅拉医生', '巫医训练师', 930202, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50325, '执事弗罗斯特', '猎魔人训练师', 930015, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502770, '妮基·塞斯拉', '风暴使者训练师', 930016, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50324, '先锋格斯', '守护者训练师', 930018, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50280, '威廉修士', '圣殿骑士训练师', 930019, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50292, '沉默者维斯普', '血法师训练师', 930020, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(503410, '月溪镇的欧文', '游侠训练师', 930021, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50282, '索里多米', '时光术士训练师', 930022, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502923, '恶棍哈尔伯特', '死灵法师训练师', 930023, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50340, '焚化者科比', '炎术师训练师', 930024, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50283, '疯癫的帕塔尔', '邪教徒训练师', 930025, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50286, '随军牧师尼索尼', '太阳祭司训练师', 930027, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50287, '诺曼·戈德希尔', '工匠训练师', 930201, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50289, '清除者特罗斯', '死神训练师', 930030, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50291, '旺达·贝雷津', '符文大师训练师', 930032, 10, 10, 0, 12, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (50280, 50282, 50283, 50286, 50287, 50289, 50291, 50292, 50295, 50324, 50325, 50340, 502770, 502923, 502960, 503410);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(50295, 0, 50, 1, 1),
(502960, 0, 50, 1, 1),
(50325, 0, 49, 1, 1),
(502770, 0, 50, 1, 1),
(50324, 0, 49, 1, 1),
(50280, 0, 49, 1, 1),
(50292, 0, 49, 1, 1),
(503410, 0, 49, 1, 1),
(50282, 0, 50, 1, 1),
(502923, 0, 49, 1, 1),
(50340, 0, 49, 1, 1),
(50283, 0, 49, 1, 1),
(50286, 0, 50, 1, 1),
(50287, 0, 49, 1, 1),
(50289, 0, 49, 1, 1),
(50291, 0, 50, 1, 1);

DELETE FROM `creature_display_preset` WHERE `entry` IN (50280, 50282, 50283, 50286, 50287, 50289, 50291, 50292, 50295, 50324, 50325, 50340, 502770, 502923, 502960, 503410);
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`, `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`, `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`)
VALUES
(50295, 50, 1, 1, 1, 3, 4, 14, 3, 0, 0, 0, 145970, 147283, 148669, 150366, 3381, 154524, 0, 156979, 0, 0),
(502960, 50, 1, 1, 1, 5, 8, 7, 1, 0, 0, 0, 0, 147375, 148708, 150440, 5571, 154611, 0, 157057, 0, 0),
(50325, 49, 1, 0, 1, 2, 9, 6, 8, 7, 0, 142792, 0, 5944, 0, 5926, 5927, 5928, 0, 5929, 0, 0),
(502770, 50, 1, 1, 1, 0, 7, 18, 9, 1, 0, 0, 145956, 0, 148633, 150312, 152256, 154463, 0, 0, 0, 0),
(50324, 49, 1, 0, 1, 2, 6, 3, 1, 5, 0, 11653, 4916, 4628, 0, 4629, 4630, 4656, 0, 5063, 0, 0),
(50280, 49, 1, 0, 1, 3, 5, 5, 2, 0, 0, 0, 2932, 255, 627, 2436, 149, 546, 0, 670, 0, 0),
(50292, 49, 1, 0, 1, 0, 4, 8, 0, 0, 0, 145254, 146201, 0, 147782, 150836, 152863, 155024, 0, 157421, 0, 0),
(503410, 49, 1, 0, 1, 1, 7, 10, 1, 3, 0, 0, 5923, 5921, 0, 5922, 5747, 5675, 0, 5924, 0, 0),
(50282, 50, 1, 1, 1, 2, 6, 3, 2, 0, 0, 6949, 0, 6950, 0, 7020, 5565, 6951, 0, 0, 0, 0),
(502923, 49, 1, 0, 1, 0, 3, 6, 9, 2, 0, 0, 0, 0, 9861, 3408, 598, 16593, 0, 0, 0, 0),
(50340, 49, 1, 0, 1, 8, 10, 7, 3, 5, 0, 0, 146123, 147684, 148882, 150726, 152734, 154902, 156345, 0, 0, 0),
(50283, 49, 1, 0, 1, 3, 11, 12, 8, 4, 0, 0, 0, 0, 13566, 150582, 152574, 0, 0, 157195, 0, 0),
(50286, 50, 1, 1, 1, 1, 9, 2, 2, 0, 0, 61928, 6799, 6796, 6604, 3134, 6797, 6247, 0, 0, 0, 0),
(50287, 49, 1, 0, 1, 0, 4, 1, 4, 1, 0, 2378, 0, 7283, 3348, 3531, 2303, 2931, 0, 2992, 0, 0),
(50289, 49, 1, 0, 1, 5, 2, 0, 0, 0, 0, 145474, 146467, 0, 12798, 151218, 13020, 155396, 0, 157717, 0, 0),
(50291, 50, 1, 1, 1, 1, 12, 16, 0, 0, 0, 0, 0, 0, 148616, 150266, 152208, 154412, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (50280, 50282, 50283, 50286, 50287, 50289, 50291, 50292, 50295, 50324, 50325, 50340, 502770, 502923, 502960, 503410);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(50295, 1, 1455, 0, 0),
(502960, 1, 1484, 0, 0),
(50325, 1, 2808, 0, 24138),
(502770, 1, 6804, 4838, 0),
(50324, 1, 23430, 3651, 0),
(50280, 1, 2500, 1547, 0),
(50292, 1, 1505015, 6899, 0),
(503410, 1, 23421, 0, 4763),
(50282, 1, 13337, 0, 0),
(502923, 1, 2013, 0, 0),
(50340, 1, 5201, 0, 0),
(50283, 1, 5112, 0, 0),
(50286, 1, 3414, 43654, 0),
(50287, 1, 1911, 0, 4362),
(50289, 1, 11121, 3455, 0),
(50291, 1, 16894, 0, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (50280, 50282, 50283, 50286, 50287, 50289, 50291, 50292, 50295, 50324, 50325, 50340, 502770, 502923, 502960, 503410);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`)
VALUES
(50295, 900012),
(502960, 900013),
(50325, 900015),
(502770, 900016),
(50324, 900018),
(50280, 900019),
(50292, 900020),
(503410, 900021),
(50282, 900022),
(502923, 900023),
(50340, 900024),
(50283, 900025),
(50286, 900027),
(50287, 900028),
(50289, 900030),
(50291, 900032);

-- ---------------------------------------------------------------------------
-- 2. Named trainer menus and the chain gossip
-- ---------------------------------------------------------------------------
DELETE FROM `npc_text` WHERE `ID` IN (25018, 87576, 930202, 930203, 930204, 930206);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`)
VALUES
(25018, '你知道吗，很多工匠狂人过去总是随身带着一堆炮台，但它们的质量总是那么差，大约15秒后就会自爆！$B$B当你不得不专注于一个只能维持15秒效力的炮台时，你还怎么指望在战斗中开枪、扔炸弹，或者做任何事情！？$B$B谢天谢地，我，诺曼·戈德希尔，创造了现代哨戒炮台的典范！经久耐用，但它们会占据你口袋里更多的空间！只要确保在重新放置之前先把它拆解掉！', '你知道吗，很多工匠狂人过去总是随身带着一堆炮台，但它们的质量总是那么差，大约15秒后就会自爆！$B$B当你不得不专注于一个只能维持15秒效力的炮台时，你还怎么指望在战斗中开枪、扔炸弹，或者做任何事情！？$B$B谢天谢地，我，诺曼·戈德希尔，创造了现代哨戒炮台的典范！经久耐用，但它们会占据你口袋里更多的空间！只要确保在重新放置之前先把它拆解掉！', 0, 0, 1, 1, 1, 0, 0, 0, 0),
(87576, '你好，我是阿曼达，残暴的大师。他们叫我掠夺者，北方的真正灾祸！$B$B哦，你在想我这把斧头是从哪来的？哈，听好了$n，这是黑石冠军的斧头。他们说如果我想要，就得从他们冰冷的死尸手中夺过来。$B$B所以我就是这么做的。$B$B觉得自己有本事向我这样的野蛮人学习吗？', '你好，我是阿曼达，残暴的大师。他们叫我掠夺者，北方的真正灾祸！$B$B哦，你在想我这把斧头是从哪来的？哈，听好了$n，这是黑石冠军的斧头。他们说如果我想要，就得从他们冰冷的死尸手中夺过来。$B$B所以我就是这么做的。$B$B觉得自己有本事向我这样的野蛮人学习吗？', 0, 0, 1, 1, 1, 0, 0, 0, 0),
(930202, '塞拉图斯一直在低语你的名字，$C。坐到火边来，我会向你展示一种酿剂如何治愈朋友，而另一种如何毁灭敌人。', '塞拉图斯一直在低语你的名字，$C。坐到火边来，我会向你展示一种酿剂如何治愈朋友，而另一种如何毁灭敌人。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(930203, '灵魂不会回应你，$C。把酿造留给那些被洛阿神选中的人吧。', '灵魂不会回应你，$C。把酿造留给那些被洛阿神选中的人吧。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(930204, '<老人的胸腔里发出呼噜呼噜的喘息声，但他抓着椅子的手依然如钢铁般有力。>$B$B嗯？又有个年轻人来看老詹金斯了？兽人进攻时，我坚守在暴风城的大门前，之后的每一场战争我也都在。如今我连自己的剑都举不起来了。$B$B他们说，像我这样的人，结局来得很安静。我想知道另一边的世界有什么在等着。', '<老人的胸腔里发出呼噜呼噜的喘息声，但他抓着椅子的手依然如钢铁般有力。>$B$B嗯？又有个年轻人来看老詹金斯了？兽人进攻时，我坚守在暴风城的大门前，之后的每一场战争我也都在。如今我连自己的剑都举不起来了。$B$B他们说，像我这样的人，结局来得很安静。我想知道另一边的世界有什么在等着。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(930206, '<地上被划出了一个宽阔的圆圈，里面刻满了黑暗符文。圆圈边缘放着一张折叠的纸条，用一块石头压着。>', '<地上被划出了一个宽阔的圆圈，里面刻满了黑暗符文。圆圈边缘放着一张折叠的纸条，用一块石头压着。>', 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (930200, 930201, 930202, 930204, 930206);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(930200, 87576),
(930200, 287575),
(930201, 25018),
(930201, 125018),
(930202, 930202),
(930202, 930203),
(930204, 930204),
(930206, 930206);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (930200, 930201, 930202, 930204, 930206);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(930200, 0, 3, '我想接受野蛮人的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0),
(930201, 0, 3, '我想接受工匠的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0),
(930202, 0, 3, '我想接受巫医的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0),
(930204, 0, 0, '清除者特罗斯派我来的。我可以告诉你另一边有什么在等着。', 0, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` IN (930200, 930201, 930202, 930204, 930206) AND `SourceTypeOrReferenceId` IN (14, 15);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(14, 930200, 87576, 0, 0, 15, 0, 2048, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Barbarian'),
(14, 930200, 287575, 0, 0, 15, 0, 2048, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Barbarian'),
(15, 930200, 0, 0, 0, 15, 0, 2048, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Barbarian'),
(14, 930201, 25018, 0, 0, 15, 0, 134217728, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Tinker'),
(14, 930201, 125018, 0, 0, 15, 0, 134217728, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Tinker'),
(15, 930201, 0, 0, 0, 15, 0, 134217728, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Tinker'),
(14, 930202, 930202, 0, 0, 15, 0, 4096, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Witch Doctor'),
(14, 930202, 930203, 0, 0, 15, 0, 4096, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Witch Doctor'),
(15, 930202, 0, 0, 0, 15, 0, 4096, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Witch Doctor'),
(15, 930204, 0, 0, 0, 9, 0, 200037, 0, 0, 0, 0, 0, '', 'Old Man Jenkins - Show gossip option while Call of the Shadowlands is taken');

-- ---------------------------------------------------------------------------
-- 3. Chain creatures
-- ---------------------------------------------------------------------------
-- 85031 Lil Wa'zoo: creaturecache 85031 (name, subname, rank, modifiers, display 10913): the kobold of the
--   Guardian and Witch Doctor chains; friendly and not immune so Loa's Brew can reach him.
-- 299223 Zipi: the kobold who bullied Lil Wa'zoo (200028); name, subname and display 2299 from creaturecache
--   399223 Zipi <The Bully>.
-- 299235 Brother Sammuel: Going MAD! kill target, named by 200071; stock Brother Sammuel (925) look and mace;
--   neutral so nobody but the Cultist has reason to fight him.
-- 299325 Gerald: Welcome to the Warband rookie, named by 200104; stock mercenary look (display 3987) and a
--   barbaric axe, INFERRED; neutral, he only fights back.
-- 9300100 Defias Blood Wizard: Blood Is Power tome holder, named by 200017; Defias Rogue Wizard looks and staff;
--   hostile like the Defias Thugs (faction 14, playtest).
-- 9300101 Scorch: The Way of the Pyromancer: a rogue fire elemental bound to a campfire (200120); small flame
--   elemental look (display 1070 at 0.6), INFERRED.
-- 9300102 Jo: Owen of Moonbrook's falcon, named by 199999; eagle model at the 0.25 display scale, INFERRED.
-- 9300103 Old Man Jenkins: Call of the Shadowlands: the dying veteran, named by 200037; old man look (display
--   2052), INFERRED.
-- 9300104 Old Agatha: The Hunt Begins: the witch in her villager disguise (INFERRED name and look, display
--   3335).
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(85031, '小哇祖', '可疑的狗头人', 0, 3, 3, 0, 35, 3, 1, 1.14286, 20, 2, 2000, 2000, 1, 0, 2048, 7, 0, 0, 'SmartAI', 0, 1.2, 2.2, 1, 1, 0, ''),
(299223, '齐皮', '恶霸', 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1.5, 1, 1, 1, 0, ''),
(299235, '萨缪尔修士', NULL, 0, 4, 4, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(299325, '杰拉德', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(9300100, '迪菲亚血巫师', NULL, 0, 4, 4, 0, 14, 0, 1, 1.14286, 6, 0, 2000, 2000, 8, 0, 2048, 7, 0, 9300100, '', 0, 1, 1, 1, 1, 0, ''),
(9300101, '斯考奇', NULL, 0, 4, 4, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 4, 0, 9300101, '', 0, 1, 1, 1, 1, 0, ''),
(9300102, '乔', '欧文的猎鹰', 0, 2, 2, 0, 35, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 1, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 0, ''),
(9300103, '老詹金斯', NULL, 930204, 5, 5, 0, 12, 1, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 0, ''),
(9300104, '老阿加莎', NULL, 0, 3, 3, 0, 12, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 0, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (85031, 299223, 299235, 299325, 9300100, 9300101, 9300102, 9300103, 9300104);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(85031, 0, 10913, 1, 1),
(299223, 0, 2299, 1, 1),
(299235, 0, 3346, 1, 1),
(299325, 0, 3987, 1, 1),
(9300100, 0, 2360, 1, 1),
(9300100, 1, 2359, 1, 1),
(9300101, 0, 1070, 0.6, 1),
(9300102, 0, 28214, 1, 1),
(9300103, 0, 2052, 1, 1),
(9300104, 0, 3335, 1, 1);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (85031, 299223, 299235, 299325, 9300100, 9300101, 9300102, 9300103, 9300104);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(299235, 1, 1903, 0, 0),
(299325, 1, 3195, 0, 0),
(9300100, 1, 1907, 0, 0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (9300103, 9300104);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `comment`)
VALUES
(9300103, 0, 0, '暗影之地，是吗？所以死亡并不是道路的终点，只是路上的一个转弯。谢谢你，$n。当我的时辰到来时，我会无畏地走上那条路。', 12, 0, 100, '老詹金斯 - 对话后（推断）'),
(9300104, 0, 0, '你能看见我？那就燃烧吧，猎魔人！', 14, 0, 100, '老阿加莎 - 现形（推断）');

-- ---------------------------------------------------------------------------
-- 4. Chain objects
-- ---------------------------------------------------------------------------
-- 9301100 Ritual Circle: CoA's own Ritual Circle display (gameobjectcache 3277894) at 0.7; questgiver of Death
--   Calls and Call of the Dead, credits Call of Death when used.
-- 9301101 Training Wand: Perfect Timing: Soridormi's wand; CoA's wand display (gameobjectcache 254654 Burnscorch
--   Wand).
-- 9301102 Eye of the Beholder: Runes of Power: the riddle's answer; stock Eye of Azora crystal (display 621).
-- 9301103 Lost Pendant: Lost Pendant: Chaplain Nysoni's pendant; CoA's pendant display (gameobjectcache 60269).
-- 9301104 Scrap Metal: Ingenuity At It's Finest!: scrap near the kobold camps; stock junk pile (display 7114) at
--   0.8.
-- 9301105 Uther's Statue: A Quiet Life: the statue by the Northshire waterfall. SOURCED-ATLAS: CoA's goober
--   251653 "Uther's Statue"; this entry keeps it in the ct-northshire block (the zone packages each need a
--   statue). Stock Uther statue model (display 6815) at 0.6.
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`)
VALUES
(9301100, 2, 1045032, '仪式法阵', '', '', 0.7, 0, 0, 0, 930206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', ''),
(9301101, 3, 254010, '训练魔杖', '', '', 1, 43, 9301101, 0, 1, 0, 0, 0, 0, 200165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(9301102, 3, 621, '观者之眼', '', '', 1, 43, 9301102, 0, 1, 0, 0, 0, 0, 200109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(9301103, 3, 1010146, '遗失的吊坠', '', '', 1, 43, 9301103, 0, 1, 0, 0, 0, 0, 200058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(9301104, 3, 7114, '废金属', '', '', 0.8, 43, 9301104, 0, 1, 0, 0, 0, 0, 200065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(9301105, 10, 6815, '乌瑟尔的雕像', '', '', 0.6, 0, 200077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '')
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`), `AIName` = VALUES(`AIName`), `ScriptName` = VALUES(`ScriptName`);

-- ---------------------------------------------------------------------------
-- 5. Quests
-- ---------------------------------------------------------------------------
-- The Stolen Power Core (200087): ObjectiveText1 is '0' in the cache (a CoA data quirk on its seven
-- copies only); left blank so the quest log shows no stray line.
-- RewardNextQuest (the next step is offered at turn-in): questcache NextQuestInChain where the next quest is in
--   this file: 200027->200028, 200086->200087, 200087->200088, 200114->200115, 200115->200116, 199999->200000,
--   200000->200001, 200040->200041, 200041->200042.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(49976, 2, 2, 2, -525, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴法典', '阅读风暴法典，前往北郡山谷寻找妮基·塞斯拉。', '以圣光之名！这本书差点把我电到，$N。它周围的空气噼啪作响，满是电能，我发誓我能听到书页深处传来遥远的雷声。只有那些有毅力引导风暴原始力量的人，才该考虑打开它。你准备好迎接这样的元素之怒了吗？', '', '前往北郡山谷寻找妮基·塞斯拉。', 0, 0, 0, 0, 0, 0, 0, 0, 650011, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读风暴法典，前往北郡山谷寻找妮基·塞斯拉。', '', '', ''),
(49977, 2, 2, 2, -529, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '守护者誓约', '阅读守护者誓约，前往北郡山谷寻找格斯。', '崇高的使命在等着你，$N。这份誓约刻在我见过的最精良的钢材上，它几乎散发着荣誉与责任。其中言语谈及保护、牺牲，以及面对绝境时坚守不退。很少有人有勇气承担这样的重担。你拥有这样的勇气吗？', '', '前往北郡山谷寻找格斯。', 0, 0, 0, 0, 0, 0, 0, 0, 650012, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读守护者誓约，前往北郡山谷寻找有志角斗士阿利斯泰尔。', '', '', ''),
(49978, 2, 2, 2, -524, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '圣殿骑士誓言', '阅读圣殿骑士誓言，前往北郡山谷寻找威廉修士。', '圣光本身似乎祝福了这份文件，$N。当我拿着它时，我感到一股暖流在胸中蔓延，一种神圣的使命感充满我的心。这份誓言要求绝对奉献于圣光的意志，并在黑暗中保持坚定不移的信仰。这样的虔诚并非轻易给予。', '', '前往北郡山谷寻找威廉修士。', 0, 0, 0, 0, 0, 0, 0, 0, 650013, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读圣殿骑士誓言，前往北郡山谷寻找威廉修士。', '', '', ''),
(49979, 2, 2, 2, -516, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '鲜血魔典', '阅读鲜血魔典，前往北郡山谷寻找沉默者维斯普。', '我必须承认，这本魔典让我深感不安，$N。这皮革装订似乎是……好吧，我宁愿不去猜测。它像心跳一样有节奏地脉动着，我发誓书页上染着深红色。其中的魔法涉及生命之力本身——一种既可怕又诱人的力量。务必极其小心地对待它。', '', '前往北郡山谷寻找沉默者维斯普。', 0, 0, 0, 0, 0, 0, 0, 0, 650014, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读鲜血魔典，前往北郡山谷寻找沉默者维斯普。', '', '', ''),
(49980, 2, 2, 2, -505, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '游侠指南', '阅读游侠指南，前往北郡山谷寻找月溪镇的欧文。', '真是个奇妙的东西，$N。这本指南上还沾着一些森林碎屑——松针、苔藓，甚至还有一小截树枝。当我短暂打开它时，我听到了像是鸟鸣和树叶沙沙的声音。它讲述追踪、野外生存，以及与自然融为一体。荒野通过这些书页在召唤你。', '', '前往北郡山谷寻找月溪镇的欧文。', 0, 0, 0, 0, 0, 0, 0, 0, 650015, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读游侠指南，前往北郡山谷寻找月溪镇的欧文。', '', '', ''),
(49981, 2, 2, 2, -530, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '时空手稿', '阅读时空手稿，前往北郡山谷寻找索里多米。', '非常奇特，$N。我发誓这份手稿刚才还不在这里，但此刻它就在眼前。文字似乎在我眼前闪烁变幻，仿佛同时存在于多个时刻。这种时空魔法超出了我的理解，但也许你有心智去领悟它的奥秘。', '', '前往北郡山谷寻找索里多米。', 0, 0, 0, 0, 0, 0, 0, 0, 650016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读时空手稿，前往北郡山谷寻找索里多米。', '', '', ''),
(49982, 2, 2, 2, -521, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死灵日志', '阅读死灵日志，前往北郡山谷寻找恶棍哈尔伯特。', '我实话实说，$N——这本日志让我毛骨悚然。字面意义上的。每当我靠近它，温度就会下降，我不断听到听不清的低语。装订似乎是用……骨头做的。其中包含大多数人都视为禁忌的死亡魔法知识。你确定你想追求这样一条黑暗的道路吗？', '', '前往北郡山谷寻找恶棍哈尔伯特。', 0, 0, 0, 0, 0, 0, 0, 0, 650017, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读死灵日志，前往北郡山谷寻找恶棍哈尔伯特。', '', '', ''),
(49983, 2, 2, 2, -528, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '火焰法典', '阅读火焰法典，前往北郡山谷寻找焚化者科比。', '小心，$N！这本法典几乎烫得拿不住。火焰在它表面舞动却没有烧毁书页，周围的空气因高温而扭曲。我几乎能感受到其中蕴含的火焰魔法，渴望着被释放。只有那些对毁灭充满热情的人才该考虑这样的力量。', '', '前往北郡山谷寻找焚化者科比。', 0, 0, 0, 0, 0, 0, 0, 0, 650018, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读火焰法典，前往北郡山谷寻找焚化者科比。', '', '', ''),
(49984, 2, 2, 2, -522, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '禁忌论著', '阅读禁忌论著，前往北郡山谷寻找疯癫的帕塔尔。', '欢迎回来，$N！在你走之前，一个卫兵把这个送来了，我被告知要交给你。我还没来得及自己瞥一眼。以一切神圣之名……我几乎无法直视这东西。那些符号似乎在扭动变幻，我不断听到……低语。那些声音说着我不理解却让我充满恐惧的话语。这么疯狂的东西只可能来自疯癫的帕塔尔，只有真正疯狂……或真正勇敢的人……才敢研究它。去拜访疯癫的帕塔尔吧，他会有更多答案。', '', '前往北郡山谷寻找疯癫的帕塔尔。', 0, 0, 0, 0, 0, 0, 0, 0, 650019, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读禁忌论著，前往北郡山谷寻找疯癫的帕塔尔。', '', '', ''),
(49985, 2, 2, 2, -520, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '工程手册', '阅读工程手册，前往北郡山谷寻找诺曼·戈德希尔。', '太迷人了！这本手册里满是我从未见过的蓝图和设计图，$N。小齿轮、弹簧和发条装置似乎从书页中溢出，我能听到看不见的机械发出微弱的滴答声。这里魔法与工程的结合真是非凡。创新等待着那些足够聪明去理解它的人。', '', '前往北郡山谷寻找诺曼·戈德希尔。', 0, 0, 0, 0, 0, 0, 0, 0, 650021, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读工程手册，前往北郡山谷寻找诺曼·戈德希尔。', '', '', ''),
(49986, 2, 2, 2, -507, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '太阳圣典', '阅读太阳圣典，前往北郡山谷寻找随军牧师尼索尼。', '多么美丽的景象，$N。这份圣典散发着黎明的温暖光芒，阅读它让我充满希望和新的活力。金色文字讲述通过太阳能量治疗，以及引导太阳赋予生命的力量。这样光辉的魔法只会给世界带来祝福与新生。', '', '前往北郡山谷寻找随军牧师尼索尼。', 0, 0, 0, 0, 0, 0, 0, 0, 650020, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读太阳圣典，前往北郡山谷寻找随军牧师尼索尼。', '', '', ''),
(49987, 2, 2, 2, -508, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡手册', '阅读死亡手册，前往北郡山谷寻找清除者特罗斯。', '这本手册让我彻骨冰凉，$N。字面意义上的。它周围的空气变冷，我能闻到明显的丧葬准备的气味。其中的知识涉及死亡本身——不是作为邪恶，而是作为一种需要被引导和疏导的自然力量。只有理解生死平衡的人才应该研究这样的技艺。', '', '前往北郡山谷寻找清除者特罗斯。', 0, 0, 0, 0, 0, 0, 0, 0, 650022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读死亡手册，前往北郡山谷寻找清除者特罗斯。', '', '', ''),
(49988, 2, 2, 2, -527, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 650023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '符文铭文', '阅读符文铭文，前往北郡山谷寻找旺达·贝雷津。', '古老的力量流经这块石板，$N。刻在表面的符文发出自己的内在光芒，我能感受到每个符号中蕴含的数百年的重量。这是我们种族所知最古老的魔法形式——将力量绑定为永久形态的技艺。当世界年轻时，这样的知识就已经很古老了。', '', '前往北郡山谷寻找旺达·贝雷津。', 0, 0, 0, 0, 0, 0, 0, 0, 650023, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读符文铭文，前往北郡山谷寻找旺达·贝雷津。', '', '', ''),
(49990, 2, 2, 2, -526, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 2001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '古老石板', '前往北郡山谷寻找掠夺者阿曼达。', '我被告知在你击败那些狗头人返回后，立刻把这个交给你，$N。它似乎是一块古老的石板，上面刻着野蛮人战士的粗糙标记。石头本身散发着原始怒火，我能感受到流经那些追随此道之人的狂野力量。我建议你在处理修道院其他事务之前先读一读它。', '', '前往北郡山谷寻找掠夺者阿曼达。', 0, 0, 0, 0, 0, 0, 0, 0, 2001, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读古老石板，前往北郡山谷寻找掠夺者托尔蒙德。', '', '', ''),
(49991, 2, 2, 2, -523, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 2002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '部落卷轴', '前往北郡修道院寻找雅拉医生。', '我被告知在你击败那些狗头人返回后，立刻把这个交给你，$N。它似乎是一份部落卷轴，上面标有巫医的神秘符号。奇怪的草药绑在边缘，我几乎能听到古代灵魂的低语咒文。通过暗影与光明治疗的技艺不可轻视。我建议你在处理修道院其他事务之前先读一读它。', '', '前往北郡修道院寻找雅拉医生。', 0, 0, 0, 0, 0, 0, 0, 0, 2002, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读部落卷轴，前往北郡山谷寻找雅拉医生。', '', '', ''),
(49992, 2, 2, 2, -519, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 2003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '神圣信件', '前往北郡修道院寻找艾林·特里亚斯。', '我被告知在你击败那些狗头人返回后，立刻把这个交给你，$N。它似乎是一封神圣信件，带有猎魔人的银色印章。羊皮纸本身似乎能驱退黑暗，受到那些毕生致力于从世间清除邪恶之人的祝福。这样的正义之怒需要恰当的指引。我建议你在处理修道院其他事务之前先读一读它。', '', '前往北郡修道院寻找艾林·特里亚斯。', 0, 0, 0, 0, 0, 0, 0, 0, 2003, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '阅读神圣信件，前往北郡山谷寻找执事弗罗斯特。', '', '', ''),
(200104, 2, 3, 3, -526, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 532805, 1, 532806, 1, 395861, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '欢迎加入战团', '杀死杰拉德，然后回到你的训练师那里。', '哈！哈！欢迎，$N。很高兴你能加入战团。你可能会想，什么是战团？考虑到你的到来，我还以为你早就知道了。好吧，小$c，这将会是一次残酷的觉醒。战团是所有野蛮人、暴徒和壮汉聚集在一起，竞争看谁是最强壮、最残暴、最强大的个体。那是我们真正考验自己的唯一方式。就是这个！你可能对此很陌生，但绝对没人会对你手下留情。你的第一个考验和其他所有新兵一样。有个家伙一直在捣乱、散布谣言，就因为他不够格，被拒绝加入战团。他叫杰拉德。杀了他，哈哈哈！如果你能完成这个任务，我会奖励你一把适合你这种菜鸟的武器。活着回来，或者死。', '', '回到你的训练师那里。', 299325, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200027, 2, 3, 3, -523, 0, 0, 0, 0, 0, 0, 200028, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '医生来了！', '用1级洛阿酿剂治疗你训练师受伤的朋友。', '欢迎，$C。我看你已经对塞拉图斯的力量相当熟悉了。让我来指引你，朋友。我有个任务，而且是关键任务。根据斥候的消息，我有个朋友在矿洞里受伤了。我刚得到消息，本会亲自前往，但我相信这个任务对像你这样的人来说再合适不过了。找到我的朋友，用你的洛阿酿剂的力量治疗他，然后回到我这里。', '', '回到你的训练师那里。', 685021, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '拯救小哇祖', '', '', ''),
(200028, 2, 3, 3, -523, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 292201, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '谁叫了医生？', '杀死欺负小哇祖的狗头人！', '太感谢你了，朋友！有些狗头人不好，他们因为小哇祖做自己而伤害他。让我说清楚：狗头人只想挖掘。我们碰到石头，做蜡烛，探索世界。我的同胞们，我们不明白为什么有些人恨我们。我们不想成为麻烦。对不起。我感谢我的好朋友不伤害我……替我感谢你的朋友照顾我，也谢谢你的帮助！哦……不，等等。看你后面！他回来了！！！', '', '回到你的训练师那里。', 299223, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200055, 2, 3, 3, -519, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 662219, 0, 0, 717002, 1, 410005, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '狩猎开始', '揭露女巫并杀死她。', '我能感觉到一股邪恶的存在。你也能感觉到，对吧？这就是你为什么在最合适的时机来找我。这里有一个。一个女巫。充满邪恶和恶意。愿圣光祝福我们即将要做的事。来，拿着这个火炬。她就在这里，我已经在地图上标记了她的位置。对她使用火炬来揭露她的真面目。杀了它。不留情。杀死后回到我这里。该死的女巫。', '', '回到你的训练师那里。', 685221, 299333, 0, 0, 1, 1, 0, 0, 662219, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '找到女巫', '', '', ''),
(200086, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 200087, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '你自有你的用处', '协助诺曼·戈德希尔搞他的工匠把戏。', '你好，$N，很高兴认识你，在你到来之前我就听说过很多关于你的事。你来找我学习，作为$C你已经证明了自己是奥术的勤勉学生。但我们召唤的力量远不止闪电和电流。假以时日，你会明白你的潜力有多深。但现在……我确实有个小任务给你。附近有个叫“诺姆·诺玛提夫”的人，他总是找我帮忙搞他的……工匠把戏……他需要一些闪电，$N，但我很忙。你能去帮帮他吗？', '', '协助诺曼·戈德希尔搞他的工匠把戏。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200087, 2, 3, 0, -520, 0, 0, 0, 0, 0, 0, 200088, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '被盗的能量核心', '杀死狗头人工人，直到其中一个掉落能量核心。', '你好啊，$N！很高兴你的训练师终于派人来帮我了。这是个非常简单的任务，我只需要一些能量！但不幸的是，我的能量核心被附近的一个狗头人工人偷走了。你能帮我拿回来吗？', '', '回到诺曼·戈德希尔那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200088, 2, 3, 0, -525, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 663317, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴使者的任务', '告诉你的训练师你成功了。', '感谢你取回这个能量核心！你现在可以回去告诉你的训练师你为我做了什么。', '', '告诉你的训练师你成功了。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200114, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 200115, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '以力量求和平', '在狗头人矿洞中找到“小哇祖”。', '很高兴认识你，$N。我们有很多工作要一起完成，而你，我的朋友，有很多要学！我们是守护者，因此我们的任务就是，字面意义上的，守护艾泽拉斯。从偶尔抢劫路人的恶棍，到对我们人民构成威胁的更可怕的怪物。我们是响应召唤的人。而且，正如我的例子所示，我今天就有这样一个任务给你。如果你能完成它，你就完全准备好进一步训练了。附近狗头人矿洞里有个叫“小哇祖”的家伙，我相信他需要我的帮助。去看看他需要什么。', '', '在狗头人矿洞中找到“小哇祖”。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200115, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 200116, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '防御优先', '杀死迪菲亚，直到你找到一把适合小哇祖的武器。', '嗨，朋友！小哇祖很高兴见到你。小哇祖有个小问题。你看，有些狗头人不喜欢小哇祖，我受够了。我需要能保护自己！我不能让你杀好狗头人……那不好。但附近的迪菲亚，没人喜欢他们！他们有武器。你能给我拿一把他们的剑吗？我会非常感激的！', '', '回到小哇祖那里。', 0, 0, 0, 0, 0, 0, 0, 0, 662330, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200116, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 0, 2, 25, 0, 0, 0, 0, 0, 0, 0, 0, 245712, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '帮助朋友', '带着成功的消息回到你的训练师那里。', '哇，这把武器太完美了！现在我可以保护自己不受邪恶的齐皮和其他坏狗头人的伤害了。谢谢你！我在矿里发现了一块金属，我想是别人掉在矿里的。我把它给了你的训练师，现在他会把它给你！', '', '带着成功的消息回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200077, 2, 3, 3, -524, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 52855, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '平静的生活', '参观北郡山谷的瀑布。', '欢迎加入教团，$N。我一直在等待你的到来。作为圣殿骑士，我们已经晋升到神圣信仰的最高教团，因此我们肩负着相当大的责任。圣骑士和牧师与我们并肩工作，通过圣光维护这个世界的和平，我们每个人，虽然各有微妙不同，都希望再次将圣光带给艾泽拉斯。尽管它有种种危险。我们的道路可能不同，但有人可能会说它更加严苛。成为圣殿骑士意味着要极其精确地控制你的情绪、战斗节奏和心智。为了保持自己的健康，我喜欢在北郡山谷的瀑布下冥想。那里有一座雕像，纪念一位阵亡的联盟英雄，我就是在那里找到冥想所需的平静。你必须用敏捷的移动才能到达雕像。请亲自去那里看看。回来时告诉我你的体验。', '', '参观北郡山谷的瀑布。', 685037, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '参观北郡山谷的瀑布。', '', '', ''),
(200017, 2, 3, 3, -516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 661317, 1, 1505015, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '血即力量', '从迪菲亚血巫师那里收集鲜血之书。', '啊，$C。你的日子终于到了。鲜血。你此刻应该已经以某种方式对它相当熟悉了。血即生命。但鲜血，你很快就会明白，也是力量。我要你想象一下，在一个你能控制其他生物体内生命精髓的世界里，你能做到什么。只需一挥手就能碾碎他们的内脏……令人陶醉。假以时日，你会学到更多。现在，我需要你协助我进行自己的研究，通过这个我也能帮你学习。附近有一本书，当地强盗已经知道了它，我需要它来进行研究。他们中有一个拿着我的书——一个血巫师。替我收集它，我相信他们中有人身上带着。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661316, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(199999, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8799.29, -412.934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '游侠之路', '在北郡山谷地区找到欧文的猎鹰。', '成为游侠不仅仅是拿起弓，或在树荫下战斗，$n。成为游侠，其核心意味着你与荒野有着深刻的联系。你是它的保护者。我派我的猎鹰乔去侦察周围地区，但它还没回来。请找到它，并指引它回到我这里。', '', '在北郡山谷地区找到欧文的猎鹰。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200000, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200001, 3, 0, 0, 0, 0, 0, 0, 662316, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '突袭！', '杀死可疑的生物。', '附近的灌木丛里有什么东西在沙沙作响。你遭到了攻击！', '', '照料猎鹰。', 299222, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200001, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 0, 2, 70, 0, 0, 0, 0, 0, 662317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 818000, 1, 727000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '猎鹰是朋友', '对猎鹰使用红色药瓶。', '你发现猎鹰身上附着一张纸条，上面写着：<如果你在读这个，你已经找到了我的朋友。纸条上附着一小瓶红色药剂。如果它受伤了，就给它，它会知道接下来该怎么做。>', '', '回到你的训练师那里。', 685011, 0, 0, 0, 1, 0, 0, 0, 662317, 662316, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '照料乔的伤口', '', '', ''),
(200165, 2, 3, 3, -530, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 553122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '完美时机', '在北郡修道院找到索里多米的魔杖。', '啊，$N，我早就看到你的到来了。现在是时候教你成为时光术士意味着什么了。编织空间与时间的织锦。等同于神……让我别太超前了。对你来说，$N，时光术士的世界是全新的，在我允许你带着如此潜在的力量存在于这个世界之前……你必须学会控制自己。作为时光术士，你是时间魔法的大师。这意味着你必须在最基础的层面上尊重时间。正好我把魔杖落在了修道院的某个地方。你有2分钟。替我找到它。', '', '回到索里多米那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661335, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200040, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200041, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡的召唤', '找到并与仪式法阵互动。', '你好，$C。很高兴你今天能来墓地加入我。美好的一天，不是吗？看来你已经对亡灵有所了解了，你复活死者的能力让我印象深刻。也许你能为我所用，我相信你不会介意。我有一个特别强大的亡灵想要召唤，但我不敢亲自尝试——我太重要了。然而，你在这里成功的话能学到很多。如果你失败了呢？我就干脆把你复活成我的仆从。别想太多。让我在地图上标记我举行仪式的确切位置。你必须收集特定物品才能完成仪式。现在，去吧。', '', '与仪式法阵互动。', 685121, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '找到仪式法阵', '', '', ''),
(200041, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200042, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡在召唤', '杀死迪菲亚强盗，拾取他们的骨头、血肉和头骨。', '仪式法阵旁的地上有一张纸条。为了召唤亡灵怪物，我必须把以下材料带到仪式法阵。- 骨头 - 新鲜血肉 - 头骨 附近的迪菲亚强盗正好有这些东西。', '', '回到仪式法阵。', 0, 0, 0, 0, 0, 0, 0, 0, 458421, 458422, 458423, 0, 0, 0, 1, 1, 1, 0, 0, 0, '', '', '', ''),
(200042, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 660053, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '亡者的召唤', '杀死亡灵怪物。', '<材料消散成一阵烟雾融入仪式法阵> ……似乎有些不对劲。召唤失败了，再次检查仪式法阵。但要小心，它不稳定。', '', '回到你的训练师那里。', 299232, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200120, 2, 3, 3, -528, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 293203, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '炎术师之道', '击败斯考奇并获取他的心脏。', '我看到你在附近活动，$N。你对魔法的使用鲁莽，学业粗心。炎术是一门危险的艺术，如果你失控，最终会烧毁自己和周围的世界。这就是为什么我决定收你为徒，教你炎术师之道。你的第一个任务是击败一个失控的火元素，它被一群非法炎术师召唤出来，在周围地区肆虐。他们把它束缚在迪菲亚营地附近山丘上的一处营火中，许多无辜者如果窥视火焰就可能受到伤害。击败它，把它的心脏带回来给我。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 662331, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200071, 2, 3, 3, -522, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 532803, 1, 532804, 1, 532881, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '陷入疯狂！', '杀死萨缪尔修士。', '你在最合适的时机到来了，$N。我听到了彼岸的低语。它告诉我一个对我们事业特别危险的个体。我需要你迅速消灭他们。如果你做到这一点，我会奖励你一把适合上古之神追随者的武器。你要找的人就在这里的教堂里。在图书馆侧翼的某个地方。他叫“萨缪尔修士”。终结他。', '', '回到你的训练师那里。', 299235, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200058, 2, 3, 3, -507, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 454381, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '遗失的吊坠', '找到遗失的吊坠。', '你好，$C。你来得正是时候。我丢了一个吊坠，它相当强大。丢可能不是合适的词，但算了，我们最好别纠结于语义。好吧，我想既然你要帮我，我至少该解释一下发生了什么。事情是这样的。我试图让当地的迪菲亚皈依安瑟之阳，并解释它与圣光的联系……但他们对此并不友善，把我赶走了。匆忙之中，我掉了吊坠。请帮我找到它。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 663319, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200065, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 415000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '巧夺天工！', '收集3块废金属。', '哎呀！你好啊，邻居！我看你是搞工匠的料，我正想找一个像你这样的人。我想做一把特殊的枪，可以说是自制的枪，但我需要更多的金属。狗头人营地附近有一些金属，可以用来为你和我造一把枪。给我收集一些，我就去捣鼓起来！', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 663320, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, '', '', '', ''),
(200037, 2, 3, 3, -508, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 540070, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '暗影之地的召唤', '拜访北郡山谷的老詹金斯。', '再看一眼我的头盔，我就把这两把刀插进你胸口，$N。……你很胆大。我能感觉到你是来找我学习的。我今天确实有个简单的任务给你，年轻的$C。山谷里有个人已近末日。在他巅峰时期，他是战场上的巨兽，夺走了许多生命。但现在，他在山谷自己的家中过着平静的生活。他会死，暗影之地会收走他。但今天还不是他的日子。然而，我能感觉到他渴望离开这个位面，但他不知道离开后会面对什么。你可能没想到会有这样的任务，但我想谦卑地请你去看望他，聊一聊。', '', '回到你的训练师那里。', 685022, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '与老詹金斯交谈', '', '', ''),
(200109, 2, 3, 3, -527, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 661329, 0, 0, 293202, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '力量符文', '解开刻在符文石上的谜语。', '你好，$N。很高兴你终于能来加入我，我一直在等待你的到来。今天，给像你这样有抱负的符文大师上一堂简单的解题课。也许你会成功，也许不会。来，我有一个符文。符文上刻着一个谜语。解开谜语，然后回到我这里。要提示？我能告诉你的最好提示就是，这个谜语的答案就在这座修道院里。不在外面。你回来时我就知道你解开了没有，别担心。成功的话，我会奖励你。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661330, 661329, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

UPDATE `quest_template` SET `TimeAllowed` = 120 WHERE `ID` = 200165;

DELETE FROM `quest_template_addon` WHERE `ID` IN (49976, 49977, 49978, 49979, 49980, 49981, 49982, 49983, 49984, 49985, 49986, 49987, 49988, 49990, 49991, 49992, 199999, 200000, 200001, 200017, 200027, 200028, 200037, 200040, 200041, 200042, 200055, 200058, 200065, 200071, 200077, 200086, 200087, 200088, 200104, 200109, 200114, 200115, 200116, 200120, 200165);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(49976, 0, 32768, 7, 1, 0),
(49977, 0, 131072, 7, 1, 0),
(49978, 0, 262144, 7, 1, 0),
(49979, 0, 524288, 7, 1, 0),
(49980, 0, 1048576, 7, 1, 0),
(49981, 0, 2097152, 7, 1, 0),
(49982, 0, 4194304, 7, 1, 0),
(49983, 0, 8388608, 7, 1, 0),
(49984, 0, 16777216, 7, 1, 0),
(49985, 0, 134217728, 7, 1, 0),
(49986, 0, 67108864, 7, 1, 0),
(49987, 0, 536870912, 7, 1, 0),
(49988, 0, 2147483648, 7, 1, 0),
(49990, 0, 2048, 7, 1, 0),
(49991, 0, 4096, 7, 1, 0),
(49992, 0, 16384, 7, 1, 0),
(199999, 0, 1048576, 49980, 0, 0),
(200000, 0, 1048576, 199999, 1, 0),
(200001, 0, 1048576, 200000, 1, 0),
(200017, 0, 524288, 49979, 0, 0),
(200027, 0, 4096, 49991, 0, 0),
(200028, 0, 4096, 200027, 0, 0),
(200037, 0, 536870912, 49987, 0, 0),
(200040, 0, 4194304, 49982, 0, 0),
(200041, 0, 4194304, 200040, 0, 0),
(200042, 0, 4194304, 200041, 0, 0),
(200055, 0, 16384, 49992, 1, 0),
(200058, 0, 67108864, 49986, 0, 0),
(200065, 0, 134217728, 49985, 0, 0),
(200071, 0, 16777216, 49984, 0, 0),
(200077, 0, 262144, 49978, 0, 0),
(200086, 0, 32768, 49976, 0, 0),
(200087, 0, 32768, 200086, 0, 0),
(200088, 0, 32768, 200087, 0, 0),
(200104, 0, 2048, 49990, 0, 0),
(200109, 0, 2147483648, 49988, 1, 0),
(200114, 0, 131072, 49977, 0, 0),
(200115, 0, 131072, 200114, 0, 0),
(200116, 0, 131072, 200115, 0, 0),
(200120, 0, 8388608, 49983, 0, 0),
(200165, 0, 2097152, 49981, 0, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (49976, 49977, 49978, 49979, 49980, 49981, 49982, 49983, 49984, 49985, 49986, 49987, 49988, 49990, 49991, 49992, 199999, 200000, 200001, 200017, 200027, 200028, 200037, 200040, 200041, 200042, 200055, 200058, 200065, 200071, 200077, 200086, 200087, 200088, 200104, 200109, 200114, 200115, 200116, 200120, 200165);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(49976, '太棒了，$N！你听从了风暴的召唤，证明了自己的价值。风与雷电的力量如今在你体内流淌。作为风暴使者，你将号令自然本身的力量。$B$B欢迎踏上风暴之路。让你的敌人畏惧你的元素之怒吧！'),
(49977, '干得好，$N！你明白这个使命所伴随的神圣职责。守护者是站在无辜者与邪恶之间的盾牌，永不屈服，永不折断。$B$B你的训练现在开始。记住——你的生命属于那些你保护的人。以每一次呼吸来捍卫这份信任。'),
(49978, '圣光在你体内闪耀，$N！你已拥抱圣殿骑士的道路，将灵魂奉献给神圣的侍奉。通过信仰与虔诚，你将化身为神圣正义的器皿。$B$B你的神圣职责今日开始。愿你的信念永不动摇，愿你的信仰燃烧不息。'),
(49979, '令人印象深刻，$N。你对猩红之路毫无畏惧，这充分说明了你的潜力。血魔法不适合意志薄弱之人——它要求牺牲、理解，以及对流淌于万物之中的力量的敬畏。$B$B你的训练现在开始。记住——自愿献出的血比强夺之血蕴含更大的力量。'),
(49980, '自然选择了正确的你，$N。你体内承载着荒野之魂，古老的方式在召唤你的血脉。作为游侠，你将成为文明与蛮荒之地之间的桥梁。$B$B欢迎加入荒野兄弟会。愿你的箭矢百发百中，愿你的道路通往自由。'),
(49981, '令人着迷，$N。你能感知时间本身的流动，这是一份极少凡人能获得的恩赐。作为时光术士，你将学会随你的意志弯曲因果，在时间片段之间行走。$B$B时间如今是你的盟友。明智地使用这份力量，因为时空操控的后果会在所有现实中回响。'),
(49982, '你有潜力，$N。死亡对你而言毫无恐惧，这……令人耳目一新。太多人逃避事物的自然规律。作为死灵法师，你将学会与死亡协作，而非对抗。$B$B你的黑暗艺术教育现在开始。记住——死亡并非邪恶，只是不可避免。好好引导它。'),
(49983, '壮丽非凡，$N！火焰在你周围欢快起舞，被你灵魂中的烈焰所吸引。作为炎术师，你将明白毁灭与创造不过是同一枚硬币的两面。$B$B让净化的火焰在你体内燃烧！从旧世界的灰烬中，我们将锻造出崭新而美丽的事物。'),
(49984, '是的，$N……低语告诉我你会来。你已被超越凡人理解的力量所标记，被选中去侍奉那些低等心智无法领悟的真相。上古之神眷顾着你。$B$B疯狂不过是挣脱束缚的清明，年轻的邪教徒。拥抱混沌，让它将你重塑为……更伟大的存在。'),
(49985, '精彩，$N！我几乎能听到你那颗聪慧头脑中齿轮转动的声音。作为工匠，你将学会将工程的精密与魔法的奇迹融合——这种融合将塑造未来本身。$B$B你在创新中的学徒生涯今日开始！我们将共同建造令世界惊叹与喜悦的奇迹。'),
(49986, '你是有福的，$N！太阳的光辉流经你的存在，将你标记为被选中进行治愈与新生之人。作为太阳祭司，你将把希望带给绝望之人，把光明带给最黑暗的角落。$B$B你的治愈之路现在开始。愿你的光芒永不暗淡，愿你永远为迷失在黑暗中的人带来黎明。'),
(49987, '你明白了，$N。很好。太多人恐惧死亡，却没有意识到它只是自然规律的另一个面向。作为死神，你将学会引导灵魂归于安息，维持生死之间的平衡。$B$B你对永恒循环的侍奉现在开始。死亡终将降临万物，但通过你的工作，它不必被恐惧。'),
(49988, '古老的力量认可古老的力量，$N。你拥有解读魔法第一语言的罕见天赋——那些将力量与物质绑定的符文。这是来自世界之初的知识。$B$B你的符文魔法学习今日开始。古老的方式之所以延续，是因为它们是永恒的。愿你证明自己配得上这份信任。'),
(49990, '太棒了！我能看到你眼中的火焰，$N。古老的方式召唤着心中有力量的人。$B$B野蛮人的道路不适合意志薄弱之人。你将学会引导你的怒火，让内心的野兽指引你的攻击。你的敌人将在你的狂怒面前逃窜，你的盟友在知道你并肩而立时会更加奋勇战斗。$B$B这只是你旅程的开始。荒野有许多教训要传授，当你准备好时，我会在这里引导你。欢迎加入狂战士兄弟会！'),
(49991, '灵魂们很满意，$N。我能从环绕你的低语中听到它们的认可。$B$B你选择了阴影与治愈、死亡与重生之路。作为巫医，你将在世界之间行走——与死者交谈，号令灵魂，将腐化与恢复都作为你的工具。$B$B洛阿已将你标记为它们的所有物。你将学会酿制治愈的药水与害人的妖术，呼唤先祖的智慧，束缚敌人的本质。这是一份神圣的责任，代代相传了无数个世代。$B$B当你准备好学习更深层的奥秘时来找我。灵魂们躁动不安，它们有许多东西要教你。'),
(49992, '圣光照耀着你，$N。我能从你的存在中感受到它的祝福。$B$B你已接受猎魔人的神圣契约。你如今被神圣的使命所束缚——寻找一切形式的邪恶，以正义之火烧尽它们。这不仅仅是一个使命，这是一道神圣的谕令。$B$B你的信仰将是你的武器，你的信念将是你的盔甲。你将学会将圣光引导为对不洁之物的毁灭性打击，以受祝福的屏障保护无辜者，看穿恶魔与亡灵。$B$B永远记住：邪恶或许藏身于阴影之中，但它无法抵挡正义的净化之火。准备好，猎手。黑暗不会等待，我们也不能。'),
(200104, ''),
(200027, '哦，谢谢你，谢谢你！我现在感觉好多了。'),
(200028, '什么？你没想到我会和一个狗头人做朋友？$B$BLil Wa\'zoo已经向我汇报了你的所作所为。他现在回到了矿场，为我们做间谍。哈哈哈！$B$B他让我把这个给你。'),
(200055, '又一个邪恶生物被从我们的世界驱逐了。$B$B……然而。$B$B还有那么多其他的要消灭。保持警惕。$B$B拿着这些，让它们在对抗邪恶的战斗中指引你。'),
(200086, ''),
(200087, ''),
(200088, ''),
(200114, ''),
(200115, ''),
(200116, ''),
(200077, ''),
(200017, '一个迪菲亚血巫师？$B$B有意思……$B$B好吧，经过进一步检查，这本魔典毫无价值。你可以拿走它。$B$B等你变强之后再回来找我。也许我们可以再次合作。'),
(199999, '这只猎鹰受伤了，它的腿上小心地绑着一张纸条。'),
(200000, '那个生物一定就是袭击了乔的家伙。$B$B我应该去处理乔的伤口。'),
(200001, '谢谢你找到乔。他已经回到我身边了，和以前一样健康。$B$B我已经派他去执行另一次侦察任务了。$B$B……你说在乔附近看到了一个奇怪的生物，它还攻击了你？那一定就是伤害我的孩子的生物。$B$B我得进一步调查这件事。根据你的描述，不管这是什么，它都不是艾尔文森林的本土生物。'),
(200165, '欢迎回来，$N。我就知道你会及时找到我的魔杖。字面意义上的。$B$B这根魔杖是给你的。我希望它能好好为你服务。事实上，我知道它一定会的。'),
(200040, '<仪式法阵脉动着死灵能量>'),
(200041, '<仪式法阵开始喷发。怪物正在被召唤>'),
(200042, '好吧，这完全就是我想象中会发生的事。$B$B但是，嘿，你没死。你已经是一个更好的死灵法师了！$B$B拿着，我派了其他学徒去收集你战斗后的残骸，他们做了这个。$B$B拿着它然后从我眼前消失。'),
(200120, ''),
(200071, ''),
(200058, '<项链微微发光。它散发出强烈的神圣气息>$B$B你做得很好，$N。这条项链，我送给你。$B$B把它带在身边，因为总有一天，你可能会再次需要它，而我也许会教你如何解锁它更多的力量。'),
(200065, '嗯，这太完美了！$B$B我用这些金属为我完成了一把新枪，而且，你猜怎么着，我也给你做了一把！$B$B拿着它，祝你今天过得愉快！'),
(200037, '你可能没想到会有这样的任务，$N。但重要的是要明白，暗影界召唤的是那些准备好的人，知道何时索取灵魂与夺回灵魂本身同样重要。$B$B为了帮助我们的朋友，我将用这双靴子奖励你。愿它们好好为你服务，因为它们被附魔了，能让你在水面上行走。'),
(200109, '');

DELETE FROM `quest_request_items` WHERE `ID` IN (49976, 49977, 49978, 49979, 49980, 49981, 49982, 49983, 49984, 49985, 49986, 49987, 49988, 49990, 49991, 49992, 199999, 200000, 200001, 200017, 200027, 200028, 200037, 200040, 200041, 200042, 200055, 200058, 200065, 200071, 200077, 200086, 200087, 200088, 200104, 200109, 200114, 200115, 200116, 200120, 200165);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(49976, '我能感觉到风暴的能量在你周围噼啪作响，$N。你带来风暴法典了吗？风暴召唤着那些想要掌握其力量的人。'),
(49977, '挺直身姿，$N。你携带守护者誓言了吗？真正的保护者必须理解其神圣职责的分量。'),
(49978, '圣光照耀着你，$N。你带来圣殿骑士誓约了吗？只有通过绝对的虔诚，才能侍奉神圣意志。'),
(49979, '我闻到你身上力量的铜腥味，$N。你有鲜血魔典吗？行走猩红之路的人必须明白它的代价。'),
(49980, '荒野谈论着你，$N。你带来游侠指南了吗？自然认得自己的子民，并召唤你走上古老之道。'),
(49981, '时间在你周围异常流动，$N。你拥有时光手稿吗？时间之流将你带到了这一刻。'),
(49982, '你一出现温度就下降了，$N。你带来死灵日志了吗？死亡魔法会仔细挑选它的使用者。'),
(49983, '我感觉到热量从你身上散发，$N。你携带烈焰法典吗？火焰寻找那些有激情驾驭其毁灭之美的人。'),
(49984, '当你靠近时低语变得更响，$N。你带来禁忌论著了吗？上古之神已将你标记为它们的容器。'),
(49985, '我听到齿轮转动的声音，$N。你带来工程手册了吗？创新召唤着那些能够连接魔法与机械的心智。'),
(49986, '你的存在温暖了这处圣地，$N。你有太阳圣典吗？太阳的祝福流经那些被选中进行治愈的人。'),
(49987, '你周围的帷幕变得稀薄，$N。你携带死亡手册吗？侍奉自然规律的人理解死亡的必然。'),
(49988, '古老的力量在你体内共鸣，$N。你带来符文铭文了吗？最初的魔法认可那些配得上其秘密的人。'),
(49990, '啊，我感觉到原始狂怒在你体内觉醒。你携带古老石板——你读过上面的文字，并拥抱了栖息在你血液中的野兽吗？'),
(49991, '灵魂们低语着你的到来，年轻人。你携带神圣卷轴，你聆听先祖并接受了他们的智慧吗？'),
(49992, '圣光在你周围明亮燃烧，孩子。你承载着我们教团的神圣信函——你读过上面的文字，并接受了狩猎的神圣重担吗？'),
(200104, ''),
(200027, ''),
(200028, ''),
(200055, '你回来了。'),
(200086, ''),
(200087, ''),
(200088, ''),
(200114, ''),
(200115, ''),
(200116, ''),
(200077, ''),
(200017, '令人印象深刻。你刚才说谁拥有这本魔典来着？'),
(199999, ''),
(200000, ''),
(200001, '你回来了……而且你把我的小瓶带回来了。很好。'),
(200165, '啊，你回来了。'),
(200040, ''),
(200041, '<你将材料放置在仪式法阵上>'),
(200042, '你为什么回来了？'),
(200120, ''),
(200071, ''),
(200058, '你回来了。'),
(200065, '你真是个真正的拾荒能手！'),
(200037, ''),
(200109, '');

-- Map markers the texts promise ("Let me mark your map", "I have marked her location"): the target spawn.
DELETE FROM `quest_poi` WHERE `QuestID` IN (200040, 200055);
INSERT INTO `quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`)
VALUES
(200040, 0, 0, 0, 30, 0, 0, 1),
(200055, 0, 0, 0, 30, 0, 0, 1);

DELETE FROM `quest_poi_points` WHERE `QuestID` IN (200040, 200055);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`)
VALUES
(200040, 0, 0, -8918, -418),
(200055, 0, 0, -8960, -213);

DELETE FROM `creature_queststarter` WHERE `quest` IN (49976, 49977, 49978, 49979, 49980, 49981, 49982, 49983, 49984, 49985, 49986, 49987, 49988, 49990, 49991, 49992, 199999, 200000, 200001, 200017, 200027, 200028, 200037, 200040, 200041, 200042, 200055, 200058, 200065, 200071, 200077, 200086, 200087, 200088, 200104, 200109, 200114, 200115, 200116, 200120, 200165);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(197, 49976),
(197, 49977),
(197, 49978),
(197, 49979),
(197, 49980),
(197, 49981),
(197, 49982),
(197, 49983),
(197, 49984),
(197, 49985),
(197, 49986),
(197, 49987),
(197, 49988),
(197, 49990),
(197, 49991),
(197, 49992),
(50280, 200077),
(50282, 200165),
(50283, 200071),
(50286, 200058),
(50287, 200065),
(50287, 200087),
(50287, 200088),
(50289, 200037),
(50291, 200109),
(50292, 200017),
(50295, 200104),
(50324, 200114),
(50325, 200055),
(50340, 200120),
(85031, 200028),
(85031, 200115),
(85031, 200116),
(502770, 200086),
(502923, 200040),
(502960, 200027),
(503410, 199999),
(9300102, 200000),
(9300102, 200001);

DELETE FROM `creature_questender` WHERE `quest` IN (49976, 49977, 49978, 49979, 49980, 49981, 49982, 49983, 49984, 49985, 49986, 49987, 49988, 49990, 49991, 49992, 199999, 200000, 200001, 200017, 200027, 200028, 200037, 200040, 200041, 200042, 200055, 200058, 200065, 200071, 200077, 200086, 200087, 200088, 200104, 200109, 200114, 200115, 200116, 200120, 200165);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(50280, 49978),
(50280, 200077),
(50282, 49981),
(50282, 200165),
(50283, 49984),
(50283, 200071),
(50286, 49986),
(50286, 200058),
(50287, 49985),
(50287, 200065),
(50287, 200086),
(50287, 200087),
(50289, 49987),
(50289, 200037),
(50291, 49988),
(50291, 200109),
(50292, 49979),
(50292, 200017),
(50295, 49990),
(50295, 200104),
(50324, 49977),
(50324, 200116),
(50325, 49992),
(50325, 200055),
(50340, 49983),
(50340, 200120),
(85031, 200027),
(85031, 200114),
(85031, 200115),
(502770, 49976),
(502770, 200088),
(502923, 49982),
(502923, 200042),
(502960, 49991),
(502960, 200028),
(503410, 49980),
(503410, 200001),
(9300102, 199999),
(9300102, 200000);

DELETE FROM `gameobject_queststarter` WHERE `quest` IN (49976, 49977, 49978, 49979, 49980, 49981, 49982, 49983, 49984, 49985, 49986, 49987, 49988, 49990, 49991, 49992, 199999, 200000, 200001, 200017, 200027, 200028, 200037, 200040, 200041, 200042, 200055, 200058, 200065, 200071, 200077, 200086, 200087, 200088, 200104, 200109, 200114, 200115, 200116, 200120, 200165);
INSERT INTO `gameobject_queststarter` (`id`, `quest`)
VALUES
(9301100, 200041),
(9301100, 200042);

DELETE FROM `gameobject_questender` WHERE `quest` IN (49976, 49977, 49978, 49979, 49980, 49981, 49982, 49983, 49984, 49985, 49986, 49987, 49988, 49990, 49991, 49992, 199999, 200000, 200001, 200017, 200027, 200028, 200037, 200040, 200041, 200042, 200055, 200058, 200065, 200071, 200077, 200086, 200087, 200088, 200104, 200109, 200114, 200115, 200116, 200120, 200165);
INSERT INTO `gameobject_questender` (`id`, `quest`)
VALUES
(9301100, 200040),
(9301100, 200041);

-- Letter pages: 1001, 5001, 5003, 5004, 5005, 5008, 5009, 5012 pagetextcache;
-- 1002, 1003, 5002, 5006, 5007, 5010, 5011, 5013 written for this build in the trainers' voices (INFERRED).
DELETE FROM `page_text` WHERE `ID` IN (1001, 1002, 1003, 5001, 5002, 5003, 5004, 5005, 5006, 5007, 5008, 5009, 5010, 5011, 5012, 5013);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `VerifiedBuild`)
VALUES
(1001, '原始狂怒之路很简单：力量源自内心。愤怒是诚实的。文明使你软弱。拥抱栖息在你血液中的野兽。让原始本能指引你的攻击，你的敌人将体会到真正的恐惧。抛弃社会的枷锁，释放你内心的野蛮人。如果你感受到内心燃烧的怒火，来北郡山谷找我谈谈。战斗在等待。 -掠夺者阿曼达，野蛮人训练师', 0, 0),
(1002, '今晚灵魂们很喧闹，$N。它们摇晃骨头，在烟雾中嘶嘶作响，还不断念着你的名字。$B$B巫医行走于两个世界之间。同一只手既能酿制药水愈合伤口，也能搅动妖术从内部腐蚀敌人。瑟拉图斯两者都教，只要求你倾听。$B$B如果你也听到鼓声，来北郡修道院找我。带上一颗开放的心。$B$B-亚拉医生，巫医训练师', 0, 0),
(1003, '邪恶戴着友善的面具，$N。它在集市上微笑，为邻居烤面包，却在他们一转身时就诅咒他们。$B$B猎魔人学会看穿微笑。银、火与信仰是我们的工具，而耐心是最锋利的。$B$B如果你曾感到颈后那冰冷的刺痛，你就准备好学习了。到北郡修道院西侧外面找我。$B$B-弗罗斯特执事，猎魔人训练师', 0, 0),
(5001, '风暴以雷霆与闪电言语，$N。我自孩童时便与暴风雨同行，学会在呼啸的风中听见它们的声音。元素不是仆从——它们是伙伴。尊重它们，它们就会将狂怒借给你。当你准备好拥抱自然本身的混沌时，来北郡山谷找我。天空愈发躁动，它需要那些懂得其语言的人。 -妮基·塞斯拉，风暴使者训练师', 0, 0),
(5002, '我会站在他人倒下之处。当防线只剩防线本身时，我会守住它。我会保护弱者，而且我不会崩溃。$B$B这就是那些话，$N。说出来容易；活出来不易。如果它们在你心中激起了什么，来北郡修道院南厅找我，我们看看你由什么构成。$B$B-先锋格斯，守护者训练师', 0, 0),
(5003, '以圣光永恒的恩典……没有行动的信仰是空洞的。没有信仰的行动是混乱。你被召唤，不只是做一个追随者——你要成为神圣意志的活体武器。这条道路狭窄而严苛。只有当你准备好将一切献给圣光的侍奉时，才来北郡山谷找我。完美不是可选项。 -威廉修士，圣殿骑士训练师', 0, 0),
(5004, '鲜血记得一切，$N。每一个施放的法术，每一个治愈的伤口，每一个被拯救的生命——都伴随着以猩红之血偿付的代价。不要把这误认为邪恶魔法。鲜血是诚实的。鲜血是公平的。它只取走所给予的，并回报以力量。如果你有勇气付出力量的真正代价，来北郡山谷找我。 -沉默者维斯普，血法师训练师', 0, 0),
(5005, '古老的道路在召唤你……文明筑起高墙。自然不知边界。我追踪过每一片森林，攀登过每一座山峰，学会了风对树木低语的秘密名字。你有一颗流浪者的心，$N。来北郡山谷，我会教你读懂足迹写下的故事，听见渡鸦的交谈。荒野是耐心的，但它不会永远等待。 -月溪镇的欧文，游侠训练师', 0, 0),
(5006, '你正在你注定要读到它的时刻读到它，$N。是我确保如此的。$B$B时间不是一条只载着我们前行的河流。对时光术士而言，它是一台织机，每一个瞬间都是一根可以拉扯、打结或剪断的线。拉错一根，整幅织锦就会散开。$B$B来北郡修道院的图书馆，楼上。不要迟到。我会知道。$B$B-索莉多米，时光术士训练师', 0, 0),
(5007, '死亡是一扇门，$N，而大多数人太害怕，不敢从钥匙孔往里看。我们不一样。$B$B死者记得如何站立，如何战斗，如何服从。它们只缺少一个意志来引导它们，而死灵法师正是为此而来。牧师会称此为憎恶。牧师也会死，最终。$B$B你会在北郡修道院的墓地旁找到我。很合适，不是吗？$B$B-恶棍哈尔伯特，死灵法师训练师', 0, 0),
(5008, '烧掉一切。抱歉，有点太激动了！但火焰就是激情，$N，而激情无法被礼貌所约束。我见过整片森林从灰烬中重生。我见过山脉融化又重塑。毁灭不是创造的对立面——它就是创造！来北郡山谷找我，让我们一起点燃某种美丽的东西。 -火焰领主科贝，炎术师训练师', 0, 0),
(5009, '你听到它们在低语吗，$N？它们从空间之间的空间说话，从梦想成为真实的虚空中说话。大多数人称之为疯狂，但疯狂只是另一个词，用来形容理解时会疼痛的真相。群星已就位。古老者们正在苏醒。而你……你被选中去聆听它们美丽而可怕的歌声。来北郡山谷找我。带上你的理智——你很快就不太需要它了。 -疯狂的帕塔尔，邪教徒训练师', 0, 0),
(5010, '每一个黎明都是一个被遵守的承诺，$N。太阳不问自己温暖谁；它只是升起并给予。$B$B太阳祭司将那份光带入最黑暗的地方：带上战场，带进病房，带进那些已忘记它的人心中。圣光与安舍是同一份温暖的两个名字。$B$B到北郡修道院的图书馆侧翼找我，让我们在日出时开始。$B$B-随军牧师妮索尼，太阳祭司训练师', 0, 0),
(5011, '你好啊，$N！如果你正在读这个，说明你得了修修补补的痒痒病，而唯一的疗法就是：更多修修补补。$B$B齿轮、弹簧、一撮爆破火药，还有一大堆固执——这就是工匠需要的全部。好吧，再加上一个用来测试原型的人。别担心，它们大多数不会爆炸。$B$B到北郡修道院西边的货车旁找我。带上你自己的护目镜。$B$B-诺曼·金郡，工匠训练师', 0, 0),
(5012, '死亡并不残忍，$N。死亡是必要的。我已引导一万个灵魂归于应有的安息。带着荣誉死去的战士。过早被夺走的平民。甚至还有该得到救赎机会的怪物。每一次引渡都教会我一些关于生死平衡的新东西。当你准备好侍奉永恒循环时，来北郡山谷找我。 -移除者特罗伊斯，死神训练师', 0, 0),
(5013, '刻一次，刻得准确，符文就会永远记得，$N。$B$B符文大师不像法师那样借用力量。我们把它写入石头、钢铁和我们自己的皮肤，它便留在那里。每个符文都是一个谜语，每个谜语都有答案，等待足够耐心的人去发现。$B$B到北郡修道院南厅找我。带上敏锐的头脑。$B$B-旺达·贝莱津，符文大师训练师', 0, 0);

-- ---------------------------------------------------------------------------
-- 6. Loot
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE (`Entry`, `Item`) IN ((38, 458421), (38, 458422), (38, 458423), (38, 662330), (257, 661417), (9300100, 661316), (9300101, 662331));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(38, 458421, 0, 35, 1, 1, 0, 1, 1, 'Defias Thug - Bones (Death Calls; Exiles creature_loot 35%)'),
(38, 458422, 0, 35, 1, 1, 0, 1, 1, 'Defias Thug - Fresh Flesh (Death Calls; Exiles creature_loot 35%)'),
(38, 458423, 0, 55, 1, 1, 0, 1, 1, 'Defias Thug - Skull (Death Calls; Exiles creature_loot 55%)'),
(38, 662330, 0, 25, 1, 1, 0, 1, 1, 'Defias Thug - Small Sword (Prioritizing Defense; Exiles creature_loot 25%)'),
(257, 661417, 0, 44, 1, 1, 0, 1, 1, 'Kobold Worker - Power Core (The Stolen Power Core; Exiles creature_loot 44%)'),
(9300100, 661316, 0, 100, 1, 1, 0, 1, 1, 'Defias Blood Wizard - Tome of Blood (Blood Is Power; the holder, INFERRED 100%)'),
(9300101, 662331, 0, 100, 1, 1, 0, 1, 1, 'Scorch - Heart of Scorch (The Way of the Pyromancer; INFERRED 100%)');

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`, `Idx`) IN ((38, 1), (38, 2), (38, 3), (38, 4), (257, 0), (9300100, 0), (9300101, 0));
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(38, 1, 458421),
(38, 2, 458422),
(38, 3, 458423),
(38, 4, 662330),
(257, 0, 661417),
(9300100, 0, 661316),
(9300101, 0, 662331);

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (9301101, 9301102, 9301103, 9301104);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(9301101, 661335, 0, 100, 1, 1, 0, 1, 1, 'CoA Northshire class chain: Training Wand'),
(9301102, 661330, 0, 100, 1, 1, 0, 1, 1, 'CoA Northshire class chain: Eye of the Beholder'),
(9301103, 663319, 0, 100, 1, 1, 0, 1, 1, 'CoA Northshire class chain: Lost Pendant'),
(9301104, 663320, 0, 100, 1, 1, 0, 1, 1, 'CoA Northshire class chain: Scrap Metal');

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` IN (9301101, 9301102, 9301103, 9301104);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(9301101, 0, 661335),
(9301102, 0, 661330),
(9301103, 0, 663319),
(9301104, 0, 663320);

-- ---------------------------------------------------------------------------
-- 8. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9003100, 9003101, 9003102, 9003103, 9003104, 9003105, 9003106, 9003107, 9003108, 9003109, 9003110, 9003111, 9003112, 9003113, 9003114, 9003115, 9003120, 9003121, 9003122, 9003123, 9003124, 9003125, 9003126, 9003127, 9003128, 9003129) OR `guid` BETWEEN 9003100 AND 9003299;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9003100, 50295, 0, 0, 0, 1, 1, 1, -8913.97, -99.21, 81.92, 4.23, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Amanda the Reaver (Barbarian): yard west of the abbey between the human start and Marshal McBride, beside the gypsy wagon; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49990, z from surface.floor; faces 4.230 south-east across the yard, between the human start and McBride (the way players arrive)'),
(9003101, 502960, 0, 0, 0, 1, 1, 1, -8875.32, -207.59, 81.34, 3.21, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Doctor Yara (Witch Doctor): abbey rear yard beside the stable, under the tree; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49991, z from surface.floor; faces 3.210 south along the rear yard, the open side players come round the abbey from'),
(9003102, 50325, 0, 0, 0, 1, 1, 1, -8949.41, -173.84, 80.171, 1.01, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Deacon Frost (Witch Hunter): open ground west of the abbey by the graveyard trees; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49992, z from surface.floor; faces 1.010 north-north-west toward the human start and McBride, where players arrive'),
(9003103, 502770, 0, 0, 0, 1, 1, 1, -8878.25, -183.11, 81.941, 6.07, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Niki Thesla (Stormbringer): Northshire Abbey, main hall floor near Brother Paxton; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49976, z from surface.floor; faces 6.070 into the open hall, the longest clear line (places survey)'),
(9003104, 50324, 0, 0, 0, 1, 1, 1, -8906.3, -207.67, 81.94, 2.75, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Vanguard Gus (Guardian): Northshire Abbey, south hall (Hall of Arms) floor; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49977, z from surface.floor; faces 2.750 across the south hall (14 yd clear); the open-room line meets a pillar at 2.8 yd'),
(9003105, 50280, 0, 0, 0, 1, 1, 1, -8907.19, -210.78, 89.167, 2.06, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Brother William (Templar): Northshire Abbey, upper floor of the south hall, above Vanguard Gus; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49978, z from surface.floor; faces 2.060 into the open gallery'),
(9003106, 50292, 0, 0, 0, 1, 1, 1, -8938.88, -175.9, 80.486, 4.66, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Whisp the Silent (Bloodmage): west yard under the tree canopy, south of the abbey door path; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49979, z from surface.floor; faces 4.660 straight away from the canopy trunk 3.3 yd behind him, over the graveyard lawn (playtest: facing the trunk was awkward)'),
(9003107, 503410, 0, 0, 0, 1, 1, 1, -8872.82, -160.38, 80.068, 0.96, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Owen of Moonbrook (Ranger): north-west corner of the abbey by the hunters'' stalls (Eagan Peltskinner 4.6 yd); Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49980, z from surface.floor; faces 0.960, the open side, the same way as his neighbour Eagan Peltskinner'),
(9003108, 50282, 0, 0, 0, 1, 1, 1, -8852.45, -191.49, 89.314, 0.96, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Soridormi (Chronomancer): Northshire Abbey, library upper floor (Khelden Bremen, kept, 3.4 yd); Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49981, z from surface.floor; faces 0.960 into the open library floor'),
(9003109, 502923, 0, 0, 0, 1, 1, 1, -8920.47, -178.42, 80.885, 3.83, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Halbert the Scoundrel (Necromancer): recess of the abbey west wall above the graveyard; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49982, z from surface.floor; faces 3.830 out of the recess, its only open side (south-east)'),
(9003110, 50340, 0, 0, 0, 1, 1, 1, -8950.24, -210.71, 79.019, 1.96, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Koby the Incinerator (Pyromancer): south of the CoA hearse on the path west of the abbey; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49983, z from surface.floor; faces 1.960 west-north-west past the hearse toward the abbey yard path'),
(9003111, 50283, 0, 0, 0, 1, 1, 1, -8917.438, -164.774, 81.939, 4.468, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Patal the Mad (Cultist): Northshire Abbey, entry chapel, standing in front of the Wooden Bench (guid 26723): the point lies 0.51 yd from the bench centre along its facing, not on one of its four seat slots, so he stands 0.2 yd further forward (0.71 yd), clear of the seat edge at 0.39 yd; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49984, z from surface.floor; faces 4.468, the way the bench behind him faces'),
(9003112, 50286, 0, 0, 0, 1, 1, 1, -8853.59, -194.47, 81.932, 2.55, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Chaplain Nysoni (Sun Cleric): Northshire Abbey, library ground floor, Priestess Anetta''s post; 1.03 yd off the turn-in point, straight away from the Pilgrim''s Bounty turkey 241844, to keep 2.5 yd from it; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49986, z from surface.floor; faces 2.548, the stock facing of Priestess Anetta at this post'),
(9003113, 50287, 0, 0, 0, 1, 1, 1, -8905.17, -105.17, 81.849, 5.53, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Norman Goldshire (Tinker): yard west of the abbey by the water basin and the gypsy wagons; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49985, z from surface.floor; faces 5.530 east across the yard toward the abbey front, where players come from'),
(9003114, 50289, 0, 0, 0, 1, 1, 1, -8925.75, -199.67, 80.659, 2.88, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Troes the Remover (Reaper): graveyard south-west of the abbey (Dane Winslow 2.8 yd, Drusilla La Salle 4.2 yd); Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49987, z from surface.floor; faces 2.880, the open side, toward the yard path'),
(9003115, 50291, 0, 0, 0, 1, 1, 1, -8909.81, -216.7, 81.94, 1.58, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire trainer: Wanda Belezin (Runemaster): Northshire Abbey, south hall floor; Northshire: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 49988, z from surface.floor; faces 1.580 into the open room (the wall is 4.0 yd ahead)'),
(9003120, 299235, 0, 0, 0, 1, 1, 1, -8859, -193, 81.932, 3.14, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: Northshire Abbey, Library Wing ground floor ("Somewhere in the Library Wing", 200071), between the shelves 5.6 yd from Chaplain Nysoni; faces south toward the way in from the main hall'),
(9003121, 85031, 0, 0, 0, 1, 1, 0, -8628.8, -110.2, 88.907, 3.51, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: Echo Ridge Mine side chamber by the Worn Shovel, just inside the mouth (Exiles zone claim 47,30 = the mine mouth; text: "in the Kobold mine"); kneeling, injured; faces the chamber opening players come through'),
(9003122, 299325, 0, 0, 0, 1, 1, 1, -8966.5, -289, 73.469, 0.99, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: north end of the river bridge on the road from the abbey to the vineyards, telling passers-by his grievances; faces the abbey road'),
(9003123, 9300102, 0, 0, 0, 1, 1, 0, -8800.79, -408.43, 75.172, 3.1, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: supply yard of the Defias-held Damaged Guard Tower, among the crates at the yard''s east edge where the scouting falcon came down: the nearest reachable floor to the SOURCED-CACHE quest point of 199999 (-8799.29, -412.93), 4.7 yd off, because the point itself lies on the yard''s steep east retaining edge with no navmesh; faces 3.10 into the yard, where the navmesh paths from the abbey arrive'),
(9003124, 9300103, 0, 0, 0, 1, 1, 0, -8677.65, -185.65, 92.28, 3.94, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: CoA farmhouse (Redridge_Human_Farm.wmo) north of the abbey, seated in the chair at his small table (low chair, stand state 4) facing the table; the furnished house with its armour stand is his "own home in the valley"'),
(9003125, 9300104, 0, 0, 0, 1, 1, 0, -8960.4, -212.9, 77.008, 1.25, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: outside the graveyard''s stone wall south-west of the abbey, an old villager tending the graves, 3.5 yd off the Northshire Peasant''s walk to the graveyard gate (path 802620); faces the fence''s west corner, where players from Deacon Frost come round'),
(9003126, 9300101, 0, 0, 0, 1, 1, 0, -8974, -465.5, 73.693, 0.98, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: draw in the hills south-east of the Defias camp, beside the campfire it is bound to; faces the fire'),
(9003127, 9300100, 0, 0, 0, 1, 1, 1, -8961.5, -442.5, 66.07, 1.26, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: Defias camp, south end of the tent, facing the camp fire; one of the camp''s own bandits'),
(9003128, 9300100, 0, 0, 0, 1, 1, 1, -9040, -311, 73.771, 1.03, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: Northshire Vineyards among the Defias Thugs, by the water wagon he faces; the second holder so two players can take the tome at once'),
(9003129, 685037, 0, 0, 0, 1, 1, 0, -8739.5, -410.5, 81.707, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire class chain: invisible walk-in credit for A Quiet Life at the foot of the Northshire falls, on the low rock between the pool''s east end and the cliff under Uther''s Statue; from here it sees the whole bank below the statue and falls and most of the pool within 15 yd, where the statue ledge itself cannot be reached on foot');

DELETE FROM `creature_addon` WHERE `guid` IN (9003121, 9003124) OR `guid` BETWEEN 9003100 AND 9003299;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`)
VALUES
(9003121, 0, 0, 8, 0, 0, 0, ''),
(9003124, 0, 0, 4, 0, 0, 0, '');

DELETE FROM `gameobject` WHERE `guid` IN (7912100, 7912101, 7912102, 7912103, 7912104, 7912105, 7912106, 7912107, 7912108, 7912109, 7912110, 7912111, 7912112, 7912113, 7912114, 7912115, 7912116, 7912117) OR `guid` BETWEEN 7912100 AND 7912199;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7912100, 9301100, 0, 0, 0, 1, 1, -8918.5, -418, 66.037, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Northshire class chain: clearing in the woods north of the Defias camp, 35 yd from its bandits (the note: "the nearby Defias bandits have just what is needed")'),
(7912101, 21282, 0, 0, 0, 1, 1, -8972, -462.5, 72.399, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Northshire class chain: the campfire Scorch is bound to, in the draw south-east of the Defias camp'),
(7912102, 9301105, 0, 0, 0, 1, 1, -8732.4, -416.4, 83.38, 2.45, 0, 0, 0.940806, 0.338946, 300, 100, 1, '', 'CoA Northshire class chain: the ledge above the pool 10 yd south of the SOURCED-ATLAS sighting of goober 251653, which lies on a 55-63 degree cliff face where the stand-in model floated up to 6 yd; z is the lowest floor under its footprint (83.38-84.33); faces the pool and the visit marker'),
(7912103, 9301101, 0, 0, 0, 1, 1, -8909.4, -183.3, 81.939, 1.2, 0, 0, 0.564642, 0.825336, 60, 100, 1, '', 'CoA Northshire class chain: Northshire Abbey, entry chapel floor beside the tall book stack, far from Soridormi''s library'),
(7912104, 9301102, 0, 0, 0, 1, 1, -8898.6, -181.2, 81.939, 2.9, 0, 0, 0.992713, 0.120503, 60, 100, 1, '', 'CoA Northshire class chain: Northshire Abbey, main hall, at the foot of the first stone bust (the riddle''s "silent watchers")'),
(7912105, 9301103, 0, 0, 0, 1, 1, -8941, -417.5, 66.024, 0.6, 0, 0, 0.29552, 0.955336, 60, 100, 1, '', 'CoA Northshire class chain: trail north of the Defias camp fire, where the chaplain fled'),
(7912106, 9301103, 0, 0, 0, 1, 1, -8931, -409, 66.564, 2.2, 0, 0, 0.891207, 0.453596, 60, 100, 1, '', 'CoA Northshire class chain: further along the same trail toward the river; a second spot so two players need not wait'),
(7912107, 9301104, 0, 0, 0, 1, 1, -8779.3, -115.8, 82.641, 0.4, 0, 0, 0.198669, 0.980067, 120, 100, 1, '', 'CoA Northshire class chain: north kobold camp, beside the wheelbarrow'),
(7912108, 9301104, 0, 0, 0, 1, 1, -8763.5, -124.8, 83.527, 2, 0, 0, 0.841471, 0.540302, 120, 100, 1, '', 'CoA Northshire class chain: north kobold camp, behind the tent'),
(7912109, 9301104, 0, 0, 0, 1, 1, -8775.5, -121.5, 82.964, 4.1, 0, 0, 0.887362, -0.461073, 120, 100, 1, '', 'CoA Northshire class chain: north kobold camp, west of the campfire'),
(7912110, 9301104, 0, 0, 0, 1, 1, -8756.5, -193.8, 85.762, 1.1, 0, 0, 0.522687, 0.852525, 120, 100, 1, '', 'CoA Northshire class chain: middle kobold camp, beside the campfire'),
(7912111, 9301104, 0, 0, 0, 1, 1, -8771.8, -170.2, 82.61, 5.2, 0, 0, 0.515501, -0.856889, 120, 100, 1, '', 'CoA Northshire class chain: middle kobold camp, by the crates at the tent'),
(7912112, 9301104, 0, 0, 0, 1, 1, -8759.5, -166, 84.098, 3, 0, 0, 0.997495, 0.070737, 120, 100, 1, '', 'CoA Northshire class chain: middle kobold camp, north edge'),
(7912113, 9301104, 0, 0, 0, 1, 1, -8781, -250.8, 82.548, 0.8, 0, 0, 0.389418, 0.921061, 120, 100, 1, '', 'CoA Northshire class chain: south kobold camp, among the sacks'),
(7912114, 9301104, 0, 0, 0, 1, 1, -8808.2, -240.8, 82.188, 2.6, 0, 0, 0.963558, 0.267499, 120, 100, 1, '', 'CoA Northshire class chain: south kobold camp, by the west tent'),
(7912115, 9301104, 0, 0, 0, 1, 1, -8797.8, -246.2, 82.4, 4.5, 0, 0, 0.778073, -0.628174, 120, 100, 1, '', 'CoA Northshire class chain: south kobold camp, north side of the fire'),
(7912116, 9301104, 0, 0, 0, 1, 1, -8674.8, -117.5, 91.554, 1.7, 0, 0, 0.75128, 0.659983, 120, 100, 1, '', 'CoA Northshire class chain: Echo Ridge Mine mouth, west side'),
(7912117, 9301104, 0, 0, 0, 1, 1, -8664, -126, 91.492, 5.9, 0, 0, 0.190423, -0.981702, 120, 100, 1, '', 'CoA Northshire class chain: Echo Ridge Mine mouth, inside the entrance');

-- ---------------------------------------------------------------------------
-- 9. Scripts
-- ---------------------------------------------------------------------------
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-9003129, 85031, 9300102, 9300103, 9300104) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(-9003129, 0, 0, 0, 10, 0, 100, 0, 1, 15, 1000, 1000, 1, 0, 33, 685037, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '[KC] Visit at the foot of the Northshire falls - On Player In Sight Within 15 Yards - Quest Credit ''Visit the waterfall in Northshire Valley'''),
(85031, 0, 0, 0, 8, 0, 100, 0, 801670, 0, 0, 0, 0, 0, 33, 685021, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Lil Wa''zoo - On Spellhit ''Loa''s Brew'' (Rank 1) - Quest Credit ''Save Lil Wa''zoo'''),
(85031, 0, 1, 0, 19, 0, 100, 0, 200028, 0, 0, 0, 0, 0, 12, 299223, 4, 300000, 1, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Lil Wa''zoo - On Quest ''Who Called For Da Docta?'' Accepted - Summon Zipi On The Player'),
(9300102, 0, 0, 0, 8, 0, 100, 0, 684328, 0, 0, 0, 0, 0, 33, 685011, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Jo - On Spellhit ''Tend Jo''s Wounds'' (Red Vial) - Quest Credit ''Tend to Jo''s wounds'''),
(9300102, 0, 1, 0, 19, 0, 100, 0, 200000, 0, 0, 0, 0, 0, 12, 299222, 4, 300000, 1, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Jo - On Quest ''A Surprise Attack!'' Accepted - Summon Suspicious Creature On The Player'),
(9300103, 0, 0, 1, 62, 0, 100, 0, 930204, 0, 0, 0, 0, 0, 33, 685022, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Man Jenkins - On Gossip Option 0 Selected - Quest Credit ''Chat with Old Man Jenkins'''),
(9300103, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Man Jenkins - Linked - Say Line 0'),
(9300103, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Man Jenkins - Linked - Close Gossip'),
(9300104, 0, 0, 1, 8, 0, 100, 0, 512352, 0, 0, 0, 0, 0, 33, 685221, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Agatha - On Spellhit ''Witcher''s Torch'' - Quest Credit ''Find the Witch'''),
(9300104, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Agatha - Linked - Say Line 0'),
(9300104, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 299333, 4, 300000, 1, 0, 0, 8, 0, 0, 0, 0, -8960.4, -212.9, 77.008, 1.25, 'Old Agatha - Linked - Summon Witch At Her Place, Attacking The Player'),
(9300104, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Agatha - Linked - Despawn, Respawn In 60 Seconds');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9301100, 9301105) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(9301100, 1, 0, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 33, 685121, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ritual Circle - On Use - Quest Credit ''Find the ritual circle'''),
(9301100, 1, 1, 0, 19, 0, 100, 0, 200042, 0, 0, 0, 0, 0, 12, 299232, 4, 300000, 1, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ritual Circle - On Quest ''Call of the Dead'' Accepted - Summon Undead Monstrosity On The Player'),
(9301100, 1, 2, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 299232, 4, 300000, 1, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ritual Circle - On Use - Summon Undead Monstrosity again if none is near'),
(9301105, 1, 0, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 33, 685037, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Uther''s Statue - On Use - Quest Credit ''Visit the waterfall in Northshire Valley''');

DELETE FROM `conditions` WHERE `SourceEntry` = 9301100 AND `SourceTypeOrReferenceId` = 22;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(22, 3, 9301100, 1, 0, 9, 0, 200042, 0, 0, 0, 0, 0, '', 'Ritual Circle - re-summon only while Call of the Dead is taken'),
(22, 3, 9301100, 1, 0, 29, 1, 299232, 20, 0, 1, 0, 0, '', 'Ritual Circle - re-summon only if no living Undead Monstrosity is within 20 yd');

DELETE FROM `conditions` WHERE `SourceEntry` IN (299235, 9301102) AND `SourceTypeOrReferenceId` = 30;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(30, 0, 299235, 0, 0, 9, 0, 200071, 0, 0, 0, 0, 0, '', 'Brother Sammuel - visible only while Going MAD! (200071) is taken'),
(30, 1, 9301102, 0, 0, 9, 0, 200109, 0, 0, 0, 0, 0, '', 'Eye of the Beholder - visible only while Runes of Power (200109) is taken');
