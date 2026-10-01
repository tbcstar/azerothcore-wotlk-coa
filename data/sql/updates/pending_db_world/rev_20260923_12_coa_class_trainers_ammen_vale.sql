-- Conquest of Azeroth class trainers in Ammen Vale: fourteen new trainers for the classes the draenei
-- had in CoA (RACE-CLASS.md: CharBaseInfo.dbc), each dressed and named, and an intro letter for each
-- class that Proenitus hands out once the moth blood (9280) is in. Needs the class kits of
-- rev_20260923_05_coa_class_trainer_core.sql.
--
-- WHERE EACH VALUE COMES FROM
--   trainers  new characters (INFERRED): CoA left no trainer, quest or point in Ammen Vale. Names and
--     looks are ct-newzones' picks (plan/newzone_picks.csv), checked unique against every creature name in
--     the world database and the CoA creature cache. Level 10, faction 1638 (the stock Ammen Vale
--     trainers' own), trainer 900000 + class, class menu 930000 + class, all from the core kit.
--   places  hand-placed on the surveyed spots (plan/newzone_picks.csv), each walked again: the floor from
--     surface.floor, surface.check clean, on the navmesh component that joins the start, Proenitus and
--     Aldar, at least 2.5 yd from every NPC, 13 yd from any hostile spawn, 17 yd from the next trainer,
--     never more than two other trainers within 30 yd. The stock trainers Kore, Aurelon and Valaatu keep
--     their deck posts, so the Guardian, Templar and Chronomancer stand beside them on the same deck
--     instead. Each spawn's comment gives its reason and what it faces.
--   looks  stand-ins (no SMSG_MIRRORIMAGE_DATA capture of any trainer exists): each copies a stock draenei
--     NPC's CreatureDisplayInfoExtra look and changes it (listed per trainer in the preset comment), shown
--     through creature_display_preset on the plain draenei player display. Weapons from the same picks.
--   letters  INFERRED, modelled on each class's CoA letter (the Shadowglen one; the Pyromancer has none
--     there, so the Northshire one, 49983): same item look and flags, same quest sort, level, XP and money,
--     (the item cache lacks the Shadowglen letters 650143, 650156 and 650157; their live rows carry the same
--     look and flags as the cached Shadowglen letter 650148, which stands in for them),
--     rewritten for the new trainer, the landmark where the trainer stands, and draenei culture. Giver
--     Proenitus after 9280, as the stock Ammen Vale training quests follow 9280; draenei only
--     (AllowableRaces 1024) and one class each. The turn-in lines are authored (INFERRED).
--
-- Id blocks: creature 9300414-9300432, spawn guids 9004300-9004399, quest
-- and letter item 9302214-9302232, page_text 931214-931232.
-- No stock spawn is moved or deleted.

