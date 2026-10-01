-- Conquest of Azeroth class trainers in the Valley of Trials: the eighteen CoA class trainers on their
-- own posts, the eighteen "seek your trainer" letters that Gornek hands out after Cutting Teeth, and the
-- first class chains with every target, helper, object and drop they need.
--
-- WHERE EACH VALUE COMES FROM
--   trainer posts  SOURCED-CLIENT: the QuestSuperTrack turn-in point of each letter (52000-52016); z is
--     the server floor (surface.floor). Facings are INFERRED from each post (reason in the spawn comment).
--   trainers  names and titles from the realm creature cache; Omogulg the Truthbearer and Pangajo Sunseer
--     are named by their letters and have no cache record (new entries). Class kits, menus and texts come
--     from the class trainer core (rev_20260923_05); Mu'kaka, Zim'chein and Wolfrider Yara speak their own
--     cached greeting and refusal (npccache 87574/287574, 502155/602155, 25007/125007).
--   looks  stand-ins (no SMSG_MIRRORIMAGE_DATA capture of any CoA trainer exists): a stock NPC of the
--     inferred race, sex and trade, copied from CreatureDisplayInfoExtra and restyled; race and sex are
--     INFERRED from the names and the voice of their texts. Weapons from the stock NPCs' own equipment.
--   quests  the realm quest cache. Letters: Gornek after Cutting Teeth (788), the stock letter pattern
--     (INFERRED); the ender is the trainer the letter names. Chains start at the letter's trainer and link
--     by PrevQuestID; RewardNextQuest from the cache inside this file.
--   chain places  hand-placed where the texts send the player (the den, the hill above it, the imp
--     cave, the canyon before it, the eastern desert, the southern mountains), each point checked on the
--     server floor, headroom and navmesh; drop chances SOURCED-EXILES.
--   stock trainers  every one keeps its post and role. Frang (guid 7651) stands 2.0 yd from Omogulg's
--     turn-in point; Ken'jai (guid 4912) is hidden while the Cultist kill copy stands at his post
--     (rev_20260924_13).
--   Reaper  Zul’raja the Harvester is CoA's unspawned trainer record 501296; CoA shipped no Valley Reaper
--     letter or chain, so his post, letter 9302430, page and "Call of the Shadowlands" copy 9302431 are INFERRED.
--
-- Blocks: creature guid 9003500-9003699, gameobject guid 7912300-7912399, creature
-- entries 9300200-9300206, gameobject entries 9301200-9301204, menus 930300-930304,
-- quest and item 9302430-9302431, page_text 931430.

