-- Conquest of Azeroth class trainers on Sunstrider Isle (blood elf start): 16 new trainers, one for each
-- class CoA offered blood elves (CharBaseInfo.dbc; research/class-trainers/RACE-CLASS.md), and their
-- intro letters from Magistrix Erona. CoA had no class trainer or class quest on the isle, so every
-- name, spot, look and letter here is INFERRED; the trainer kits (spells, menus, texts) are the class
-- kits of migration 05.
--
-- WHERE EACH VALUE COMES FROM
--   spots  hand-placed after inspect_area.py, surface.check and a wall-ray survey of each spot, z from
--     surface.floor (map 530 CoA data equals stock here). Every spot is at least 15 yd from the next
--     trainer, no trainer has more than two others within 30 yd, and none stands within 12 yd of a
--     hostile spawn. The stock class trainers of the Sunspire keep their posts, so the three hall
--     trainers take free spots in the hall. The
--     never-running Arena Tournament (game_event 31) pedestals are kept 1.5 yd clear.
--   facings  toward the way players arrive (the landing, the hall door, the ramp top, the road).
--   looks  creature_display_preset stand-ins (no SMSG_MIRRORIMAGE_DATA capture of any CoA trainer
--     exists): the CreatureDisplayInfoExtra look of a stock blood elf NPC of the right sex and theme
--     (research/class-trainers/plan/newzone_picks.csv), with face, hair, colour and one or two pieces
--     changed so that no two trainers look alike; NPC-only skins are replaced with player skins so the
--     mirror image composes (ct_common.check_look). The model is the plain blood elf display 15476/15475.
--   weapons  creature_equip_template from the same csv (Item.dbc inventory types checked).
--   letters  one per class, modelled on that class's CoA Deathknell letter (53000-53014, 53201): the
--     same quest sort, level 2, XP difficulty, letter display, flags and binding; the text is adapted to
--     the trainer, the landmark and Quel'Thalas. Erona 15278 offers them after Reclaiming Sunstrider
--     Isle (8325), as she does the stock "<Class> Training" quests; AllowableRaces 512 (blood elf) and
--     the class bit; the letter is the provided start item and the only required item. The trainer
--     ends the quest. Page texts and turn-in texts are written in the trainer's voice.
--
-- Id blocks: creature guid 9004400 + class (block 9004400-9004499), creature_template 9300450 + class,
-- quest and letter item 9302100 + class, page_text 931100 + class.