-- ---------------------------------------------------------------------------
-- 1. Trainers
-- ---------------------------------------------------------------------------
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(9300414, '塞拉斯', '恶魔猎手训练师', 930014, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300416, '阿希尔·天语', '风暴使者训练师', 930016, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300417, '无誓者库洛斯', '克索诺斯骑士训练师', 930017, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300418, '防御者塔鲁恩', '守护者训练师', 930018, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300419, '守备官奥罗沙尔', '圣殿骑士训练师', 930019, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300422, '先知奥拉恩', '时光术士训练师', 930022, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300423, '奥金尼的奥西鲁恩', '死灵法师训练师', 930023, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300424, '派拉尔', '炎术师训练师', 930024, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300425, '玛扎拉', '邪教徒训练师', 930025, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300426, '阿斯特兰', '唤星者训练师', 930026, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300428, '技师博拉恩', '工匠训练师', 930028, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300430, '沉默者索拉希', '死神训练师', 930030, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300431, '艾尔杜尔', '仪祭师训练师', 930031, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300432, '铭文师塔兰', '符文大师训练师', 930032, 10, 10, 0, 1638, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (9300414, 9300416, 9300417, 9300418, 9300419, 9300422, 9300423, 9300424, 9300425, 9300426, 9300428, 9300430, 9300431, 9300432);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(9300414, 0, 16126, 1, 1),
(9300416, 0, 16125, 1, 1),
(9300417, 0, 16125, 1, 1),
(9300418, 0, 16125, 1, 1),
(9300419, 0, 16125, 1, 1),
(9300422, 0, 16125, 1, 1),
(9300423, 0, 16125, 1, 1),
(9300424, 0, 16126, 1, 1),
(9300425, 0, 16126, 1, 1),
(9300426, 0, 16125, 1, 1),
(9300428, 0, 16125, 1, 1),
(9300430, 0, 16126, 1, 1),
(9300431, 0, 16125, 1, 1),
(9300432, 0, 16126, 1, 1);

-- 9300414 Seraath: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei female
--   from Scout Vanura 16797 (display 16726), changed skin (dark), face, hair, hair colour and tendrils; the green
--   demon hunter class set (67449-67456) and the Warglaives of Azzinoth
-- 9300416 Asheer Skyvoice: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei
--   male from Thoralius the Wise 23975 (display 21947), changed skin, face, hair, hair colour and tendrils; keeps
--   the storm-touched mail
-- 9300417 Kuroth the Oathless: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists:
--   draenei male from DK (Draenei Male) 28428 (display 25420), changed skin (fel red, 18), face, hair, hair colour
--   and tendrils; the red Deadly Gladiator's Dreadplate (48364, 48447, 47008, 48459, 47010), bare head and hands
-- 9300418 Defender Taroon: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei
--   male from Shield of Velen 20674 (display 20105), changed skin, face, hair, hair colour and tendrils; a draenei
--   guard cape (display 34407, from the Shattered Sun Warrior look 22918)
-- 9300419 Vindicator Oroshar: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei
--   male from Draenei Vindicator 16996 (display 16602), changed skin, face, hair, hair colour and tendrils; the
--   vindicator circlet (display 6071) and Aldor tabard (display 36117) of the Aldor Vindicator look 17905
-- 9300422 Seer Ohraan: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei male
--   from Anchorite Truuen 17238 (display 16930), changed skin, face, hair colour and tendrils; keeps the anchorite
--   robes
-- 9300423 Ossiruun of the Auchenai: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists:
--   draenei male from Auchenai Doomsayer 21285 (display 20187), changed the teal-blue Auchenai robe, frost mantle
--   and black cape with the black Death-Speaker hood (145457), ashen skin
-- 9300424 Pyraal: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei female from
--   Shattered Sun Magi 25153 (display 22958), changed gender (female instead of male, for variety), face, hair,
--   hair colour and facial features; the Shattered Sun tabard (display 40734) removed, which belongs to the
--   Sunwell and not to Ammen Vale
-- 9300425 Mazhaara: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei female
--   from Soulguard Animator 36516 (display 30169), changed face, hair, hair colour and tendrils; keeps the pale
--   skin; a plain dark cowl (26315), the Shadowsworn Cultist's Shadow Council robe and belt (148789, 150651), a
--   black skirt (153286) and a ritual blade
-- 9300426 Astraan: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei male from
--   Warp-Scryer Kryv 16839 (display 16384), changed skin, face, hair, hair colour and tendrils; keeps the scryer's
--   robes
-- 9300428 Artificer Bolaan: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei
--   male from Technician Halmaha 27711 (display 24761), changed skin, face, hair, hair colour and a clean chin;
--   keeps the monocle and brown gloves; work leathers instead of the yellow Draenei robe Seer Ohraan wears: the
--   leather jerkin 29843 and cream leather trousers 29844 of the Tracker Lyceon look 17141, the grey leather belt
--   29992 and boots 29994 of the Technician Dyvuun look 16260, and no shoulders
-- 9300430 Sorashii the Silent: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists:
--   draenei female from Auchenai Initiate 21284 (display 20183), changed gender (female), skin (pale), face and
--   tendrils; the black Deathmantle hood and mantle (37992, 37994), a black robe (38304), a black cloak (11839)
--   and a scythe
-- 9300431 Elduur: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei male from
--   Berem 16737 (display 17244), changed skin and face; the Earthen Ring feathered headdress, gloves and boots
--   (20013, 18156, 23766), the Evergrove druids' forest-green leathers (35465, 34544, 34545, 34546) and a furbolg
--   totem
-- 9300432 Scribe Taalan: look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: draenei
--   female from Scribe Saalyn 20807 (display 19794), changed skin, face, hair, hair colour and tendrils; keeps the
--   Aldor scribe's robes and cloak
DELETE FROM `creature_display_preset` WHERE `entry` IN (9300414, 9300416, 9300417, 9300418, 9300419, 9300422, 9300423, 9300424, 9300425, 9300426, 9300428, 9300430, 9300431, 9300432);
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`, `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`, `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`)
VALUES
(9300414, 16126, 11, 1, 1, 4, 7, 6, 4, 2, 0, 67449, 67450, 0, 67451, 67455, 67453, 67454, 67456, 67452, 0, 0),
(9300416, 16125, 11, 0, 1, 2, 6, 5, 2, 3, 0, 0, 39324, 0, 39325, 39326, 39327, 0, 39328, 0, 39329, 0),
(9300417, 16125, 11, 0, 1, 18, 8, 2, 10, 5, 0, 0, 48364, 0, 48447, 47008, 48459, 47010, 0, 0, 0, 0),
(9300418, 16125, 11, 0, 1, 5, 3, 7, 1, 6, 0, 968, 34411, 0, 34525, 34668, 34526, 34417, 0, 34669, 34407, 0),
(9300419, 16125, 11, 0, 1, 1, 4, 4, 3, 1, 0, 6071, 17564, 0, 17555, 28805, 18462, 29055, 0, 29056, 0, 36117),
(9300422, 16125, 11, 0, 1, 7, 1, 2, 5, 4, 0, 0, 0, 0, 30513, 24129, 29987, 0, 5728, 0, 0, 0),
(9300423, 16125, 11, 0, 1, 13, 9, 6, 1, 5, 0, 145457, 146448, 0, 149290, 151194, 153276, 0, 0, 157703, 158645, 0),
(9300424, 16126, 11, 1, 1, 3, 2, 8, 2, 3, 0, 40785, 40786, 0, 40788, 40789, 40790, 40791, 0, 40792, 0, 0),
(9300425, 16126, 11, 1, 1, 14, 4, 3, 6, 4, 0, 26315, 0, 0, 148789, 150651, 153286, 0, 0, 0, 0, 0),
(9300426, 16125, 11, 0, 1, 8, 5, 3, 4, 2, 0, 0, 0, 0, 28901, 28902, 28903, 0, 0, 0, 0, 0),
(9300428, 16125, 11, 0, 1, 6, 0, 1, 3, 0, 0, 14052, 0, 0, 29843, 29992, 29844, 29994, 0, 6970, 0, 0),
(9300430, 16126, 11, 1, 1, 5, 6, 4, 1, 3, 0, 37992, 37994, 0, 38304, 0, 0, 0, 0, 0, 11839, 0),
(9300431, 16125, 11, 0, 1, 4, 9, 3, 3, 2, 0, 20013, 35465, 0, 34544, 34545, 34546, 23766, 0, 18156, 0, 0),
(9300432, 16126, 11, 1, 1, 2, 8, 10, 0, 5, 0, 0, 0, 0, 32018, 31542, 30421, 0, 0, 0, 11820, 0);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (9300414, 9300416, 9300417, 9300418, 9300419, 9300422, 9300423, 9300424, 9300425, 9300426, 9300428, 9300430, 9300431, 9300432);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(9300414, 1, 32837, 32838, 0),
(9300416, 1, 29683, 0, 0),
(9300417, 1, 37108, 0, 0),
(9300418, 1, 27407, 24331, 0),
(9300419, 1, 29124, 24331, 0),
(9300422, 1, 12591, 0, 0),
(9300423, 1, 13698, 0, 0),
(9300424, 1, 11343, 0, 0),
(9300425, 1, 5112, 0, 0),
(9300426, 1, 29676, 0, 0),
(9300428, 1, 1911, 0, 30758),
(9300430, 1, 36611, 0, 0),
(9300431, 1, 16769, 0, 0),
(9300432, 1, 24014, 0, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (9300414, 9300416, 9300417, 9300418, 9300419, 9300422, 9300423, 9300424, 9300425, 9300426, 9300428, 9300430, 9300431, 9300432);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`)
VALUES
(9300414, 900014),
(9300416, 900016),
(9300417, 900017),
(9300418, 900018),
(9300419, 900019),
(9300422, 900022),
(9300423, 900023),
(9300424, 900024),
(9300425, 900025),
(9300426, 900026),
(9300428, 900028),
(9300430, 900030),
(9300431, 900031),
(9300432, 900032);