-- ---------------------------------------------------------------------------
-- 1. Trainers
-- ---------------------------------------------------------------------------
-- Mu'kaka: name and subname from creaturecache 502953 (SOURCED-CACHE)
--   look: troll male: his own greeting speaks troll dialect ("old Mu'kaka"); Bloodscalp Berserker 4579, hair, colour and beard changed; two-handed axe of the berserker
-- Rol'joku: name and subname from creaturecache 50296 (SOURCED-CACHE)
--   look: troll male: the chain text is troll dialect; Bloodscalp Witch Doctor 4581 with its troll mask, hair and colour changed; staff
-- Grillok Morzog: name and subname from creaturecache 502760 (SOURCED-CACHE)
--   look: orc male (orcish name); Burning Blade Shadowmage 4705, a demon-sworn orc, hair, colour and beard changed; two curved green blades
-- Zim'chein: name and subname from creaturecache 50277 (SOURCED-CACHE)
--   look: troll male (troll name); Darkspear Shaman 15840 with its mail helm, hair and colour changed; serpent mace and shield
-- Spi'ro: name and subname from creaturecache 50278 (SOURCED-CACHE)
--   look: troll male (troll name); Blood Guard Tor'zin 23807 in dark plate, tabard removed, hair and colour changed; two-handed mace
-- Den Sergeant Gormuk: name and subname from creaturecache 502791 (SOURCED-CACHE)
--   look: orc female: the letter says "dedicated herself"; Corporal Teeka Bloodsnarl 13851 in plate with a circlet, hair and colour changed; sword and shield
-- new NPC Omogulg the Truthbearer, named as the 52013 letter ("Seek out Omogulg the Truthbearer") (INFERRED: no cache record)
--   look: orc male (orcish name); Champion Guardian 13361 in Horde plate, hair, colour and beard changed; two-handed warhammer with a white flame for the Light
-- Fleshweaver Chella: name and subname from creaturecache 502921 (SOURCED-CACHE)
--   look: troll female: female per her letter page 8001 ("Seek her", SOURCED-CACHE), troll per the dialect of her chain text ("da cave"); Hakkari Blood Priest 11223, hair and colour changed; hooked dark dagger
-- Wolfrider Yara: name and subname from creaturecache 502810 (SOURCED-CACHE)
--   look: orc female: an orc wolfrider; Breka Wolfsister 24258 (wolf clan stable master) with mail helm and cloak, tabard removed, hair and colour changed; axe and short bow
-- Kragar the Reanimator: name and subname from creaturecache 502925 (SOURCED-CACHE)
--   look: orc male (orcish name); En'kilah Necrolord 23359 in dark robes, hair, colour and beard changed; staff
-- Grishnakh Searscar: name and subname from creaturecache 503402 (SOURCED-CACHE)
--   look: orc male (orcish name); Arathi Flame Keeper 16341 in fire-festival robes, hair, colour and beard changed; red staff
-- Rug'ra Witherhand: name and subname from creaturecache 502832 (SOURCED-CACHE)
--   look: orc female: female per her letter page 8002 ("Find her", SOURCED-CACHE), orc per her chain text's opening "Zug, zug"; Deathspeaker Attendant 30327 in cult robes and hood, hair and colour changed; one-handed mace
-- new NPC Pangajo Sunseer, named as the 52012 letter ("Seek out Pangajo Sunseer") (INFERRED: no cache record)
--   look: tauren male: Sun Cleric was a tauren class among the Horde races and the Venomancer text sees "citizens of every shade"; Elder Skyseer 15635, horns and colour changed; gold feathered staff
-- Mekboy Parod: name and subname from creaturecache 502872 (SOURCED-CACHE)
--   look: orc male ("Mekboy"); Frostwolf Explosives Expert 13793, hair, colour and beard changed; wooden hammer
-- Qwi'spe the Wise: name and subname from creaturecache 50288 (SOURCED-CACHE)
--   look: troll female: troll per the dialect of her chain text ("Dis fine, yes?"); female is an INFERRED design choice for variety, no source gives her sex; Arin'sor 11665 (raptor trainer), hair and colour changed; two daggers
-- Krull Rocksmash: name and subname from creaturecache 50290 (SOURCED-CACHE)
--   look: orc male (orcish name); Durkot Wolfbrother 23502 in hides, hair and colour changed; axe
-- Zina Glyphreader: name and subname from creaturecache 502912 (SOURCED-CACHE)
--   look: orc female: orc per her other name "Mog'or" and her chain text's "Zug zug"; female is an INFERRED design choice for variety, no source gives her sex; Frostwolf Shaman 13410 in robes and hood, hair and colour changed; runed staff
-- Zul’raja the Harvester: name and subname from creaturecache 501296 (SOURCED-CACHE)
--   look: troll male (troll name); Uzo Deathcaller 26222 in Zul'Aman plate, hair and colour changed, Horde war helm added for "looking at my helmet" (200037); Zulian Scythe and Deepscythe
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(502953, '穆卡卡', '野蛮人训练师', 930302, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50296, '罗尔乔库', '巫医训练师', 930013, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502760, '格里洛克·莫佐格', '恶魔猎手训练师', 930014, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50277, '齐姆切因', '风暴使者训练师', 930300, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50278, '斯皮罗', '克索诺斯骑士训练师', 930017, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502791, '巢穴中士戈穆克', '守护者训练师', 930018, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300200, '真理使者奥莫古尔格', '圣殿骑士训练师', 930019, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(502921, '织肉者切拉', '血法师训练师', 930020, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502810, '狼骑兵雅拉', '游侠训练师', 930301, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502925, '复生者克拉加', '死灵法师训练师', 930023, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(503402, '格里什纳克·灼痕', '炎术师训练师', 930024, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502832, '拉格拉·枯手', '邪教徒训练师', 930025, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300201, '潘加乔·日见者', '太阳祭司训练师', 930027, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(502872, '技工小子帕罗德', '工匠训练师', 930028, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50288, '智者奎斯普', '剧毒术士训练师', 930029, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50290, '克鲁尔·碎岩', '仪祭师训练师', 930031, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502912, '齐娜·铭文解读者', '符文大师训练师', 930032, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(501296, '收割者祖尔拉贾', '死神训练师', 930030, 10, 10, 0, 29, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (50277, 50278, 50288, 50290, 50296, 501296, 502760, 502791, 502810, 502832, 502872, 502912, 502921, 502925, 502953, 503402, 9300200, 9300201);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(502953, 0, 1478, 1, 1),
(50296, 0, 1478, 1, 1),
(502760, 0, 51, 1, 1),
(50277, 0, 1478, 1, 1),
(50278, 0, 1478, 1, 1),
(502791, 0, 52, 1, 1),
(9300200, 0, 51, 1, 1),
(502921, 0, 1479, 1, 1),
(502810, 0, 52, 1, 1),
(502925, 0, 51, 1, 1),
(503402, 0, 51, 1, 1),
(502832, 0, 52, 1, 1),
(9300201, 0, 59, 1, 1),
(502872, 0, 51, 1, 1),
(50288, 0, 1479, 1, 1),
(50290, 0, 51, 1, 1),
(502912, 0, 52, 1, 1),
(501296, 0, 1478, 1, 1);

DELETE FROM `creature_display_preset` WHERE `entry` IN (50277, 50278, 50288, 50290, 50296, 501296, 502760, 502791, 502810, 502832, 502872, 502912, 502921, 502925, 502953, 503402, 9300200, 9300201);
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`, `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`, `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`)
VALUES
(502953, 1478, 8, 0, 1, 1, 0, 4, 5, 6, 0, 0, 0, 0, 147398, 0, 152436, 154636, 156255, 0, 0, 0),
(50296, 1478, 8, 0, 1, 1, 0, 2, 7, 10, 0, 145082, 0, 147400, 148721, 150467, 152438, 0, 156256, 6411, 0, 0),
(502760, 51, 2, 0, 1, 3, 7, 3, 2, 5, 0, 0, 0, 147432, 148743, 150502, 152473, 154663, 0, 9854, 0, 0),
(50277, 1478, 8, 0, 1, 4, 3, 5, 1, 1, 0, 27386, 5224, 20707, 7106, 8776, 20705, 0, 0, 19623, 0, 0),
(50278, 1478, 8, 0, 1, 3, 2, 1, 6, 3, 0, 5417, 41890, 0, 41891, 41892, 41893, 41894, 0, 41895, 0, 0),
(502791, 52, 2, 1, 1, 5, 6, 2, 4, 5, 0, 145374, 146357, 147950, 22099, 151020, 153072, 155224, 0, 157594, 0, 0),
(9300200, 51, 2, 0, 1, 8, 7, 2, 6, 4, 0, 163639, 163640, 0, 163638, 163641, 163642, 163643, 163644, 163645, 0, 0),
(502921, 1479, 8, 1, 1, 1, 3, 3, 4, 4, 0, 0, 146277, 147863, 149047, 150925, 152967, 0, 0, 157502, 0, 0),
(502810, 52, 2, 1, 1, 0, 0, 4, 3, 0, 0, 41920, 0, 42269, 6426, 0, 41645, 42270, 0, 41159, 36859, 0),
(502925, 51, 2, 0, 1, 8, 8, 0, 1, 3, 0, 41352, 28347, 20755, 28332, 37890, 28334, 37892, 0, 0, 0, 0),
(503402, 51, 2, 0, 1, 4, 4, 6, 3, 8, 0, 0, 34743, 0, 28765, 13937, 28766, 28767, 21139, 26952, 0, 0),
(502832, 52, 2, 1, 1, 13, 0, 5, 6, 0, 0, 145819, 146990, 0, 47038, 50683, 46284, 156136, 0, 158281, 0, 0),
(9300201, 59, 6, 0, 1, 7, 0, 5, 1, 6, 0, 0, 0, 0, 26803, 0, 26794, 26793, 0, 0, 0, 0),
(502872, 51, 2, 0, 1, 4, 4, 1, 0, 1, 0, 145369, 146352, 147945, 149129, 151015, 153067, 1554, 0, 157589, 0, 0),
(50288, 1479, 8, 1, 1, 5, 1, 6, 5, 2, 0, 0, 0, 3836, 5512, 9017, 8114, 8115, 0, 8386, 0, 0),
(50290, 51, 2, 0, 1, 3, 1, 2, 5, 2, 0, 0, 27525, 0, 7101, 0, 13319, 41595, 0, 0, 0, 0),
(502912, 52, 2, 1, 1, 6, 1, 8, 1, 3, 0, 145349, 146326, 23429, 23430, 150989, 153039, 155191, 156430, 157562, 0, 0),
(501296, 1478, 8, 0, 1, 17, 1, 4, 3, 7, 0, 25493, 40115, 43881, 7106, 45358, 45359, 0, 45360, 0, 0, 49860);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (50277, 50278, 50288, 50290, 50296, 501296, 502760, 502791, 502810, 502832, 502872, 502912, 502921, 502925, 502953, 503402, 9300200, 9300201);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(502953, 1, 5289, 0, 0),
(50296, 1, 1908, 0, 0),
(502760, 1, 12991, 12991, 0),
(50277, 1, 2810, 13628, 0),
(50278, 1, 18062, 0, 0),
(502791, 1, 10614, 11589, 0),
(9300200, 1, 29410, 0, 0),
(502921, 1, 19924, 0, 0),
(502810, 1, 10612, 0, 2550),
(502925, 1, 13622, 0, 0),
(503402, 1, 12943, 0, 0),
(502832, 1, 52015, 0, 0),
(9300201, 1, 13337, 0, 0),
(502872, 1, 1902, 0, 0),
(50288, 1, 2184, 5283, 0),
(50290, 1, 27850, 0, 0),
(502912, 1, 39743, 0, 0),
(501296, 1, 41764, 42933, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (50277, 50278, 50288, 50290, 50296, 501296, 502760, 502791, 502810, 502832, 502872, 502912, 502921, 502925, 502953, 503402, 9300200, 9300201);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`)
VALUES
(502953, 900012),
(50296, 900013),
(502760, 900014),
(50277, 900016),
(50278, 900017),
(502791, 900018),
(9300200, 900019),
(502921, 900020),
(502810, 900021),
(502925, 900023),
(503402, 900024),
(502832, 900025),
(9300201, 900027),
(502872, 900028),
(50288, 900029),
(50290, 900031),
(502912, 900032),
(501296, 900030);

-- ---------------------------------------------------------------------------
-- 2. Named trainer menus
-- ---------------------------------------------------------------------------
-- 930302 Mu'kaka: greeting 87574, refusal 287574 (npccache, the trainer's own voice)
-- 930300 Zim'chein: greeting 502155, refusal 602155 (npccache, the trainer's own voice)
-- 930301 Wolfrider Yara: greeting 25007, refusal 125007 (npccache, the trainer's own voice)
-- 930303 Old Brokthar: his words and the reply to the Reaper (INFERRED), the option only while 9302431 is taken
DELETE FROM `npc_text` WHERE `ID` IN (25007, 87574, 125007, 287574, 502155, 602155, 930303, 930304);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`)
VALUES
(25007, '你好，游侠同袍。我是雅拉，深林追踪者与狩猎大师。$B$B多年来我行走于古老森林的寂静小径，学习野兽与利刃的秘密。$B$B荒野只对那些懂得倾听的人说话——我能从你穿行这片土地的方式中听到你游侠的心。$B$B来吧，让我教你牙与爪、弓与刃的技艺。', '你好，游侠同袍。我是雅拉，深林追踪者与狩猎大师。$B$B多年来我行走于古老森林的寂静小径，学习野兽与利刃的秘密。$B$B荒野只对那些懂得倾听的人说话——我能从你穿行这片土地的方式中听到你游侠的心。$B$B来吧，让我教你牙与爪、弓与刃的技艺。', 0, 0, 1, 1, 1, 0, 0, 0, 0),
(87574, '嘿，兄弟，你来找老穆卡卡训练吗？$B$B我喜欢你这模样，兄弟，你眼里有团火，让我想起年轻时候的我。$B$B让我来教你如何驾驭那股力量，你会变得和我一样强壮！', '嘿，兄弟，你来找老穆卡卡训练吗？$B$B我喜欢你这模样，兄弟，你眼里有团火，让我想起年轻时候的我。$B$B让我来教你如何驾驭那股力量，你会变得和我一样强壮！', 0, 0, 1, 1, 1, 0, 0, 0, 0),
(125007, '荒野只对游侠说话，$C。你的脚步对我教的森林小径来说太重了。', '荒野只对游侠说话，$C。你的脚步对我教的森林小径来说太重了。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(287574, '嘿，兄弟，你缺少野蛮人那种残暴的个性。等你骨子里有点斗志了再来吧，$C。', '嘿，兄弟，你缺少野蛮人那种残暴的个性。等你骨子里有点斗志了再来吧，$C。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(502155, '风暴把你带到了我面前，$C。我是齐姆切因，我已学会与雷霆本身交谈。$B$B当闪电劈开天空，狂风以古老的怒火呼啸时，那正是风暴使者力量达到顶峰之时。$B$B我曾穿越能驱散弱小生物的暴风雨，呼唤下能劈裂山岳的闪电。$B$B元素认出了你的潜力……让我教你号令自然本身的力量。', '风暴把你带到了我面前，$C。我是齐姆切因，我已学会与雷霆本身交谈。$B$B当闪电劈开天空，狂风以古老的怒火呼啸时，那正是风暴使者力量达到顶峰之时。$B$B我曾穿越能驱散弱小生物的暴风雨，呼唤下能劈裂山岳的闪电。$B$B元素认出了你的潜力……让我教你号令自然本身的力量。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(602155, '风暴无视你的呼唤，$C。你缺乏与暴风必要的联系。', '风暴无视你的呼唤，$C。你缺乏与暴风必要的联系。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(930303, '<老布洛克萨尔独自坐在营地一旁，注视着巨魔的死者。>$B$B我曾站在海加尔山，以及在那之前的十几场战斗中，$c。没有刀刃能终结我。如今我自己的呼吸却要了结我了。告诉我……当一位老战士走到尽头时，等待着的是什么？', '<老布洛克萨尔独自坐在营地一旁，注视着巨魔的死者。>$B$B我曾站在海加尔山，以及在那之前的十几场战斗中，$c。没有刀刃能终结我。如今我自己的呼吸却要了结我了。告诉我……当一位老战士走到尽头时，等待着的是什么？', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(930304, '暗影之地……所以确实有地方可去。很好。我原以为那里只有黑暗。$B$B告诉收割者，我不会让他等太久。', '暗影之地……所以确实有地方可去。很好。我原以为那里只有黑暗。$B$B告诉收割者，我不会让他等太久。', 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (930300, 930301, 930302);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(930302, 87574),
(930302, 287574),
(930300, 502155),
(930300, 602155),
(930301, 25007),
(930301, 125007);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (930300, 930301, 930302);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(930302, 0, 3, '我想接受野蛮人的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0),
(930300, 0, 3, '我想接受风暴使者的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0),
(930301, 0, 3, '我想接受游侠的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` IN (930300, 930301, 930302) AND `SourceTypeOrReferenceId` IN (14, 15);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(14, 930302, 87574, 0, 0, 15, 0, 2048, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Barbarian'),
(14, 930302, 287574, 0, 0, 15, 0, 2048, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Barbarian'),
(15, 930302, 0, 0, 0, 15, 0, 2048, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Barbarian'),
(14, 930300, 502155, 0, 0, 15, 0, 32768, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Stormbringer'),
(14, 930300, 602155, 0, 0, 15, 0, 32768, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Stormbringer'),
(15, 930300, 0, 0, 0, 15, 0, 32768, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Stormbringer'),
(14, 930301, 25007, 0, 0, 15, 0, 1048576, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Ranger'),
(14, 930301, 125007, 0, 0, 15, 0, 1048576, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Ranger'),
(15, 930301, 0, 0, 0, 15, 0, 1048576, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Ranger');

DELETE FROM `gossip_menu` WHERE `MenuID` IN (930303, 930304);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(930303, 930303),
(930304, 930304);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 930303;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(930303, 0, 0, '收割者祖尔拉贾派我来的。我可以告诉你彼岸有什么。', 0, 1, 1, 930304, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` = 930303 AND `SourceTypeOrReferenceId` = 15;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(15, 930303, 0, 0, 0, 9, 0, 9302431, 0, 0, 0, 0, 0, '', 'Old Brokthar - Show gossip option only while Call of the Shadowlands is taken');

-- ---------------------------------------------------------------------------
-- 3. Chain creatures
-- ---------------------------------------------------------------------------
-- 299328: Barbarian "Welcome to the Warband" (200107): the rookie the Warband refused; name from the quest text, orc look Ukor 5729 (stand-in); neutral faction 7 so he fights back but never ambushes newcomers, immune to NPCs so the den folk leave him alone
-- 299225: Knight of Xoroth "The Demon Inside" (200034): name from the objective ("Kill the unfathomably lazy peon"), the Lazy Peon look 10038; neutral 7 and immune to NPCs, asleep away from the camp
-- 299239: Cultist "Going MAD!" (200074): the kill copy of the stock priest Ken'jai 3707 at his post; his own look 4068 and mace; neutral 7 and immune to NPCs
-- 299224: Witch Doctor "Who Called For Da Docta?" (200030): name and level 3 SOURCED-EXILES creature 299224; Armored Scorpid look 2487; hostile, it comes back "to finish da job"
-- 9300202: Ranger "The Ranger's Path" (200008-200010): the trainer's falcon, name from the quest text; hawk look 4877 (no falcon display resolves); friendly quest giver
-- 9300203: Witch Doctor "The Doctor Is In!" (200029-200030): the injured friend "out in da desert", name from the objective; troll look Vel'rin Fang 4074 (stand-in); can-assist type flag so a player may heal him (Unit.cpp:11529-11537), no regeneration so he stays wounded until healed
-- 9300204: Bloodmage "Blood Is Power" (200020): the "odd Troll" in the imp cave who carries the Tome of Blood; name from the objective, Hexed Troll look 4079 (stand-in); neutral like the cave's imps
-- 9300205: Pyromancer "The Way of the Pyromancer" (200144): the fire elemental bound to a campfire near the Burning Blade Coven; name from the text, Minor Manifestation of Fire look 2172; hostile
-- 9300206: Reaper "Call of the Shadowlands" (9302431): the dying veteran of the valley copy (name INFERRED, as the other copies' Old Man Jenkins, Dalin Soft and Gyrothor Turbospark); Old Orok look 18909 (grey-haired orc, a stand-in); friendly and immune
-- 685018 [KC] Splash Pangajo Sunseer: Poisoning the World (200026) credit, given when the concoction hits the trainer
-- 685019 [KC] Splash Nekai the Reanimator: Poisoning the World (200026) credit, given when the concoction hits the trainer
-- 685020 [KC] Splash Omogulg the Truthbearer: Poisoning the World (200026) credit, given when the concoction hits the trainer
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `family`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(299328, '戈克', NULL, 0, 4, 4, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 512, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(299225, '极度懒惰的苦工', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 512, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(299239, '肯贾伊', NULL, 0, 5, 5, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 8, 512, 2048, 0, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(299224, '蝎子潜伏者', NULL, 0, 3, 3, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 20, 1, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(9300202, '尖喙', NULL, 0, 3, 3, 0, 35, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 1, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 0, ''),
(9300203, '希比·贾敏', NULL, 0, 5, 5, 0, 29, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 4096, 0, 'SmartAI', 0, 1, 1, 1, 0, 0, ''),
(9300204, '神秘巨魔', NULL, 0, 4, 4, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 9300204, '', 0, 1, 1, 1, 1, 0, ''),
(9300205, '斯考奇', NULL, 0, 5, 5, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 8, 0, 2048, 0, 4, 0, 9300205, '', 0, 1, 1, 1, 1, 0, ''),
(9300206, '老布洛克萨尔', NULL, 930303, 5, 5, 0, 29, 1, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 0, ''),
(685018, '[KC] 溅水 潘加乔·日见者', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, '', 0, 1, 1, 1, 1, 130, ''),
(685019, '[KC] 溅水 复生者内凯', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, '', 0, 1, 1, 1, 1, 130, ''),
(685020, '[KC] 溅水 真理使者奥莫古尔格', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 0, 10, 0, 0, '', 0, 1, 1, 1, 1, 130, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `family` = VALUES(`family`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (299224, 299225, 299239, 299328, 685018, 685019, 685020, 9300202, 9300203, 9300204, 9300205, 9300206);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(299328, 0, 5729, 1, 1),
(299225, 0, 10038, 1, 1),
(299239, 0, 4068, 1, 1),
(299224, 0, 2487, 1, 1),
(9300202, 0, 4877, 1, 1),
(9300203, 0, 4074, 1, 1),
(9300204, 0, 4079, 1, 1),
(9300205, 0, 2172, 1, 1),
(9300206, 0, 18909, 1, 1),
(685018, 0, 11686, 1, 1),
(685019, 0, 11686, 1, 1),
(685020, 0, 11686, 1, 1);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (299239, 299328);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(299328, 1, 12348, 0, 0),
(299239, 1, 2558, 0, 0);

-- ---------------------------------------------------------------------------
-- 4. Chain objects
-- ---------------------------------------------------------------------------
-- 9301200: Necromancer "Call of Death" chain (200049-200051): the circle is a quest giver; green ground rune 674
-- 9301201: Felsworn "Coming into Demonhood" (200022): the demon skull placed in the area round the den; skull 226
-- 9301202: Runemaster "Runes of Power" (200112): the riddle's answer "within the den"; the floating eye 621
-- 9301203: Tinker "Ingenuity At It's Finest!" (200068): scrap in the imp cave; junk pile 7114
-- 9301204: Templar "A Quiet Life" (200080): the paladin statue the order raised after the Third War; Uther statue 6815
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`)
VALUES
(9301200, 2, 674, '仪式法阵', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI'),
(9301201, 3, 226, '卡兹的头骨', '', '', 1, 1689, 9301201, 0, 1, 0, 0, 0, 0, 200022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301202, 3, 621, '观者之眼', '', '', 1, 1689, 9301202, 0, 1, 0, 0, 0, 0, 200112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301203, 3, 7114, '废金属', '', '', 1, 1689, 9301203, 0, 1, 0, 0, 0, 0, 200068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301204, 5, 6815, '隐藏的雕像', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '')
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`), `AIName` = VALUES(`AIName`);

-- ---------------------------------------------------------------------------
-- 5. Letter and runestone pages
-- ---------------------------------------------------------------------------
-- Pages of the letter items 54000-54016 and 9302430 and of the Riddlestone; the world database has none of them.
-- 8000: SOURCED-CACHE pagetextcache
-- 8001: SOURCED-CACHE pagetextcache
-- 8002: SOURCED-CACHE pagetextcache
-- 8003: SOURCED-CACHE pagetextcache
-- 8004: SOURCED-CACHE pagetextcache
-- 8006: SOURCED-CACHE pagetextcache
-- 8007: SOURCED-CACHE pagetextcache
-- 8011: SOURCED-CACHE pagetextcache
-- 8016: SOURCED-CACHE pagetextcache
-- 8005: paragraphs 1-2 from the Shadowglen Knight of Xoroth letter, page 7007 (SOURCED-CACHE); closing INFERRED
-- 8008: INFERRED in the three-part voice of the cached Valley letters
-- 8009: paragraphs 1-2 from the Shadowglen Ranger letter, page 7010 (SOURCED-CACHE); closing INFERRED
-- 8010: paragraphs 1-2 from the Shadowglen Runemaster letter, page 7012 (SOURCED-CACHE, lower-case "carved" kept); closing INFERRED
-- 8012: INFERRED: no Sun Cleric letter page exists in any cache
-- 8013: INFERRED: the cached Templar pages (5003, 6003) are signed by other trainers
-- 8014: INFERRED: the only cached Tinker page (15014) is written for the undead
-- 8015: INFERRED: the only cached Venomancer page (15015) is written for the undead
-- 931430: INFERRED: CoA shipped no Valley Reaper letter; its Reaper letter pages (6015, 7011, 15000) are not cached
-- 27577: the Riddlestone 661332 of Runes of Power (200112), which only the Valley uses; INFERRED: no source has the page; the riddle of ct-deathknell's page 27575 (its answer, the Eye of the Beholder, is this quest's objective), closed with Zina's hint "within the den. Not without."
DELETE FROM `page_text` WHERE `ID` IN (8000, 8001, 8002, 8003, 8004, 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012, 8013, 8014, 8015, 8016, 27577, 931430);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`)
VALUES
(8000, 'Lok\'tar！古老的怒火流经你的血脉，年轻的战士。野蛮人之路召唤那些拥抱战斗狂怒、而非传统战斗纪律的人。$B$B作为野蛮人，你将学会引导内心的野兽，让原始怒火指引你的攻击，而荒野之灵则借予你力量。你的敌人将在你的狂战士之怒前逃窜。$B$B前往试炼谷寻找穆卡卡。他将教你驾驭燃烧在你灵魂中的野蛮力量。', 0),
(8001, '血呼唤着血，战士。猩红之术不适合意志薄弱者，但掌握它的人将拥有超越凡人理解的力量。$B$B作为血法师，你将学会以生命力换取纯粹的魔法之力，将生命本身转化为毁灭性的法术。每一滴洒出的血都助长更强大的力量。$B$B织肉者切拉在试炼谷修行这些禁忌之术。$B$B如果你敢走上鲜血与牺牲之路，就去找她。', 0),
(8002, '低语如今变得更响了……你能听见吗？上古存在对愿意聆听凡人不敢承认的真相之人说话。$B$B作为邪教徒，你将与远古实体沟通，通过危险的契约获得禁忌知识。力量会降临到那些服务于超越凡人理解的存在之人身上。$B$B拉格拉·枯手在试炼谷听到了这些低语。如果你想学习潜伏在暗影中的秘密，就去找她。', 0),
(8003, '你的灵魂在燃烧。你感觉到了吗？$B$B这一切值得吗？$B$B很快，就会值得了。因为你，$N，是恶魔猎手。你正越来越接近弥合凡人与不朽、恶魔与$r之间的鸿沟。$B$B你将学会将恶魔精髓束缚于你的意志，并驾驭强大的邪能火焰魔法，以此抗拒这个世界。$B$B暴君格罗斯在试炼谷教导他人掌握这些力量。$B$B去找他。', 0),
(8004, '荣誉要求牺牲，而最大的牺牲是将他人的安危置于自身之上。守护者之路是无私保护之路。$B$B你将成为一座活的堡垒，你的身体与魔法形成任何敌人都无法突破的屏障。你的盟友将在你坚定的防御后找到安全。$B$B巢穴中士戈穆克在试炼谷将毕生奉献给了这一使命。去找她，学习保护的神圣职责。', 0),
(8005, '荣誉与暗影不必是对立面。克索诺斯骑士拥抱黑暗以服务于更伟大的善，为正义的目的驾驭虚空魔法。$B$B你将学会在保持道德准则的同时引导暗影能量，成为一名以非常规手段保护无辜者的黑暗圣骑士。$B$B斯皮罗在试炼谷行走于暗影与荣誉之间的这条危险之路上。如果你想加入这个独特的黑暗骑士团，就去找他。', 0),
(8006, '死亡并非终点——它只是世界之间的通道。死灵法师充当灵魂的牧者，确保亡者得到应有的安息。$B$B你将号令亡灵仆从，操纵生与死的精髓，但始终要尊重自然秩序与逝者的尊严。$B$B复生者克拉加以智慧在试炼谷修行这些技艺。去找他，学习生与死之间的神圣平衡。', 0),
(8007, '元素本身承认你的力量！土、风、火、水将在你掌握创世的原始力量时服从你的意志。$B$B作为仪祭师，你将引导原始的元素力量，造成毁灭性的效果。地震、飓风、火山爆发——全都成为你手中的武器。$B$B克鲁尔·碎岩在试炼谷与元素之灵沟通。找到他，开始你原始魔法的教育。', 0),
(8008, '你血液中的火焰已经觉醒，年轻人。很少有人能如此清晰地感受到它的召唤。$B$B作为炎术师，你将学会从虚无中点燃火焰，塑造它，并在炼狱掌控你之前掌控它。$B$B格里什纳克·灼痕在试炼谷照料着这些火焰。趁你体内的火焰还没热到拿不住，去找他。', 0),
(8009, '艾泽拉斯的荒野需要理解自然之美与凶猛保护本能的守护者。游侠充当自然世界的守卫。$B$B你将掌握林地技能，与野兽沟通，与你所保护的森林、平原和山脉融为一体。$B$B狼骑兵雅拉守望试炼谷的荒野。找到她，学习自然守护者之道。', 0),
(8010, '古老的符文拥有超越凡人魔法的力量。刻在石头与金属上，这些符号引导着比文明本身更古老的力量。$B$B作为符文大师，你将把力量铭刻进你周围的世界，创造出在其他魔法消退后仍长久持续的恒久附魔。$B$B齐娜·铭文解读者在试炼谷研读古老符文。去那里寻求她的指引。', 0),
(8011, '雷霆承认你的力量！风暴之灵在你灵魂中认出了同类的怒火，值得号令风与闪电。$B$B作为风暴使者，你将召唤晴空中的暴风雨，呼唤下劈裂山岳的闪电，乘着风本身投入战斗。$B$B齐姆切因在试炼谷掌握着这些力量。他对风暴与飓风的掌控在我们族人中堪称传奇。', 0),
(8012, '太阳为所有立于其下的人升起，而它选择通过你照耀。$B$B作为太阳祭司，你将把它的温暖带给伤者，把灼热的光芒带给那些伤害他们的人。$B$B潘加乔·日见者将太阳的祝福带到试炼谷。去找他，让光芒指引你的第一步。', 0),
(8013, '荣誉约束强者，而信仰赋予那份荣誉以目标。$B$B作为圣殿骑士，你将站在每一场战斗的最前方，为你的人民做信念的盾牌，也为那些想要击垮他们的人做锤子。$B$B真理使者奥莫古尔格在试炼谷守护着这些神圣誓言。去找他，宣誓你自己的誓言。', 0),
(8014, '齿轮转动，活塞泵动，总有什么东西会爆炸。欢迎来到精彩的部分！$B$B作为工匠，你将打造自己的武器，用废料拼装出各种装置，并证明聪明的头脑和任何斧头一样能造成重击。$B$B技工小子帕罗德在试炼谷捣鼓他的发明。找到他，带上你自己的备用零件。', 0),
(8015, '每一次蜇刺、每一颗獠牙、每一条苦根，对足够耐心去学习的人都蕴含着教训。$B$B作为剧毒术士，你将调配使敌人枯萎的毒素和让死亡退却的解药，因为毒与药是同一把剑的两面。$B$B智者奎斯普在试炼谷研究毒液与解药。小心地向她学习。', 0),
(8016, '洛阿神在低语你的名字！祖先之灵认出你值得充当生者世界与亡者领域之间的桥梁。$B$B作为巫医，你将掌握治愈与妖术、祝福与诅咒，始终服务于你的部族和更伟大的善。$B$B罗尔乔库在试炼谷修行这些古老技艺。他与洛阿神及祖先之灵的联系比大多数人所理解的更深。', 0),
(27577, '我没有眼睑，却从不睡眠。$B我不用一言一语便评判何为公正。$B他们说，美从不在事物本身，而永远在我之中。$B我是什么？在巢穴之内寻找我，而非其外。', 0),
(931430, '每个生命都是一个季节，每个季节都会结束。有人惧怕收割；而收割者照料着它。$B$B作为死神，你将用刀刃与镰刀斩断敌人，并聚集倒下者的力量，支撑你打完整场战斗。$B$B收割者祖尔拉贾在试炼谷守望巨魔的亡者。去营地东边的墓地找他。', 0);

-- 9302430 Soul Harvest: the Reaper letter item, with the name, look and description of CoA's Reaper letter 650151 and the item fields of the Valley letter 54016 (SOURCED-CACHE itemcache).
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `ItemLevel`, `maxcount`, `stackable`, `bonding`, `description`, `PageText`, `Material`)
VALUES
(9302430, 12, 0, '灵魂收割', 142197, 1, 0, 0, 1, 1, 1, '一封用黑色皮革装订的阴森信件，似乎会吸走周围的光线，并带有秋末的气息。', 931430, 0)
ON DUPLICATE KEY UPDATE `class` = VALUES(`class`), `subclass` = VALUES(`subclass`), `name` = VALUES(`name`), `displayid` = VALUES(`displayid`), `Quality` = VALUES(`Quality`), `Flags` = VALUES(`Flags`), `ItemLevel` = VALUES(`ItemLevel`), `maxcount` = VALUES(`maxcount`), `stackable` = VALUES(`stackable`), `bonding` = VALUES(`bonding`), `description` = VALUES(`description`), `PageText` = VALUES(`PageText`), `Material` = VALUES(`Material`);

-- ---------------------------------------------------------------------------
-- 6. Quests
-- ---------------------------------------------------------------------------
-- The Ranger's Path (200008) carries the Northshire copy's map point (-8799.29, -412.93) in the cache;
-- it points at Beaky's post here, the quest's own target (DERIVED). The Stolen Power Core (200096):
-- ObjectiveText1 is '0' in the cache (a CoA data quirk on its seven copies only); left blank.
-- RewardNextQuest (the next step is offered at turn-in): questcache NextQuestInChain where the next quest is in
--   this file: 200134->200135, 200135->200136, 200049->200050, 200050->200051, 200008->200009, 200009->200010,
--   200095->200096, 200096->200097, 200029->200030.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(52000, 2, 2, 2, -526, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '战士之怒', '前往试炼谷寻找穆卡卡。', '有人让我在你回来时立刻把这个交给你，年轻的野蛮人。它似乎是一块刻有兽人战争符文的原始石板，符文脉动着几乎无法抑制的怒火。石头散发着狂野的力量，似乎来自穆卡卡，他在试炼谷传授野蛮人之道。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找穆卡卡。', 0, 0, 0, 0, 0, 0, 0, 0, 54000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52001, 2, 2, 2, -516, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '猩红之术', '前往试炼谷寻找织肉者切拉。', '有人让我在你回来时立刻把这个交给你，年轻的血法师。它似乎是一卷沾满血迹的卷轴，脉动着黑暗魔法，散发着铁锈和禁忌力量的气息。似乎来自织肉者切拉，她在试炼谷修行这些猩红之术。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找织肉者切拉。', 0, 0, 0, 0, 0, 0, 0, 0, 54001, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52002, 2, 2, 2, -522, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '虚空低语', '前往试炼谷寻找拉格拉·枯手。', '有人让我在你回来时立刻把这个交给你，年轻的邪教徒。它似乎是一卷扭动着的卷轴，上面覆盖着在不被直接注视时会变换的符号。奇怪的耳语从里面传出，似乎来自拉格拉·枯手，她在试炼谷与禁忌力量沟通。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找拉格拉·枯手。', 0, 0, 0, 0, 0, 0, 0, 0, 54002, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52003, 2, 2, 2, -517, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '邪能束缚', '前往试炼谷寻找暴君格罗斯。', '有人让我在你回来时立刻把这个交给你，年轻的恶魔猎手。它似乎是一份被绿色火焰缠绕的恶魔契约，其地狱般的文字灼烧着阅读者的眼睛。似乎来自暴君格罗斯，他在试炼谷教导他人束缚恶魔之力。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找格里洛克·莫佐格。', 0, 0, 0, 0, 0, 0, 0, 0, 54003, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52004, 2, 2, 2, -529, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '荣誉之盾', '前往试炼谷寻找巢穴中士戈穆克。', '有人让我在你回来时立刻把这个交给你，年轻的守护者。它似乎是一块抛光钢制石板，刻有保护誓言，散发着坚不可摧的防御光环。似乎来自巢穴中士戈穆克，她在试炼谷将自己奉献给了保护他人。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找巢穴中士戈穆克。', 0, 0, 0, 0, 0, 0, 0, 0, 54004, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52005, 2, 2, 2, -518, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '黑暗誓言', '前往试炼谷寻找斯皮罗。', '有人让我在你回来时立刻把这个交给你，年轻的克索诺斯骑士。它似乎是一份被暗影缠绕的文件，带有克索诺斯的印章，散发着冰冷的黑暗。似乎来自萨戈克，他在试炼谷行走于暗影与荣誉之间的危险之路。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找斯皮罗。', 0, 0, 0, 0, 0, 0, 0, 0, 54005, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52006, 2, 2, 2, -521, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '灵魂沟通', '前往试炼谷寻找复生者克拉加。', '有人让我在你回来时立刻把这个交给你，年轻的死灵法师。它似乎是一块由巨人骨雕刻而成的古老石板，刻有低语着亡灵的符文。似乎来自复生者克拉加，他在试炼谷修行这些技艺。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找复生者克拉加。', 0, 0, 0, 0, 0, 0, 0, 0, 54006, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52007, 2, 2, 2, -531, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '元素之怒', '前往试炼谷寻找克鲁尔·碎岩。', '有人让我在你回来时立刻把这个交给你，年轻的仪祭师。它似乎是一卷噼啪作响的原始元素能量卷轴，旋转着微型风暴和火焰。似乎来自克鲁尔·碎岩，他在试炼谷与元素之灵沟通。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找克鲁尔·碎岩。', 0, 0, 0, 0, 0, 0, 0, 0, 54007, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52008, 2, 2, 2, -528, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '烈焰之路', '前往试炼谷寻找格里什纳克·灼痕。', '有人让我在你回来时立刻把这个交给你，年轻的炎术师。它似乎是一份冒着烟的手稿，散发着强烈的热量，火焰在其烧焦的表面舞动。似乎来自格里什纳克·灼痕，他在试炼谷掌握火焰之术。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找格里什纳克·灼痕。', 0, 0, 0, 0, 0, 0, 0, 0, 54008, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52009, 2, 2, 2, -505, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '荒野召唤', '前往试炼谷寻找狼骑兵雅拉。', '有人让我在你回来时立刻把这个交给你，年轻的游侠。它似乎是一本皮革装订的指南，散发着荒野的气息，沾满泥土，留有动物足迹。似乎来自狼骑兵雅拉，那位在试炼谷保护荒野的游侠。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找狼骑兵雅拉。', 0, 0, 0, 0, 0, 0, 0, 0, 54009, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52010, 2, 2, 2, -527, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '古老符文', '前往试炼谷寻找齐娜·铭文解读者。', '有人让我在你回来时立刻把这个交给你，年轻的符文大师。它似乎是一块沉重的石板，刻有发光的符文，脉动着古老的魔法力量。似乎来自齐娜·铭文解读者，那位居住在试炼谷的符文大师。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找莫戈尔·铭文解读者。', 0, 0, 0, 0, 0, 0, 0, 0, 54010, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52011, 2, 2, 2, -525, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '雷霆之声', '前往试炼谷寻找齐姆切因。', '有人让我在你回来时立刻把这个交给你，年轻的风暴使者。它似乎是一份噼啪作响的电流能量手稿，书页内传来低沉的雷声。似乎来自齐姆切因，那位在试炼谷号令暴风的风暴使者。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找齐姆切因。', 0, 0, 0, 0, 0, 0, 0, 0, 54011, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52012, 2, 2, 2, -507, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '太阳祝福', '前往试炼谷寻找潘加乔·日见者。', '有人让我在你回来时立刻把这个交给你，年轻的太阳祭司。它似乎是一份金色经文，散发着温暖的阳光，辐射着神圣的治疗能量。似乎来自潘加乔·日见者，那位将光明带到试炼谷的太阳祭司。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找潘加乔·日见者。', 0, 0, 0, 0, 0, 0, 0, 0, 54012, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52013, 2, 2, 2, -524, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '神圣誓言', '前往试炼谷寻找真理使者奥莫古尔格。', '有人让我在你回来时立刻把这个交给你，年轻的圣殿骑士。它似乎是一份受祝福的文件，散发着神圣光芒，刻有神圣服务的誓言。似乎来自真理使者奥莫古尔格，他在试炼谷担任圣殿骑士。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找真理使者奥莫古尔格。', 0, 0, 0, 0, 0, 0, 0, 0, 54013, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52014, 2, 2, 2, -520, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '机械创新', '前往试炼谷寻找技工小子帕罗德。', '有人让我在你回来时立刻把这个交给你，年轻的工匠。它似乎是一份充满机械设计的技术蓝图，伴随着齿轮滴答作响的声音。似乎来自技工小子帕罗德，那位在试炼谷工作的工匠。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找技工小子帕罗德。', 0, 0, 0, 0, 0, 0, 0, 0, 54014, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52015, 2, 2, 2, -515, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '剧毒之术', '前往试炼谷寻找智者奎斯普。', '有人让我在你回来时立刻把这个交给你，年轻的剧毒术士。它似乎是一本危险的书，散发着异国毒素的气味，绿色蒸汽从书页间渗出。似乎来自智者奎斯普，她在试炼谷研究毒液与解药。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找智者奎斯普。', 0, 0, 0, 0, 0, 0, 0, 0, 54015, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(52016, 2, 2, 2, -523, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 54016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '祖先智慧', '前往试炼谷寻找罗尔乔库。', '有人让我在你回来时立刻把这个交给你，年轻的巫医。它似乎是一卷装饰着部落神像的古老卷轴，嗡鸣着祖先之力和洛阿魔法。似乎来自罗尔乔库，他在试炼谷修行这些古老技艺。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找罗尔乔库。', 0, 0, 0, 0, 0, 0, 0, 0, 54016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(9302430, 2, 2, 2, -508, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '灵魂收割', '前往试炼谷寻找收割者祖尔拉贾。', '有人让我在你回来时立刻把这个交给你，年轻的死神。它似乎是一封黑色皮革装订的阴森信件，似乎会吸走周围的光线。似乎来自收割者祖尔拉贾，他在试炼谷传授死神之道。我建议你在处理这里其他事务之前先读一读它。', '', '前往试炼谷寻找收割者祖尔拉贾。', 0, 0, 0, 0, 0, 0, 0, 0, 9302430, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200107, 2, 3, 3, -526, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 532805, 1, 532806, 1, 395861, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '欢迎加入战团', '杀死戈克，然后回到你的训练师那里。', '是的，$N。很高兴你能加入战团。你可能会想，什么是战团？考虑到你的到来，我还以为你早就知道了。好吧，小$c，这将会是一次残酷的觉醒。战团是所有野蛮人、暴徒和壮汉聚集在一起，竞争看谁是最强壮、最残暴、最强大的个体。那是我们真正考验自己的唯一方式。就是这个！你可能对此很陌生，但绝对没人会对你手下留情。你的第一个考验和其他所有新兵一样。有个家伙一直在捣乱、散布谣言，就因为他不够格，被拒绝加入战团。他叫戈克。杀了他，哈哈哈！如果你能完成这个任务，我会奖励你一把适合你这种菜鸟的武器。活着回来，或者死。', '', '回到你的训练师那里。', 299328, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200020, 2, 3, 3, -516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 661317, 1, 1505015, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '血即力量', '从神秘巨魔那里收集鲜血之书。', '啊，$C。你的日子终于到了。鲜血。你此刻应该已经以某种方式对它相当熟悉了。血即生命。但鲜血，你很快就会明白，也是力量。我要你想象一下，在一个你能控制其他生物体内生命精髓的世界里，你能做到什么。只需一挥手就能碾碎他们的内脏……令人陶醉。假以时日，你会学到更多。现在，我需要你协助我进行自己的研究，通过这个我也能帮你学习。附近有一本书，在恶魔小鬼游荡的洞穴里，由一个奇怪的巨魔拿着，我需要它来进行研究。替我收集它，我相信他们中有人身上带着。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661316, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200074, 2, 3, 3, -522, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 532803, 1, 532804, 1, 532881, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '陷入疯狂！', '杀死肯贾伊。', 'Zug，zug，你在最合适的时机到来了，$N。我听到了彼岸的低语。它告诉我一个对我们事业特别危险的个体。我需要你迅速消灭他们。如果你做到这一点，我会奖励你一把适合上古之神追随者的武器。你要找的人就在巢穴外面。在巫医附近的某个地方。他叫“肯贾伊”。终结他。', '', '回到你的训练师那里。', 299239, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200022, 2, 3, 3, -517, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 727003, 1, 727001, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '步入恶魔之道', '取回卡兹的头骨。', '于是就这样开始了。你好，$N。我已经能感觉到你开始感受到在你血脉中燃烧的残余邪能之力。我羡慕你，曾经有一段时间我还不像现在这样习惯它。你是恶魔猎手，因此，你处于凡人与恶魔之间的边界。然而，不像某些人，你和我不会堕入邪能魔法提供的力量陷阱，而许多其他修行者却常常在不知不觉中堕入其中。也许有一天你甚至会强大到能化身为恶魔形态，但现在，你的邪能强化将奇妙地激发出你真正的潜力。让我说清楚，部落和联盟对我们毫无用处，但他们必须相信我们是他们的盟友，这样我们更伟大的目标才能实现。不要忘记这一点。当一切达到顶点时，不要忘记你真正的效忠对象在哪里。现在，一个考验。一个强大恶魔的头骨，名为卡兹，被放置在周围地区。替我找到它。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661320, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200134, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 200135, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '以力量求和平', '在试炼谷找到工头塔兹里尔。', 'Lok\'tar ogar，$N。我们有很多工作要一起完成，而你，我的朋友，有很多要学！我们是守护者，因此我们的任务就是，字面意义上的，守护艾泽拉斯。从偶尔抢劫路人的恶棍，到对我们人民构成威胁的更可怕的怪物。我们是响应召唤的人。而且，正如我的例子所示，我今天就有这样一个任务给你。如果你能完成它，你就完全准备好进一步训练了。附近有个老工头需要一把新武器。他对附近的小鬼特别有意见……去看看他需要什么。', '', '在试炼谷找到工头塔兹里尔。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200135, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 200136, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '防御优先', '杀死邪恶小鬼，直到你找到一把适合工头塔兹里尔的武器。', 'Zug zug，$N。我看你是来帮忙的，太好了！我需要一把武器，如果你能帮我弄到一把，我会奖励你。附近的邪恶小鬼……我恨它们。它们在山谷里制造了那么多麻烦，我会找任何借口消灭它们！……而我找到了一个绝佳的借口。偶尔，我会看到一个小鬼带着一把刀。我想要它。你能找到的最高品质的。不管要死多少个小鬼才能拿到它。', '', '回到工头塔兹里尔那里。', 0, 0, 0, 0, 0, 0, 0, 0, 662330, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200136, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 0, 2, 25, 0, 0, 0, 0, 0, 0, 0, 0, 245712, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '帮助朋友', '带着成功的消息回到你的训练师那里。', '武器？够好了。我会留着它，作为所有为获取它而被杀死的恶魔的纪念。', '', '带着成功的消息回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200034, 2, 3, 3, -518, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 2000124, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '内在的恶魔', '杀死那个极度懒惰的苦工。', '啊哈，$N，欢迎，你喜欢你的凡人外表吗？时候到了，我们要一步步向艾泽拉斯释放地狱。如你所知，我们数量有限，但我们的队伍会随时间壮大。我想我不需要提醒你，部落的困境不是你首要关心的事。他们只是一个工具，一面盾牌，好让我们推进自己的目标。每一步，每一刻，我们都必须在这个世界上制造混乱，但我们绝不能泄露我们的秘密——我们是恶魔——因此，我有个小任务给你。有个苦工，懒惰到无论你怎么努力都无法让他干活。我的上级让我处理他。我们可以给他加薪，我们可以用棍子打到他听话，我们甚至可以试着说服他工作。但是……杀了他，我们会编个借口说他怎么死的。大概是被蝎子袭击吧。', '', '回到你的训练师那里。', 299225, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200049, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200050, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡的召唤', '找到并与仪式法阵互动。', 'Zug zug，$C。很高兴你今天能来墓地加入我。今天天气不错，不是吗？看来你已经对亡灵有所了解了，你复活死者的能力让我印象深刻。也许你能为我所用，我相信你不会介意。我有一个特别强大的亡灵想要召唤，但我不敢亲自尝试——我太重要了。然而，你在这里成功的话能学到很多。如果你失败了呢？我就干脆把你复活成我的仆从。别想太多。让我在地图上标记我举行仪式的确切位置。你必须收集特定物品才能完成仪式。现在，去吧。', '', '与仪式法阵互动。', 685121, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '找到仪式法阵', '', '', ''),
(200050, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200051, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡在召唤', '杀死邪恶小鬼，拾取他们的骨头、血肉和头骨。', '为了召唤亡灵怪物，我必须把以下材料带到仪式法阵。- 骨头 - 新鲜血肉 - 头骨 附近的邪恶小鬼正好有这些东西。', '', '回到仪式法阵。', 0, 0, 0, 0, 0, 0, 0, 0, 458421, 458422, 458423, 0, 0, 0, 1, 1, 1, 0, 0, 0, '', '', '', ''),
(200051, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 660053, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '亡者的召唤', '杀死亡灵怪物。', '<材料消散成一阵烟雾融入仪式法阵> ……似乎有些不对劲。召唤失败了，再次检查仪式法阵。但要小心，它不稳定。', '', '回到你的训练师那里。', 299232, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200162, 2, 3, 3, -531, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 296200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '熊之道', '杀死4只邪能追猎者。', 'Zug zug，$C。我在试炼谷等待你的到来。你来找我寻求智慧，因此我会给予。成为大师级$C的第一步就是掌握熊之道。每一次精进都会带来新的挑战，但现在，让我们专注于解锁你内心的野性本能意味着什么。熊是巨大、凶猛的生物。它们只知道生存所需的东西，那就是杀戮。想要从一头想要终结你生命的熊手中逃脱，几乎无计可施。通过熊，我们获得野性、凶残和力量，毫无怜悯。通过杀死这里北边的邪能追猎者来向我展示你理解了这一点，我会奖励你。', '', '回到你的训练师那里。', 3102, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200144, 2, 3, 3, -528, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 293203, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '炎术师之道', '击败斯考奇并获取他的心脏。', '火焰在升腾，$N。作为炎术师，你必须确保它不会升腾到吞噬你，否则你会在其中燃烧。我有个任务给你，一个应该能帮助你控制心中狂暴炼狱的任务。一群绝望的炎术师释放了他们无法控制的力量，他们把他束缚在燃烧之刃集会所附近的营火中。这个元素叫斯考奇，我会在地图上标记他的位置。杀了他，把心脏带给我。Lok\'tar ogar！', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 662331, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200008, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200009, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -493.5, -4296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '游侠之路', '在试炼谷找到塔敦的猎鹰。', '成为游侠不仅仅是拿起弓，或在树荫下战斗，$n。成为游侠，其核心意味着你与荒野有着深刻的联系。你是它的守护者。我派我的猎鹰尖喙去侦察周围地区，但它还没回来。请找到它，并指引它回到我这里。', '', '在试炼谷找到塔敦的猎鹰。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200009, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200010, 3, 0, 0, 0, 0, 0, 0, 662316, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '突袭！', '杀死可疑的生物。', '附近的灌木丛里有什么东西在沙沙作响。你遭到了攻击！', '', '照料猎鹰。', 299222, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200010, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 0, 2, 70, 0, 0, 0, 0, 0, 662317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 818000, 1, 727000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '猎鹰是朋友', '对猎鹰使用红色药瓶。', '你发现猎鹰身上附着一张纸条，上面写着：<如果你在读这个，你已经找到了我的朋友。纸条上附着一小瓶红色药剂。如果它受伤了，就给它，它会知道接下来该怎么做。>', '', '回到你的训练师那里。', 685011, 0, 0, 0, 1, 0, 0, 0, 662317, 662316, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '照料尖喙的伤口', '', '', ''),
(200112, 2, 3, 3, -527, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 661332, 0, 0, 293202, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '力量符文', '解开刻在符文石上的谜语。', 'Zug zug，$N。很高兴你终于能来加入我，我一直在等待你的到来。今天，给像你这样有抱负的符文大师上一堂简单的解题课。也许你会成功，也许不会。来，我有一个符文。符文上刻着一个谜语。解开谜语，然后回到我这里。要提示？我能告诉你的最好提示就是，这个谜语的答案就在巢穴里。不在外面。你回来时我就知道你解开了没有，别担心。成功的话，我会奖励你。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661330, 661332, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', '', '', ''),
(200095, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 200096, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '你自有你的用处', '协助技工小子帕罗德搞他的工匠把戏。', '你好，$N，很高兴认识你，在你到来之前我就听说过很多关于你的事。你来找我学习，作为$C你已经证明了自己是奥术的勤勉学生。但我们召唤的力量远不止闪电和电流。假以时日，你会明白你的潜力有多深。但现在……我确实有个小任务给你。附近有个叫“技工小子帕罗德”的人，他总是找我帮忙搞他的……工匠把戏……他需要一些闪电，$N，但我很忙。你能去帮帮他吗？', '', '协助技工小子帕罗德搞他的工匠把戏。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200096, 2, 3, 0, -520, 0, 0, 0, 0, 0, 0, 200097, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '被盗的能量核心', '杀死邪恶小鬼，直到其中一个掉落能量核心。', '你好啊，$N！很高兴你的训练师终于派人来帮我了。这是个非常简单的任务，我只需要一些能量！但不幸的是，我的能量核心被附近的一个邪恶小鬼偷走了。你能帮我拿回来吗？', '', '回到技工小子帕罗德那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200097, 2, 3, 0, -525, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 663317, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴使者的任务', '告诉你的训练师你成功了。', '感谢你取回这个能量核心！你现在可以回去告诉你的训练师你为我做了什么。', '', '告诉你的训练师你成功了。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200080, 2, 3, 3, -524, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 52855, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '平静的生活', '参观试炼谷南部山脉中隐藏的雕像。', 'Zug，zug，$N。我一直在等待你的到来。作为圣殿骑士，我们已经晋升到神圣信仰的最高教团，因此我们肩负着相当大的责任。圣骑士和牧师与我们并肩工作，通过圣光维护这个世界的和平，我们每个人，虽然各有微妙不同，都希望再次将圣光带给艾泽拉斯。尽管它有种种危险。我们的道路可能不同，但有人可能会说它更加严苛。成为圣殿骑士意味着要极其精确地控制你的情绪、战斗节奏和心智。为了保持自己的健康，我喜欢在一座强大圣骑士的雕像附近冥想，那座雕像是第三次战争后我们的教团秘密竖立在这里以纪念他的。要到达那里，你需要使用敏捷的移动。请亲自去那里看看。回来时告诉我你的体验。', '', '参观试炼谷南部山脉中隐藏的雕像。', 685037, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '参观隐藏的雕像', '', '', ''),
(200068, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 415000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '巧夺天工！', '收集3块废金属。', 'Zug，zug，$N。今天，我将证明兽人的聪明才智。Lok\'tar ogar！我要为自己造一把枪，如果你帮我，也为你造一把！小鬼洞穴里有一些金属，可以用来为你和我造一把枪。给我收集一些，我就造枪。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 663320, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, '', '', '', ''),
(200026, 2, 3, 3, -515, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 662217, 0, 0, 292200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '毒害世界', '把神秘药剂泼洒在附近的居民身上。', '欢迎，$C。你是来给水井下毒的，可以这么说吗？我总是愿意教导新的、有抱负的剧毒艺术大师，但作为回报，我有时需要帮个忙。这没问题，对吧？看看你周围。有各种肤色的居民。但他们是纯洁的，这很好，他们未受污染。我这里有一瓶我调制的药剂。它的作用，你不必关心。我需要你做的是把它泼在三个特定的人身上；第一，潘加乔·日见者，第二，真理使者奥莫古尔格，第三，复生者内凯。完成后来找我，我会让你的时间值得。', '', '回到你的训练师那里。', 685018, 685019, 685020, 0, 1, 1, 1, 0, 662217, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '潘加乔·日见者', '复生者内凯', '真理使者奥莫古尔格', ''),
(200029, 2, 3, 3, -523, 0, 0, 0, 0, 0, 0, 200030, 1, 0, 0, 0, 0, 0, 0, 0, 16, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '医生来了！', '用1级洛阿酿剂治疗你训练师受伤的朋友。', 'Zug zug，$C。我看你已经对塞拉图斯的力量相当熟悉了。让我来指引你，兄弟。我有个任务，而且是关键任务。根据斥候的消息，我有个朋友在沙漠里被蝎子伤了。我刚得到消息，本会亲自前往，但我相信这个任务对像你这样的人来说再合适不过了。他是个强壮的巨魔。巨魔中的巨魔。老实说，很多巨魔都被那些该死的蝎子伤了。但无论如何，保持警惕。找到我的朋友，用你的洛阿酿剂的力量治疗他，然后回到我这里。', '', '回到你的训练师那里。', 685021, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '拯救希比·贾敏', '', '', ''),
(200030, 2, 3, 3, -523, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 292202, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '谁叫了医生？', '杀死蝎子潜伏者。', '我的同胞们在这里试图处理蝎子的问题。这比看起来更危险。我不是第一个受伤的。我只能向洛阿祈祷我没有中毒。但我确实受伤了。谢谢你治疗我，兄弟。哦，不！看你后面，兄弟！一只蝎子回来完成它的任务了！', '', '回到你的训练师那里。', 299224, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(9302431, 2, 3, 3, -508, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 540070, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '暗影之地的召唤', '拜访试炼谷的老布洛克萨尔。', '再冲我头盔咧嘴笑，这两把刀就要找到你的胸口了，$N。……你很胆大，兄弟。我能感觉到你是来找我学习的。我今天有个简单的任务给你，年轻的$C。山谷里有个老兽人已近末日。在他巅峰时期，他是战场上的巨兽，夺走了许多生命。但现在，他坐在营地东边的墓地旁度过余生。他会死，暗影之地会收走他。但今天还不是他的日子。然而，我能感觉到他渴望离开这个位面，但他不知道离开后会面对什么。你可能没想到会有这样的任务，但我想谦卑地请你去看望他，聊一聊。', '', '回到你的训练师那里。', 685022, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '与老布洛克萨尔交谈', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (52000, 52001, 52002, 52003, 52004, 52005, 52006, 52007, 52008, 52009, 52010, 52011, 52012, 52013, 52014, 52015, 52016, 200008, 200009, 200010, 200020, 200022, 200026, 200029, 200030, 200034, 200049, 200050, 200051, 200068, 200074, 200080, 200095, 200096, 200097, 200107, 200112, 200134, 200135, 200136, 200144, 200162, 9302430, 9302431);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(52000, 0, 2048, 788, 1, 0),
(52001, 0, 524288, 788, 1, 0),
(52002, 0, 16777216, 788, 1, 0),
(52003, 0, 8192, 788, 1, 0),
(52004, 0, 131072, 788, 1, 0),
(52005, 0, 65536, 788, 1, 0),
(52006, 0, 4194304, 788, 1, 0),
(52007, 0, 1073741824, 788, 1, 0),
(52008, 0, 8388608, 788, 1, 0),
(52009, 0, 1048576, 788, 1, 0),
(52010, 0, 2147483648, 788, 1, 0),
(52011, 0, 32768, 788, 1, 0),
(52012, 0, 67108864, 788, 1, 0),
(52013, 0, 262144, 788, 1, 0),
(52014, 0, 134217728, 788, 1, 0),
(52015, 0, 268435456, 788, 1, 0),
(52016, 0, 4096, 788, 1, 0),
(9302430, 0, 536870912, 788, 1, 0),
(200107, 0, 2048, 52000, 0, 0),
(200020, 0, 524288, 52001, 0, 0),
(200074, 0, 16777216, 52002, 0, 0),
(200022, 0, 8192, 52003, 0, 0),
(200134, 0, 131072, 52004, 0, 0),
(200135, 0, 131072, 200134, 0, 0),
(200136, 0, 131072, 200135, 0, 0),
(200034, 0, 65536, 52005, 0, 0),
(200049, 0, 4194304, 52006, 0, 0),
(200050, 0, 4194304, 200049, 0, 0),
(200051, 0, 4194304, 200050, 0, 0),
(200162, 0, 1073741824, 52007, 0, 0),
(200144, 0, 8388608, 52008, 0, 0),
(200008, 0, 1048576, 52009, 0, 0),
(200009, 0, 1048576, 200008, 1, 0),
(200010, 0, 1048576, 200009, 1, 0),
(200112, 0, 2147483648, 52010, 1, 0),
(200095, 0, 32768, 52011, 0, 0),
(200096, 0, 32768, 200095, 0, 0),
(200097, 0, 32768, 200096, 0, 0),
(200080, 0, 262144, 52013, 0, 0),
(200068, 0, 134217728, 52014, 0, 0),
(200026, 0, 268435456, 52015, 1, 0),
(200029, 0, 4096, 52016, 0, 0),
(200030, 0, 4096, 200029, 0, 0),
(9302431, 0, 536870912, 9302430, 0, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (52000, 52001, 52002, 52003, 52004, 52005, 52006, 52007, 52008, 52009, 52010, 52011, 52012, 52013, 52014, 52015, 52016, 200008, 200009, 200010, 200020, 200022, 200026, 200029, 200030, 200034, 200049, 200050, 200051, 200068, 200074, 200080, 200095, 200096, 200097, 200107, 200112, 200134, 200135, 200136, 200144, 200162, 9302430, 9302431);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(52000, 'Lok\'tar，年轻的战士！战斗之火在你眼中燃烧，我能感觉到原始怒火在你的血脉中奔涌。你选择了野蛮人的古老道路。$B$B作为野蛮人，你将学会将内心最深处的狂怒化为粉碎盔甲与骨骼的致命打击。你的狂战士之怒将使你在战斗中几乎不可阻挡，而荒野之灵则以致命的精准指引你的攻击。$B$B这条道路要求你拥抱内心的野兽，同时保持足够的控制力来区分敌友。你的怒火将是你最强大的武器，但它绝不能吞噬你的荣誉。刻苦训练，更勇猛地战斗，让你的敌人尝到部落的怒火。$B$B欢迎加入狂战士的兄弟会，战士。愿你的怒火永恒燃烧！'),
(52001, '血呼唤着血，而你的血以超越凡人理解的力量回应。你选择了走上猩红之路，掌握血魔法的禁忌之术。$B$B作为血法师，你将学会以生命力换取纯粹的魔法之力，将生命精髓转化为毁灭性的法术，可以抽干敌人或让盟友超越自然极限。每一滴洒出的血都成为你武器库中的利器。$B$B这种魔法要求不断的牺牲——你自己的血、敌人的血、必要时愿意献身的盟友的血。但对于那些勇敢到愿意付出这个代价的人来说，回报超越了普通的法术施放。$B$B永远记住，没有智慧的力量只会导致毁灭。用这些天赋服务于部落，愿敌人的鲜血为我们的胜利助燃。'),
(52002, '既然你加入了我们的行列，低语变得更响了。上古存在欢迎又一位虔诚的仆人，一个心智能够理解低等生物不敢承认的真相的人。$B$B作为邪教徒，你将学会与在第一次黎明之前就存在的远古实体沟通，通过危险的契约和诡异智慧获得力量。你的魔法将触及文明本身之前的力量。$B$B这些知识伴随着巨大的风险——低语能将脆弱的心智逼向疯狂，而你所接触的存在丝毫不关心凡人的事务。但对于那些拥有足够精神毅力的人来说，宇宙本身的秘密触手可及。$B$B仔细聆听我教你的东西，因为上古存在一直在注视。好好侍奉它们，它们将赐予你超乎想象的力量。'),
(52003, '邪能火焰如今在你体内燃烧，它们在饥渴。你选择成为恶魔猎手，不是反抗军团的力量，而是去驾驭它。曾经试图奴役你的力量，如今屈服于你的意志。$B$B作为恶魔猎手的一员，你将通过支配和契约束缚恶魔精髓，从扭曲虚空中撕扯出地狱盟友并锁链于你的命令之下。你驾驭的每一个恶魔都是你至高地位的证明，一件由腐化本身锻造的武器。$B$B这条道路不是在救赎与诅咒之间寻求平衡。它完全抛弃了这种幻想。邪能低语不是诱惑，它们是真相，为那些足够无情去接受它的人提供力量。弱者堕入腐化；强者塑造腐化。$B$B记住你为什么拥抱这份力量：不是为了救赎，不是为了克制，而是为了至高无上。让邪能吞噬犹豫、怜悯和怀疑。愿你的火焰灼烧这个世界，直到只剩下那些足够强大去承受的人。'),
(52004, '守护之灵认你为它们选中的勇士。你接受了最高贵的使命——成为永恒的守护者，将他人的安危置于自身之上。$B$B作为守护者，你将学会成为一座活的堡垒，你的防御技巧创造出任何敌人都无法突破的屏障。你的保护魔法将庇护整个队伍免受伤害，而你坚定的存在会在盟友心中激发勇气。$B$B这条道路要求无私的牺牲——你将承受痛苦以使他人不必承受，面对死亡以使他人得以生存。荣耀往往绕过那些阻止灾难而非制造灾难的人，但没有比保护无辜生命更高的荣誉了。$B$B部落非常需要你的保护，守护者。准备好捍卫最重要的东西。'),
(52005, '暗影拥抱你，而荣誉指引你。你选择了最矛盾的的道路——以黑暗服务于光明，成为克索诺斯骑士。$B$B作为克索诺斯骑士，你将学会在保持道德原则的同时引导虚空能量和暗影魔法。你的黑暗技巧将迷惑那些期待神圣魔法的敌人，而你正义的目的证明了他人的禁忌手段是正当的。$B$B这条道路要求绝对的道德清晰——你绝不能让黑暗吞噬你的目标，即使你从暗影本身汲取力量。你的誓言约束你以任何必要的手段保护无辜者。$B$B欢迎加入教团，暗影骑士。愿你的黑暗之光指引他人穿越最深的黑夜。'),
(52006, '死亡认你为它忠实的仆人，一个理解终结只是新的开始的人。你选择了成为世界之间的牧者。$B$B作为死灵法师，你将学会与死者交谈，复活骷髅仆从，操纵生与死的精髓。但永远记住，这份力量的存在是为了维护自然秩序，而非嘲弄它。$B$B无知者恐惧死灵法术，只看到腐化和邪恶。但真正的死灵法师充当生死之间边界的守护者，确保死者安息，同时他们的智慧在需要时帮助生者。$B$B祖先们低语着对你选择的认可。尊重死者，服务生者，记住死亡不是要恐惧的敌人，而是要尊重的老师。'),
(52007, '原始元素以原始怒火在你体内汹涌！你选择了拥抱创世本身最根本的力量，成为土、风、火、水最纯粹形态的导管。$B$B作为仪祭师，你将学会以空前的力量号令元素魔法。你的法术将召唤火山爆发、毁灭性地震、飓风级狂风和汹涌洪水。现实的基石本身将回应你的呼唤。$B$B这份力量来自世界的根基本身，比任何凡人设计的魔法都更古老、更危险。元素丝毫不关心文明——它们只回应力量和尊重。显露弱点，它们就会吞噬你。$B$B原始力量已接受你为它们的勇士。愿你证明自己配得上驾驭塑造艾泽拉斯本身的基本力量。'),
(52008, '火焰以舞蹈来迎接它的新主人！你拥抱了纯粹毁灭与重生之路，选择成为最具毁灭性形态的元素火焰的驾驭者。$B$B作为炎术师，你将学会召唤比龙息更炽热的炼狱，从天降下将战场化为玻璃的火雨，只需一个念头就能将敌人化为灰烬。火焰将成为你忠实而可怕的仆人。$B$B永远记住，火既是毁灭者也是创造者——它清除枯死的植被让新生命得以繁茂，净化腐化，为需要的人提供温暖和光明。尊重它的双重本质，它就会好好为你服务。$B$B火焰欢迎它们的新主人。愿你的火焰燃烧明亮，愿你的敌人燃烧得更旺！'),
(52009, '荒野认出了自己的同类！我能从你眼中看到荒野的召唤，那种标志着真正游侠的与自然的深刻联系。你选择了成为未驯服之地的守护者。$B$B作为游侠，你将学会在任何地形中潜行移动，像兄弟一样与野兽沟通，从暗影中以致命的精准出击。森林将隐藏你，山脉将庇护你，动物将协助你。$B$B这条道路要求对自然世界及其所有生物的深刻尊重。你将学会与自然和谐共处，同时保护它免受那些为私利而剥削或摧毁它的人。$B$B荒野之灵欢迎它们的新保护者。愿你的箭矢飞行精准，愿你的道路对心怀不轨之人永远隐藏。'),
(52010, '古老的力量认出了你的价值！你选择了掌握有思维的生物所知的最古老魔法形式——将力量束缚于石头和钢铁的符文铭刻之术。$B$B作为符文大师，你将学会雕刻比创造它们的文明更持久的魔法公式。你的附魔将被写入现实的织锦中，创造出在其他魔法消退后仍长久持续的效果。$B$B这门艺术要求绝对的精确和耐心——一条错位的线可以将守护变成武器，而完美的执行则创造出看似不可能的奇迹。你的工具很简单，但你的知识必须渊博。$B$B诞生符文魔法的原始力量认可你的价值。愿你的铭刻完美无瑕，愿你的附魔永恒不朽。'),
(52011, '雷霆翻滚着迎接它的新勇士！风暴之灵选择了你去驾驭它们的怒火，成为风与闪电本身的大师。$B$B作为风暴使者，你将学会从晴空中召唤暴风雨，呼唤下能粉碎山岳的闪电，乘着风本身投入战斗。大气本身将成为你的武器。$B$B风暴魔法如同暴风雨本身一样原始而狂野。你必须学会驾驭它的怒火而不被它吞噬，引导它的力量而不在它的混乱本质中迷失自己。尊重风暴，它就会忠诚地为你服务。$B$B暴风之灵欢迎它们的新主人。愿你的闪电永不偏离目标，愿你的风带你迅速走向胜利！'),
(52012, '圣光以光辉的温暖拥抱你！你选择了成为神圣治疗的容器，在一个太常被冲突和绝望所笼罩的世界中成为希望的灯塔。$B$B作为太阳祭司，你将学会引导黎明本身的纯净力量，治愈他人认为致命的伤口，净化已在凡人灵魂中扎根的腐化，呼唤只燃烧邪恶的净化之火。$B$B这个使命要求坚定不移的慈悲和对保护生命的绝对奉献。你将耗尽自己治疗陌生人，冒着生命危险保护无辜者，面对那些会让弱小灵魂恐惧逃窜的黑暗。$B$B永恒的太阳祝福你神圣的使命。愿你的光芒永不黯淡，愿你永远为迷失在最深黑夜中的人带来希望。'),
(52013, '神圣正义如熔钢般流经你！你已宣誓圣殿骑士的神圣誓言，选择成为服务于正义本身的圣战士。$B$B作为圣殿骑士，你将学会将神圣力量引导为对邪恶的毁灭性打击，用受祝福的魔法治疗盟友，在黑暗威胁要吞没世界时作为不可动摇的信仰支柱屹立不倒。$B$B这个使命要求绝对的道德清晰和对正义的不懈奉献。你必须是法官和行刑者、治疗者和保护者，全部由超越凡人理解的神圣智慧指引。$B$B圣光本身已选择你为它在部落中的勇士。愿你的信仰成为你的力量，你的信念成为你的武器，你的正义成为你永恒的指引。'),
(52014, '辉煌的创新在你脑海中迸发！你选择了走上连接魔法与机械的道路，创造出单独一门艺术无法实现的奇迹。$B$B作为工匠，你将学会建造帮助盟友、迷惑敌人、展示创造性思维应用于实际问题的装置。你的发明将证明进步与传统可以携手并进。$B$B这条道路既需要技术知识也需要创造性灵感。你必须先了解事物如何运作，才能让它们运作得更好，但真正的创新来自看到他人错过的可能性。$B$B发明之灵对你的选择微笑。愿你的装置在你最需要时永不故障，愿你的创新好好服务于部落。'),
(52015, '致命的平衡流经你的理解！你选择了掌握毒素的双重本质——它们伤害的力量以及正确使用时同等的治愈力量。$B$B作为剧毒术士，你将学会调配能击倒最强大敌人的毒药，但也创造能拯救他人认为无望生命的解药和治疗药剂。每种毒素都有其解药，只要理解其中的原理。$B$B这些知识承载着巨大的责任——杀死腐化野兽的同一化合物可能拯救中毒的孩子。你的智慧必须指引何时释放死亡，何时保全生命。$B$B自然平衡认可你的理解。愿你的毒液对我们的敌人精准命中，愿你的解药为我们的盟友带来治愈。'),
(52016, '洛阿神欢迎它们在凡人世界的新声音！你选择了作为祖先智慧的容器，架起灵魂领域与生者之地的桥梁。$B$B作为巫医，你将学会通过仪式和献祭引导洛阿神的力量，用灵魂魔法治疗，用超越死亡本身的诅咒妖术对付敌人。祖先将在祝福和审判中指引你的双手。$B$B这个神圣的使命要求在适应现代需求的同时尊重古老的方式。你必须作为你人民的治疗者、顾问和精神导师，为那些无法听到洛阿声音的人解读它们的意志。$B$B你的魔法不仅服务于个人需求，还服务于整个社群的精神健康。$B$B祖先智慧欢迎它的新守护者。愿洛阿指引你的脚步，愿你的魔法以同等的敬意服务于生者和死者。'),
(9302430, '所以戈尔内克把你派到祖尔拉贾这里来了。很好。$B$B每个灵魂都是庄稼，兄弟，每种庄稼都有它的季节。死神学会何时收割，何时让它生长。你将代表部落挥舞镰刀，而倒下者的灵魂将低语告诉你该往哪里挥砍。$B$B靠近点。第一课在等着你。'),
(200107, ''),
(200020, '一个血巫师？$B$B有趣……$B$B好吧，经过进一步检查，这本书毫无价值。你可以留着它。$B$B以后你更强壮的时候再回来找我。也许我们可以再次合作。'),
(200074, ''),
(200022, '你可能想知道我为什么让你取回这个头骨。$B$B恶魔头骨往往是巨大邪能力量的容器。今天，我把这个给你。$B$B不过，如果你愿意，我可以将这个头骨的力量注入一把强大的剑中。$B$B选择权在你，无论你选择什么，它都会好好为你服务。'),
(200134, ''),
(200135, ''),
(200136, ''),
(200034, '好，好。你可能会注意到，有些人会试图说服苦工去干活。有些人甚至会使用武力，但从不致命。$B$B这些对我们来说不是选项，$C。他活该去死，还有很多人也活该。$B$B作为你血腥成功的纪念，我送给你一件强大的装备，在地狱之火中锻造。Lok\'tar ogar，或者什么的。啊哈！'),
(200049, '<仪式法阵随着死灵能量脉动>'),
(200050, '<仪式法阵开始喷发。怪物正在被召唤>'),
(200051, '好吧，这正是我预料到的。$B$B但是，嘿，你没死。你已经是个更好的死灵法师了！$B$B来，我派了其他学徒去收集你战斗的残骸，他们做了这个。$B$B拿着它，从我眼前消失。'),
(200162, '啊哈！你已经向我证明了你真正强大。为此，我奖励你一个熊本身的象征。愿它在你的旅途中指引你，并赋予你战胜敌人的力量。'),
(200144, ''),
(200008, '这似乎就是那只猎鹰，看起来受伤了。'),
(200009, '猎鹰看起来很痛苦。一定是那个可疑的生物袭击了它！'),
(200010, '谢谢你找到尖喙。他已经回到我身边，和以前一样健康。$B$B我已经派他执行又一次侦察任务了。$B$B……你说在尖喙附近看到了一个奇怪的生物，它还攻击了你？那一定就是伤害我孩子的生物。$B$B我得进一步调查这件事。根据你的描述，不管这是什么，它都不是杜隆塔尔的原生物。'),
(200112, ''),
(200095, ''),
(200096, ''),
(200097, ''),
(200080, ''),
(200068, '嗯，这太完美了！$B$B我用这些金属为我完成了一把新枪，而且，你猜怎么着，我也给你做了一把！$B$B拿着它，祝你过得愉快！'),
(200026, '我知道你在想我为什么让你做这件事。$B$B到时候，你会明白的。$B$B现在没有什么其他要担心的了。我给你做了一份类似的药剂，带上它，明智地使用。$B$B再会，$N。'),
(200029, '谢谢你！我现在感觉好多了。我能感觉到洛阿了。'),
(200030, '希比告诉了我你做的事。$B$B我为你骄傲，兄弟。$B$B拿着这个。'),
(9302431, '你可能没想到会有这样的任务，$N。但重要的是要明白，暗影之地召唤那些准备好的人，知道何时收取灵魂，与灵魂的回收本身一样重要。$B$B为了帮助我们的朋友，我将奖励你这双靴子。愿它们好好为你服务，它们被附魔，可以让你在水面上行走。');

DELETE FROM `quest_request_items` WHERE `ID` IN (52000, 52001, 52002, 52003, 52004, 52005, 52006, 52007, 52008, 52009, 52010, 52011, 52012, 52013, 52014, 52015, 52016, 200008, 200009, 200010, 200020, 200022, 200026, 200029, 200030, 200034, 200049, 200050, 200051, 200068, 200074, 200080, 200095, 200096, 200097, 200107, 200112, 200134, 200135, 200136, 200144, 200162, 9302430, 9302431);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(52000, '我感觉到原始怒火在你体内觉醒，战士。所以你想学习野蛮人的怒火与荒野战斗之道？'),
(52001, '猩红之术在召唤你，我明白了。所以你想掌握血魔法，将生命本身作为武器？'),
(52002, '低语在你面前变得更加强烈。所以你想侍奉上古存在，学习邪教徒的禁忌之术？'),
(52003, '邪能自你的灵魂中散发出来，战士。所以你想成为恶魔猎手，号令恶魔之力？'),
(52004, '你的保护光环闪耀明亮，年轻人。所以你想成为守护者，为他人抵挡一切伤害？'),
(52005, '暗影与荣誉都在召唤你，我感觉得到。所以你想加入克索诺斯骑士，以黑暗服务于光明？'),
(52006, '亡者之灵在你周围低语。所以你想成为死灵法师，在世界之间引导灵魂？'),
(52007, '元素回应你的存在，战士。所以你想成为仪祭师，号令自然的原始力量？'),
(52008, '火焰在你身上认出了同类的灵魂。所以你想成为炎术师，掌握毁灭与重生之术？'),
(52009, '荒野在召唤你的心，流浪者。所以你想成为游侠，保护艾泽拉斯的荒野之地？'),
(52010, '古老的力量在你面前涌动。所以你想成为符文大师，将魔法刻入石头与钢铁？'),
(52011, '雷霆在你靠近时轰鸣，唤风者。所以你想成为风暴使者，号令风与闪电？'),
(52012, '神圣光芒从你的存在中散发出来。所以你想成为太阳祭司，以黎明的力量治愈？'),
(52013, '神圣正义在你体内燃烧，勇士。所以你想成为圣殿骑士，作为圣战士服役？'),
(52014, '创新在你脑海中迸发，建造者。所以你想成为工匠，将魔法与机械融合？'),
(52015, '毒素与解药的平衡在召唤你。所以你想成为剧毒术士，掌握毒药与治愈？'),
(52016, '洛阿低语你的名字，灵魂行者。所以你想成为巫医，充当世界之间的桥梁？'),
(9302430, '收割在召唤你，$N。你把信带来了吗？'),
(200107, ''),
(200020, '你做得很好，兄弟。你再说一遍是谁拿着这本书的？'),
(200074, ''),
(200022, '你做得很好，$N。'),
(200134, ''),
(200135, ''),
(200136, ''),
(200034, ''),
(200049, ''),
(200050, '<你把材料放在仪式法阵上>'),
(200051, ''),
(200162, ''),
(200144, ''),
(200008, ''),
(200009, ''),
(200010, 'Lok\'tar，$N。你做得很好。'),
(200112, ''),
(200095, ''),
(200096, ''),
(200097, ''),
(200080, ''),
(200068, '你找到废金属了吗？'),
(200026, '欢迎回来。我让你做的事完成了吗？'),
(200029, ''),
(200030, ''),
(9302431, '');

-- Map markers the texts promise ("Let me mark your map", "I will mark his location"): the target spawn;
-- the heart of Scorch is item objective 4.
DELETE FROM `quest_poi` WHERE `QuestID` IN (200049, 200144);
INSERT INTO `quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`)
VALUES
(200049, 0, 0, 1, 4, 0, 0, 1),
(200144, 0, 4, 1, 4, 0, 0, 1);

DELETE FROM `quest_poi_points` WHERE `QuestID` IN (200049, 200144);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`)
VALUES
(200049, 0, 0, -232, -4330),
(200144, 0, 0, -205, -4401);

-- ---------------------------------------------------------------------------
-- 7. Who offers and who takes them back
-- ---------------------------------------------------------------------------
DELETE FROM `creature_queststarter` WHERE `quest` IN (52000, 52001, 52002, 52003, 52004, 52005, 52006, 52007, 52008, 52009, 52010, 52011, 52012, 52013, 52014, 52015, 52016, 200008, 200009, 200010, 200020, 200022, 200026, 200029, 200030, 200034, 200049, 200050, 200051, 200068, 200074, 200080, 200095, 200096, 200097, 200107, 200112, 200134, 200135, 200136, 200144, 200162, 9302430, 9302431);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(3143, 52000),
(3143, 52001),
(3143, 52002),
(3143, 52003),
(3143, 52004),
(3143, 52005),
(3143, 52006),
(3143, 52007),
(3143, 52008),
(3143, 52009),
(3143, 52010),
(3143, 52011),
(3143, 52012),
(3143, 52013),
(3143, 52014),
(3143, 52015),
(3143, 52016),
(502810, 200008),
(9300202, 200009),
(9300202, 200010),
(502921, 200020),
(502760, 200022),
(50288, 200026),
(50296, 200029),
(9300203, 200030),
(50278, 200034),
(502925, 200049),
(502872, 200068),
(502832, 200074),
(9300200, 200080),
(50277, 200095),
(502872, 200096),
(502872, 200097),
(502953, 200107),
(502912, 200112),
(502791, 200134),
(11378, 200135),
(11378, 200136),
(503402, 200144),
(50290, 200162),
(3143, 9302430),
(501296, 9302431);

DELETE FROM `creature_questender` WHERE `quest` IN (52000, 52001, 52002, 52003, 52004, 52005, 52006, 52007, 52008, 52009, 52010, 52011, 52012, 52013, 52014, 52015, 52016, 200008, 200009, 200010, 200020, 200022, 200026, 200029, 200030, 200034, 200049, 200050, 200051, 200068, 200074, 200080, 200095, 200096, 200097, 200107, 200112, 200134, 200135, 200136, 200144, 200162, 9302430, 9302431);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(502953, 52000),
(502921, 52001),
(502832, 52002),
(502760, 52003),
(502791, 52004),
(50278, 52005),
(502925, 52006),
(50290, 52007),
(503402, 52008),
(502810, 52009),
(502912, 52010),
(50277, 52011),
(9300201, 52012),
(9300200, 52013),
(502872, 52014),
(50288, 52015),
(50296, 52016),
(9300202, 200008),
(9300202, 200009),
(502810, 200010),
(502921, 200020),
(502760, 200022),
(50288, 200026),
(9300203, 200029),
(50296, 200030),
(50278, 200034),
(502925, 200051),
(502872, 200068),
(502832, 200074),
(9300200, 200080),
(502872, 200095),
(502872, 200096),
(50277, 200097),
(502953, 200107),
(502912, 200112),
(11378, 200134),
(11378, 200135),
(502791, 200136),
(503402, 200144),
(50290, 200162),
(501296, 9302430),
(501296, 9302431);

DELETE FROM `gameobject_queststarter` WHERE `quest` IN (200050, 200051);
INSERT INTO `gameobject_queststarter` (`id`, `quest`)
VALUES
(9301200, 200050),
(9301200, 200051);

DELETE FROM `gameobject_questender` WHERE `quest` IN (200049, 200050);
INSERT INTO `gameobject_questender` (`id`, `quest`)
VALUES
(9301200, 200049),
(9301200, 200050);

-- ---------------------------------------------------------------------------
-- 8. Loot
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE (`Entry`, `Item`) IN ((3101, 662330), (3101, 458421), (3101, 458422), (3101, 458423), (3101, 661417), (9300204, 661316), (9300205, 662331));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(3101, 662330, 0, 33, 1, 1, 0, 1, 1, 'Vile Familiar - Small Sword (Prioritizing Defense 200135; SOURCED-EXILES 33%)'),
(3101, 458421, 0, 45, 1, 1, 0, 1, 1, 'Vile Familiar - Bones (Death Calls 200050; SOURCED-EXILES 45%)'),
(3101, 458422, 0, 55, 1, 1, 0, 1, 1, 'Vile Familiar - Fresh Flesh (Death Calls 200050; SOURCED-EXILES 55%)'),
(3101, 458423, 0, 55, 1, 1, 0, 1, 1, 'Vile Familiar - Skull (Death Calls 200050; SOURCED-EXILES 55%)'),
(3101, 661417, 0, 33, 1, 1, 0, 1, 1, 'Vile Familiar - Power Core (The Stolen Power Core 200096; SOURCED-EXILES 33%)'),
(9300204, 661316, 0, 100, 1, 1, 0, 1, 1, 'Mysterious Troll - Tome of Blood (Blood Is Power 200020; unique holder)'),
(9300205, 662331, 0, 100, 1, 1, 0, 1, 1, 'Scorch - Heart of Scorch (The Way of the Pyromancer 200144; unique holder)');

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`, `Idx`) IN ((3101, 1), (3101, 2), (3101, 3), (3101, 4), (3101, 5), (9300204, 0), (9300205, 0));
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(3101, 1, 662330),
(3101, 2, 458421),
(3101, 3, 458422),
(3101, 4, 458423),
(3101, 5, 661417),
(9300204, 0, 661316),
(9300205, 0, 662331);

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (9301201, 9301202, 9301203);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(9301201, 661320, 0, 100, 1, 1, 0, 1, 1, 'CoA Valley of Trials: quest item from Skull of Kaz'),
(9301202, 661330, 0, 100, 1, 1, 0, 1, 1, 'CoA Valley of Trials: quest item from Eye of the Beholder'),
(9301203, 663320, 0, 100, 1, 1, 0, 1, 1, 'CoA Valley of Trials: quest item from Scrap Metal');

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` IN (9301201, 9301202, 9301203);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(9301201, 0, 661320),
(9301202, 0, 661330),
(9301203, 0, 663320);

-- ---------------------------------------------------------------------------
-- 9. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature_addon` WHERE `guid` IN (9003500, 9003501, 9003502, 9003503, 9003504, 9003505, 9003506, 9003507, 9003508, 9003509, 9003510, 9003511, 9003512, 9003513, 9003514, 9003515, 9003516, 9003517, 9003520, 9003521, 9003522, 9003523, 9003524, 9003525, 9003526, 9003527, 9003528, 9003529, 9003530) OR `guid` BETWEEN 9003500 AND 9003699;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`)
VALUES
(9003522, 0, 0, 3, 0, 0, 0, NULL),
(9003524, 0, 0, 8, 0, 0, 0, NULL),
(9003530, 0, 0, 1, 0, 0, 0, NULL);

DELETE FROM `creature` WHERE `guid` IN (9003500, 9003501, 9003502, 9003503, 9003504, 9003505, 9003506, 9003507, 9003508, 9003509, 9003510, 9003511, 9003512, 9003513, 9003514, 9003515, 9003516, 9003517, 9003520, 9003521, 9003522, 9003523, 9003524, 9003525, 9003526, 9003527, 9003528, 9003529, 9003530) OR `guid` BETWEEN 9003500 AND 9003699;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9003500, 502953, 1, 0, 0, 1, 1, 1, -638.09, -4234.09, 38.135, 5.585, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Barbarian trainer at the SOURCED-CLIENT turn-in point; under the south pavilion, whose west side is closed by Parod''s wagon and the cliffs, so players come in through its open north and north-east sides; the shield rack behind him; faces out of the north-east side straight toward the start, with Tav''vin 93 deg off his left and nothing ahead within 12 yd'),
(9003501, 50296, 1, 0, 0, 1, 1, 1, -559.49, -4220.23, 41.704, 3.05, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Witch Doctor trainer at the SOURCED-CLIENT turn-in point; in the cooking tent between Zlagk, Galgar and the bubbling cauldron; faces south out of the tent and down the slope into the camp, between the path from Gornek and the start, the Cooking Table 32 deg off his right'),
(9003502, 502760, 1, 0, 0, 1, 1, 1, -584.87, -4125.95, 43.846, 4.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Felsworn trainer at the SOURCED-CLIENT turn-in point; inside the den at the mouth of the corridor to the west chamber, the north wall 2 yd behind him; faces the corridor players come through'),
(9003503, 50277, 1, 0, 0, 1, 1, 1, -625.03, -4207.28, 38.135, 0.7, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Stormbringer trainer at the SOURCED-CLIENT turn-in point; west row of the camp, Mai''ah (kept stock NPC) 2.9 yd to his side; faces the path from Gornek at the den mouth, where the letters are handed out'),
(9003504, 50278, 1, 0, 0, 1, 1, 1, -605.86, -4248.62, 38.956, 1.48, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Knight of Xoroth trainer at the SOURCED-CLIENT turn-in point; by the camp fire north of the start, open ground all round; faces the path from Gornek at the den mouth, where the letters are handed out'),
(9003505, 502791, 1, 0, 0, 1, 1, 1, -569.42, -4274.63, 37.858, 3.05, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Guardian trainer at the SOURCED-CLIENT turn-in point; under the south edge of the tent of the CoA-built Guardian station, the wagon and tool rack behind her and her baskets to her left; faces out of the open south side toward the start, the torch 23 deg off her right'),
(9003506, 9300200, 1, 0, 0, 1, 1, 1, -641.03, -4229.15, 38.135, 5.67, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Templar trainer at the SOURCED-CLIENT turn-in point; under the south pavilion, whose west side is closed by Parod''s wagon and the cliffs, so players come in through its open north and north-east sides; where Frang stood (deleted, 2.03 yd away), near Frang''s stock facing 5.725; looks out of the north-east side toward the start through the gap between Tav''vin and Mu''kaka, each 24 deg off his axis'),
(9003507, 502921, 1, 0, 0, 1, 1, 1, -597.81, -4107.1, 43.847, 5.2, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Bloodmage trainer at the SOURCED-CLIENT turn-in point; west end of the den''s west chamber, the wall 0.7 yd behind her; faces the chamber and the corridor players enter from'),
(9003508, 502810, 1, 0, 0, 1, 1, 1, -591.5, -4209.8, 39.011, 1.93, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Ranger trainer at the SOURCED-CLIENT turn-in point; 1.8 yd off it under the tree east of the den mouth, clear of the bush; faces the path from Gornek at the den mouth, where the letters are handed out'),
(9003509, 502925, 1, 0, 0, 1, 1, 1, -633.42, -4287.44, 39.825, 1.22, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Necromancer trainer at the SOURCED-CLIENT turn-in point; by the spirit healer''s graveyard ("join me in the graveyard"); faces the camp and the start players come from'),
(9003510, 503402, 1, 0, 0, 1, 1, 1, -601.02, -4246.28, 38.956, 1.56, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Pyromancer trainer at the SOURCED-CLIENT turn-in point; by the camp fire north of the start, 5.4 yd from Spi''ro; faces the path from Gornek at the den mouth, where the letters are handed out'),
(9003511, 502832, 1, 0, 0, 1, 1, 1, -602.88, -4113.34, 43.965, 0.45, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Cultist trainer at the SOURCED-CLIENT turn-in point; south lobe of the den''s west chamber, a pillar 1.1 yd behind her; faces the middle of the chamber where players come in'),
(9003512, 9300201, 1, 0, 0, 1, 1, 1, -619.9, -4313.76, 40.291, 1.48, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Sun Cleric trainer at the SOURCED-CLIENT turn-in point; on the rise 60 yd east of the start, the slope climbing 3 yd behind him; faces the camp and the start'),
(9003513, 502872, 1, 0, 0, 1, 1, 1, -628.63, -4221.71, 38.135, 0.7, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Tinker trainer at the SOURCED-CLIENT turn-in point; beside his wagon, which stands behind him and to his left; faces the den path toward Gornek, just clear of the wagon shaft (0.89, straight at Gornek, meets it at 5 yd)'),
(9003514, 50288, 1, 0, 0, 1, 1, 1, -558.66, -4195.2, 46.396, 3.75, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Venomancer trainer at the SOURCED-CLIENT turn-in point; on the slope above the cooking camp, the rock mound south of her; faces the path that runs past the mound down to the camp and Gornek'),
(9003515, 50290, 1, 0, 0, 1, 1, 1, -638.57, -4226.43, 38.137, 0.26, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Primalist trainer at the SOURCED-CLIENT turn-in point; under the south pavilion, whose west side is closed by Parod''s wagon and the cliffs, so players come in through its open north and north-east sides; barrels 1-2 yd behind him; faces north out of the open side, past the east end of Parod''s wagon where the path from Gornek comes in, with Jen''shan more than 30 deg off his right'),
(9003516, 502912, 1, 0, 0, 1, 1, 1, -619.78, -4204.3, 38.135, 0.09, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Runemaster trainer at the SOURCED-CLIENT turn-in point; west row by the jar table; faces north toward the den-mouth side of the camp, where players come down from Gornek, with Ken''jai''s post 3 yd away 33 deg off her left shoulder'),
(9003517, 501296, 1, 0, 0, 1, 1, 1, -627, -4301.5, 40.685, 1.4, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Reaper trainer at an INFERRED post, the troll burial ground east of the camp, beside the mummified dead and the skull pile, the torches 8 yd off his right; faces the camp and the start players come from'),
(9003520, 299239, 1, 0, 0, 1, 1, 1, -617.39, -4202.4, 38.135, 4.87, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Ken''jai''s stock post outside the den "near the witch doctor" (the quest text), with his stock facing; the stock spawn 4912 is deleted'),
(9003521, 299328, 1, 0, 0, 1, 1, 1, -588.83, -4137.63, 41.57, 4.1, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: the Den, SOURCED-CLIENT 200107 objective point in the corridor; faces the passage from the den mouth'),
(9003522, 299225, 1, 0, 0, 1, 1, 0, -691, -4144, 29.986, 1.22, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: asleep against the rock outcrop in the quiet south-west corner of the valley, far from the lumber piles, scorpids 12 yd away ("Scorpid attack, probably")'),
(9003523, 9300202, 1, 0, 0, 1, 1, 0, -493.5, -4297.5, 42.381, 2.42, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: open ground 3 yd east of the bush cluster in the middle of the valley, scouting; faces back toward Wolfrider Yara'),
(9003524, 9300203, 1, 0, 0, 1, 1, 0, -400, -4450, 51.595, 2.31, 300, 0, 0, 35, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: eastern desert among the scorpids, kneeling by the cactus patch; faces the camp players come from'),
(9003525, 299224, 1, 0, 0, 1, 1, 0, -442, -4466, 51.099, 0.36, 60, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: eastern desert, by the Scorpid Worker 9 yd to the west, facing north-east toward Hi''bi: a standing stalker for anyone whose summoned one is lost, 45 yd from Hi''bi and 42 yd from the summon point, beyond its 20 yd detection, so accepting the quest pulls only the summoned one'),
(9003526, 9300204, 1, 0, 0, 1, 1, 0, -85.55, -4206.95, 49.77, 3.93, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Burning Blade Coven (the imp cave), lower west hall among the Felstalkers, 3.4 yd off the Vile Familiar''s walk through the hall (path 47050); faces the way in from the south-east'),
(9003527, 9300204, 1, 0, 0, 1, 1, 0, -126.08, -4333.2, 64.431, 3.89, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: Burning Blade Coven (the imp cave), east gallery inside the entrance passage, 3.5 yd off the Vile Familiar''s walk along the gallery (path 130620); faces the entrance'),
(9003528, 9300205, 1, 0, 0, 1, 1, 0, -205, -4401, 64.781, 2.39, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: canyon before the Burning Blade Coven, east end, beside the campfire he is bound to, 3.2 yd away; faces the canyon mouth players come through'),
(9003529, 685037, 1, 0, 0, 1, 1, 0, -839, -4250, 88.447, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: southern mountains, on the sheltered shelf 7 yd east of the hidden statue, in sight of anyone who reaches it: the walk-in credit for 200080'),
(9003530, 9300206, 1, 0, 0, 1, 1, 0, -640.5, -4288, 40.066, 5.63, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Valley of Trials: sitting on the open ground at the south-west edge of the troll burial ground, facing the skull pile; 7 yd from Kragar and 10 yd from the spirit healer');

DELETE FROM `gameobject` WHERE `guid` IN (7912300, 7912301, 7912302, 7912303, 7912304, 7912305, 7912306, 7912307, 7912308, 7912309, 7912310, 7912311, 7912312, 7912313, 7912314, 7912315, 7912316, 7912317, 7912318, 7912319, 7912320, 7912321, 7912322, 7912323, 7912324, 7912325, 7912326, 7912327, 7912328) OR `guid` BETWEEN 7912300 AND 7912399;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7912300, 9301200, 1, 0, 0, 1, 1, -232, -4330, 65.055, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: canyon before the Burning Blade Coven, open flat ground in the middle of the canyon, the Vile Familiars 18-30 yd round it ("the nearby Vile Familiars")'),
(7912301, 1798, 1, 0, 0, 1, 1, -208, -4400, 64.007, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Valley of Trials: canyon before the Burning Blade Coven, east end: the campfire Scorch is bound to ("a campfire near the Burning Blade Coven")'),
(7912302, 9301201, 1, 0, 0, 1, 1, -596, -4128, 73.631, 1.1, 0, 0, 0.522687, 0.852525, 60, 100, 1, '', 'CoA Valley of Trials: hilltop over the den, above the west chamber'),
(7912303, 9301201, 1, 0, 0, 1, 1, -600, -4150, 76.168, 2.6, 0, 0, 0.963558, 0.267499, 60, 100, 1, '', 'CoA Valley of Trials: hilltop over the den, above the exit passage'),
(7912304, 9301202, 1, 0, 0, 1, 1, -603, -4149, 43.336, 0.8, 0, 0, 0.389418, 0.921061, 60, 100, 1, '', 'CoA Valley of Trials: the Den, south passage toward the exit'),
(7912305, 9301202, 1, 0, 0, 1, 1, -610.5, -4104, 42.413, 5.5, 0, 0, 0.381661, -0.924302, 60, 100, 1, '', 'CoA Valley of Trials: the Den, alcove at the south end of the west chamber'),
(7912306, 9301203, 1, 0, 0, 1, 1, -27, -4240, 68.196, 0.4, 0, 0, 0.198669, 0.980067, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), north-west gallery by the far wall'),
(7912307, 9301203, 1, 0, 0, 1, 1, -45, -4318, 68.22, 2.1, 0, 0, 0.867423, 0.497571, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), north-east gallery, on the slope below the wall'),
(7912308, 9301203, 1, 0, 0, 1, 1, -45, -4270, 68.527, 3.3, 0, 0, 0.996865, -0.079121, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), north gallery beside the passage west'),
(7912309, 9301203, 1, 0, 0, 1, 1, -61, -4232, 62.229, 1.6, 0, 0, 0.717356, 0.696707, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), ledge below Yarrog Baneshadow''s alcove'),
(7912310, 9301203, 1, 0, 0, 1, 1, -75, -4210, 50.458, 4.4, 0, 0, 0.808496, -0.588501, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), lower west hall, west wall'),
(7912311, 9301203, 1, 0, 0, 1, 1, -91, -4206, 50.465, 0.9, 0, 0, 0.434966, 0.900447, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), lower west hall, south of the pit'),
(7912312, 9301203, 1, 0, 0, 1, 1, -109, -4246, 53.845, 5.2, 0, 0, 0.515501, -0.856889, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), foot of the ramp from the lower hall'),
(7912313, 9301203, 1, 0, 0, 1, 1, -149, -4256, 60.321, 2.8, 0, 0, 0.98545, 0.169967, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), south-west passage'),
(7912314, 9301203, 1, 0, 0, 1, 1, -129, -4230, 57.409, 3.9, 0, 0, 0.92896, -0.370181, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), south-west chamber by the west wall'),
(7912315, 9301203, 1, 0, 0, 1, 1, -99, -4300, 61.365, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), middle hall, near Thazz''ril''s pick'),
(7912316, 9301203, 1, 0, 0, 1, 1, -85, -4326, 65.953, 4.7, 0, 0, 0.711473, -0.702713, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), east hall'),
(7912317, 9301203, 1, 0, 0, 1, 1, -125, -4318, 66.079, 0.3, 0, 0, 0.149438, 0.988771, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), east gallery by the Felstalker den'),
(7912318, 9301203, 1, 0, 0, 1, 1, -145, -4366, 67.602, 5.9, 0, 0, 0.190423, -0.981702, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), just inside the entrance passage'),
(7912319, 9301203, 1, 0, 0, 1, 1, -137, -4300, 65.378, 2.5, 0, 0, 0.948985, 0.315322, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), south gallery above the entrance'),
(7912321, 9301203, 1, 0, 0, 1, 1, -155, -4352, 65.991, 1.4, 0, 0, 0.644218, 0.764842, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), entrance passage, south side'),
(7912322, 9301203, 1, 0, 0, 1, 1, -60, -4335, 68.095, 3.6, 0, 0, 0.973848, -0.227202, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), east gallery by the Felstalker den'),
(7912323, 9301203, 1, 0, 0, 1, 1, -74, -4330, 67.582, 0.7, 0, 0, 0.342898, 0.939373, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), east hall, dry ledge on the south-east shore of the pool, between the east-hall piles'),
(7912324, 9301203, 1, 0, 0, 1, 1, -29, -4262, 66.719, 5, 0, 0, 0.598472, -0.801144, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), north gallery by the passage east'),
(7912325, 9301203, 1, 0, 0, 1, 1, -105, -4210, 54.341, 2.2, 0, 0, 0.891207, 0.453596, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), lower west hall, south part'),
(7912326, 9301203, 1, 0, 0, 1, 1, -121, -4222, 54.671, 4.1, 0, 0, 0.887362, -0.461073, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), south-west chamber, north end'),
(7912327, 9301203, 1, 0, 0, 1, 1, -111, -4300, 62.42, 1.9, 0, 0, 0.813416, 0.581683, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), middle hall, south side'),
(7912328, 9301203, 1, 0, 0, 1, 1, -79, -4272, 50.869, 5.6, 0, 0, 0.334988, -0.942222, 120, 100, 1, '', 'CoA Valley of Trials: Burning Blade Coven (the imp cave), lower hall, east end below the ramp'),
(7912320, 9301204, 1, 0, 0, 1, 1, -840.5, -4243, 88.341, 1.75, 0, 0, 0.767544, 0.640997, 300, 100, 1, '', 'CoA Valley of Trials: southern mountains: a flat shelf 45 yd above the valley floor, walled off from the valley by the ridge to its north ("use your agile movements"); faces west along the shelf, the way the ledge path from the valley comes in');

-- ---------------------------------------------------------------------------
-- 10. Scripts
-- ---------------------------------------------------------------------------
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-9003529, 502925, 9300200, 9300201, 9300202, 9300203, 9300206) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(-9003529, 0, 0, 0, 10, 0, 100, 0, 1, 12, 1000, 1000, 1, 0, 33, 685037, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '[KC] Visit - Player in sight within 12 yd - Quest Credit ''A Quiet Life'' at the hidden statue'),
(502925, 0, 0, 0, 8, 0, 100, 0, 685013, 0, 0, 0, 0, 0, 33, 685019, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Kragar the Reanimator - On Spellhit ''Poison the World'' - Quest Credit ''Poisoning the World'' (the text''s Nekai the Reanimator)'),
(9300200, 0, 0, 0, 8, 0, 100, 0, 685013, 0, 0, 0, 0, 0, 33, 685020, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Omogulg the Truthbearer - On Spellhit ''Poison the World'' - Quest Credit ''Poisoning the World'''),
(9300201, 0, 0, 0, 8, 0, 100, 0, 685013, 0, 0, 0, 0, 0, 33, 685018, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Pangajo Sunseer - On Spellhit ''Poison the World'' - Quest Credit ''Poisoning the World'''),
(9300202, 0, 0, 0, 8, 0, 100, 0, 684328, 0, 0, 0, 0, 0, 33, 685011, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Beaky - On Spellhit ''Tend Jo''s Wounds'' (Red Vial) - Quest Credit ''Falcons Are Friends'''),
(9300202, 0, 1, 0, 19, 0, 100, 0, 200009, 0, 0, 0, 0, 0, 12, 299222, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, -488.5, -4296.5, 43.11, 2.42, 'Beaky - On Quest ''A Surprise Attack!'' Accepted - Summon Suspicious Creature from the bushes, attacking the invoker'),
(9300203, 0, 0, 0, 8, 0, 100, 0, 801670, 0, 0, 0, 0, 0, 33, 685021, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Hi''bi Ja''min - On Spellhit ''Loa''s Brew'' Rank 1 - Quest Credit ''The Doctor Is In!'''),
(9300203, 0, 1, 0, 19, 0, 100, 0, 200030, 0, 0, 0, 0, 0, 12, 299224, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, -406, -4444, 50.46, 0.35, 'Hi''bi Ja''min - On Quest ''Who Called For Da Docta?'' Accepted - Summon Scorpid Stalker behind the player, attacking the invoker'),
(9300206, 0, 0, 0, 62, 0, 100, 0, 930303, 0, 0, 0, 0, 0, 33, 685022, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Brokthar - On Gossip Option 0 Selected - Quest Credit ''Call of the Shadowlands''');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 9301200 AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(9301200, 1, 0, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 33, 685121, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ritual Circle - On Gossip Hello - Quest Credit ''Call of Death'''),
(9301200, 1, 1, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 299232, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, -228.5, -4334.5, 64.69, 2.24, 'Ritual Circle - On Gossip Hello - Summon the Undead Monstrosity, attacking the invoker');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 9301200 AND `SourceId` = 1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(22, 1, 9301200, 1, 0, 9, 0, 200049, 0, 0, 0, 0, 0, '', 'Ritual Circle - credit only while ''Call of Death'' is taken'),
(22, 2, 9301200, 1, 0, 9, 0, 200051, 0, 0, 0, 0, 0, '', 'Ritual Circle - summon only while ''Call of the Dead'' is taken'),
(22, 2, 9301200, 1, 0, 29, 1, 299232, 30, 0, 1, 0, 0, '', 'Ritual Circle - summon only when no living Undead Monstrosity is within 30 yd');