-- ---------------------------------------------------------------------------
-- 1. Trainers
-- ---------------------------------------------------------------------------
-- 9300464 Seldrath Duskblind, Felsworn Trainer: new NPC Seldrath Duskblind, named as a new blood elf character
--   for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this
--   trainer exists: blood elf male from Varedis 21178 (display 20130, blindfolded Illidari), changed face 9 to
--   5, hair colour 0 to 7; the blindfold stays (Duskblind); weapons 30208/30209/0.
-- 9300466 Aerisa Stormlace, Stormbringer Trainer: new NPC Aerisa Stormlace, named as a new blood elf character
--   for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this
--   trainer exists: blood elf female from Aurora Skycaller 10304 (display 18910, cyan robes), changed NPC-only
--   skin 14 to 2, face 0 to 6, hair colour 0 to 3, a cyan mage cape (11508) added; weapons 43220/0/0.
-- 9300467 Dravinor Ashbrand, Knight of Xoroth Trainer: new NPC Dravinor Ashbrand, named as a new blood elf
--   character for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of
--   this trainer exists: blood elf male from Illidari Soldier 22075 (display 20778, dark plate), changed face 2
--   to 4, hair 10 to 12, hair colour 3 to 8; weapons 38707/0/0.
-- 9300468 Therandis Sunshield, Guardian Trainer: new NPC Therandis Sunshield, named as a new blood elf character
--   for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this
--   trainer exists: blood elf male from Horde Halaani Guard 18192 (display 18258, Blood Knight plate), changed
--   skin 2 to 6, face 3 to 7 (the helm keeps the hair hidden); weapons 27405/27406/0.
-- 9300469 Aeloris Lightbrand, Templar Trainer: new NPC Aeloris Lightbrand, named as a new blood elf character
--   for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this
--   trainer exists: blood elf male from Champion Lightrend 17810 (display 17259, holy plate), changed hair 6 to
--   3, hair colour 4 to 1; weapons 24034/24038/0.
-- 9300470 Sanreia Crimsonvein, Bloodmage Trainer: new NPC Sanreia Crimsonvein, named as a new blood elf
--   character for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of
--   this trainer exists: blood elf female from Bloodmage Laurith 25381 (display 23169, Sunwell robes), changed
--   skin 0 to 5, hair 2 to 9, hair colour 4 to 7; weapons 31609/19366/0.
-- 9300471 Lyssia Leafstride, Ranger Trainer: new NPC Lyssia Leafstride, named as a new blood elf character for
--   the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer
--   exists: blood elf female from Ranger Valanna 16219 (display 16069, Farstrider leathers), changed skin 5 to
--   3, face 9 to 3, hair 0 to 5; weapons 12993/0/30390.
-- 9300472 Taelenna Sandweaver, Chronomancer Trainer: new NPC Taelenna Sandweaver, named as a new blood elf
--   character for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of
--   this trainer exists: blood elf female from Custodian of Time 19950 (display 19282, white robes), changed
--   NPC-only skin 14 to 7, hair colour 1 to 4, a gold robe belt (8507) and a golden cape (17876) for the bronze
--   dragonflight; weapons 30424/0/0.
-- 9300473 Morthalis Gravewhisper, Necromancer Trainer: new NPC Morthalis Gravewhisper, named as a new blood elf
--   character for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of
--   this trainer exists: blood elf male from Shadowy Summoner 17088 (display 17988, hooded Shadow Council
--   robes), changed skin 5 to 8, face 7 to 1, hair colour 3 to 6, a black mage cape (11726) added; weapons
--   41342/0/0.
-- 9300474 Caelor Emberhand, Pyromancer Trainer: new NPC Caelor Emberhand, named as a new blood elf character for
--   the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer
--   exists: blood elf male from Magister Jaronis 15418 (display 15912, red robes), changed skin 0 to 1, face 0
--   to 3, hair 0 to 4, hair colour 0 to 2, a red mage cape (10721) added, the source's model-less mantle 26659
--   swapped for 2178 (same red robe texture on its model); weapons 11343/0/0.
-- 9300475 Zaelith Shadowmoor, Cultist Trainer: new NPC Zaelith Shadowmoor, named as a new blood elf character
--   for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this
--   trainer exists: blood elf male from Twilight Firesworn 25863 (display 23450, Twilight's Hammer robes),
--   changed face 6 to 2, hair 0 to 9, hair colour 3 to 5, Twilight's Hammer robe legs (10390) instead of the red
--   pair Caelor wears; weapons 34880/34881/0.
-- 9300476 Isolen Starweaver, Starcaller Trainer: new NPC Isolen Starweaver, named as a new blood elf character
--   for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this
--   trainer exists: blood elf female from Magistrix Fyalenn 18531 (display 17878, magister hat and robes),
--   changed hair 7 to 11, hair colour 9 to 5, a yellow robe belt (5218) instead of the black one Brelan wears;
--   weapons 31608/0/0.
-- 9300477 Saleria Sunvow, Sun Cleric Trainer: new NPC Saleria Sunvow, named as a new blood elf character for the
--   isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer
--   exists: blood elf female from Viera Sunwhisper 17226 (display 16926, red dress and gold circlet), changed
--   face 1 to 5, hair 2 to 13, hair colour 0 to 1, earrings 0 to 1, a gold belt (5922) instead of the purple one
--   Quelnar wears; weapons 28738/0/0.
-- 9300478 Brelan Arcspindle, Tinker Trainer: new NPC Brelan Arcspindle, named as a new blood elf character for
--   the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer
--   exists: blood elf female from Engineer Sinbei 33634 (display 28791, goggles and work leathers), changed skin
--   2 to 0, face 1 to 7, hair 6 to 14, hair colour 5 to 2; weapons 1911/0/24244.
-- 9300480 Solwyn Ashenveil, Reaper Trainer: new NPC Solwyn Ashenveil, named as a new blood elf character for the
--   isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer
--   exists: blood elf female from DK (Blood Elf Female) 28434 (display 25432, Acherus plate), changed NPC-only
--   skin 15 to 8, face 0 to 4, hair colour 0 to 9 (the helm hides the hair); weapons 36611/0/0.
-- 9300482 Quelnar Runescribe, Runemaster Trainer: new NPC Quelnar Runescribe, named as a new blood elf character
--   for the isle (INFERRED: no cache record); look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this
--   trainer exists: blood elf male from Ley-Keeper Caidanis 15405 (display 15909, purple blood robes), changed
--   skin 0 to 2, face 2 to 8, hair 1 to 5, hair colour 2 to 6, earrings 0 to 3; weapons 5304/0/0.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(9300464, '塞尔德拉斯·暮盲', '恶魔猎手训练师', 930014, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300466, '艾丽莎·风暴蕾丝', '风暴使者训练师', 930016, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300467, '德拉维诺·灰烬烙印', '克索诺斯骑士训练师', 930017, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300468, '瑟兰迪斯·日盾', '守护者训练师', 930018, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300469, '艾洛里斯·光烙印', '圣殿骑士训练师', 930019, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300470, '桑蕾娅·赤脉', '血法师训练师', 930020, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300471, '莉希娅·叶步', '游侠训练师', 930021, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300472, '泰伦娜·沙织者', '时光术士训练师', 930022, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300473, '莫萨利斯·墓语', '死灵法师训练师', 930023, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300474, '凯洛尔·余烬之手', '炎术师训练师', 930024, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300475, '泽莉丝·影沼', '邪教徒训练师', 930025, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300476, '伊索伦·星织者', '唤星者训练师', 930026, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300477, '萨蕾莉娅·日誓', '太阳祭司训练师', 930027, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300478, '布雷兰·奥术纺锤', '工匠训练师', 930028, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300480, '索尔温·灰纱', '死神训练师', 930030, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300482, '奎尔纳·符文铭者', '符文大师训练师', 930032, 10, 10, 0, 1604, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (9300464, 9300466, 9300467, 9300468, 9300469, 9300470, 9300471, 9300472, 9300473, 9300474, 9300475, 9300476, 9300477, 9300478, 9300480, 9300482);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(9300464, 0, 15476, 1, 1),
(9300466, 0, 15475, 1, 1),
(9300467, 0, 15476, 1, 1),
(9300468, 0, 15476, 1, 1),
(9300469, 0, 15476, 1, 1),
(9300470, 0, 15475, 1, 1),
(9300471, 0, 15475, 1, 1),
(9300472, 0, 15475, 1, 1),
(9300473, 0, 15476, 1, 1),
(9300474, 0, 15476, 1, 1),
(9300475, 0, 15476, 1, 1),
(9300476, 0, 15475, 1, 1),
(9300477, 0, 15475, 1, 1),
(9300478, 0, 15475, 1, 1),
(9300480, 0, 15475, 1, 1),
(9300482, 0, 15476, 1, 1);

DELETE FROM `creature_display_preset` WHERE `entry` IN (9300464, 9300466, 9300467, 9300468, 9300469, 9300470, 9300471, 9300472, 9300473, 9300474, 9300475, 9300476, 9300477, 9300478, 9300480, 9300482);
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`, `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`, `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`)
VALUES
(9300464, 15476, 10, 0, 1, 3, 5, 8, 7, 2, 0, 145536, 0, 0, 149528, 151378, 153490, 155569, 156555, 0, 0, 0),
(9300466, 15475, 10, 1, 1, 2, 6, 7, 3, 5, 0, 0, 0, 0, 14266, 0, 14267, 13165, 0, 0, 11508, 0),
(9300467, 15476, 10, 0, 1, 4, 4, 12, 8, 1, 0, 0, 35458, 35345, 36862, 36863, 36864, 36865, 0, 36866, 0, 36786),
(9300468, 15476, 10, 0, 1, 6, 7, 10, 2, 0, 0, 31310, 164733, 164732, 164731, 164734, 31216, 164736, 0, 164737, 164739, 30597),
(9300469, 15476, 10, 0, 1, 9, 8, 3, 1, 0, 0, 0, 12364, 0, 29512, 16664, 24753, 12367, 0, 18629, 0, 30537),
(9300470, 15475, 10, 1, 1, 5, 2, 9, 7, 2, 0, 0, 0, 0, 41111, 41112, 41113, 41114, 0, 0, 20585, 40869),
(9300471, 15475, 10, 1, 1, 3, 3, 5, 2, 0, 0, 0, 0, 29172, 29173, 26678, 26652, 26650, 0, 6204, 0, 0),
(9300472, 15475, 10, 1, 1, 7, 1, 3, 4, 2, 0, 0, 0, 29704, 0, 8507, 20046, 5566, 0, 0, 17876, 0),
(9300473, 15476, 10, 0, 1, 8, 1, 0, 6, 0, 0, 13168, 146475, 0, 13566, 0, 153311, 155409, 156497, 0, 11726, 0),
(9300474, 15476, 10, 0, 1, 1, 3, 4, 2, 0, 0, 0, 2178, 3272, 0, 0, 3274, 5385, 0, 0, 10721, 0),
(9300475, 15476, 10, 0, 1, 5, 2, 9, 5, 6, 0, 145649, 0, 148262, 149762, 151647, 10390, 155828, 0, 158029, 0, 0),
(9300476, 15475, 10, 1, 1, 0, 4, 11, 5, 0, 0, 24853, 26403, 30867, 0, 5218, 30747, 30748, 0, 0, 0, 0),
(9300477, 15475, 10, 1, 1, 1, 5, 13, 1, 1, 0, 5409, 0, 0, 27290, 5922, 7229, 7042, 0, 0, 0, 0),
(9300478, 15475, 10, 1, 1, 0, 7, 14, 2, 6, 0, 37925, 0, 0, 30843, 29683, 31555, 30738, 0, 30900, 0, 36119),
(9300480, 15475, 10, 1, 1, 8, 4, 0, 9, 0, 0, 44238, 44227, 0, 44247, 44236, 44230, 44231, 0, 44232, 0, 0),
(9300482, 15476, 10, 0, 1, 2, 8, 5, 6, 3, 0, 0, 0, 0, 26684, 26685, 26686, 26687, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (9300464, 9300466, 9300467, 9300468, 9300469, 9300470, 9300471, 9300472, 9300473, 9300474, 9300475, 9300476, 9300477, 9300478, 9300480, 9300482);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(9300464, 1, 30208, 30209, 0),
(9300466, 1, 43220, 0, 0),
(9300467, 1, 38707, 0, 0),
(9300468, 1, 27405, 27406, 0),
(9300469, 1, 24034, 24038, 0),
(9300470, 1, 31609, 19366, 0),
(9300471, 1, 12993, 0, 30390),
(9300472, 1, 30424, 0, 0),
(9300473, 1, 41342, 0, 0),
(9300474, 1, 11343, 0, 0),
(9300475, 1, 34880, 34881, 0),
(9300476, 1, 31608, 0, 0),
(9300477, 1, 28738, 0, 0),
(9300478, 1, 1911, 0, 24244),
(9300480, 1, 36611, 0, 0),
(9300482, 1, 5304, 0, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (9300464, 9300466, 9300467, 9300468, 9300469, 9300470, 9300471, 9300472, 9300473, 9300474, 9300475, 9300476, 9300477, 9300478, 9300480, 9300482);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`)
VALUES
(9300464, 900014),
(9300466, 900016),
(9300467, 900017),
(9300468, 900018),
(9300469, 900019),
(9300470, 900020),
(9300471, 900021),
(9300472, 900022),
(9300473, 900023),
(9300474, 900024),
(9300475, 900025),
(9300476, 900026),
(9300477, 900027),
(9300478, 900028),
(9300480, 900030),
(9300482, 900032);

-- ---------------------------------------------------------------------------
-- 2. Intro letters
-- ---------------------------------------------------------------------------
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `maxcount`, `stackable`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `Material`, `RequiredDisenchantSkill`)
VALUES
(9302114, 12, 0, -1, '邪能灼烧契约', 167798, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '一份以绿色蜡封缄的契约，上面的文字仍在冒烟。', 931114, 0, 0, 0, 0, 0),
(9302116, 12, 0, -1, '风暴触碰信函', 222, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '羊皮纸噼啪作响着静电，无法平摊开来。', 931116, 0, 0, 0, 0, 0),
(9302117, 12, 0, -1, '克索诺斯誓约', 167798, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '羊皮纸上的黑色墨迹冷如霜，盖有克索诺斯的印记。', 931117, 0, 0, 0, 0, 0),
(9302118, 15, 0, -1, '守望者誓约', 17419, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '一块钢制装订的誓言石板，边缘如结界般闪烁。', 931118, 0, 0, 0, 0, 0),
(9302119, 12, 0, -1, '光辉誓言', 167798, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '受祝福的羊皮纸，摸起来温暖，微微发光。', 931119, 0, 0, 0, 0, 0),
(9302120, 12, 0, -1, '血红卷轴', 222, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '一卷被猩红浸染的卷轴，其墨水像心跳一样脉动。', 931120, 0, 0, 0, 0, 0),
(9302121, 12, 0, -1, '远行者的呼唤', 241, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '一封折着绿色箭羽的信，带着松木的气味。', 931121, 0, 0, 0, 0, 0),
(9302122, 12, 0, -1, '时光磨损卷轴', 222, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '看起来有几个世纪之久的羊皮纸，尽管它今早才送达。', 931122, 0, 0, 0, 0, 0),
(9302123, 12, 0, -1, '骨制法典', 3108, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '一本骨制装订的法典，让持握它的手冰凉。', 931123, 0, 0, 0, 0, 0),
(9302124, 12, 0, -1, '余烬灼烧之书', 241, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '余烬在其边缘爬行，却不烧毁书页。', 931124, 0, 0, 0, 0, 0),
(9302125, 12, 0, -1, '低语羊皮纸', 222, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '当你移开视线时，上面的符号会变换。', 931125, 0, 0, 0, 0, 0),
(9302126, 12, 0, -1, '星辰图', 222, 1, 1, 1, 0, -1, -1, 1, 1, 1, 1, 1, '上面绘制的星辰即使在白天也闪烁着微光。', 931126, 0, 4, 0, -1, -1),
(9302127, 12, 0, -1, '阳光经文', 167798, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '金色墨迹如晨光般闪耀。', 931127, 0, 0, 0, 0, 0),
(9302128, 12, 0, -1, '奥术图纸', 4995, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '齿轮、弹簧和奥术符文；折页里有东西在滴答作响。', 931128, 0, 0, 0, 0, 0),
(9302130, 12, 0, -1, '灰烬石板', 3108, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '灰色石板上覆着擦不掉的灰烬。', 931130, 0, 0, 0, 0, 0),
(9302132, 12, 0, -1, '符文石板', 3108, 1, 0, 1, 0, -1, -1, 0, 0, 1, 1, 1, '比法师们教授的任何文字都更古老的符文散发着微弱的紫色光芒。', 931132, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `class` = VALUES(`class`), `subclass` = VALUES(`subclass`), `SoundOverrideSubclass` = VALUES(`SoundOverrideSubclass`), `name` = VALUES(`name`), `displayid` = VALUES(`displayid`), `Quality` = VALUES(`Quality`), `Flags` = VALUES(`Flags`), `BuyCount` = VALUES(`BuyCount`), `InventoryType` = VALUES(`InventoryType`), `AllowableClass` = VALUES(`AllowableClass`), `AllowableRace` = VALUES(`AllowableRace`), `ItemLevel` = VALUES(`ItemLevel`), `RequiredLevel` = VALUES(`RequiredLevel`), `maxcount` = VALUES(`maxcount`), `stackable` = VALUES(`stackable`), `bonding` = VALUES(`bonding`), `description` = VALUES(`description`), `PageText` = VALUES(`PageText`), `LanguageID` = VALUES(`LanguageID`), `PageMaterial` = VALUES(`PageMaterial`), `startquest` = VALUES(`startquest`), `Material` = VALUES(`Material`), `RequiredDisenchantSkill` = VALUES(`RequiredDisenchantSkill`);

DELETE FROM `page_text` WHERE `ID` IN (931114, 931116, 931117, 931118, 931119, 931120, 931121, 931122, 931123, 931124, 931125, 931126, 931127, 931128, 931130, 931132);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`)
VALUES
(931114, '法师们把邪能说成是一种饥渴。他们说得对。饥渴可以被束缚，饥渴也可以被驱使着服务。$B$B作为恶魔猎手，你将把恶魔精髓纳入自身，将它的火焰转向我们的敌人，你将学会在那饥渴驾驭你之前驾驭它。$B$B我在日冕尖塔以北商人之家的院子里等待，就在武器架旁。带着武器来。$B$B——塞尔德拉斯·暮盲，恶魔猎手训练师', 0),
(931116, '自你到来的那天起，海上的风就一直躁动不安。我不相信这是巧合。$B$B风暴使者并不号令风暴。风暴使者给它一个方向。闪电、狂风和雷霆都会回应你，只要你足够大胆去呼唤。$B$B在日冕尖塔以东的观景台上、悬崖之上、风最猛烈的地方找我。$B$B——艾丽莎·风暴蕾丝，风暴使者训练师', 0),
(931117, '奎尔萨拉斯在燃烧时，它的守护者们却让自己的手保持干净。我不会要求你的手保持干净。$B$B克索诺斯骑士以暗影为武器，如同其他骑士以圣光为武器，他们为每一条他们夺去的生命负责。黑暗是武器；荣誉决定它落在何处。$B$B我站在通往法瑟林学院的路上、离开日冕尖塔庭院的栅栏旁。当你准备好宣誓时来。$B$B——德拉维诺·灰烬烙印，克索诺斯骑士训练师', 0),
(931118, '当天灾到来时，我们的结界失效了，我们的人民死在它们之后。结界的强度只取决于持守它的人。$B$B守护者不先出手。守护者屹立于刀刃与它本应击中的目标之间，绝不移动。$B$B我在登陆点以西的斜坡上守望，俯瞰下方的草坪。$B$B——瑟兰迪斯·日盾，守护者训练师', 0),
(931119, '圣光并未抛弃奎尔萨拉斯。是我们背离了它。圣殿骑士则转回身来。$B$B你将一手持圣火，一手持利刃，你将用两者审判邪恶者。没有仁慈的正义是残忍；没有正义的仁慈是软弱。$B$B你会在日冕尖塔以北的露台上找到我，在塔楼与商人之家之间。$B$B——艾洛里斯·光烙印，圣殿骑士训练师', 0),
(931120, '每个法师都从某处汲取力量：魔网、法力井，以及我们人民如今觊觎的水晶。$B$B我们从那口永不干涸的井中汲取。血即生命，生命即力量。血法师耗费自己的一点，去夺取敌人的大量。$B$B我在日冕尖塔大门前的广场上等待，就在旗帜旁。$B$B——桑蕾娅·赤脉，血法师训练师', 0),
(931121, '远行者们世代守护着奎尔萨拉斯的森林。我们会再次守住它们。$B$B游侠解读荒野，如同法师研读典籍：足迹、风向，以及伏击前的那份寂静。一张弓、一把刀和一只耐心的眼睛，就是你所需要的全部。$B$B在日冕尖塔以西、从登陆点下楼梯的兰森·佩里隆营地找我。$B$B——莉希娅·叶步，游侠训练师', 0),
(931122, '你读到这封信的时间会比我写下它时晚，也会比你预想的早。时间就是这样。$B$B时光术士并不阻止流沙；她移动它们。为朋友加速，从敌人那里偷走一次心跳，在一道伤口造成之前撤销它。$B$B我在日冕尖塔内下层，就在边桌上那件奥术装置旁。我已经等了你一段时间了。$B$B——泰伦娜·沙织者，时光术士训练师', 0),
(931123, '天灾教会了我们的人民死者能做什么。它没有教我们，死者可以被生者号令。$B$B死灵法师复活倒下者，抽取敌人的生命，把坟墓变成武器。这不是一门温和的技艺。它从来就不是。$B$B我在南边草甸上那处孤零零的围栏坟墓旁守夜，那里道路向下通往桥。$B$B——莫萨利斯·墓语，死灵法师训练师', 0),
(931124, '法师们把火当作众多学派之一来教授。我把它当作唯一值得了解的一门来教授。$B$B炎术师让火焰层层累积，直到再也无法被容纳。然后你放它走。$B$B我在日冕尖塔内下层，坡道脚下。别带任何你不介意被一颗飞溅火星毁掉的东西。$B$B——凯洛尔·余烬之手，炎术师训练师', 0),
(931125, '费伦德伦因聆听错误的声音而被放逐。他聆听并没有错。他错在独自聆听。$B$B邪教徒向星辰之外的东西敞开思想，并带回它所发现之物：给敌人的疯狂，给信徒的洞见。$B$B我在法瑟林学院门外等待，沿路向西，过了兰森·佩里隆营地。$B$B——泽莉丝·影沼，邪教徒训练师', 0),
(931126, '井之守望者研究太阳。我研究它之外一切闪耀之物。$B$B群星比奎尔萨拉斯更古老，也远比它更有耐心。唤星者借来它们的光：给敌人的一颗流星，给盟友的稳定辉光。$B$B爬上日冕尖塔内的坡道。我在顶层的开放回廊上，井之守望者下方。$B$B——伊索伦·星织者，唤星者训练师', 0),
(931127, '我们的人民以太阳为自己命名，然后忘了去看它。$B$B太阳祭司承载着黎明：治愈伤者的温暖，以及给予那些伤害他们之人的灼热光芒。太阳不选择自己照耀谁，但我们选择站在何处。$B$B我在日冕尖塔内下层照料信徒，就在东边长椅旁。$B$B——萨蕾莉娅·日誓，太阳祭司训练师', 0),
(931128, '法师用咒语建造。侏儒用齿轮建造。我用两者建造，我的装置不在乎哪一方被冒犯。$B$B工匠把炮台、炸弹和一把扳手带进每一场战斗，而好工匠还会带一个备用的。$B$B我在日冕尖塔以北商人之家的院子里，就在补给箱旁。注意左边那根弹簧。$B$B——布雷兰·奥术纺锤，工匠训练师', 0),
(931130, '奎尔萨拉斯的每一个灵魂都有一场收割将至。天灾只是来得早了些。$B$B死神手持镰刀行走于生者与死者之间，从每个人身上取走他们所欠之物。悲伤是一块磨刀石。用它。$B$B我在商人之家以北高地那处纪念石旁等待，灵魂医者就在那里守望。$B$B——索尔温·灰纱，死神训练师', 0),
(931132, '咒语会消退。刻得正确的符文则长存。我们的祖先知道这一点；奎尔萨拉斯的石头仍然记得它们所刻下的东西。$B$B符文大师把力量刻入武器、盔甲和大地，并在雕刻完成很久之后仍召唤它。$B$B我在登陆点以西斜坡上那棵小树下工作。带一只稳当的手来。$B$B——奎尔纳·符文铭者，符文大师训练师', 0);

INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `AllowableRaces`)
VALUES
(9302114, 2, 2, 2, -517, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '邪能灼烧契约', '阅读邪能灼烧契约，前往日冕尖塔以北武器架旁寻找塞尔德拉斯·暮盲。', '你把那些法力龙处理得很好，$N，你忙的时候有个信使把这个留给了你。它似乎是一份以绿色蜡封缄的契约，其文字仍在冒着邪能之火。我们的法师以前尝过邪能之力；很少有人掌握它。它似乎来自塞尔德拉斯·暮盲，他在日冕尖塔以北商人之家的院子里、武器架旁传授束缚之术。在你回来处理这里的事务之前，先读一读它。', '', '前往阳歌岛日冕尖塔以北寻找塞尔德拉斯·暮盲。', 0, 0, 0, 0, 0, 0, 0, 0, 9302114, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302116, 2, 2, 2, -525, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴触碰信函', '阅读风暴触碰信函，前往日冕尖塔以东的观景台寻找艾丽莎·风暴蕾丝。', '有人让我把这个交给你，$N。它似乎是一封噼啪作响着静电的信函；羊皮纸像有风吹过一样从手中浮起。它似乎来自艾丽莎·风暴蕾丝，她从日冕尖塔以东、悬崖之上的观景台呼唤海风暴。在你回来处理这里的事务之前，先读一读它。', '', '前往日冕尖塔以东的观景台寻找艾丽莎·风暴蕾丝。', 0, 0, 0, 0, 0, 0, 0, 0, 9302116, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302117, 2, 2, 2, -518, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '克索诺斯誓约', '阅读克索诺斯誓约，前往通往法瑟林学院道路旁的栅栏处寻找德拉维诺·灰烬烙印。', '有人让我把这个交给你，$N。它似乎是一份以黑色墨水写在冷如霜的羊皮纸上的誓约，盖有克索诺斯的印章。它似乎来自德拉维诺·灰烬烙印，他与法师们保持距离，在通往法瑟林学院的道路离开日冕尖塔庭院的栅栏旁。在你回来处理这里的事务之前，先读一读它。', '', '前往通往法瑟林学院的道路寻找德拉维诺·灰烬烙印。', 0, 0, 0, 0, 0, 0, 0, 0, 9302117, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302118, 2, 2, 2, -529, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '守望者誓约', '阅读守望者誓约，前往日冕尖塔登陆点以西的斜坡上寻找瑟兰迪斯·日盾。', '有人让我把这个交给你，$N。它似乎是一块钢制装订的石板，铭刻着保护誓言；边缘的符文如结界般闪烁。它似乎来自瑟兰迪斯·日盾，他站在登陆点以西的斜坡上守望，俯瞰下方的草坪。在你回来处理这里的事务之前，先读一读它。', '', '前往日冕尖塔登陆点以西寻找瑟兰迪斯·日盾。', 0, 0, 0, 0, 0, 0, 0, 0, 9302118, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302119, 2, 2, 2, -524, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '光辉誓言', '阅读光辉誓言，前往日冕尖塔以北的露台寻找艾洛里斯·光烙印。', '有人让我把这个交给你，$N。它似乎是一份写在受祝福羊皮纸上的誓言，摸起来温暖，微微发光。它似乎来自艾洛里斯·光烙印，一位在日冕尖塔与它以北的商人之家之间的露台上坚守岗位的圣殿骑士。在你回来处理这里的事务之前，先读一读它。', '', '前往日冕尖塔以北的露台寻找艾洛里斯·光烙印。', 0, 0, 0, 0, 0, 0, 0, 0, 9302119, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302120, 2, 2, 2, -516, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '血红卷轴', '阅读血红卷轴，前往日冕尖塔大门前旗帜旁寻找桑蕾娅·赤脉。', '有人让我把这个交给你，$N。它似乎是一卷被深红浸染的卷轴，其墨水像心跳一样脉动。它似乎来自桑蕾娅·赤脉，她在日冕尖塔大门前的广场上、旗帜旁修行血之术。在你回来处理这里的事务之前，先读一读它。', '', '前往日冕尖塔大门前寻找桑蕾娅·赤脉。', 0, 0, 0, 0, 0, 0, 0, 0, 9302120, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302121, 2, 2, 2, -505, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '远行者的呼唤', '阅读远行者的呼唤，前往兰森·佩里隆营地寻找莉希娅·叶步。', '有人让我把这个交给你，$N。它似乎是一封折着绿色箭羽的信，带着松木和弓弦蜡的气味。它似乎来自莉希娅·叶步，一位与兰森·佩里隆在他日冕尖塔以西、从登陆点下楼梯的营地作伴的游侠。在你回来处理这里的事务之前，先读一读它。', '', '前往兰森·佩里隆营地寻找莉希娅·叶步。', 0, 0, 0, 0, 0, 0, 0, 0, 9302121, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302122, 2, 2, 2, -530, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '时光磨损卷轴', '阅读时光磨损卷轴，前往日冕尖塔内寻找泰伦娜·沙织者。', '非常奇特，$N。我发誓这卷轴送到时是空白的，但现在文字明显在那里，而且羊皮纸看起来有几个世纪之久。它似乎来自泰伦娜·沙织者，她在日冕尖塔内下层、边桌上那件奥术装置旁研究。在你回来处理这里的事务之前，先读一读它。', '', '前往阳歌岛日冕尖塔内寻找泰伦娜·沙织者。', 0, 0, 0, 0, 0, 0, 0, 0, 9302122, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302123, 2, 2, 2, -521, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '骨制法典', '阅读骨制法典，前往南边通往桥的路上围栏坟墓处寻找莫萨利斯·墓语。', '我实话实说，$N：这本法典让我的手冰凉。它的封面用骨装订，我拿着它时听到微弱的低语。它似乎来自莫萨利斯·墓语，他在南边草甸上那处孤零零的围栏坟墓旁守夜，那里道路向下通往桥。这是一段长路，但道路平坦。在你回来处理这里的事务之前，先读一读它。', '', '前往南边通往桥的路上围栏坟墓处寻找莫萨利斯·墓语。', 0, 0, 0, 0, 0, 0, 0, 0, 9302123, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302124, 2, 2, 2, -528, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '余烬灼烧之书', '阅读余烬灼烧之书，前往日冕尖塔内寻找凯洛尔·余烬之手。', '小心，$N！这本书几乎烫得拿不住。余烬在其边缘爬行，却从不烧穿书页。它似乎来自凯洛尔·余烬之手，他在日冕尖塔内下层、坡道脚下工作。在你回来处理这里的事务之前，先读一读它。', '', '前往阳歌岛日冕尖塔内寻找凯洛尔·余烬之手。', 0, 0, 0, 0, 0, 0, 0, 0, 9302124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302125, 2, 2, 2, -522, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '低语羊皮纸', '阅读低语羊皮纸，前往法瑟林学院外寻找泽莉丝·影沼。', '有人让我把这个交给你，$N。我承认我宁愿没有碰过它。这张羊皮纸上的符号在我移开视线时会变换，我不断听到听不清的低语。它似乎来自泽莉丝·影沼，她在法瑟林学院门外等待，沿路向西，过了兰森·佩里隆营地。在你回来处理这里的事务之前，先读一读它。', '', '前往法瑟林学院外寻找泽莉丝·影沼。', 0, 0, 0, 0, 0, 0, 0, 0, 9302125, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302126, 2, 2, 2, -506, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 9302126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '星辰图', '阅读星辰图，前往日冕尖塔坡道顶端回廊寻找伊索伦·星织者。', '有人让我把这个交给你，$N。它似乎是一张夜空图表，上面绘制的星辰竟然真的闪烁着微光，即使在此处白天也是如此。它似乎来自伊索伦·星织者，他从日冕尖塔内坡道顶端的开放回廊上观察天空，在井之守望者索拉尼安下方。在你回来处理这里的事务之前，先读一读它。', '', '前往日冕尖塔上层回廊寻找伊索伦·星织者。', 0, 0, 0, 0, 0, 0, 0, 0, 9302126, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302127, 2, 2, 2, -507, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '阳光经文', '阅读阳光经文，前往日冕尖塔内寻找萨蕾莉娅·日誓。', '有人让我把这个交给你，$N。它似乎是一份以金色墨水写成的经文，如晨光般闪耀。它似乎来自萨蕾莉娅·日誓，一位在日冕尖塔内下层、东边长椅旁照料信徒的太阳祭司。在你回来处理这里的事务之前，先读一读它。', '', '前往阳歌岛日冕尖塔内寻找萨蕾莉娅·日誓。', 0, 0, 0, 0, 0, 0, 0, 0, 9302127, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302128, 2, 2, 2, -520, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '奥术图纸', '阅读奥术图纸，前往日冕尖塔以北的院子里寻找布雷兰·奥术纺锤。', '有人让我把这个交给你，$N。它似乎是一张布满齿轮、弹簧和奥术符文的图纸，我发誓折页里有东西在滴答作响。它似乎来自布雷兰·奥术纺锤，他在日冕尖塔以北商人之家的院子里、补给箱旁捣鼓发明。在你回来处理这里的事务之前，先读一读它。', '', '前往日冕尖塔以北的院子寻找布雷兰·奥术纺锤。', 0, 0, 0, 0, 0, 0, 0, 0, 9302128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302130, 2, 2, 2, -508, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '灰烬石板', '阅读灰烬石板，前往日冕尖塔以北灵魂医者旁寻找索尔温·灰纱。', '有人让我把这个交给你，$N。它似乎是一块灰色石板，覆着擦不掉的灰烬，刻着一把镰刀的图案。它似乎来自索尔温·灰纱，他与商人之家以北高地上的灵魂医者作伴，在纪念石旁。在你回来处理这里的事务之前，先读一读它。', '', '前往日冕尖塔以北灵魂医者旁寻找索尔温·灰纱。', 0, 0, 0, 0, 0, 0, 0, 0, 9302130, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512),
(9302132, 2, 2, 2, -527, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '符文石板', '阅读符文石板，前往日冕尖塔登陆点以西的斜坡上寻找奎尔纳·符文铭者。', '有人让我把这个交给你，$N。它似乎是一块小石板，刻着散发微弱紫色光芒的符文，比我学过的任何文字都要古老。它似乎来自奎尔纳·符文铭者，他在登陆点以西斜坡上那棵小树下雕刻符文。在你回来处理这里的事务之前，先读一读它。', '', '前往日冕尖塔登陆点以西寻找奎尔纳·符文铭者。', 0, 0, 0, 0, 0, 0, 0, 0, 9302132, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', '', 512)
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`), `AllowableRaces` = VALUES(`AllowableRaces`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (9302114, 9302116, 9302117, 9302118, 9302119, 9302120, 9302121, 9302122, 9302123, 9302124, 9302125, 9302126, 9302127, 9302128, 9302130, 9302132);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(9302114, 0, 8192, 8325, 1, 0),
(9302116, 0, 32768, 8325, 1, 0),
(9302117, 0, 65536, 8325, 1, 0),
(9302118, 0, 131072, 8325, 1, 0),
(9302119, 0, 262144, 8325, 1, 0),
(9302120, 0, 524288, 8325, 1, 0),
(9302121, 0, 1048576, 8325, 1, 0),
(9302122, 0, 2097152, 8325, 1, 0),
(9302123, 0, 4194304, 8325, 1, 0),
(9302124, 0, 8388608, 8325, 1, 0),
(9302125, 0, 16777216, 8325, 1, 0),
(9302126, 0, 33554432, 8325, 1, 0),
(9302127, 0, 67108864, 8325, 1, 0),
(9302128, 0, 134217728, 8325, 1, 0),
(9302130, 0, 536870912, 8325, 1, 0),
(9302132, 0, 2147483648, 8325, 1, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (9302114, 9302116, 9302117, 9302118, 9302119, 9302120, 9302121, 9302122, 9302123, 9302124, 9302125, 9302126, 9302127, 9302128, 9302130, 9302132);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(9302114, '所以契约找到了你。很好。你体内的饥渴还很小，$N；我们要先让它服从，再让它成长。'),
(9302116, '你也感觉到了，对吧？当风暴注意到某人时，空气会改变。让我们看看它会把你看成什么，$N。'),
(9302117, '你读了誓约，还是来了。那你已经明白代价了，$N。我们现在开始。'),
(9302118, '在我身边站一会儿，$N，俯瞰下方的草坪。你能看到的一切都值得守护。我们就从这里开始。'),
(9302119, '欢迎，$N。圣光已经等了足够久，等我们的人民回归它。我们不会再让它等待了。'),
(9302120, '你的脉搏很快，$N。很好。恐惧让血流得更快，而快速的血渴望被挥洒。'),
(9302121, '你没迷路就找到了营地。这比大多数人都强，$N。坐下，我们来看看你的箭法。'),
(9302122, '啊，$N。正好准时。好吧，是其中一个时间。让我们开始吧。'),
(9302123, '你大老远跑来站在一座坟墓旁。大多数生者都避开它们。这是我们要改变你的第一件事，$N。'),
(9302124, '你体内已经有热量了，$N。我从这里就能感觉到。让我们教它该往哪里去。'),
(9302125, '你能听到它们了吗，$N？还不行？你会的。靠近些，不要害怕它们说的话。'),
(9302126, '抬头看，$N。即使在白天它们也在那里。一旦你学会感知它们，你就再也停不下来。'),
(9302127, '欢迎，$N。你看起来像是等待太阳升起的人。它已经升起了。'),
(9302128, '你成功了，没有炸掉任何东西。今天至少我们中有一个做到了，$N。来，看看这个。'),
(9302130, '灵魂医者把死者送回去。我把他们送往前。和我在这里站一会儿，$N，你就会明白其中的区别。'),
(9302132, '稳的手和敏锐的眼。很好，$N。符文有耐心，但它们不宽恕。仔细看。');

DELETE FROM `quest_request_items` WHERE `ID` IN (9302114, 9302116, 9302117, 9302118, 9302119, 9302120, 9302121, 9302122, 9302123, 9302124, 9302125, 9302126, 9302127, 9302128, 9302130, 9302132);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(9302114, ''),
(9302116, ''),
(9302117, ''),
(9302118, ''),
(9302119, ''),
(9302120, ''),
(9302121, ''),
(9302122, ''),
(9302123, ''),
(9302124, ''),
(9302125, ''),
(9302126, ''),
(9302127, ''),
(9302128, ''),
(9302130, ''),
(9302132, '');

DELETE FROM `creature_queststarter` WHERE `quest` IN (9302114, 9302116, 9302117, 9302118, 9302119, 9302120, 9302121, 9302122, 9302123, 9302124, 9302125, 9302126, 9302127, 9302128, 9302130, 9302132);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(15278, 9302114),
(15278, 9302116),
(15278, 9302117),
(15278, 9302118),
(15278, 9302119),
(15278, 9302120),
(15278, 9302121),
(15278, 9302122),
(15278, 9302123),
(15278, 9302124),
(15278, 9302125),
(15278, 9302126),
(15278, 9302127),
(15278, 9302128),
(15278, 9302130),
(15278, 9302132);

DELETE FROM `creature_questender` WHERE `quest` IN (9302114, 9302116, 9302117, 9302118, 9302119, 9302120, 9302121, 9302122, 9302123, 9302124, 9302125, 9302126, 9302127, 9302128, 9302130, 9302132);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(9300464, 9302114),
(9300466, 9302116),
(9300467, 9302117),
(9300468, 9302118),
(9300469, 9302119),
(9300470, 9302120),
(9300471, 9302121),
(9300472, 9302122),
(9300473, 9302123),
(9300474, 9302124),
(9300475, 9302125),
(9300476, 9302126),
(9300477, 9302127),
(9300478, 9302128),
(9300480, 9302130),
(9300482, 9302132);

-- ---------------------------------------------------------------------------
-- 3. Spawns
-- ---------------------------------------------------------------------------
-- 9004414 Seldrath Duskblind (Felsworn): Sunstrider Isle: hand-placed (INFERRED) the yard of the merchants'
--   house north of the Sunspire, in front of the weapon racks (Be_Weaponrack 10403.6,-6349.9 and
--   10408.6,-6356.4), 11 yd from Raelis Dawnstar, inspected with inspect_area and passing surface.check; faces
--   3.088 toward the start landing (10349.6, -6357.3), where players come up the terrace, the way players arrive
-- 9004416 Aerisa Stormlace (Stormbringer): Sunstrider Isle: hand-placed (INFERRED) the overlook east of the
--   Sunspire above the sea cliffs, north of the great Silvermoon tree, inspected with inspect_area and passing
--   surface.check; faces 2.251 toward the Sunspire up the garden, the way players come (rising ground ahead, no
--   wall at chest height), the way players arrive
-- 9004417 Dravinor Ashbrand (Knight of Xoroth): Sunstrider Isle: hand-placed (INFERRED) the mob-free lawn east
--   of the fences where the road to Falthrien Academy leaves the Sunspire grounds, kept apart from the
--   magisters, inspected with inspect_area and passing surface.check; faces 5.131 toward the foot of the stairs
--   down from the terrace (10346.6, -6264.3), where the road comes down, the way players arrive
-- 9004418 Therandis Sunshield (Guardian): Sunstrider Isle: hand-placed (INFERRED) the grass slope west of the
--   start landing, north of the fenced flower bed, watching over the lawn below, inspected with inspect_area and
--   passing surface.check; faces 4.185 toward the start landing (10349.6, -6357.3), the way players arrive
-- 9004419 Aeloris Lightbrand (Templar): Sunstrider Isle: hand-placed (INFERRED) the terrace between the Sunspire
--   and the merchants' house, a Blood Knight post; moved 4.5 yd from the planned (10374, -6368) so that no
--   trainer has more than two others within 30 yd, inspected with inspect_area and passing surface.check; faces
--   2.893 toward the start landing (10349.6, -6357.3), the way players arrive
-- 9004420 Sanreia Crimsonvein (Bloodmage): Sunstrider Isle: hand-placed (INFERRED) the plaza south-west of the
--   Sunspire door, beside the Be_Banner01 (10339.6, -6380.1) and the barrels, where arrivals from the landing
--   pass, inspected with inspect_area and passing surface.check; faces 0.913 toward the gap between Magistrix
--   Erona and the start landing, where players come to the door, the way players arrive
-- 9004421 Lyssia Leafstride (Ranger): Sunstrider Isle: hand-placed (INFERRED) the north side of Lanthan
--   Perilon's Farstrider camp, 8 yd from Lanthan; moved from the planned (10312, -6238), 9 yd from Springpaw Cub
--   55140, to 24.8 yd from it and 5.8 yd off the Springpaw Lynx 55184 patrol, on the camp side opposite the cub,
--   inspected with inspect_area and passing surface.check; faces 0.150 toward the junction where the Sunspire
--   road passes the camp (10333.7, -6217.8), the way players arrive
-- 9004422 Taelenna Sandweaver (Chronomancer): Sunstrider Isle: hand-placed (INFERRED) the north side of the
--   Sunspire hall beside the arcane device on the side table (Be_Magicalknickknack04 10377,-6393) and the weapon
--   racks; a free spot: Kariel 9.5 yd, Shara Sunwing 7.4 yd, the never-running Arena Tournament pedestals 2.0
--   yd, inspected with inspect_area and passing surface.check; faces 2.644 toward the hall door (10355,
--   -6385.5), where players enter, the way players arrive
-- 9004423 Morthalis Gravewhisper (Necromancer): Sunstrider Isle: hand-placed (INFERRED) the lone fenced
--   gravestone (Be_Gravestone01 10044.5,-6318) in the meadow on the road south to the bridge, 305 yd from the
--   start; nearest Tender 42.6 yd, inspected with inspect_area and passing surface.check; faces 5.806 toward the
--   road from the north (the grave behind him), the way players arrive
-- 9004424 Caelor Emberhand (Pyromancer): Sunstrider Isle: hand-placed (INFERRED) the south-east side of the
--   Sunspire hall at the foot of the gallery ramp, the magisters' side near Julia Sunstriker's reagent crates; a
--   free spot: Julia 15.3 yd, Jesthenis 16.8 yd, broom paths 3.0-3.6 yd, inspected with inspect_area and passing
--   surface.check; faces 1.463 toward the hall door (10355, -6385.5) across the hall, the way players arrive
-- 9004425 Zaelith Shadowmoor (Cultist): Sunstrider Isle: hand-placed (INFERRED) outside Falthrien Academy, 19 yd
--   from its walkable entrance (10204, -6093), where Lanthan Perilon sends players after Felendren; 283 yd from
--   the start; nearest Feral Tender 21.9 yd, inspected with inspect_area and passing surface.check; faces 5.228
--   toward the signpost road up the slope, where players come down, the way players arrive
-- 9004426 Isolen Starweaver (Starcaller): Sunstrider Isle: hand-placed (INFERRED) the open-sky gallery at the
--   top of the Sunspire ramp, the middle of its north lobe below Well Watcher Solanian (14 yd); moved 4 yd from
--   the planned (10394, -6398), which lies on the loop of Broom 61728 (now 4 yd), inspected with inspect_area
--   and passing surface.check; faces 4.197 toward the top of the ramp (10385, -6417), the way players arrive
-- 9004427 Saleria Sunvow (Sun Cleric): Sunstrider Isle: hand-placed (INFERRED) the north-east side of the
--   Sunspire hall between the jars and the east bench, the side where the priestess Matron Arena stands (14.1
--   yd); a free spot: Sallina 8.6 yd, the never-running Arena Tournament pedestal 1.9 yd, broom path 4.4 yd,
--   inspected with inspect_area and passing surface.check; faces 2.258 toward the hall door (10355, -6385.5),
--   where players enter, the way players arrive
-- 9004428 Brelan Arcspindle (Tinker): Sunstrider Isle: hand-placed (INFERRED) the west end of the merchants'
--   house yard by the supply crates, 17.6 yd from Jainthess Thelryn, inspected with inspect_area and passing
--   surface.check; faces 4.650 toward the yard entrance along the yard, the way players arrive
-- 9004430 Solwyn Ashenveil (Reaper): Sunstrider Isle: hand-placed (INFERRED) the spirit healer's rise north of
--   the merchants' house, 11.7 yd from the Spirit Healer and 13 yd from the fenced memorial stone
--   (Be_Gravestone01 10468.1,-6374.8), inspected with inspect_area and passing surface.check; faces 2.611 toward
--   the top of the stairs up to the rise, the way players arrive
-- 9004432 Quelnar Runescribe (Runemaster): Sunstrider Isle: hand-placed (INFERRED) the grass slope west of the
--   start landing under the small Silvermoon tree (10344, -6331), 18 yd from Therandis, inspected with
--   inspect_area and passing surface.check; faces 4.880 toward the start landing (10349.6, -6357.3), the way
--   players arrive
DELETE FROM `creature` WHERE `guid` IN (9004414, 9004416, 9004417, 9004418, 9004419, 9004420, 9004421, 9004422, 9004423, 9004424, 9004425, 9004426, 9004427, 9004428, 9004430, 9004432) OR `guid` BETWEEN 9004400 AND 9004499;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9004414, 9300464, 530, 0, 0, 1, 1, 1, 10400, -6360, 36.111, 3.088, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Seldrath Duskblind, Felsworn Trainer'),
(9004416, 9300466, 530, 0, 0, 1, 1, 1, 10412, -6466, 37.861, 2.251, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Aerisa Stormlace, Stormbringer Trainer'),
(9004417, 9300467, 530, 0, 0, 1, 1, 1, 10338, -6245, 26.522, 5.131, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Dravinor Ashbrand, Knight of Xoroth Trainer'),
(9004418, 9300468, 530, 0, 0, 1, 1, 1, 10362, -6336, 31.166, 4.185, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Therandis Sunshield, Guardian Trainer'),
(9004419, 9300469, 530, 0, 0, 1, 1, 1, 10376, -6364, 35.81, 2.893, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Aeloris Lightbrand, Templar Trainer'),
(9004420, 9300470, 530, 0, 0, 1, 1, 1, 10338, -6375, 35.331, 0.913, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Sanreia Crimsonvein, Bloodmage Trainer'),
(9004421, 9300471, 530, 0, 0, 1, 1, 1, 10306, -6222, 27.365, 0.15, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Lyssia Leafstride, Ranger Trainer'),
(9004422, 9300472, 530, 0, 0, 1, 1, 1, 10378, -6398, 38.532, 2.644, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Taelenna Sandweaver, Chronomancer Trainer'),
(9004423, 9300473, 530, 0, 0, 1, 1, 1, 10046, -6325, 4.233, 5.806, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Morthalis Gravewhisper, Necromancer Trainer'),
(9004424, 9300474, 530, 0, 0, 1, 1, 1, 10350.5, -6427, 38.532, 1.463, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Caelor Emberhand, Pyromancer Trainer'),
(9004425, 9300475, 530, 0, 0, 1, 1, 1, 10213, -6110, 16.946, 5.228, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Zaelith Shadowmoor, Cultist Trainer'),
(9004426, 9300476, 530, 0, 0, 1, 1, 1, 10393.5, -6402, 49.721, 4.197, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Isolen Starweaver, Starcaller Trainer'),
(9004427, 9300477, 530, 0, 0, 1, 1, 1, 10382.5, -6419, 38.532, 2.258, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Saleria Sunvow, Sun Cleric Trainer'),
(9004428, 9300478, 530, 0, 0, 1, 1, 1, 10400, -6322, 35.658, 4.65, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Brelan Arcspindle, Tinker Trainer'),
(9004430, 9300480, 530, 0, 0, 1, 1, 1, 10466.5, -6358.5, 39.893, 2.611, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Solwyn Ashenveil, Reaper Trainer'),
(9004432, 9300482, 530, 0, 0, 1, 1, 1, 10345, -6330, 29.991, 4.88, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sunstrider Isle: Quelnar Runescribe, Runemaster Trainer');