DELETE FROM `creature_template_addon` WHERE `entry` = 9300414;

-- ---------------------------------------------------------------------------
-- 2. Letters
-- ---------------------------------------------------------------------------
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `ItemLevel`, `maxcount`, `stackable`, `bonding`, `description`, `PageText`, `Material`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `RequiredDisenchantSkill`)
VALUES
(9302214, 0, 8, '邪能灼烧契约', 142197, 1, 64, 0, 0, 1, 0, '一份以绿色火焰封缄的契约，以曼阿瑞的语言书写。', 931214, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302216, 0, 8, '天语手稿', 142197, 1, 64, 0, 0, 1, 0, '一份噼啪作响着聚集风暴能量的手稿。', 931216, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302217, 0, 8, '暗影封印宣告', 142197, 1, 64, 0, 0, 1, 0, '一份带有克索诺斯印章的宣告，缠绕着冰冷的暗影。', 931217, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302218, 0, 8, '盾之誓约', 142197, 1, 64, 0, 0, 1, 0, '一块抛光钢制石板，铭刻着维伦之盾的誓约。', 931218, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302219, 0, 8, '圣光祝福誓言', 142197, 1, 64, 0, 0, 1, 0, '写在受祝福羊皮纸上的誓言，摸起来温暖。', 931219, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302222, 0, 8, '变幻卷轴', 142197, 1, 64, 0, 0, 1, 0, '一卷文字显示过去时刻与尚未到来时刻的卷轴。', 931222, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302223, 0, 8, '奥金尼法典', 142197, 1, 64, 0, 0, 1, 0, '一本骨制装订的法典；周围的空气变得冰冷。', 931223, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302224, 12, 0, '灼烧手稿', 142197, 1, 0, 1, 1, 1, 1, '一份边缘被烧焦的手稿，仍然温热。', 931224, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(9302225, 0, 8, '蠕动羊皮纸', 142197, 1, 64, 0, 0, 1, 0, '一张在你移开视线时符号会变换的羊皮纸。', 931225, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302226, 0, 8, '大黑暗星图', 142197, 1, 64, 0, 0, 1, 0, '一张埃索达穿越过的星辰图表，闪烁着星光。', 931226, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302228, 0, 8, '技师的图纸', 142197, 1, 64, 0, 0, 1, 0, '水晶动力装置的图纸，发出微弱的滴答声。', 931228, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302230, 0, 8, '黑皮信件', 142197, 1, 64, 0, 0, 1, 0, '一封黑色皮革装订的信件，会从空气中吸取光线。', 931230, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302231, 0, 8, '原始卷轴', 142197, 1, 64, 0, 0, 1, 0, '一卷旋转着微型风暴、火焰和震颤的卷轴。', 931231, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9302232, 0, 8, '发光符文石板', 3108, 1, 64, 0, 0, 1, 0, '一块刻有自行发光符文的石板。', 931232, 0, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `class` = VALUES(`class`), `subclass` = VALUES(`subclass`), `name` = VALUES(`name`), `displayid` = VALUES(`displayid`), `Quality` = VALUES(`Quality`), `Flags` = VALUES(`Flags`), `ItemLevel` = VALUES(`ItemLevel`), `maxcount` = VALUES(`maxcount`), `stackable` = VALUES(`stackable`), `bonding` = VALUES(`bonding`), `description` = VALUES(`description`), `PageText` = VALUES(`PageText`), `Material` = VALUES(`Material`), `holy_res` = VALUES(`holy_res`), `fire_res` = VALUES(`fire_res`), `nature_res` = VALUES(`nature_res`), `frost_res` = VALUES(`frost_res`), `shadow_res` = VALUES(`shadow_res`), `arcane_res` = VALUES(`arcane_res`), `delay` = VALUES(`delay`), `RequiredDisenchantSkill` = VALUES(`RequiredDisenchantSkill`);

DELETE FROM `page_text` WHERE `ID` IN (931214, 931216, 931217, 931218, 931219, 931222, 931223, 931224, 931225, 931226, 931228, 931230, 931231, 931232);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`)
VALUES
(931214, '我们逃离阿古斯，是为了让军团永远不能拥有我们。但它的火焰不过是一件武器，而武器可以从挥舞它的手中被夺走。$B$B作为恶魔猎手，你将把恶魔精髓束缚于你的意志，用军团自己的邪能火焰焚烧它的仆从。这样的力量会饥渴；每天都要驾驭它，否则它就会驾驭你。$B$B我远离营地，在通往银线湖的路上、水晶旁的低地草甸上。来那里找我。$B$B——塞拉斯', 0),
(931216, '艾泽拉斯的天空狂野而年轻，$N。它们还没有学会畏惧我们，我们也没有学会畏惧它们。$B$B作为风暴使者，你将呼唤闪电从天而降，让风服从你的目的。风暴将成为你的刀刃和盾牌。$B$B我在逃生舱来的路上守望，就在道路在溪流上方转弯、天空最开阔的地方。去那里找我。$B$B——阿希尔·天语', 0),
(931217, '誓约束缚人。我打破了我的，因此我更自由——但并未摆脱职责。黑暗也是一件武器，$N，在正确的手中，它保护人如同圣光一样可靠。$B$B作为克索诺斯骑士，你将像盔甲一样披挂暗影，以克索诺斯的冰冷火焰出击，屹立于无辜者与那些会伤害他们的人之间。$B$B守备官们绝不能知道我。独自前往圣林，西北悬崖上的凹地，那棵高大的银秘树后面。$B$B——无誓者库洛斯', 0),
(931218, '我们带着先知穿越群星，因为有人站在他和军团之间。这就是我们使命的全部。$B$B作为守护者，你将学会承受本应击中他人的打击，在每一个本能都告诉你要退让时守住阵地，让你的盾成为敌人无法通过的墙。$B$B你会在坠毁现场的甲板上、伤员之间找到我。来那里找我。$B$B——防御者塔鲁恩', 0),
(931219, '纳鲁教导我们，圣光不是用来囤积的慰藉，而是要带入黑暗的火焰。$B$B作为圣殿骑士，你将带着圣光在刀刃中、在心中战斗，审判邪恶者，庇护虔诚者。你的虔诚将成为你的盔甲。$B$B我在坠毁现场的甲板上服役，靠近奥雷隆。当你准备好宣誓时来找我。$B$B——守备官奥罗沙尔', 0),
(931222, '先知看到了我们的未来，带领我们远离毁灭。看见只是开始，$N。时间可以被弯曲、减慢，并被那些学会其潮流的人逆转回自身。$B$B作为时光术士，你将加速盟友，将敌人定在单一时刻中，并在伤口造成之前撤销它们。$B$B你会在坠毁现场的甲板上、靠近瓦拉图的地方找到我。我已经看到你到来了。$B$B——先知奥拉恩', 0),
(931223, '奥金尼教导说，死亡不是终结，而是一扇门，理解这扇门的人可以号令穿过它的事物。$B$B作为死灵法师，你将复活死者为你服务，抽取敌人的生命，并驾驭生命逃离后仍残留的力量。我们在坠毁中的死者理应安息；我们的敌人不配得到这样的仁慈。$B$B我在坠毁现场西边的墓地守夜，在陵墓旁。来那里找我。$B$B——奥金尼的奥西鲁恩', 0),
(931224, '埃索达从天空坠落燃烧，$N。我看着那火焰，明白了：火焰不只是毁灭。它是温暖、光明，以及可见的意志。$B$B作为炎术师，你将把火召唤到手中，点燃你的敌人，不断喂养火焰直到它咆哮。$B$B你会在普罗尼图斯营地的炊火旁找到我。别让火焰等待。$B$B——派拉尔', 0),
(931225, '黑暗中的声音并非都属于军团。有些比军团更古老，比纳鲁更古老，它们有许多东西要教给那些足够勇敢去聆听的人。$B$B作为邪教徒，你将与超越凡人理解的力量沟通，将它们的低语弯折为武器。知识有代价；小心地支付它。$B$B我在倒下的银秘树外的田野中等待，守备官阿尔达营地东南方，那里低语最清晰。独自前来。$B$B——玛扎拉', 0),
(931226, '我们穿越了群星之间的大黑暗，$N。一路上每一颗星都向我们歌唱，而我没有停止聆听。$B$B作为唤星者，你将从未知的太阳中汲取力量，将它们的呼唤降于你的敌人。天空会像回应我一样回应你。$B$B你会在墓地以北开阔的小丘上找到我，那里天空最清澈。任何时辰都来；群星不眠。$B$B——阿斯特兰', 0),
(931228, '我们的船不是坠毁。它是降落得很糟。一切破碎的东西都能被修复，一切修复的东西都能被改进。$B$B作为工匠，你将用世界留下的任何东西建造装置、炮台和机关，你会发现聪明的头脑才是最精良的武器。$B$B你会在坠毁现场内的打捞箱之间找到我，靠近奥洛克。带上你的双手；工具是我的。$B$B——技师博拉恩', 0),
(931230, '我们并非所有人都从坠落中幸存，$N。我站在那些没有幸存的人身旁，我明白了死亡并不残忍。它是一场收割，而总得有人去收割。$B$B作为死神，你将挥舞镰刀，收割敌人的灵魂，将他们最后的时刻转化为你的力量。$B$B我在植物学家泰里克斯帐篷西边的破损逃生舱旁守望。我不会说太多。我会教。$B$B——沉默者索拉希', 0),
(931231, '萨满向元素请求帮助。我不请求。$B$B作为仪祭师，你将号令土、风、火、水最纯粹的形态，它们无论愿不愿意都将服从你。这个世界的元素是狂野的；它们需要一只坚定的手。$B$B我在普罗尼图斯营地西北草甸的银秘树下。来学习统治元素意味着什么。$B$B——艾尔杜尔', 0),
(931232, '我们的铭文师一直知道，一个刻得正确的词会比雕刻它的手更长久。这个世界的符文更加古老，它们蕴含着力量。$B$B作为符文大师，你将把力量符文刻入武器、盔甲和大地的本身，你的结界将在其他魔法消退后长久持续。$B$B你会在巨大的银秘水晶脚下找到我，普罗尼图斯营地以西。带上耐心；符文会奖励它。$B$B——铭文师塔兰', 0);

INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `AllowableRaces`)
VALUES
(9302214, 2, 2, 2, -517, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '绿火契约', '前往安曼谷守备官阿尔达营地以西的低地草甸寻找塞拉斯。', '这是留给我保管、要交给你的东西，$N，虽然我承认我并不想拿着它。它是一份以绿色火焰写成的契约，其文字是曼阿瑞的语言——那些将自己献给军团的艾瑞达。$B$B它来自塞拉斯，她将军团自己的火焰转而对付军团。她远离我们的营地，在守备官阿尔达营地以西的低地草甸上，通往银线湖的路上水晶旁边。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷守备官阿尔达营地以西的低地草甸寻找塞拉斯。', 0, 0, 0, 0, 0, 0, 0, 0, 9302214, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷守备官阿尔达营地以西低地草甸上的塞拉斯交谈', '', '', '', 1024),
(9302216, 2, 2, 2, -525, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴之声', '前往安曼谷中逃生舱来的道路在溪流上方转弯处寻找阿希尔·天语。', '这是留给我保管、要交给你的东西，$N。它似乎是一份噼啪作响着风暴能量的手稿；我第一次触碰它时空气都在刺痛。$B$B它来自阿希尔·天语，他聆听着这个新世界的风暴。你会在你下来的那条路上找到他，就在道路于溪流上方转弯的地方。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷中逃生舱来的道路在溪流上方转弯处寻找阿希尔·天语。', 0, 0, 0, 0, 0, 0, 0, 0, 9302216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷中逃生舱来的道路在溪流上方转弯处的阿希尔·天语交谈', '', '', '', 1024),
(9302217, 2, 2, 2, -518, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '暗影誓约', '前往安曼谷西北悬崖的圣林寻找无誓者库洛斯。', '这是留在我物品中、要交给你的东西，$N，我说不清是谁留下的。它似乎是一份带有克索诺斯印章的宣告，缠绕着冰冷的暗影。$B$B印章上写着无誓者库洛斯，一个我从未见过的骑士。如果他在这山谷里，他把自己藏得很好。信件让你去圣林找他，也就是西北悬崖上的凹地。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷西北悬崖的圣林寻找无誓者库洛斯。', 0, 0, 0, 0, 0, 0, 0, 0, 9302217, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷西北悬崖圣林中的无誓者库洛斯交谈', '', '', '', 1024),
(9302218, 2, 2, 2, -529, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '盾之誓约', '前往安曼谷坠毁现场的甲板上寻找防御者塔鲁恩。', '这是留给我保管、要交给你的东西，$N。它似乎是一块抛光钢制石板，铭刻着保护誓言，是维伦之盾所宣誓的那种。$B$B它来自防御者塔鲁恩，他守卫着坠毁现场甲板上我们受伤的人，就在科尔身旁。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷坠毁现场的甲板上寻找防御者塔鲁恩。', 0, 0, 0, 0, 0, 0, 0, 0, 9302218, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷坠毁现场甲板上的防御者塔鲁恩交谈', '', '', '', 1024),
(9302219, 2, 2, 2, -524, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '圣光祝福誓言', '前往安曼谷坠毁现场的甲板上寻找守备官奥罗沙尔。', '这是留给我保管、要交给你的东西，$N。它似乎是一份写在受祝福羊皮纸上的誓言；拿在手里是温暖的，让心中充满勇气。$B$B它来自守备官奥罗沙尔，一位在坠毁现场甲板上服役的圣光圣殿骑士，就在奥雷隆身旁。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷坠毁现场的甲板上寻找守备官奥罗沙尔。', 0, 0, 0, 0, 0, 0, 0, 0, 9302219, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷坠毁现场甲板上的守备官奥罗沙尔交谈', '', '', '', 1024),
(9302222, 2, 2, 2, -530, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '未来的一瞥', '前往安曼谷坠毁现场的甲板上寻找先知奥拉恩。', '这是留给我保管、要交给你的东西，$N——又或者它本来就注定要在这里。我读它时文字在变换，显示着已经过去的时刻和尚未到来的时刻。$B$B它来自先知奥拉恩，他研习时间的潮流，如同先知研习命运的路径。他在坠毁现场的甲板上，就在瓦拉图身旁。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷坠毁现场的甲板上寻找先知奥拉恩。', 0, 0, 0, 0, 0, 0, 0, 0, 9302222, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷坠毁现场甲板上的先知奥拉恩交谈', '', '', '', 1024),
(9302223, 2, 2, 2, -521, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '奥金尼法典', '前往安曼谷坠毁现场以西的墓地寻找奥金尼的奥西鲁恩。', '这是留给我保管、要交给你的东西，$N。它似乎是一本骨制装订的法典；周围的空气变得冰冷，我能从它的书页中听到亡者的微弱低语。$B$B它来自奥金尼的奥西鲁恩，他在坠毁现场以西的墓地、陵墓旁守望我们的死者。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷坠毁现场以西的墓地寻找奥金尼的奥西鲁恩。', 0, 0, 0, 0, 0, 0, 0, 0, 9302223, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷坠毁现场以西墓地的奥金尼的奥西鲁恩交谈', '', '', '', 1024),
(9302224, 2, 2, 2, -528, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '埃索达的余烬', '前往安曼谷普罗尼图斯营地的炊火旁寻找派拉尔。', '这是留给我保管、要交给你的东西，$N。小心——它还是温热的。书页边缘被烧焦，火焰在其上舞动却没有将它们烧尽。$B$B它来自派拉尔，他照料着就在我营地的炊火，我怀疑他照料的火焰远不止于此。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷普罗尼图斯营地的炊火旁寻找派拉尔。', 0, 0, 0, 0, 0, 0, 0, 0, 9302224, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷普罗尼图斯营地炊火旁的派拉尔交谈', '', '', '', 1024),
(9302225, 2, 2, 2, -522, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '残骸中的低语', '前往安曼谷守备官阿尔达营地东南方倒下的银秘树之外寻找玛扎拉。', '这是留给我保管、要交给你的东西，$N，我很乐意摆脱它。我移开视线时它上面的符号就会变换，我听到听不清的低语。$B$B它来自玛扎拉，她聆听着我们其余人宁愿不听到的声音。她在倒下的银秘树之外的田野中等待，就在守备官阿尔达营地东南方。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷守备官阿尔达营地东南方倒下的银秘树之外寻找玛扎拉。', 0, 0, 0, 0, 0, 0, 0, 0, 9302225, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷守备官阿尔达营地东南方倒下的银秘树之外的玛扎拉交谈', '', '', '', 1024),
(9302226, 2, 2, 2, -506, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '大黑暗星图', '前往安曼谷墓地以北开阔的小丘上寻找阿斯特兰。', '这是留给我保管、要交给你的东西，$N。它似乎是一张星辰图表，星辰在书页上以真正的星光闪烁——正是我们乘坐埃索达穿越的那些星辰。$B$B它来自阿斯特兰，他在墓地以北开阔的小丘上解读天空。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷墓地以北开阔的小丘上寻找阿斯特兰。', 0, 0, 0, 0, 0, 0, 0, 0, 9302226, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷墓地以北开阔小丘上的阿斯特兰交谈', '', '', '', 1024),
(9302228, 2, 2, 2, -520, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '打捞与图纸', '前往安曼谷坠毁现场内的打捞箱之间寻找技师博拉恩。', '这是留给我保管、要交给你的东西，$N。它似乎是一套图纸，上面满是水晶动力装置的设计；我能从书页间听到微弱的滴答声。$B$B它来自技师博拉恩，他正在坠毁现场内分拣残骸中的打捞物，就在奥洛克身旁。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷坠毁现场内的打捞箱之间寻找技师博拉恩。', 0, 0, 0, 0, 0, 0, 0, 0, 9302228, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷坠毁现场内打捞箱之间的技师博拉恩交谈', '', '', '', 1024),
(9302230, 2, 2, 2, -508, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '沉默的收割', '前往安曼谷植物学家泰里克斯帐篷以西破损的逃生舱旁寻找沉默者索拉希。', '这是留给我保管、要交给你的东西，$N。它似乎是一封黑色皮革装订的信件，似乎会从周围的空气中吸取光线。$B$B它来自沉默者索拉希，他看护着植物学家泰里克斯帐篷以西破损的逃生舱，我们的一些族人没能从坠落中幸存。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷植物学家泰里克斯帐篷以西破损的逃生舱旁寻找沉默者索拉希。', 0, 0, 0, 0, 0, 0, 0, 0, 9302230, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷植物学家泰里克斯帐篷以西破损逃生舱旁的沉默者索拉希交谈', '', '', '', 1024),
(9302231, 2, 2, 2, -531, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '元素服从', '前往安曼谷普罗尼图斯营地西北草甸的银秘树下寻找艾尔杜尔。', '这是留给我保管、要交给你的东西，$N。它似乎是一卷噼啪作响着原始元素力量的卷轴；微型风暴、火焰和震颤在其上旋转。$B$B它来自艾尔杜尔，他在本营地西北草甸的银秘树下号令元素。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷普罗尼图斯营地西北草甸的银秘树下寻找艾尔杜尔。', 0, 0, 0, 0, 0, 0, 0, 0, 9302231, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷普罗尼图斯营地西北草甸银秘树下的艾尔杜尔交谈', '', '', '', 1024),
(9302232, 2, 2, 2, -527, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '比阿古斯更古老的符文', '前往安曼谷普罗尼图斯营地以西巨大银秘水晶脚下寻找铭文师塔兰。', '这是留给我保管、要交给你的东西，$N。它似乎是一块刻有自行发光符文的石板；这些符号比我在阿古斯学到的任何符文都要古老。$B$B它来自铭文师塔兰，他在本营地以西的巨大银秘水晶脚下研究它们。在你回来处理这里的事务之前，先读一读它。', '', '前往安曼谷普罗尼图斯营地以西巨大银秘水晶脚下寻找铭文师塔兰。', 0, 0, 0, 0, 0, 0, 0, 0, 9302232, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '与安曼谷普罗尼图斯营地以西巨大银秘水晶脚下的铭文师塔兰交谈', '', '', '', 1024)
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`), `AllowableRaces` = VALUES(`AllowableRaces`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (9302214, 9302216, 9302217, 9302218, 9302219, 9302222, 9302223, 9302224, 9302225, 9302226, 9302228, 9302230, 9302231, 9302232);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(9302214, 0, 8192, 9280, 1, 0),
(9302216, 0, 32768, 9280, 1, 0),
(9302217, 0, 65536, 9280, 1, 0),
(9302218, 0, 131072, 9280, 1, 0),
(9302219, 0, 262144, 9280, 1, 0),
(9302222, 0, 2097152, 9280, 1, 0),
(9302223, 0, 4194304, 9280, 1, 0),
(9302224, 0, 8388608, 9280, 1, 0),
(9302225, 0, 16777216, 9280, 1, 0),
(9302226, 0, 33554432, 9280, 1, 0),
(9302228, 0, 134217728, 9280, 1, 0),
(9302230, 0, 536870912, 9280, 1, 0),
(9302231, 0, 1073741824, 9280, 1, 0),
(9302232, 0, 2147483648, 9280, 1, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (9302214, 9302216, 9302217, 9302218, 9302219, 9302222, 9302223, 9302224, 9302225, 9302226, 9302228, 9302230, 9302231, 9302232);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `RewardText`)
VALUES
(9302214, 1, '你来了，而且没有对这份契约退缩。很好。其他人看着我，仿佛军团就走在我身边。也许它确实在——但它是被拴着链子的，$N。让我教你怎么握住那条链子。'),
(9302216, 1, '风暴告诉我你会来；它整个早上都躁动不安。站到我身边来，$N，听着。你体内有雷霆，等待被呼唤。'),
(9302217, 1, '所以你找到了我，而且独自前来。如果阿尔达知道我在，他会说这是愚蠢。我说这是决心。我们会看看谁是对的，$N。'),
(9302218, 1, '很好。我们的人民需要每一面盾牌。在我身边站一会儿，$N；我会向你展示守护者如何屹立。'),
(9302219, 1, '圣光指引这份誓言来到你面前，$N，也指引你来到我面前。这绝非小事。让我们开始你的服役。'),
(9302222, 1, '你来了——正好在我看到你到来的时刻。别那么惊讶，$N。惊讶是我的学生们很快就会摆脱的奢侈品。'),
(9302223, 1, '死者告诉我你会来。他们很少出错，$N。和我一起站在这里，站在他们中间，让我们看看你是否有走上这条道路的意志。'),
(9302224, 1, '啊，你也感觉到了——那些书页里的热度。很好。靠近火边，$N。我们从小处开始。'),
(9302225, 1, '你也听到了，对吧？当你读那张羊皮纸的时候。不要害怕，$N。它们只对它们选中的人低语。'),
(9302226, 1, '抬头看，$N。那些星辰把我们带到这里。现在让我教你如何让它们回应。'),
(9302228, 1, '啊，图纸找到你了。注意第三页；那张图是倒着的。当然是故意的。那么，$N——让我们看看你能造出什么。'),
(9302230, 1, '……你读了它。很好。拿起镰刀吧，$N。其余的自会到来。'),
(9302231, 1, '很好。感受你脚下的大地，$N——其中的生命，深处之火。这一切都在等待被告知该做什么。让我们开始吧。'),
(9302232, 1, '你读了石板。你注意到符文在你读它时变换了吗？它们也在读你，$N。它们似乎认可了。坐下吧；我们有很多要雕刻的。');

DELETE FROM `quest_request_items` WHERE `ID` IN (9302214, 9302216, 9302217, 9302218, 9302219, 9302222, 9302223, 9302224, 9302225, 9302226, 9302228, 9302230, 9302231, 9302232);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(9302214, ''),
(9302216, ''),
(9302217, ''),
(9302218, ''),
(9302219, ''),
(9302222, ''),
(9302223, ''),
(9302224, ''),
(9302225, ''),
(9302226, ''),
(9302228, ''),
(9302230, ''),
(9302231, ''),
(9302232, '');

DELETE FROM `creature_queststarter` WHERE `quest` IN (9302214, 9302216, 9302217, 9302218, 9302219, 9302222, 9302223, 9302224, 9302225, 9302226, 9302228, 9302230, 9302231, 9302232);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(16477, 9302214),
(16477, 9302216),
(16477, 9302217),
(16477, 9302218),
(16477, 9302219),
(16477, 9302222),
(16477, 9302223),
(16477, 9302224),
(16477, 9302225),
(16477, 9302226),
(16477, 9302228),
(16477, 9302230),
(16477, 9302231),
(16477, 9302232);

DELETE FROM `creature_questender` WHERE `quest` IN (9302214, 9302216, 9302217, 9302218, 9302219, 9302222, 9302223, 9302224, 9302225, 9302226, 9302228, 9302230, 9302231, 9302232);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(9300414, 9302214),
(9300416, 9302216),
(9300417, 9302217),
(9300418, 9302218),
(9300419, 9302219),
(9300422, 9302222),
(9300423, 9302223),
(9300424, 9302224),
(9300425, 9302225),
(9300426, 9302226),
(9300428, 9302228),
(9300430, 9302230),
(9300431, 9302231),
(9300432, 9302232);

-- ---------------------------------------------------------------------------
-- 3. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9004314, 9004316, 9004317, 9004318, 9004319, 9004322, 9004323, 9004324, 9004325, 9004326, 9004328, 9004330, 9004331, 9004332) OR `guid` BETWEEN 9004300 AND 9004399;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9004314, 9300414, 530, 0, 0, 1, 1, 1, -4231, -13646, 53.692, 5.093, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Felsworn trainer: Ammen Vale: hand-placed (INFERRED) on the lower meadow west of Vindicator Aldar''s camp, 7 yd from the crystal on the way to Silverline Lake (Silvermystcrystalbig03, -4245, -13633; the letters call only Scribe Taalan''s crystal by Proenitus'' camp the great silvermyst crystal); a Felsworn keeps apart from the camp. Moved 5.7 yd north-east of the planned point so the nearest Volatile Mutation (guid 57247, wander 5) is 17.4 yd away instead of 13.6, inspected with inspect_area and passing surface.check; faces 5.093 toward Vindicator Aldar''s camp, the way players come down to the meadow, the way players arrive'),
(9004316, 9300416, 530, 0, 0, 1, 1, 1, -4010, -13812, 78.156, 5.162, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Stormbringer trainer: Ammen Vale: hand-placed (INFERRED) on the road down from the escape pods, where it bends above the stream under the open sky; the first trainer players pass on their way into the vale, inspected with inspect_area and passing surface.check; faces 5.162 toward up the road toward the escape pods (-3983, -13868), the way players come down; the ground rises 13 degrees with the road, the way players arrive'),
(9004317, 9300417, 530, 0, 0, 1, 1, 1, -3903, -13432, 73.528, 4.391, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Knight of Xoroth trainer: Ammen Vale: hand-placed (INFERRED) hidden in the Sacred Grove, the hollow in the north-west cliffs, 6.7 yd north of the tall silvermyst tree whose trunk screens him from the vale, inspected with inspect_area and passing surface.check; faces 4.391 toward the grove mouth (-3908, -13447), the one open way into the hollow, the way players arrive'),
(9004318, 9300418, 530, 0, 0, 1, 1, 1, -4138.2, -13742.5, 74.562, 5.895, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Guardian trainer: Ammen Vale: hand-placed (INFERRED) on the Crash Site deck, 3.5 yd to the right of Kore (guid 84574), who keeps his post (BUILD-PLAN s0 forbids his post); a deliberate pair of warriors, following CoA''s own habit of standing its trainers beside the stock ones, inspected with inspect_area and passing surface.check; faces 5.895 toward the deck centre (-4115, -13752), which every stock deck trainer faces (Kore 5.60, Valaatu 4.92, Aurelon 3.75), the way players arrive'),
(9004319, 9300419, 530, 0, 0, 1, 1, 1, -4101.2, -13747.1, 74.629, 3.483, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Templar trainer: Ammen Vale: hand-placed (INFERRED) on the Crash Site deck, 3.5 yd beside Aurelon (guid 57212), who keeps his post; two servants of the Light side by side, inspected with inspect_area and passing surface.check; faces 3.483 toward the deck centre (-4115, -13752), which every stock deck trainer faces, the way players arrive'),
(9004322, 9300422, 530, 0, 0, 1, 1, 1, -4121.8, -13737.5, 74.636, 5.151, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Chronomancer trainer: Ammen Vale: hand-placed (INFERRED) on the Crash Site deck, 4.8 yd from Valaatu (guid 84581), who keeps his post; the seer keeps to the arcane side of the deck, inspected with inspect_area and passing surface.check; faces 5.151 toward the deck centre (-4115, -13752), which every stock deck trainer faces, the way players arrive'),
(9004323, 9300423, 530, 0, 0, 1, 1, 1, -4110, -13672, 74.831, 5.537, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Necromancer trainer: Ammen Vale: hand-placed (INFERRED) in the draenei graveyard west of the Crash Site, his back to the tomb (Dr_Tomb, -4115, -13666), 12.6 yd from the Spirit Healer; the Auchenai keep vigil over the dead, inspected with inspect_area and passing surface.check; faces 5.537 toward the path from Botanist Taerix''s tent (-4057, -13721), the way players reach the graveyard, the way players arrive'),
(9004324, 9300424, 530, 0, 0, 1, 1, 1, -4034, -13763, 75.956, 5.168, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Pyromancer trainer: Ammen Vale: hand-placed (INFERRED) in Proenitus'' camp, between the two halves of a burst escape pod and 6.7 yd from the camp''s only fire (the Cookpot, guid 24929); 12 yd from Proenitus, inspected with inspect_area and passing surface.check; faces 5.168 toward the road down from the escape pods (-4010, -13812), the way players arrive at the camp, the way players arrive'),
(9004325, 9300425, 530, 0, 0, 1, 1, 1, -4206, -13762, 74.43, 1.176, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Cultist trainer: Ammen Vale: hand-placed (INFERRED) in the field in the lee of the fallen silvermyst tree by the stream crossing, south-east of Vindicator Aldar''s camp; the planned nook between the hull plates (-4096, -13786) is a sealed navmesh pocket players cannot reach, so she listens to her whispers out here, away from the vindicators, inspected with inspect_area and passing surface.check; faces 1.176 toward Vindicator Aldar''s camp (-4195.1, -13735.8), the way players come around the fallen tree, the way players arrive'),
(9004326, 9300426, 530, 0, 0, 1, 1, 1, -4078, -13660, 77.888, 4.33, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Starcaller trainer: Ammen Vale: hand-placed (INFERRED) on top of the open knoll north of the graveyard, under the clearest sky in the vale, inspected with inspect_area and passing surface.check; faces 4.330 toward the Crash Site deck (-4115, -13752) over the open south-east slope, where players climb the knoll after coming round the south side of the torn silvermyst tree (Silvermysttreetorn04), whose trunk fills bearings 290-320 degrees 4.5 yd away and hides the straight line to Botanist Taerix''s tent, the way players arrive'),
(9004328, 9300428, 530, 0, 0, 1, 1, 1, -4068, -13762, 74.759, 6.099, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Tinker trainer: Ammen Vale: hand-placed (INFERRED) inside the Crash Site on the merchant floor, by the salvage crates and 7.6 yd from Aurok, 7.5 yd inside the hull''s north doorway, inspected with inspect_area and passing surface.check; faces 6.099 toward the hull''s north doorway (-4060.5, -13763.4), where players come in from Proenitus'' camp, the way players arrive'),
(9004330, 9300430, 530, 0, 0, 1, 1, 1, -4060, -13666, 71.046, 4.767, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Reaper trainer: Ammen Vale: hand-placed (INFERRED) at the north-east corner of the wrecked escape pod (Dr_Cryopod_Wrecked, -4063, -13663.5) west of Botanist Taerix''s tent, where some of the crash''s dead lay. The planned point (-4058, -13668) had a Vale Moth (guid 57400, wander 5) 11.9 yd away and the pod''s north side is a 40 degree slope, so she stands here: slope 18, moth 14.3 yd, 19 yd from the Starcaller, inspected with inspect_area and passing surface.check; faces 4.767 toward the path from Botanist Taerix''s tent (-4057, -13721), the way players come, the way players arrive'),
(9004331, 9300431, 530, 0, 0, 1, 1, 1, -3998.3, -13738.3, 68.828, 3.852, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Primalist trainer: Ammen Vale: hand-placed (INFERRED) in the northern meadow under the silvermyst trees, his back 2 yd from the trunk of Silvermysttree01, north-west of Proenitus'' camp. Moved 4.8 yd north-east of the planned point (-4003, -13735) so the two nearest Vale Moths of the moth-blood field (guids 57364 and 57362, wander 5) are 17.3 yd away instead of 13.4 and 17.8, and stay beyond 12 yd at the end of their wander; slope 3.4 instead of 6.4, inspected with inspect_area and passing surface.check; faces 3.852 toward Proenitus'' camp (-4039.4, -13773.7), the way players come up to the meadow, the way players arrive'),
(9004332, 9300432, 530, 0, 0, 1, 1, 1, -4040, -13734, 74.559, 4.728, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Ammen Vale Runemaster trainer: Ammen Vale: hand-placed (INFERRED) at the east foot of the great silvermyst crystal (Silvermystcrystalbig03, -4035, -13717), west of Proenitus'' camp, inspected with inspect_area and passing surface.check; faces 4.728 toward Proenitus'' camp (-4039.4, -13773.7), the way players come, the way players arrive');
