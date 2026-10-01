-- Conquest of Azeroth class trainers in Deathknell: the 19 trainers CoA placed there and a Barbarian, the 20
--   intro letters Shadow Priest Sarvis hands out after "The Mindless Ones", the first class chains that follow
--   them, and every creature, object and drop those chains need.
--
-- WHERE EACH VALUE COMES FROM
--   trainer posts  SOURCED-CLIENT: the QuestSuperTrack turn-in point of each intro letter, z from the server
--   floor (surface.floor). Undertaker Chite stands on the terrain under his point (0.6 yd above it). Shadow-
--   Walker Voss (letter 53016) and Alessia have no point and are placed by hand (INFERRED); Deathguard Bradforth
--   steps 1.6 yd off his point, 3.7 yd from Marla's Grave (ST6961); Brallmular 1.4 yd off his, clear of a bush.
--   facings  INFERRED by hand toward the way players arrive (the chapel door, the inn's front door, the stair
--   head, the graveyard gate); every choice is in the trainer's seed.
--   trainers  names and titles SOURCED-CACHE (creaturecache); Brallmular and Shadow-Walker Voss are named by
--   their letters (no cache record, new entries). Race from the name, title and class (INFERRED; Deathknell took
--   the undead and blood elf classes). Looks are stand-ins built from stock NPC looks: no SMSG_MIRRORIMAGE_DATA
--   capture of any trainer exists. Alessia is CoA's Barbarian trainer record 502951, cached only in the coa-
--   alpha capture of the union creaturecache (INFERRED for Deathknell).
--   quests  SOURCED-CACHE (questcache). Starter of the letters INFERRED from the stock letter pattern (3095-3099
--   start at Sarvis after quest 364) and the Details voice ("young one ... tasted death"). Chains start at the
--   letter's trainer (PrevQuestID = the letter) and continue by PrevQuestID; RewardNextQuest from the cache
--   inside this file. The Barbarian letter 9302412 and its Warband trial 9302413 are new (INFERRED), modelled on
--   53000 and 200104.
--   letter pages  page_text is missing from the world DB: 8 pages SOURCED-CACHE (pagetextcache, verbatim even
--   where they name older trainers), 12 composed from the quest Details (INFERRED). The shared chain items
--   661316, 661329 and 662316 get their pages here once for every zone (INFERRED; 662316 quotes quests 200001
--   and 200013; the Riddlestone riddle is zone-neutral as ct-coldridge and ct-northshire asked, since each zone
--   hides its Eye in another building).
--   chain places  INFERRED from the quest text and anchored on real landmarks: the abandoned farmhouses, the
--   Scarlet camp and Meven Korgal's tent, the barn and smithy, the hills south-west, the hidden gully in the
--   western mountains, and CoA-only props (the Elune statue with candles, the wrecked wagon, the inn's canopy
--   bed, the candle-lit tombstones).
--   drop chances  SOURCED-EXILES creature_loot where it has them; unique holders drop 100%.
--   stock trainers  every one keeps its post and role. Dannal Stern (guid 28464), 2.48 yd from Dabbert Staze's
--   sourced point, is hidden while his quest copy 299240 stands in his alcove (rev_20260924_13).
--   stock patrols  two waypoint turnarounds that walked onto a trainer post and Marla's Grave are moved by hand
--   (INFERRED, the nearest open floor on the same route); claimed in coordination/ct-deathknell.md.
--
-- Blocks: creature guids 9003700-9003899, gameobject guids 7912400-7912499, creature entries 9300250-9300299,
--   gameobject entries 9301250-9301299, gossip and npc_text 930350-930399, quest and item 9302412-9302413,
--   page_text 931412. Runs after rev_20260923_05_coa_class_trainer_core.sql.

-- ---------------------------------------------------------------------------
-- 1. Trainers
-- ---------------------------------------------------------------------------
-- 50276 Dar'danis, Felsworn: blood elf: Felsworn is a blood elf class, not an undead one, and the name is
--   Thalassian. look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: blood elf male from
--   Pathstalker Kariel (display 15519), changed hair 6/4, face 3, Felscale breastplate, pants, gloves.
-- 50275 Bailey Horrorhate, Witch Hunter: Forsaken male: the cached letter page 15017 calls him "him" and "undead
--   witch hunter". look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken male
--   from David Trias (display 1580), changed hair 3/2, face 5, wide-brimmed hat, Inquisitor's Shawl.
-- 502773 Dabbert Staze, Stormbringer: Forsaken male: 200100 calls him "him"; Stormbringer is an undead class.
--   look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken male from Bethor
--   Iceshard (display 4055), changed hair 4/6, face 2, Earthfury breastplate and epaulets.
-- 9300250 Brallmular, Knight of Xoroth: blood elf male: Knight of Xoroth is a blood elf class, not an undead
--   one. look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: blood elf male from Aeldon
--   Sunbrand (display 15906), changed hair 2/5, face 5, Dreadnaught breastplate and pauldrons (heavy dark
--   plate), bareheaded to show the mortal visage.
-- 50279 Deathguard Bradforth, Guardian: Forsaken male: "Deathguard" title; Guardian is an undead class. look is
--   a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken male from Deathguard Simmer
--   (display 1648), changed skin 3, face 6, hair 3/4, Executor Arren's pauldrons.
-- 502803 Vaelion Grandbell, Templar: blood elf male: Thalassian name (trainers.md), Blood Knight Templar. look
--   is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: blood elf male from Jesthenis
--   Sunstriker (display 15521), changed hair 4/1, face 2, Blood Knight pauldrons and tabard.
-- 502922 Irina Valreed, Bloodmage: Forsaken female: the cached letter page 15001 is written to an "undead blood
--   mage". look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken female from
--   Isabella (display 1592), changed hair 1/7, face 3, Crimson Acolyte raiments and mantle.
-- 50281 Gustaf Blightflight, Ranger: Forsaken male: the letter speaks of the undead ranger; Ranger is an undead
--   class. look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken male from Karos
--   Razok (display 3832), changed hair 7/3, face 4, hood off.
-- 502822 Quardormi, Chronomancer: blood elf male: Chronomancer is a blood elf class, not an undead one. look is
--   a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: blood elf male from Magister Duskwither
--   (display 16658), changed hair 9/3, face 6, sand-coloured Desert Shoulders.
-- 502930 Dornall Plagueweaver, Necromancer: Forsaken male: "Plagueweaver", Necromancer is an undead class. look
--   is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken male from Gunther Arcanus
--   (display 3518), changed face 8, bald, mask off, Plagueheart robe.
-- 50293 Cadmus Emberblaze, Pyromancer: Forsaken male: 200145 "my heart stopped beating years ago", 200140 calls
--   him "he". look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken male from
--   Father Lazarus (display 2618), changed hair 8/5, face 3, Embersilk robes, Crimson Silk shoulders.
-- 502833 Thaddeus Voidseeker, Cultist: Forsaken male: Cultist is an undead class; the cached page 15002 is
--   written to an undead cultist. look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists:
--   Forsaken male from Shadow Priest Allister (display 1948), changed hair 2/9, face 7, Twilight Cultist cowl,
--   robe, mantle.
-- 502850 Landralanis, Starcaller: blood elf female: 200033 opens in Thalassian ("Bal'a dash, malanore") and
--   speaks of "my people". look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: blood
--   elf female from Julia Sunstriker (display 15522), changed hair 8/2, face 4, Starry Robes of the Crescent,
--   Celestial pauldrons.
-- 50327 Sunspeaker Talethia, Sun Cleric: blood elf female: "Sunspeaker" (trainers.md); Sun Cleric is a blood elf
--   class. look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: blood elf female from
--   Matron Arena (display 15518), changed hair 5/0, face 1, Sunfire robe.
-- 502873 Riley Jett, Tinker: Forsaken female: 200098 calls her "she"; Tinker is an undead class. look is a
--   stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken female from Susan Tillinghast
--   (display 10563), changed hair 3/1, face 5, Bright-Eye goggles.
-- 650688 Apothecary Kelan, Venomancer: Forsaken male: "Apothecary" (Royal Apothecary Society), cached page 15015
--   says "him". look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken male from
--   Doctor Marsh (display 2624), changed hair 6/2, face 1, Apothecary's robe, gloves, Master Apothecary cape.
-- 502891 Undertaker Chite, Reaper: Forsaken male: "Undertaker"; 200039 "looking at my helmet" (he wears a helm);
--   Reaper is an undead class. look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists:
--   Forsaken male from Undertaker Mordo (display 1582), changed hair 1/2, face 6, Carved Bone Helm,
--   Deathstalker's vest.
-- 502913 Wilhelm Balthier, Runemaster: Forsaken male: his own greeting 75016 ("carve it on our bones") is the
--   undead Runemaster's. look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer exists: Forsaken
--   male from Brother Malach (display 3876), changed hair 5/0, face 9, Demonic Runed Spaulders, Darkrune
--   breastplate.
-- 9300251 Shadow-Walker Voss, Witch Doctor: troll male: "Shadow-Walker" is a Darkspear title and the letter
--   speaks of fetishes and restless spirits; Witch Doctor is a troll class. look is a stand-in, no
--   SMSG_MIRRORIMAGE_DATA capture of this trainer exists: troll male from Witch Doctor Unbagwa (display 4661),
--   changed hair 5/2, face 5, tusks 4, Big Voodoo mask and cloak.
-- 502951 Alessia, Barbarian: Forsaken female: CoA's Barbarian trainer record 502951 (coa-alpha capture of the
--   union creaturecache, stock-client creatures-007.lua, Exiles), the undead slot of the start-zone Barbarian
--   set 502950 Camp Narache, 502952 Coldridge Valley, 502953 Valley of Trials and twin of Undercity's 602951
--   (INFERRED for Deathknell); female by her first name; display 561656 does not resolve and no cache, Exiles,
--   atlas or capture holds another look. look is a stand-in, no SMSG_MIRRORIMAGE_DATA capture of this trainer
--   exists: Forsaken female from Angela Curthas (display 2658), changed face 5, hair 4/5, features 3, bare
--   hands, spiked Horde leather shoulders.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(50276, '达达尼斯', '恶魔猎手训练师', 930014, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50275, '贝利·恐恨', '猎魔人训练师', 930015, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(502773, '达伯特·斯塔兹', '风暴使者训练师', 930016, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300250, '布拉尔穆拉', '克索诺斯骑士训练师', 930017, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50279, '死亡守卫布拉德福斯', '守护者训练师', 930018, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502803, '瓦利昂·宏钟', '圣殿骑士训练师', 930019, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502922, '伊琳娜·瓦尔里德', '血法师训练师', 930020, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50281, '古斯塔夫·枯萎飞行', '游侠训练师', 930021, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502822, '夸多弥', '时光术士训练师', 930022, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502930, '多纳尔·瘟疫编织者', '死灵法师训练师', 930023, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(50293, '卡德摩斯·余烬烈焰', '炎术师训练师', 930024, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502833, '萨迪厄斯·虚空追寻者', '邪教徒训练师', 930025, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502850, '兰德拉尼斯', '唤星者训练师', 930026, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(50327, '太阳低语者塔莱西亚', '太阳祭司训练师', 930027, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(502873, '莱利·杰特', '工匠训练师', 930350, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(650688, '药剂师凯兰', '剧毒术士训练师', 930029, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502891, '殡葬者奇泰', '死神训练师', 930030, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502913, '威廉·巴尔蒂尔', '符文大师训练师', 930351, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(9300251, '暗影行者沃斯', '巫医训练师', 930013, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, ''),
(502951, '阿莱西亚', '野蛮人训练师', 930012, 10, 10, 0, 68, 51, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 134217728, 0, '', 0, 1, 1, 1, 1, 2, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (50275, 50276, 50279, 50281, 50293, 50327, 502773, 502803, 502822, 502833, 502850, 502873, 502891, 502913, 502922, 502930, 502951, 650688, 9300250, 9300251);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(50276, 0, 15476, 1, 1),
(50275, 0, 57, 1, 1),
(502773, 0, 57, 1, 1),
(9300250, 0, 15476, 1, 1),
(50279, 0, 57, 1, 1),
(502803, 0, 15476, 1, 1),
(502922, 0, 58, 1, 1),
(50281, 0, 57, 1, 1),
(502822, 0, 15476, 1, 1),
(502930, 0, 57, 1, 1),
(50293, 0, 57, 1, 1),
(502833, 0, 57, 1, 1),
(502850, 0, 15475, 1, 1),
(50327, 0, 15475, 1, 1),
(502873, 0, 58, 1, 1),
(650688, 0, 57, 1, 1),
(502891, 0, 57, 1, 1),
(502913, 0, 57, 1, 1),
(9300251, 0, 1478, 1, 1),
(502951, 0, 58, 1, 1);

DELETE FROM `creature_display_preset` WHERE `entry` IN (50275, 50276, 50279, 50281, 50293, 50327, 502773, 502803, 502822, 502833, 502850, 502873, 502891, 502913, 502922, 502930, 502951, 650688, 9300250, 9300251);
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`, `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`, `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`)
VALUES
(50276, 15476, 10, 0, 1, 1, 3, 6, 4, 0, 0, 0, 0, 0, 32038, 2014, 32037, 29230, 2016, 32039, 0, 0),
(50275, 57, 5, 0, 1, 4, 5, 3, 2, 1, 0, 24620, 25394, 3564, 0, 2287, 1199, 1112, 3565, 3566, 0, 0),
(502773, 57, 5, 0, 1, 2, 2, 4, 6, 12, 0, 0, 25213, 8497, 25212, 0, 5663, 6279, 0, 0, 0, 0),
(9300250, 15476, 10, 0, 1, 3, 5, 2, 5, 0, 0, 0, 28388, 0, 28263, 26567, 26660, 26568, 0, 26572, 0, 0),
(50279, 57, 5, 0, 1, 3, 6, 3, 4, 0, 0, 11992, 1029, 0, 3522, 3523, 3524, 3616, 3526, 3527, 0, 0),
(502803, 15476, 10, 0, 1, 0, 2, 4, 1, 0, 0, 0, 32364, 0, 26571, 26567, 26660, 26568, 0, 26572, 0, 30597),
(502922, 58, 5, 1, 1, 2, 3, 1, 7, 5, 0, 0, 56251, 1536, 56235, 3760, 3171, 3576, 0, 13543, 0, 0),
(50281, 57, 5, 0, 1, 5, 4, 7, 3, 1, 0, 0, 5583, 6256, 0, 6257, 6206, 6258, 0, 0, 0, 0),
(502822, 15476, 10, 0, 1, 3, 6, 9, 3, 0, 0, 0, 20479, 0, 29649, 29683, 29684, 6965, 0, 0, 0, 0),
(502930, 57, 5, 0, 1, 3, 8, 0, 0, 10, 0, 0, 0, 7433, 28396, 3299, 3274, 3011, 0, 7429, 0, 0),
(50293, 57, 5, 0, 1, 0, 3, 8, 5, 6, 0, 0, 10558, 8494, 20534, 3237, 8495, 6346, 0, 0, 0, 0),
(502833, 57, 5, 0, 1, 0, 7, 2, 9, 10, 0, 26388, 26443, 5265, 26161, 3322, 7417, 0, 0, 0, 0, 0),
(502850, 15475, 10, 1, 1, 2, 4, 8, 2, 0, 0, 0, 20730, 0, 35966, 3585, 26690, 4339, 0, 0, 0, 0),
(50327, 15475, 10, 1, 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, 41801, 3585, 26693, 4339, 0, 0, 0, 0),
(502873, 58, 5, 1, 1, 2, 5, 3, 1, 0, 0, 15161, 0, 9951, 0, 3603, 10534, 10532, 0, 2825, 0, 0),
(650688, 57, 5, 0, 1, 0, 1, 6, 2, 1, 0, 2330, 0, 6347, 9722, 2923, 3335, 6348, 0, 15993, 14802, 0),
(502891, 57, 5, 0, 1, 1, 6, 1, 2, 0, 0, 45122, 0, 5621, 30144, 6070, 5622, 8083, 0, 0, 0, 0),
(502913, 57, 5, 0, 1, 4, 9, 5, 0, 3, 0, 0, 18639, 8493, 26261, 6344, 5684, 5676, 0, 0, 0, 0),
(9300251, 1478, 8, 0, 1, 1, 5, 5, 2, 4, 0, 20179, 8316, 9795, 5512, 9017, 9112, 0, 0, 9005, 18966, 0),
(502951, 58, 5, 1, 1, 2, 5, 4, 5, 3, 0, 0, 8316, 6237, 0, 6238, 2038, 4237, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (50275, 50276, 50279, 50281, 50293, 50327, 502773, 502803, 502822, 502833, 502850, 502873, 502891, 502913, 502922, 502930, 502951, 650688, 9300250, 9300251);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(50276, 1, 12482, 12502, 0),
(50275, 1, 2520, 0, 15807),
(502773, 1, 2030, 0, 0),
(9300250, 1, 13051, 0, 0),
(50279, 1, 852, 2446, 0),
(502803, 1, 27538, 27449, 0),
(502922, 1, 3187, 15947, 0),
(50281, 1, 2027, 0, 8180),
(502822, 1, 15041, 0, 0),
(502930, 1, 2013, 0, 0),
(50293, 1, 13000, 0, 0),
(502833, 1, 2209, 12863, 0),
(502850, 1, 25330, 0, 0),
(50327, 1, 23362, 29923, 0),
(502873, 1, 6219, 0, 2509),
(650688, 1, 2139, 2494, 0),
(502891, 1, 13054, 0, 0),
(502913, 1, 5956, 26569, 0),
(9300251, 1, 25183, 0, 0),
(502951, 1, 1680, 0, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (50275, 50276, 50279, 50281, 50293, 50327, 502773, 502803, 502822, 502833, 502850, 502873, 502891, 502913, 502922, 502930, 502951, 650688, 9300250, 9300251);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`)
VALUES
(50276, 900014),
(50275, 900015),
(502773, 900016),
(9300250, 900017),
(50279, 900018),
(502803, 900019),
(502922, 900020),
(50281, 900021),
(502822, 900022),
(502930, 900023),
(50293, 900024),
(502833, 900025),
(502850, 900026),
(50327, 900027),
(502873, 900028),
(650688, 900029),
(502891, 900030),
(502913, 900032),
(9300251, 900013),
(502951, 900012);

-- ---------------------------------------------------------------------------
-- 2. Named menus and the dying man's words
-- ---------------------------------------------------------------------------
-- Riley Jett greets with her own cached line (npccache 25021); Wilhelm Balthier with the undead Runemaster pair
--   75016/175016 (SOURCED-CACHE). Dalin Soft's two texts are INFERRED.
DELETE FROM `npc_text` WHERE `ID` IN (25021, 75016, 175016, 930352, 930353);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`)
VALUES
(25021, '莱利·杰特为你效劳！需要做什么东西吗？需要修修补补什么吗？来吧！让我修点什么、造点什么，或者炸点什么吧！', '莱利·杰特为你效劳！需要做什么东西吗？需要修修补补什么吗？来吧！让我修点什么、造点什么，或者炸点什么吧！', 0, 0, 1, 1, 1, 0, 0, 0, 0),
(75016, '你知道吗，符文大师会把符文刻在自己皮肤上来驾驭力量……$B$B理论上听起来很棒，直到你不得不把它们刻在腐烂的肉体上！$B$B幸好我们还能把它们刻在骨头上，哈哈哈！', '你知道吗，符文大师会把符文刻在自己皮肤上来驾驭力量……$B$B理论上听起来很棒，直到你不得不把它们刻在腐烂的肉体上！$B$B幸好我们还能把它们刻在骨头上，哈哈哈！', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(175016, '古老的符文大师之术需要奉献与牺牲，$C。这条道路不适合你。', '古老的符文大师之术需要奉献与牺牲，$C。这条道路不适合你。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(930352, '<达林·索夫特躺在树冠下，他的呼吸在已不再需要它的胸腔中呼噜作响。>$B$B天灾曾夺走我一次，黑暗女士的女妖又把我拖了回来。现在我感觉到它又在拉扯我了，$c。告诉我……另一边有什么在等着？', '<达林·索夫特躺在树冠下，他的呼吸在已不再需要它的胸腔中呼噜作响。>$B$B天灾曾夺走我一次，黑暗女士的女妖又把我拖了回来。现在我感觉到它又在拉扯我了，$c。告诉我……另一边有什么在等着？', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(930353, '暗影之地……所以它有个名字。谢谢你，$n。这次它来找我的时候，我不会害怕了。$B$B告诉奇泰，我准备好了。', '暗影之地……所以它有个名字。谢谢你，$n。这次它来找我的时候，我不会害怕了。$B$B告诉奇泰，我准备好了。', 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (930350, 930351);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(930350, 25021),
(930350, 125018),
(930351, 75016),
(930351, 175016);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (930350, 930351);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(930350, 0, 3, '我想接受工匠的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0),
(930351, 0, 3, '我想接受符文大师的训练。', 0, 5, 16, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` IN (930350, 930351) AND `SourceTypeOrReferenceId` IN (14, 15);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(14, 930350, 25021, 0, 0, 15, 0, 134217728, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Tinker'),
(14, 930350, 125018, 0, 0, 15, 0, 134217728, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Tinker'),
(15, 930350, 0, 0, 0, 15, 0, 134217728, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Tinker'),
(14, 930351, 75016, 0, 0, 15, 0, 2147483648, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a Runemaster'),
(14, 930351, 175016, 0, 0, 15, 0, 2147483648, 0, 0, 1, 0, 0, '', 'Show gossip text if player is not a Runemaster'),
(15, 930351, 0, 0, 0, 15, 0, 2147483648, 0, 0, 0, 0, 0, '', 'Show gossip option if player is a Runemaster');

DELETE FROM `gossip_menu` WHERE `MenuID` IN (930352, 930353);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(930352, 930352),
(930353, 930353);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 930352;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(930352, 0, 0, '殡葬者奇泰派我来的。我可以告诉你彼岸有什么。', 0, 1, 1, 930353, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceGroup` = 930352 AND `SourceTypeOrReferenceId` = 15;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(15, 930352, 0, 0, 0, 9, 0, 200039, 0, 0, 0, 0, 0, '', 'Dalin Soft - Show gossip option only while Call of the Shadowlands is taken');

-- ---------------------------------------------------------------------------
-- 3. Chain creatures
-- ---------------------------------------------------------------------------
-- 299240 Dannal Stern: Cultist "Going MAD!" 200075: the quest's own kill entry, named as the text names him; the
--   stock warrior trainer 2119's own display and weapon; neutral like Deathknell's other targets (faction 7).
-- 299226 Crazed Undead: Knight of Xoroth "The Demon Inside" 200035: the quest's own kill entry, named from its
--   objective ("Kill the crazed Undead"); a freshly risen Forsaken (Forsaken Recruit display 21748, a stand-in).
-- 9300252 Suspicious Blood Elf: Bloodmage "Blood Is Power" 200019: holds the Tome of Blood, "a suspicious Blood
--   Elf rummaging in the abandoned houses"; Tranquillien Scout display 16088 (a stand-in).
-- 9300253 Felo: Ranger chain 200011-200013: Gustaf's falcon, named in 200011 ("my falcon, Felo"); CoA's own
--   Brown Falcon display 81081 (creaturecache 116129, birdsofprey.mdx) at scale 0.6, as ct-narache's falcon
--   Keed.
-- 9300254 Scorch: Pyromancer "The Way of the Pyromancer" 200145: the fire elemental bound to a campfire in the
--   hills; small fire elemental (display 1405 at scale 0.6, a stand-in).
-- 9300257 Mortimer: Barbarian "Welcome to the Warband" 9302413: the rookie the Warband turned away, as Gerald
--   and Gok in the other starting areas (name INFERRED); Forsaken Thug display 4132 (a stand-in); neutral and
--   immune to NPCs.
-- 9300255 Dalin Soft: Reaper "Call of the Shadowlands" 200039: the dying man of Deathknell, named in the
--   objective; Forsaken Refugee display 27588 (a stand-in).
-- 9300256 Agatha Harlow: Witch Hunter "The Hunt Begins" 200057: the witch in her disguise, a Deathknell
--   herbalist (name INFERRED; Forsaken Herbalist display 4129, a stand-in); the torch reveals the witch 299333.
-- 685012 [KC] Poison Sunspeaker Talethia: Venomancer "Poisoning the World" 200024 credit marker, objective 1.
-- 685013 [KC] Poison Bailey Horrorhate: Venomancer "Poisoning the World" 200024 credit marker, objective 2.
-- 685014 [KC] Poison Dornall Plagueweaver: Venomancer "Poisoning the World" 200024 credit marker, objective 3.
-- 685034 Invisible Dummy (Starcaller3): Starcaller "Champion of Elune" 200033: SOURCED-CACHE name, type, display
--   and health; stands at the toppled Elune statue and credits 685031.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(299240, '丹纳尔·斯特恩', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(299226, '疯狂的亡灵', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(9300252, '可疑的血精灵', NULL, 0, 3, 3, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 9300252, '', 0, 1, 1, 1, 1, 0, ''),
(9300253, '费洛', NULL, 0, 3, 3, 0, 35, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 1, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(9300254, '斯考奇', NULL, 0, 4, 4, 0, 14, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 4, 0, 9300254, '', 0, 1.5, 1, 1, 1, 0, ''),
(9300257, '莫蒂默', NULL, 0, 4, 4, 0, 7, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 512, 2048, 7, 0, 0, '', 0, 1, 1, 1, 1, 0, ''),
(9300255, '达林·索夫特', NULL, 930352, 5, 5, 0, 68, 1, 1, 1.14286, 20, 0, 2000, 2000, 1, 768, 2048, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 2, ''),
(9300256, '阿加莎·哈洛', NULL, 0, 4, 4, 0, 68, 0, 1, 1.14286, 20, 0, 2000, 2000, 8, 768, 2048, 7, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 0, ''),
(685012, '[KC] 毒害 太阳低语者塔莱西亚', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, '', 0, 1, 1, 1, 1, 130, ''),
(685013, '[KC] 毒害 贝利·恐恨', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, '', 0, 1, 1, 1, 1, 130, ''),
(685014, '[KC] 毒害 多纳尔·瘟疫编织者', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 10, 0, 0, '', 0, 1, 1, 1, 1, 130, ''),
(685034, '隐形假人（唤星者3）', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 33555202, 2048, 12, 0, 0, 'SmartAI', 0, 0.93, 1, 1, 1, 130, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (299226, 299240, 685012, 685013, 685014, 685034, 9300252, 9300253, 9300254, 9300255, 9300256, 9300257);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(299240, 0, 1578, 1, 1),
(299226, 0, 21748, 1, 1),
(9300252, 0, 16088, 1, 1),
(9300253, 0, 81081, 0.6, 1),
(9300254, 0, 1405, 0.6, 1),
(9300257, 0, 4132, 1, 1),
(9300255, 0, 27588, 1, 1),
(9300256, 0, 4129, 1, 1),
(685012, 0, 11686, 1, 1),
(685013, 0, 11686, 1, 1),
(685014, 0, 11686, 1, 1),
(685034, 0, 81082, 1, 1);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (299240, 9300252, 9300257);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(299240, 1, 1899, 0, 0),
(9300252, 1, 2209, 0, 0),
(9300257, 1, 12348, 0, 0);

-- ---------------------------------------------------------------------------
-- 4. Chain objects
-- ---------------------------------------------------------------------------
-- 9301250 Ritual Circle: Necromancer chain 200052-200054: the circle that ends 200052 and 200053 and starts
--   200053 and 200054; dirt pentagram (display 456).
-- 9301251 Bound Campfire: Pyromancer 200145: the rogue pyromancers' campfire; using it calls Scorch out of the
--   flames (undead campfire, display 396); usable only while the quest is incomplete.
-- 9301252 Training Wand: Chronomancer 200168: Quardormi's wand, left "next door"; a wand model (display 100515).
-- 9301253 Eye of the Beholder: Runemaster 200113: the answer to the riddle, "within the Inn"; a blue gem
--   (display 2770).
-- 9301254 Lost Pendant: Sun Cleric 200062: Talethia's pendant, dropped as the Scarlets ran her out of their
--   camp; a necklace (display 63520).
-- 9301255 Scrap Metal: Tinker 200069: scrap "in and around the tent of their leader" (Meven Korgal); a small
--   gear (display 5391).
-- 9301256 Skull of Pax: Felsworn 200023: the demon skull "placed in the surrounding area"; a demon skull
--   (display 226).
-- 9301257 Hidden Statue: Templar 200081: the statue of a paladin "secretly erected here after the third war",
--   hidden in a gap in the western mountains; Uther statue model (display 6815) at a small scale.
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`)
VALUES
(9301250, 2, 456, '仪式法阵', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI'),
(9301251, 10, 396, '束缚营火', '', 1, 0, 200145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI'),
(9301252, 3, 100515, '训练魔杖', '', 1, 1689, 9301252, 0, 0, 0, 0, 0, 0, 200168, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301253, 3, 2770, '观者之眼', '', 0.8, 1689, 9301253, 0, 0, 0, 0, 0, 0, 200113, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301254, 3, 63520, '遗失的吊坠', '', 0.6, 1689, 9301254, 0, 0, 0, 0, 0, 0, 200062, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301255, 3, 5391, '废金属', '', 1, 1689, 9301255, 0, 0, 0, 0, 0, 0, 200069, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301256, 3, 226, '帕克斯的头骨', '', 0.7, 1689, 9301256, 0, 0, 0, 0, 0, 0, 200023, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9301257, 5, 6815, '隐藏的雕像', '', 0.35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '')
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`), `AIName` = VALUES(`AIName`);

-- ---------------------------------------------------------------------------
-- 5. Quests
-- ---------------------------------------------------------------------------
-- RewardNextQuest (the next step is offered at turn-in): questcache NextQuestInChain where the next quest is in
--   this file: 200140->200141, 200141->200142, 200052->200053, 200053->200054, 200011->200012, 200012->200013.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(53000, 2, 2, 2, -508, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '怒火石板', '前往丧钟镇寻找殡葬者奇泰。', '有人嘱咐我把这个交给你，年轻人。这是一块骨制石板，其上刻有脉动着原始怒火的符文。这些古老铭文诉说着超越死亡本身的无尽狂怒，它似乎来自殡葬者奇泰——在丧钟镇传授死神之道的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找殡葬者奇泰。', 0, 0, 0, 0, 0, 0, 0, 0, 9200570, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53001, 2, 2, 2, -516, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '猩红卷轴', '前往丧钟镇寻找伊琳娜·瓦尔里德。', '有人嘱咐我把这个交给你，年轻人。这是一卷被古老鲜血浸染的黑暗卷轴，散发着邪恶的力量。猩红之术召唤着那些明白死亡与亡灵不过是工具的人——它似乎来自伊琳娜·瓦尔里德，在丧钟镇修行这些禁忌之术的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找伊琳娜·瓦尔里德。', 0, 0, 0, 0, 0, 0, 0, 0, 9200571, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53002, 2, 2, 2, -522, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '虚空手稿', '前往丧钟镇寻找萨迪厄斯·虚空追寻者。', '有人嘱咐我把这个交给你，年轻人。这是一份破烂的手稿，上面覆满了在被注视时仿佛会蠕动变幻的符号。远古实体的低语从中回响——它似乎来自萨迪厄斯·虚空追寻者，在丧钟镇与超越死亡的力量沟通的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找萨迪厄斯·虚空追寻者。', 0, 0, 0, 0, 0, 0, 0, 0, 9200572, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53003, 2, 2, 2, -517, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '邪能契约', '前往丧钟镇寻找达达尼斯。', '有人嘱咐我把这个交给你，年轻人。这是一份被绿色火焰缠绕的恶魔契约，其地狱般的文字燃烧着不洁的意志。邪能能量与那些已尝过死亡滋味的人产生共鸣——它似乎来自达达尼斯，在丧钟镇号令这些黑暗力量的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找达达尼斯。', 0, 0, 0, 0, 0, 0, 0, 0, 9200573, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53004, 2, 2, 2, -529, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '守护者誓约', '前往丧钟镇寻找死亡守卫布拉德福斯。', '有人嘱咐我把这个交给你，年轻人。这是一块铭刻着守护结界的钢制石板，散发着超越死亡的防御魔法。守护者的誓约甚至约束亡灵去保护他人——它似乎来自死亡守卫布拉德福斯，在丧钟镇坚守这一神圣职责的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找死亡守卫布拉德福斯。', 0, 0, 0, 0, 0, 0, 0, 0, 9200574, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53005, 2, 2, 2, -518, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '暗影法令', '前往丧钟镇寻找布拉尔穆拉。', '有人嘱咐我把这个交给你，年轻人。这是一份被暗影缠绕的宣告，带有克索诺斯的印章，散发着被高尚目的所淬炼的冰冷黑暗。克索诺斯骑士深知荣誉超越生死——它似乎来自布拉尔穆拉，在丧钟镇坚守这些黑暗誓约的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找布拉尔穆拉。', 0, 0, 0, 0, 0, 0, 0, 0, 9200575, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53006, 2, 2, 2, -521, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡法典', '前往丧钟镇寻找多纳尔·瘟疫编织者。', '有人嘱咐我把这个交给你，年轻人。这是一块古老的骨制石板，刻有脉动着死亡力量的死灵符文。号令死者的技艺对那些亲身经历过死亡的人来说浑然天成——它似乎来自多纳尔·瘟疫编织者，在丧钟镇精通这些技艺的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找多纳尔·瘟疫编织者。', 0, 0, 0, 0, 0, 0, 0, 0, 9200576, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53007, 2, 2, 2, -530, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '时空卷轴', '前往丧钟镇寻找夸多弥。', '有人嘱咐我把这个交给你，年轻人。这是一卷噼啪作响着原始元素怒火的卷轴，自然的力量被不朽的意志所束缚。这卷轴让我感到恐惧，$n，它并不召唤我。然而，你的召唤似乎来自夸多弥，在丧钟镇扭曲时间与空间的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找夸多弥。', 0, 0, 0, 0, 0, 0, 0, 0, 9200577, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53008, 2, 2, 2, -528, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '灼烧之书', '前往丧钟镇寻找卡德摩斯·余烬烈焰。', '有人嘱咐我把这个交给你，年轻人。这是一份冒着烟的手稿，燃烧着冰冷的火焰——没有温度、却吞噬一切。死亡无法熄灭炎术师的火焰——它只会将其转化为更加可怖的存在——它似乎来自卡德摩斯·余烬烈焰，在丧钟镇号令这些死亡之火的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找卡德摩斯·余烬烈焰。', 0, 0, 0, 0, 0, 0, 0, 0, 9200578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53009, 2, 2, 2, -505, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '猎人指南', '前往丧钟镇寻找古斯塔夫·枯萎飞行。', '有人嘱咐我把这个交给你，年轻人。这是一本皮革装订的书，上面留有早已死去的野兽的足迹，散发着腐烂与古老荒野的气息。死亡并未终结游侠与荒野的联系——它将其深化为某种更为黑暗的存在——它似乎来自古斯塔夫·枯萎飞行，在丧钟镇的暗影中潜行的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找古斯塔夫·枯萎飞行。', 0, 0, 0, 0, 0, 0, 0, 0, 9200579, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53010, 2, 2, 2, -527, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '符文石板', '前往丧钟镇寻找威廉·巴尔蒂尔。', '有人嘱咐我把这个交给你，年轻人。这是一块石板，上面刻有脉动着不朽之力的发光符文。符文大师的技艺超越凡尘——他们的铭刻在血肉腐烂之后依然长存——它似乎来自威廉·巴尔蒂尔，在丧钟镇雕刻这些永恒符号的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找威廉·巴尔蒂尔。', 0, 0, 0, 0, 0, 0, 0, 0, 9200580, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53011, 2, 2, 2, -525, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴手稿', '前往丧钟镇寻找达伯特·斯塔兹。', '有人嘱咐我把这个交给你，年轻人。这是一份噼啪作响着幽灵闪电的手稿，雷声从彼岸的领域回荡而来。风暴使者的暴风雨携带着亡者的声音——那是以迷失灵魂的怒火呼啸的狂风——它似乎来自达伯特·斯塔兹，在丧钟镇号令这些幽灵风暴的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找达伯特·斯塔兹。', 0, 0, 0, 0, 0, 0, 0, 0, 9200581, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53012, 2, 2, 2, -507, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '太阳圣典', '前往丧钟镇寻找太阳低语者塔莱西亚。', '有人嘱咐我把这个交给你，年轻人。这是一份金色经文，散发着苍白的光芒——被死亡帷幕过滤后的神圣能量。即便是亡灵也能引导太阳的力量，将神圣光芒转化为既美丽又可怕的存在——它似乎来自太阳低语者塔莱西亚，在丧钟镇坚守这份矛盾信仰的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找太阳低语者塔莱西亚。', 0, 0, 0, 0, 0, 0, 0, 0, 9200582, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53013, 2, 2, 2, -524, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '神圣誓言', '前往丧钟镇寻找瓦利昂·宏钟。', '有人嘱咐我把这个交给你，年轻人。这是一份受祝福的文件，散发着冰冷的光芒——甚至超越坟墓约束的神圣誓言。圣殿骑士对正义的奉献超越生死，铸就了在亡灵之身中仍侍奉正义的勇士——它似乎来自瓦利昂·宏钟，在丧钟镇坚守这些神圣职责的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找瓦利昂·宏钟。', 0, 0, 0, 0, 0, 0, 0, 0, 9200583, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53014, 2, 2, 2, -520, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '机械图纸', '前往丧钟镇寻找莱利·杰特。', '有人嘱咐我把这个交给你，年轻人。这是画在保存完好的皮肤上的技术蓝图——由死灵能量驱动的机械设计。死亡为发明带来了全新的视角：以灵魂能量而非蒸汽运转的机械——它似乎来自莱利·杰特，在丧钟镇创造这些奇迹的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找莱利·杰特。', 0, 0, 0, 0, 0, 0, 0, 0, 9200584, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53015, 2, 2, 2, -515, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '毒液配方', '前往丧钟镇寻找药剂师凯兰。', '有人嘱咐我把这个交给你，年轻人。这是一本散发着异域毒药气味的书，绿色蒸汽从处理过的血肉书页之间渗出。亡灵比任何活物都更了解毒素——死亡教会了关于毒药与腐朽的终极课程——它似乎来自毒液收集者彭多，在丧钟镇调配这些致命化合物的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找药剂师凯兰。', 0, 0, 0, 0, 0, 0, 0, 0, 9200585, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53016, 2, 2, 2, -508, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '灵魂神像', '前往丧钟镇寻找暗影行者沃斯。', '有人嘱咐我把这个交给你，年轻人。这是一卷以骨饰和黑暗神像装饰的古老卷轴，嗡鸣着不安息灵魂的力量。巫医的技艺通过古老仪式架起生死之间的桥梁——它似乎来自暗影行者沃斯，在丧钟镇修行这些神秘艺术的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找暗影行者沃斯。', 0, 0, 0, 0, 0, 0, 0, 0, 9200586, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53017, 2, 2, 2, -519, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9200587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '审判官的信件', '前往丧钟镇寻找贝利·恐恨。', '有人嘱咐我把这个交给你，年轻人。这是一封密封的信件，上面带有审判庭燃烧的蜡封。亲身经历过转变的你，能够分辨自然进化与真正的腐化——它似乎来自贝利·恐恨，在丧钟镇以完美正义狩猎的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找贝利·恐恨。', 0, 0, 0, 0, 0, 0, 0, 0, 9200587, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(53201, 2, 2, 2, -506, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 532001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '星辰图', '阅读星辰图，前往丧钟镇寻找兰德拉尼斯。', '有人嘱咐我把这个交给你，年轻人。这是一幅空灵的图表，其中的星图闪烁着真正的星光，脉动着来自遥远星系的宇宙之力。唤星者之道开启天界奥秘——它来自兰德拉尼斯，在丧钟镇号令星辰力量的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找兰德拉尼斯。', 0, 0, 0, 0, 0, 0, 0, 0, 532001, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(9302412, 2, 2, 2, -526, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9302412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '墓碑石板', '前往丧钟镇寻找阿莱西亚。', '有人嘱咐我把这个交给你，年轻人。这是一块破碎的墓碑残片，上面被凿刻着野蛮人的战争符文——其中蕴含的怒火并没有随雕刻者的死亡而消散。它似乎来自阿莱西亚，在丧钟镇传授野蛮人之道的那位。在你继续处理此地的其他事务之前，我建议你先读一读它。', '', '前往丧钟镇寻找阿莱西亚。', 0, 0, 0, 0, 0, 0, 0, 0, 9302412, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(9302413, 2, 3, 3, -526, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 532805, 1, 532806, 1, 395861, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '欢迎加入战团', '杀死莫蒂默，然后回到你的训练师那里。', '哈！哈！欢迎，$N。很高兴你能加入战团。你可能会想，什么是战团？考虑到你的到来，我还以为你早就知道了。好吧，小$c，这将会是一次残酷的觉醒。战团是所有野蛮人、暴徒和壮汉聚集在一起，竞争看谁是最强壮、最残暴、最强大的个体的地方。那是我们真正考验自己的唯一方式。就是这个！你可能对此很陌生，但绝对没人会对你手下留情。你的第一个考验和其他所有新兵一样。有个家伙一直在捣乱、散布谣言，就因为他不够格，被拒绝加入战团。他叫莫蒂默。杀了他，哈哈哈！如果你能完成这个任务，我会奖励你一把适合你这种菜鸟的武器。活着回来，或者死。', '', '回到你的训练师那里。', 9300257, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200019, 2, 3, 3, -516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 661317, 1, 1505015, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '血即力量', '从可疑的血精灵那里收集鲜血之书。', '啊，$C。你的日子终于到了。鲜血。你此刻应该已经以某种方式对它相当熟悉了。血即生命。但鲜血，你很快就会明白，也是力量。我要你想象一下，在一个你能控制其他生物体内生命精髓的世界里，你能做到什么。只需一挥手就能碾碎他们的内脏……令人陶醉。假以时日，你会学到更多。现在，我需要你协助我进行自己的研究，通过这个我也能帮你学习。附近有一本书，被一个在附近废弃房屋里翻找的可疑血精灵占有，我需要它来进行研究。替我收集它。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661316, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200168, 2, 3, 3, -530, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 553122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '完美时机', '在丧钟镇找到夸多弥的魔杖。', '啊，$N，我早就看到你的到来了。现在是时候教你成为时光术士意味着什么了。编织空间与时间的织锦。等同于神……让我别太超前了。对你来说，$N，时光术士的世界是全新的，在我允许你带着如此潜在的力量存在于这个世界之前……你必须学会控制自己。作为时光术士，你是时间魔法的大师。这意味着你必须在最基础的层面上尊重时间。正好我把魔杖落在了隔壁的某个地方。你有2分钟。替我找到它。', '', '回到夸多弥那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661335, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200075, 2, 3, 3, -522, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 532803, 1, 532804, 1, 532881, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '陷入疯狂！', '杀死丹纳尔·斯特恩。', '你在最合适的时机到来了，$N。我听到了彼岸的低语。它告诉我一个对我们事业特别危险的个体。我需要你迅速消灭他们。如果你做到这一点，我会奖励你一把适合上古之神追随者的武器。你要找的人就在旅店里。他叫“丹纳尔·斯特恩”。终结他。', '', '回到你的训练师那里。', 299240, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200140, 2, 3, 3, -528, 0, 0, 0, 0, 0, 0, 200141, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '以力量求和平', '在丧钟镇找到卡德摩斯·余烬烈焰。', '很高兴认识你，$N。我们有很多工作要一起完成，而你，我的朋友，有很多要学！我们是守护者，因此我们的任务就是，字面意义上的，守护艾泽拉斯。从偶尔抢劫路人的恶棍，到对我们人民构成威胁的更可怕的怪物。我们是响应召唤的人。而且，正如我的例子所示，我今天就有这样一个任务给你。如果你能完成它，你就完全准备好进一步训练了。附近有个叫卡德摩斯·余烬烈焰的人，我相信他需要我的帮助。去看看他需要什么。', '', '在丧钟镇找到卡德摩斯·余烬烈焰。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200141, 2, 3, 3, -528, 0, 0, 0, 0, 0, 0, 200142, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '防御优先', '杀死血色皈依者，直到你找到一把适合卡德摩斯·余烬烈焰的武器。', '啊，$c。我就知道帮助很快就会到来。我今天可以用一些保护，或者保护自己的手段，也许？我是火焰与烈焰的大师。可惜，我在近战方面很欠缺。我希望能在需要时保护自己，而不是简单地把对手活活烧死。附近有血色十字军的成员。他们有对我很有用的武器。你能收集一把你看到的好武器带回来给我吗？', '', '回到卡德摩斯·余烬烈焰那里。', 0, 0, 0, 0, 0, 0, 0, 0, 662330, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200142, 2, 3, 3, -529, 0, 0, 0, 0, 0, 0, 0, 2, 25, 0, 0, 0, 0, 0, 0, 0, 0, 245712, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '帮助朋友', '带着成功的消息回到你的训练师那里。', '这把剑……或者匕首……绝对……完美！谢谢你！我在离这里不远的当地蜘蛛洞穴冒险时找到了一面盾牌。我把它给了你的训练师。我已经和他们说过了，他们知道要给你。我相信它对你比对我有用得多。', '', '带着成功的消息回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200035, 2, 3, 3, -518, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 2000124, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '内在的恶魔', '杀死疯狂的亡灵。', '啊哈，$N，欢迎，你喜欢你的凡人外表吗？时候到了，我们要一步步向艾泽拉斯释放地狱。如你所知，我们数量有限，但我们的队伍会随时间壮大。我想我不需要提醒你，部落的困境不是你首要关心的事。他们只是一个工具，一面盾牌，好让我们推进自己的目标。每一步，每一刻，我们都必须在这个世界上制造混乱，但我们绝不能泄露我们的秘密——我们是恶魔——因此，我有个小任务给你。有个家伙一直在丧钟镇制造麻烦。他醒来时就直接发狂制造混乱。我的上级让我处理他。通常，我会和这样的人做朋友，但我们必须制造出我们站在他们一边的假象。杀了他，我们会编个借口说他怎么死的。', '', '回到你的训练师那里。', 299226, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200052, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200053, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡的召唤', '找到并与仪式法阵互动。', '你好，$C。很高兴你今天能来墓地加入我。美好的一天，不是吗？看来你已经对亡灵有所了解了，你复活死者的能力让我印象深刻。也许你能为我所用，我相信你不会介意。我有一个特别强大的亡灵想要召唤，但我不敢亲自尝试——我太重要了。然而，你在这里成功的话能学到很多。如果你失败了呢？我就干脆把你复活成我的仆从。别想太多。让我在地图上标记我举行仪式的确切位置。你必须收集特定物品才能完成仪式。现在，去吧。', '', '与仪式法阵互动。', 685121, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '找到仪式法阵', '', '', ''),
(200053, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 200054, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '死亡在召唤', '杀死食尸鬼，拾取他们的骨头、血肉和头骨。', '为了召唤亡灵怪物，我必须把以下材料带到仪式法阵。—— 骨头 —— 新鲜血肉 —— 头骨 附近的食尸鬼正好有这些东西。', '', '回到仪式法阵。', 0, 0, 0, 0, 0, 0, 0, 0, 458421, 458422, 458423, 0, 0, 0, 1, 1, 1, 0, 0, 0, '', '', '', ''),
(200054, 2, 3, 3, -521, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 660053, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '亡者的召唤', '杀死亡灵怪物。', '<材料消散成一阵烟雾融入仪式法阵> ……似乎有些不对劲。召唤失败了，再次检查仪式法阵。但要小心，它不稳定。', '', '回到你的训练师那里。', 299232, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200145, 2, 3, 3, -528, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 293203, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '炎术师之道', '击败斯考奇并获取他的心脏。', '尽管我的心脏多年前就停止了跳动，但火焰在我胸膛中燃烧得炽热。你也感觉到了吗，$N？有些人感觉太强烈了，让火焰完全吞噬了他们。他们让它烧得太热，失去了对冲动的控制，做了让自己后悔的事。一群失控的炎术师燃烧得如此明亮，他们从拉格纳罗斯的领域召唤了一个元素。他们把它束缚在山丘上的营火中，我派你去召唤并杀死它。带着它的心脏回来，我将奖励你他们所缺乏的控制力。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 662331, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200011, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200012, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1923.5, 1697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '游侠之路', '在周围地区找到克拉丽丝的猎鹰。', '成为游侠不仅仅是拿起弓，或在树荫下战斗，$n。成为游侠，其核心意味着你与荒野有着深刻的联系。你是它的保护者。我派我的猎鹰费洛去侦察周围地区，但它还没回来。请找到它，并指引它回到我这里。', '', '在周围地区找到克拉丽丝的猎鹰。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200012, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 200013, 3, 0, 0, 0, 0, 0, 0, 662316, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '突袭！', '杀死可疑的生物。', '附近的灌木丛里有什么东西在沙沙作响。你遭到了攻击！', '', '照料猎鹰。', 299222, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200013, 2, 3, 3, -505, 0, 0, 0, 0, 0, 0, 0, 2, 70, 0, 0, 0, 0, 0, 662317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 818000, 1, 727000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '猎鹰是朋友', '对猎鹰使用红色药瓶。', '你发现猎鹰身上附着一张纸条，上面写着：<如果你在读这个，你已经找到了我的朋友。纸条上附着一小瓶红色药剂。如果它受伤了，就给它，它会知道接下来该怎么做。>', '', '回到你的训练师那里。', 685011, 0, 0, 0, 1, 0, 0, 0, 662317, 662316, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '照料费洛的伤口', '', '', ''),
(200039, 2, 3, 3, -508, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 540070, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '暗影之地的召唤', '拜访丧钟镇的达林·索夫特。', '再冲我头盔咧嘴笑，我就把这把刀插进你胸口，$N。……你很胆大。我能感觉到你是来找我学习的。我今天有个简单的任务给你，年轻的$C。在丧钟镇有个人，可以说是已近末日，却被天灾杀死后再次复活。他会死，暗影之地这次会收走他。但今天还不是他的日子。然而，我能感觉到他渴望离开这个位面，但他不知道离开后会面对什么。你可能没想到会有这样的任务，但我想谦卑地请你去看望他，聊一聊。', '', '回到你的训练师那里。', 685022, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '与达林·索夫特交谈', '', '', ''),
(200113, 2, 3, 3, -527, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 661329, 0, 0, 293202, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '力量符文', '解开刻在符文石上的谜语。', '你好，$N。很高兴你终于能来加入我，我一直在等待你的到来。今天，给像你这样有抱负的符文大师上一堂简单的解题课。也许你会成功，也许不会。来，我有一个符文。符文上刻着一个谜语。解开谜语，然后回到我这里。要提示？我能告诉你的最好提示就是，这个谜语的答案就在旅店里。不在外面。你回来时我就知道你解开了没有，别担心。成功的话，我会奖励你。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661330, 661329, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, '', '', '', ''),
(200033, 2, 3, 3, -506, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300100, 1, 300101, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '艾露恩的勇士', '找到倒下的雕像并赞美艾露恩。', 'Bal\'a dash，malanore，$N。我看艾露恩没有忘记你，很好，我正需要一个如此受祝福的人。作为唤星者，我们是艾露恩的勇士，因此，我们必须执行她的意志——无论它把我们带到哪里，无论它是什么。但是，当大地处于和平之中时，一个人必须学会仍然向艾露恩致敬，这样当大地再次充满战争与绝望时，她就会在那里指引我们。在北边的山脉中有一座古老的雕像，纪念泰兰德本人将她的部队登陆东部王国——对天灾本身的直接进攻，并援助了我的人民。自雕像竖立以来，它已经倒塌，被遗忘了。然而它仍然是艾露恩追随者的朝圣地。去那里，冥想，向女神致敬，然后回到我这里。', '', '回到你的训练师那里。', 685031, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '向艾露恩致敬', '', '', ''),
(200098, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '你自有你的用处', '协助莱利·杰特搞她的工匠把戏。', '你好，$N，很高兴认识你，在你到来之前我就听说过很多关于你的事。你来找我学习，作为$C你已经证明了自己是奥术的勤勉学生。但我们召唤的力量远不止闪电和电流。假以时日，你会明白你的潜力有多深。但现在……我确实有个小任务给你。附近有个叫“莱利·杰特”的人，她总是找我帮忙搞她的……工匠把戏……她需要一些闪电，$N，但我很忙。你能去帮帮她吗？', '', '协助莱利·杰特搞她的工匠把戏。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200099, 2, 3, 0, -520, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '被盗的能量核心', '杀死响笼骷髅，直到其中一个掉落能量核心。', '你好啊，$N！很高兴你的训练师终于派人来帮我了。这是个非常简单的任务，我只需要一些能量！但不幸的是，我的能量核心被附近的一个响笼骷髅偷走了。你能帮我拿回来吗？', '', '回到莱利·杰特那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200100, 2, 3, 0, -525, 0, 0, 0, 0, 0, 0, 0, 2, 55, 0, 0, 0, 0, 0, 0, 0, 0, 663317, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴使者的任务', '告诉你的训练师你成功了。', '感谢你取回这个能量核心！你现在可以回去告诉你的训练师你为我做了什么。', '', '告诉你的训练师你成功了。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(200062, 2, 3, 3, -507, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 454381, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '遗失的吊坠', '找到遗失的吊坠。', '你好，$C。你来得正是时候。我丢了一个吊坠，它相当强大。丢可能不是合适的词，但算了，我们最好别纠结于语义。好吧，我想既然你要帮我，我至少该解释一下发生了什么。事情是这样的。我试图向当地营地的血色十字军展示我们可以合作，因为我们都追随圣光。他们对此并不友善，把我赶出了他们的营地……匆忙之中，我掉了吊坠。请帮我找到它。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 663319, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200081, 2, 3, 3, -524, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 52855, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '平静的生活', '参观丧钟镇西部山脉中隐藏的雕像。', '你好，$N。我一直在等待你的到来。作为圣殿骑士，我们已经晋升到神圣信仰的最高教团，因此我们肩负着相当大的责任。圣骑士和牧师与我们并肩工作，通过圣光维护这个世界的和平，我们每个人，虽然各有微妙不同，都希望再次将圣光带给艾泽拉斯。尽管它有种种危险。我们的道路可能不同，但有人可能会说它更加严苛。成为圣殿骑士意味着要极其精确地控制你的情绪、战斗节奏和心智。为了保持自己的健康，我喜欢在一座曾经强大的圣骑士的雕像附近冥想，那座雕像是第三次战争后秘密竖立在这里的。它被藏在山中的缝隙里，要到达那里，你需要使用敏捷的移动。请亲自去那里看看。回来时告诉我你的体验。', '', '参观丧钟镇西部山脉中隐藏的雕像。', 685037, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '参观隐藏的雕像', '', '', ''),
(200069, 2, 3, 3, -520, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 415000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '巧夺天工！', '收集3块废金属。', '你好，$N。我看到你在附近闲逛，我正好有个适合你智力水平的任务。我是个工匠。这一点要明白。你呢？我不确定，但也许你今天可以证明你的工匠身份。我想为自己造一把特殊的枪，在你的帮助下，我也能为你造一把。血色营地附近有一些金属，特别是在他们首领的帐篷里和周围，可以用来为你和我造一把枪。给我收集一些，我就去捣鼓起来！', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 663320, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, '', '', '', ''),
(200024, 2, 3, 3, -415, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 662217, 0, 0, 292200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '毒害世界', '把神秘药剂泼洒在附近的居民身上。', '欢迎，$C。你是来给水井下毒的，可以这么说吗？我总是愿意教导新的、有抱负的剧毒艺术大师，但作为回报，我有时需要帮个忙。这没问题，对吧？看看你周围。有各种肤色的居民。但他们是纯洁的，这很好，他们未受污染。我这里有一瓶我调制的药剂。它的作用，你不必关心。我需要你做的是把它泼在三个特定的人身上；第一，太阳低语者塔莱西亚，第二，贝利·恐恨，第三，多纳尔·瘟疫编织者。完成后来找我，我会让你的时间值得。', '', '回到你的训练师那里。', 685012, 685013, 685014, 0, 1, 1, 1, 0, 662217, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '太阳低语者塔莱西亚', '贝利·恐恨', '多纳尔·瘟疫编织者', ''),
(200023, 2, 3, 3, -517, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 727004, 1, 727001, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '步入恶魔之道', '取回帕克斯的头骨。', '于是就这样开始了。你好，$N。我已经能感觉到你开始感受到在你血脉中燃烧的残余邪能之力。我羡慕你，曾经有一段时间我还不像现在这样习惯它。你是恶魔猎手，因此，你处于凡人与恶魔之间的边界。然而，不像某些人，你和我不会堕入邪能魔法提供的力量陷阱，而许多其他修行者却常常在不知不觉中堕入其中。也许有一天你甚至会强大到能化身为恶魔形态，但现在，你的邪能强化将奇妙地激发出你真正的潜力。让我说清楚，部落和联盟对我们毫无用处，但他们必须相信我们是他们的盟友，这样我们更伟大的目标才能实现。不要忘记这一点。当一切达到顶点时，不要忘记你真正的效忠对象在哪里。现在，一个考验。一个强大恶魔的头骨，名为帕克斯，被放置在周围地区。替我找到它。', '', '回到你的训练师那里。', 0, 0, 0, 0, 0, 0, 0, 0, 661321, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(200057, 2, 3, 3, -519, 0, 0, 0, 0, 0, 0, 0, 3, 55, 0, 0, 0, 0, 0, 662219, 0, 0, 717002, 1, 410005, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '狩猎开始', '揭露女巫并杀死她。', '我能感觉到一股邪恶的存在。你也能感觉到，对吧？这就是你为什么在最合适的时机来找我。这里有一个。一个女巫。充满邪恶和恶意。愿圣光祝福我们即将要做的事。来，拿着这个火炬。她就在这里，我已经在地图上标记了她的位置。对她使用火炬来揭露她的真面目。杀了它。不留情。杀死后回到我这里。该死的女巫。', '', '回到你的训练师那里。', 685221, 299333, 0, 0, 1, 1, 0, 0, 662219, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '找到女巫', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

UPDATE `quest_template` SET `TimeAllowed` = 120 WHERE `ID` = 200168;

DELETE FROM `quest_template_addon` WHERE `ID` IN (53000, 53001, 53002, 53003, 53004, 53005, 53006, 53007, 53008, 53009, 53010, 53011, 53012, 53013, 53014, 53015, 53016, 53017, 53201, 200011, 200012, 200013, 200019, 200023, 200024, 200033, 200035, 200039, 200052, 200053, 200054, 200057, 200062, 200069, 200075, 200081, 200098, 200099, 200100, 200113, 200140, 200141, 200142, 200145, 200168, 9302412, 9302413);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(53000, 0, 536870912, 364, 1, 0),
(53001, 0, 524288, 364, 1, 0),
(53002, 0, 16777216, 364, 1, 0),
(53003, 0, 8192, 364, 1, 0),
(53004, 0, 131072, 364, 1, 0),
(53005, 0, 65536, 364, 1, 0),
(53006, 0, 4194304, 364, 1, 0),
(53007, 0, 2097152, 364, 1, 0),
(53008, 0, 8388608, 364, 1, 0),
(53009, 0, 1048576, 364, 1, 0),
(53010, 0, 2147483648, 364, 1, 0),
(53011, 0, 32768, 364, 1, 0),
(53012, 0, 67108864, 364, 1, 0),
(53013, 0, 262144, 364, 1, 0),
(53014, 0, 134217728, 364, 1, 0),
(53015, 0, 268435456, 364, 1, 0),
(53016, 0, 4096, 364, 1, 0),
(53017, 0, 16384, 364, 1, 0),
(53201, 0, 33554432, 364, 1, 0),
(9302412, 0, 2048, 364, 1, 0),
(9302413, 0, 2048, 9302412, 0, 0),
(200019, 0, 524288, 53001, 0, 0),
(200168, 0, 2097152, 53007, 0, 0),
(200075, 0, 16777216, 53002, 0, 0),
(200140, 0, 131072, 53004, 0, 0),
(200141, 0, 131072, 200140, 0, 0),
(200142, 0, 131072, 200141, 0, 0),
(200035, 0, 65536, 53005, 0, 0),
(200052, 0, 4194304, 53006, 0, 0),
(200053, 0, 4194304, 200052, 0, 0),
(200054, 0, 4194304, 200053, 0, 0),
(200145, 0, 8388608, 53008, 0, 0),
(200011, 0, 1048576, 53009, 0, 0),
(200012, 0, 1048576, 200011, 1, 0),
(200013, 0, 1048576, 200012, 1, 0),
(200039, 0, 536870912, 53000, 0, 0),
(200113, 0, 2147483648, 53010, 1, 0),
(200033, 0, 33554432, 53201, 0, 0),
(200098, 0, 32768, 53011, 0, 0),
(200099, 0, 32768, 200098, 0, 0),
(200100, 0, 32768, 200099, 0, 0),
(200062, 0, 67108864, 53012, 0, 0),
(200081, 0, 262144, 53013, 0, 0),
(200069, 0, 134217728, 53014, 0, 0),
(200024, 0, 268435456, 53015, 1, 0),
(200023, 0, 8192, 53003, 0, 0),
(200057, 0, 16384, 53017, 1, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (53000, 53001, 53002, 53003, 53004, 53005, 53006, 53007, 53008, 53009, 53010, 53011, 53012, 53013, 53014, 53015, 53016, 53017, 53201, 200011, 200012, 200013, 200019, 200023, 200024, 200033, 200035, 200039, 200052, 200053, 200054, 200057, 200062, 200069, 200075, 200081, 200098, 200099, 200100, 200113, 200140, 200141, 200142, 200145, 200168, 9302412, 9302413);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(53000, '看来，你已听从无尽怒火的召唤。很好。你展现出了潜力，$N。$B$B死神之路并非盲目狂暴，而是赋予怒火以目的与形态。你将学会驾驭潜藏于所有战士体内的原始狂怒，将其转化为某种更为可怖的存在——一种永不黯淡、永不动摇、永不怜悯的怒火。当他人力竭时，你将愈发强韧；当他人退却时，你将带着重燃的凶性继续推进。$B$B在我的教导下，你将掌握无数代拒绝接受凡人耐力极限的战士所传承下来的狂战技艺。你的怒火将化为活物，成为战斗中的伙伴，在你耳畔低语着纯粹侵略所催生的战术。你将学会将这怒火引导为毁灭性的旋风斩击、撼动大地的冲锋，以及如同劈开羊皮纸般斩裂盔甲的打击。$B$B欢迎走上永恒怒火之路，$N。让你的敌人领教面对一个怒火无远弗届者意味着什么！'),
(53001, '猩红之术选中了你，$N。这绝非小事。$B$B血魔法是最古老也最强大的巫术之一。每一滴血都蕴含着生命本身的精髓——力量、记忆、潜能。作为血法师，你将学会以外科手术般的精准操控这股生命之力。你敌人的鲜血将成为你的武器，他们的生命力成为你的盾牌，他们的精髓成为你最毁灭性法术的燃料。$B$B你将研习古老的血液操纵术——血控之术。你将学会煮沸血管中的血液、将其冻结成固以从内部碎裂骨骼，或将其抽出化为猩红武器。倒下的敌人的鲜血将在你的命令下升起，形成盾牌、长矛或毁灭性的漩涡。你将掌握以精心计算的代价换取可怖力量的血之契，以及能够抽干整片战场来为一个天启般法术供能的仪式。$B$B这条道路要求纪律，因为血魔法会腐化粗心者、吞噬软弱者。但对于有意志掌握它的人来说，猩红之术提供超乎想象的力量。$B$B欢迎走上猩红之路，$N。让鲜血本身屈从于你的意志！'),
(53002, '啊，又一个听见低语的人。虚空已标记了你，$N。$B$B虚空并非空无一物——它充满了比创世更古老的意识，在群星初次点燃之前便已存在的力量。作为邪教徒，你将成为这些远古力量的导管，引导大多数心智无法在不崩溃的情况下理解的能量。你所听见的低语并非疯狂，而是对普通感知而言过于可怖的真相。$B$B你将学会看穿现实的帷幕，感知连接万物的蠕动之力触须。上古之神的影响从存在的裂隙中渗出，而你将成为这样一道裂隙——一扇活生生的传送门，让它们的意志得以显现。暗影魔法将成为你的母语，你将说出足以瓦解现实本身的言辞。$B$B你的心智将扩张以容纳那些会摧毁弱小存在的真相。你将召唤虚空实体为你效力，腐化敌人脚下的土地，像瘟疫一样散播疯狂。虚空的馈赠伴随着代价——你的理智将持续受到考验，你的人性将受到质疑。但作为回报，你将获得超越凡人局限的力量。$B$B欢迎来到虚空的怀抱，$N。让宇宙学会恐怖的新定义！'),
(53003, '邪能认出自己的同类。你已迈出通往诅咒的第一步，$N——或者，取决于你的视角，通往救赎的第一步。$B$B邪能魔法是腐化的具现，是将混沌精炼而成的武器。燃烧军团或许已经陨落，但他们的力量仍留存着，等待足够大胆的人去攫取。作为恶魔猎手，你将把恶魔束缚于你的意志，将军团自身的武器转而对付任何反对你的人。他人眼中看到的是诅咒，你眼中看到的是机遇。$B$B你将学会恶魔的真名，那些以邪铁与强制之力将它们束缚于锁链中的言辞。弱小的小鬼将成为你的斥候，魅魔成为你的渗透者，邪能守卫成为你的战士。但不仅仅是简单的召唤，你将引导邪能本身——绿色的火焰，能像烧灼肉体一样轻易地烧灼灵魂；腐化，如疾病般蔓延；以及将你重塑为超越凡人存在的变形。$B$B邪能要求牺牲。你的灵魂将带有永不消退的印记，你的梦境将回荡着恶魔的尖啸，你的存在本身将让周围的人感到不安。但作为交换，你将获得推翻泰坦、焚毁整个世界的力量。你将在控制与吞噬之间的刀刃上行走，永远离迷失于邪能的饥渴仅一步之遥。$B$B欢迎走上邪能之路，$N。让恶魔学会恐惧它们的新主人！'),
(53004, '你的誓言已被见证，$N。从此刻起，你便是需要之人的盾牌与庇护所。$B$B守护者屹立于他人无法屹立之处，承受他人不愿承受之苦，保护那些无法保护自己的人。你的誓言不仅仅是言语——它成为你本质的一部分，将你转化为一堵对抗一切伤害的活生生堡垒。作为守护者，你将掌握防御之术，使你化为一尊不可撼动的物体，让不可阻挡的力量在你面前破碎。$B$B你将学会以纯粹意志编织护盾，创造出能保护整支军队免受龙息或炮火轰击的屏障。你的存在本身将激发盟友的勇气，在敌人心中播下疑虑的种子。我将教你的古老技艺包括使你免疫击退的“铁壁守势”、将防御延伸至远处盟友的“神盾投射”，以及“最终防线”——一种让你在受到致命伤后仍能继续战斗的技艺。$B$B但须知：守护者之路是牺牲之路。你将一次又一次将自己置于危险与无辜者之间。你将承受痛苦，让他人不必承受。你将在他人撤退时独自面对绝境。这不是负担，而是特权——成为永不破碎的盾牌，永不倒塌的城墙。$B$B欢迎来到永恒警戒，$N。让邪恶在你的防御上撞得粉碎！'),
(53005, '暗影接纳了你，$N。现在你必须证明自己配得上克索诺斯的遗产。$B$B克索诺斯骑士是活生生的证据，证明黑暗不必意味着邪恶。我们取暗影——刺客与恶魔的工具——将其锻造成正义的工具。圣骑士公开挥舞圣光，而我们以同等的正义从黑暗中出击。作为克索诺斯骑士，你将明白荣誉可以在暗影中繁荣，正义有时需要一柄隐藏的利刃。$B$B你将掌握让你与黑暗融为一体的暗影锻造盔甲、直击灵魂的纯粹暗影武器，以及让你跨越遥远距离穿行于阴影之间的移动技艺。但不仅仅是技艺，你将学习我们教团的哲学——善恶并非由我们所驾驭的力量决定，而是由我们选择如何驾驭它们决定。$B$B我们的敌人永远看不到我们的到来。腐败的贵族将在自己的卧室中被暗影扼住喉咙。恶魔信徒将发现黑暗本身转而对抗他们。暴君将学会恐惧自己投下的阴影。你将成为邪恶在床下查看的东西，狩猎其他噩梦的噩梦。$B$B欢迎加入克索诺斯骑士团，$N。让暗影成为正义最锋利的刀刃！'),
(53006, '死亡向你屈服，$N。这仅仅是你统治的开始。$B$B死灵法术是力量的终极表达——对死亡本身的统治。他人看到的是终结，我们看到的是资源。他人哀悼逝者，我们看到的是等待崛起的军队。作为死灵法师，你将号令让最勇敢的战士都恐惧的力量，因为什么样的军队能对抗一支每增加一个伤亡就更强大的军队？$B$B你将学会跨越帷幕，将灵魂拖回服务之中，将它们束缚于成为你傀儡的尸体上。简单的骷髅只是开始——你将从未陨落的英雄中复活死亡骑士，用多具尸体制造憎恶，召唤令天空黯淡的骨龙。瘟疫将成为你的先驱，散播的死亡成为你军队的新兵。$B$B但死灵法术提供的不仅仅是亡灵仆从。你将学会吸取生命力来治疗自己，以触碰将敌人化为尘土，以及部分踏入死亡本身——变得免疫痛苦、恐惧和其他凡人弱点。你将同时行走于两个世界，在生者与死者之间同样自如。$B$B欢迎来到死亡的领域，$N。让死亡本身在你的意志前俯首！'),
(53007, '时间承认了你，$N。过去、现在与未来都已注意到你的潜力。$B$B时光术士或许是一切魔法技艺中最复杂的，因为它涉及大多数心智无法正确概念化的力量。时间并非他人所认为的河流——它是一片海洋，有着洋流、漩涡和深度，只有理解其本质的人才能航行。作为时光术士，你将学会逆时间之流而游，潜入其深处，并改变其流向。$B$B你将掌握时间加速，快到他人仿佛被冻结。你将学会时间逆转，通过倒转个人时间流来撤销伤口。预言之术将属于你——窥见可能的未来并选择哪些成为现实。你将在数秒内使物体老化数千年，或通过逆转其熵来将其恢复至完好状态。$B$B但时光术士的真正力量在于悖论操纵。你将学会同时存在于多条时间流中，创造确保你在战斗开始前就获胜的稳定时间循环，甚至从不同时间线召唤你自己的替代版本。责任是巨大的——一次粗心的改动就可能解开因果本身。$B$B欢迎来到永恒之力，$N。让过去、现在与未来随你的设计起舞！'),
(53008, '永恒之焰认出了同类的灵魂。你燃烧着潜力，$N。$B$B火是最初的魔法，是将凡人提升于野兽之上的馈赠。但你将号令的火焰超越简单的燃烧。作为炎术师，你将掌握火的一切形态——从维持生命的温柔温暖到锻造星辰的宇宙炼狱。你的火焰将燃烧着目的、判断力和可怕的美。$B$B你将学会召唤在水下燃烧的火焰、冻结而非烧灼的火焰，以及能熔化城堡墙壁的炎爆术。凤凰的重生将属于你——被击倒时从自己的灰烬中升起。你将号令活体火元素，创造焚毁投射物的火焰屏障，从晴空中降下流星雨。你的精通将延伸至火的本质——在分子层面操纵热量，从微小火花创造爆炸，或将火焰聚焦成切割一切的光束。$B$B但超越毁灭，你将理解火在创造中的角色。塑造金属的锻炉之火、更新森林的控制燃烧、驱动激情与创造力的内在之火——都将由你点燃或熄灭。$B$B欢迎来到炼狱之心，$N。让你的火焰重塑世界！'),
(53009, '荒野已认你为自己的一员，$N。听——即便是现在，野兽们也在承认你的存在。$B$B游侠之路是原始联系之路。你将成为捕食者与保护者、追踪者与生存者，在文明的边缘与自然的核心之间同样自如。游侠与荒野之间的纽带不仅仅是情感——它是一种比城市更古老的魔法契约，是同类灵魂之间的相互理解。$B$B你将掌握能在雾中追踪鬼魂的追踪技艺、能在三百步外射穿麻雀眼睛的箭术，以及让军队挨饿的地方你仍能繁荣的生存方法。野兽将回应你的呼唤——从与你并肩作战的忠诚狼群到作为你天空之眼的大鹰。你将学会在不惊动一片叶子的情况下穿行荒野，完美隐藏自己以至于与周围环境融为一体。$B$B超越技艺，你将发展出本能。你将在天气变化到来的数天前嗅到它，在伏击发动前感知到它，像阅读心爱的书一样阅读大地。荒野将以只有猎手才懂的语言对你说话——鸟类的警报声、鹿的紧张、捕食者的领地标记。$B$B欢迎来到永恒的狩猎，$N。让任何猎物都无法逃脱你的追捕！'),
(53010, '符文回应你的触碰，$N。它们认出了能通过铭刻塑造现实的人。$B$B符文魔法先于所有其他法术形式。当宇宙年轻时，最初的话语被刻入现实的根基，从这些原始符文，一切魔法流淌而出。作为符文大师，你将学会铭刻承载创世自身语言之重的符号——在所有其他魔法失效时依然存续的印记。$B$B你将掌握将普通武器变为传世神器的战斗符文、能庇护整座城市的保护结界，以及改变其附近物理基本法则的现实符文。你的铭刻将按你的意愿增强、腐化、净化或毁灭。你手中一个符文就能赋予超人力量、诅咒血脉数代，或在遥远地点之间创造传送门。$B$B这门艺术要求精确——一笔错位就能颠倒符文含义，将治疗变为伤害，将保护变为脆弱。你将学会在任何表面铭刻符文——石头、钢铁、血肉，甚至空气本身。精通符文匠能书写协同运作的整个符文阵列，创造出普通魔法无法实现的复杂效果。$B$B欢迎来到永恒铭刻，$N。让你的印记重塑存在！'),
(53011, '风暴云在你接近时聚集，$N。暴风已选择了它的新声音。$B$B号令风暴就是驾驭自然本身的怒火。闪电、雷霆、风与雨——这些不仅仅是天气现象，而是在第一个凡人呼吸之前就已存在的原始力量的表达。作为风暴使者，你将学会从晴空中召唤这些力量，说出暴风的语言，驾驭闪电本身。$B$B你将召唤能夷平堡垒的龙卷风，以精确到点的准确度呼唤闪电打击，用偏转箭矢与法术的狂风环绕自身。风暴之眼将成为你的圣所——在混乱肆虐时完美平静之地。你将学会化身为活体闪电，瞬间穿越战场，并将风暴的怒火储存在自身之中，以毁灭性的爆发释放。$B$B大风暴将预示你的到来——并非巧合，而是因为大气本身回应你的存在。你将像解读预言一样解读天气模式，感知揭示隐藏敌人或逼近危险的气压扰动。假以时日，你甚至可能学会创造永久风暴——在被诅咒的土地上肆虐数百年的暴风雨。$B$B欢迎来到风暴之心，$N。让雷霆宣告你的胜利！'),
(53012, '黎明的第一缕阳光触碰了你，$N。你如今将那份光芒永远携于心中。$B$B太阳魔法是凡人可触及的神圣力量最纯粹的表达。太阳自由地给予——光、温暖、生命本身——不求任何回报。作为太阳祭司，你将成为这份慷慨的导管，引导治愈、保护、必要时以千颗太阳的怒火毁灭的光辉。$B$B你将学会在自身中储存阳光，成为最黑暗之处的灯塔。你的治愈之光将愈合伤口、治愈疾病，甚至让刚倒下者复生。太阳护盾将保护你的盟友，而太阳耀斑将致盲并灼烧你的敌人。天顶祝福将允许你召唤能穿透一切黑暗、一切邪恶、一切阴影的集中阳光之柱。$B$B但太阳魔法超越简单的光。你将理解太阳在一切生命中的角色——植物中的光合作用、皮肤中维生素的生成、支配睡眠与清醒的昼夜节律。你将学会加速生长、为疲惫者充能，为困惑的心智带来日光的清明。在你的存在中，亡灵枯萎，阴影逃散，希望在最绝望的心中燃起。$B$B欢迎来到光辉的服侍，$N。让你的光芒驱逐一切黑暗！'),
(53013, '你的信念有重量，$N。圣光本身已见证你的誓言并认定你配得上。$B$B圣殿骑士之路结合了武艺与神圣目的。你不仅仅是一个恰好有信仰的战士——你是信仰的具现、正义的血肉、武装并披甲的公正。你刀刃的每一次挥击都承载着神圣审判的重量。你举起的每一面盾牌都是对抗邪恶本身的壁垒。$B$B你将掌握增强你的打击并削弱敌人决心的战斗祈祷。神圣武器附魔将使你的手臂燃烧着灼烧腐化者却不伤害无辜者的圣火。神圣盔甲技艺将以光本身环绕你，挡开物理与魔法攻击。你将学习古老的驱邪仪式，那些驱逐恶魔并净化人、地、物中腐化的言辞。$B$B你的存在将成为战斗中的集结号——盟友在知道圣殿骑士与他们并肩时会更勇猛地战斗，敌人在你的正义之怒前会动摇。你将发展出感知一切形式邪恶的能力，看穿伪装与幻象，洞察其下的道德真相。假以时日，你甚至可能学会直接召唤神圣审判——只灼烧有罪者的圣火。$B$B欢迎来到神圣的服侍，$N。让正义指引你的刀刃！'),
(53014, '齿轮转动，魔法在你触碰下迸发火花，$N。你在他人看到不可能的地方看到可能性。$B$B工匠之术存在于魔法与科技的交汇处，证明创新与奥术力量不必彼此分离。你将建造不应存在的装置、以嘲弄自然法则的原理运转的机械，以及解决他人认为无解问题的器具。$B$B你将学会制造能独立思考和行动的机械仆从、能夷平城市街区或以外科手术般的精度从墙上移除单块砖的炸药。你的发明将包括从小型装置瞬间展开的护盾、在多种形态间转换的武器，以及能穿透墙壁、幻象甚至维度之间感知的探测设备。魔法与机械的融合将允许你创造永动机、产出多于消耗的装置，以及随时间自我修复和改进的装备。$B$B你的工坊将成为奇迹与恐怖之地——永不眨眼的机械眼、永不停止的蒸汽动力心脏，以及模糊构造体与活物界限的混合生物。你将不仅理解如何建造，更理解如何创新，如何看到他人错过的联系，如何以普适原理的创造性应用来解决问题。$B$B欢迎来到无尽的创新，$N。让你的造物重新定义何为可能！'),
(53015, '毒液对你歌唱，$N。每种毒素都有自己的声音、自己的目的、自己可怕的美。$B$B毒术是通过毒性进行转化的艺术。仅仅致命的简单毒药是儿戏——你将学会调配重塑身心、进化或退化、解锁隐藏潜能或封印力量的毒液。自然界中的每种物质都能成为你武器库中的工具，从最致命的蛇毒到平凡的蜂蜇。$B$B你将掌握即时生效或潜伏数年的毒素制造、只影响特定血脉或物种的毒药，以及像疾病一样在整个人群中传播的毒液。但毁灭只是你艺术的一半——你还将调配能治愈任何毒药的解药、赋予暂时超人能力的兴奋剂，以及造成永久有益变异的诱变剂。$B$B你自己的身体将成为活体实验室。你将发展出对所有已知毒素的免疫，同时学会通过皮肤、呼吸甚至目光分泌毒液。最先进的修行者甚至能毒害抽象概念——腐化记忆、污染情感，或毒化魔法本身。你将理解药物与毒药之间的细线，剂量如何决定一种物质是治愈还是伤害。$B$B欢迎走上毒药之路，$N。让化学在你手中化为炼金术！'),
(53016, '灵魂低语你的名字，$N。它们一直在等你。$B$B巫医行走于世界之间，在生者与死者之间同样自如。你将架起领域之间的桥梁，为没有声音的灵魂代言，号令存在于凡人感知之外的力量。这门古老艺术先于文明本身，诞生于第一批凡人意识到死亡并非终结而是转化之时。$B$B你将学会看见并与他人不可见的灵魂交谈，通过自己的身体引导它们的力量。祖先之灵将指引你的决定，幽灵战士将与你并肩作战，万世的智慧将如水般流经你。你将掌握以灵魂疾苦诅咒敌人的妖术、防止附身的结界，以及能困住或驱逐最强大灵魂的仪式。$B$B你的工具将既原始又深邃——容纳灵魂盟友的神像、召唤亡者起舞的鼓、让你获得强大灵魂实体化身的masks。你将学会肉身进入灵魂领域，航行于其奇异的地理，与从未知晓凡人形态的实体讨价还价。假以时日，你甚至可能学会自己成为活体灵魂，同时存在于多个领域中。$B$B欢迎走上灵魂之路，$N。让世界之间的帷幕在你面前分开！'),
(53017, '狩猎现在开始，$N。腐化有了新的捕食者要恐惧。$B$B猎魔人的负担沉重但必要。你将成为切除感染的刀刃、净化腐化的火焰、看穿一切欺骗的坚定之眼。他人可能对腐化者施以怜悯，而你明白有时最仁慈的一刀就是致命一击。你的职责是通过消灭他人太软弱或盲目而无法识别的威胁来保护无辜者。$B$B你将掌握专门设计来对抗黑暗力量的技艺。灼烧腐化者的银制武器、揭示隐藏邪恶的圣水，以及防止黑暗魔法扎根的结界。你将发展出几乎超自然的腐化感知——女巫的诅咒、恶魔的影响，或虚空腐化的微妙污染。你的训练将包括抵抗精神操纵、免疫诅咒，以及仅凭存在就破除附魔的能力。$B$B你将学会区分无害的乡村巫师与真正的威胁，区分可被救赎者与必须被消灭者。猎魔人最伟大的技能是判断——知道何时出击、何时收手。你将编纂关于一切腐化形式的知识，创建威胁及其弱点的精神图书馆。假以时日，你的名字本身将成为对抗邪恶的结界，被父母用来保护孩子，被腐化者在恐惧中低语。$B$B欢迎来到永恒的狩猎，$N。让任何邪恶都无法逃脱你的视线！'),
(53201, '群星指引你来到我面前，$N。我感觉到宇宙能量在你体内涌动。$B$B作为唤星者，你将号令先于凡人文明的力量。夜空成为你的魔典，星座成为你的法术。你将把星光引导为毁灭性的光束，向敌人召唤流星雨，并借助携带着遥远星系低语的星风航行。$B$B宇宙浩瀚而永恒，充满超越凡人理解的力量。古代星神曾以这些相同的力量塑造现实本身。如今它们的知识流经你。$B$B欢迎来到星辰精通。宇宙本身屈从于你的意志！'),
(9302412, '哈！所以牧师把你派到我这来了。很好。$B$B坟墓夺走了你的呼吸，$N，但它夺不走你的怒火。野蛮人不需要诡计，也不需要法术。我们猛击，我们咆哮，我们不停打击，直到再无站立之物。$B$B让我看看你那颗已死的心还能做些什么。'),
(9302413, ''),
(200019, '一个血巫师？$B$B有趣……$B$B好吧，经过进一步检查，这本书毫无价值。你可以留着它。$B$B以后你更强壮的时候再回来找我。也许我们可以再次合作。'),
(200168, '欢迎回来，$N。我就知道你会及时找到我的魔杖。字面意义上的。$B$B这根魔杖是给你的。我希望它能好好为你服务。事实上，我知道它会的。'),
(200075, ''),
(200140, ''),
(200141, ''),
(200142, ''),
(200035, '好，好。他被处理掉了。$B$B他活该去死，还有很多人也活该。$B$B作为你血腥成功的纪念，我送给你一件强大的装备，在地狱之火中锻造。Lok\'tar ogar，或者什么的。啊哈！'),
(200052, '<仪式法阵随着死灵能量脉动>'),
(200053, '<仪式法阵开始喷发。怪物正在被召唤>'),
(200054, '好吧，这正是我预料到的。$B$B但是，嘿，你没死。你已经是个更好的死灵法师了！$B$B来，我派了其他学徒去收集你战斗的残骸，他们做了这个。$B$B拿着它，从我眼前消失。'),
(200145, ''),
(200011, '这似乎就是那只猎鹰，看起来受伤了。'),
(200012, '猎鹰看起来很痛苦。一定是那个可疑的生物袭击了它！'),
(200013, '谢谢你找到费洛。他已经回到我身边，和以前一样健康。$B$B我已经派他执行又一次侦察任务了。$B$B……你说在费洛附近看到了一个奇怪的生物，它还攻击了你？那一定就是伤害我孩子的生物。$B$B我得进一步调查这件事。根据你的描述，不管这是什么，它都不是提瑞斯法林地的原生物。'),
(200039, '你可能没想到会有这样的任务，$N。但重要的是要明白，暗影之地召唤那些准备好的人，知道何时收取灵魂，与灵魂的回收本身一样重要。$B$B为了帮助我们的朋友，我将奖励你这双靴子。愿它们好好为你服务，它们被附魔，可以让你在水面上行走。'),
(200113, ''),
(200033, '艾露恩的恩典从你身上散发出来，$N。女神很满意。$B$B我有两把受艾露恩祝福的武器供你选择。$B$B作为艾露恩的选民前进吧。我们会再见的。'),
(200098, ''),
(200099, ''),
(200100, ''),
(200062, '善行应有善报，$N。'),
(200081, ''),
(200069, ''),
(200024, '我知道你在想我为什么让你做这件事。$B$B到时候，你会明白的。$B$B现在没有什么其他要担心的了。我给你做了一份类似的药剂，带上它，明智地使用。$B$B再会，$N。'),
(200023, '你可能想知道我为什么让你取回这个头骨。$B$B恶魔头骨往往是巨大邪能力量的容器。今天，我把这个给你。$B$B不过，如果你愿意，我可以将这个头骨的力量注入一把强大的剑中。$B$B选择权在你，无论你选择什么，它都会好好为你服务。'),
(200057, '又一个邪恶生物被从我们的世界驱逐。$B$B……然而。$B$B还有那么多其他邪恶需要摧毁。保持警惕。$B$B来，拿着这些，让它们在与邪恶的战斗中指引你。');

DELETE FROM `quest_request_items` WHERE `ID` IN (53000, 53001, 53002, 53003, 53004, 53005, 53006, 53007, 53008, 53009, 53010, 53011, 53012, 53013, 53014, 53015, 53016, 53017, 53201, 200011, 200012, 200013, 200019, 200023, 200024, 200033, 200035, 200039, 200052, 200053, 200054, 200057, 200062, 200069, 200075, 200081, 200098, 200099, 200100, 200113, 200140, 200141, 200142, 200145, 200168, 9302412, 9302413);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(53000, '我能感觉到怒火在你体内积聚，$N。你带来怒火石板了吗？无尽怒火之路等待着足够强大的人去走。'),
(53001, '血魔法的气息缠绕着你，$N。你带来猩红卷轴了吗？猩红之术只向配得上的人展露自身。'),
(53002, '虚空低语你的名字，$N。你带来虚空手稿了吗？远古力量在你靠近时涌动。'),
(53003, '邪能能量在你周围噼啪作响，$N。你带来邪能契约了吗？恶魔们为新的契约躁动不安。'),
(53004, '你保护他人的决心先于你而至，$N。你带来守护者誓约了吗？永恒防御者之路在等待。'),
(53005, '暗影如第二层皮肤般附着于你，$N。你带来暗影法令了吗？克索诺斯骑士在等待他们最新的成员。'),
(53006, '死亡的寒意紧随你身后，$N。你带来死亡法典了吗？死灵法术的秘密等待着配得上的人。'),
(53007, '时间本身在你周围弯曲，$N。你带来时空卷轴了吗？计时器感知到了你的潜力。'),
(53008, '烟与灰的气味宣告了你的到来，$N。你带来灼烧之书了吗？永恒之焰在寻找新的主人。'),
(53009, '荒野已将你标记为自己人，$N。你带来猎人指南了吗？野兽们感知到了同类的灵魂。'),
(53010, '符文之力从你身上散发出来，$N。你带来符文石板了吗？古老铭文等待着你的手。'),
(53011, '风暴云在你出现时聚集，$N。你带来风暴手稿了吗？暴风在召唤它的新主人。'),
(53012, '神圣光辉照亮你的道路，$N。你带来太阳圣典了吗？太阳的祝福等待着虔诚者。'),
(53013, '你对正义的执着显而易见，$N。你带来神圣誓言了吗？圣光在寻找新的勇士。'),
(53014, '创新的火花在你体内燃烧，$N。你带来机械图纸了吗？齿轮与魔法等待着你的天才。'),
(53015, '异域毒液的气味先于你而至，$N。你带来毒液配方了吗？通过毒素的转化在等待。'),
(53016, '灵魂低语着你的到来，$N。你带来灵魂神像了吗？彼岸在召唤。'),
(53017, '正义的决心在你眼中燃烧，$N。你带来审判官的信件了吗？对腐化的狩猎永无止境。'),
(53201, '你好，$N。你有什么要给我吗？'),
(9302412, '你浑身散发着墓土和怒火的气息，$N。你带着的是我的石板吗？'),
(9302413, ''),
(200019, '令人印象深刻。你再说一遍是谁拿着这本书的？'),
(200168, '啊，你回来了。'),
(200075, ''),
(200140, ''),
(200141, ''),
(200142, ''),
(200035, ''),
(200052, ''),
(200053, '<你把材料放在仪式法阵上>'),
(200054, ''),
(200145, ''),
(200011, ''),
(200012, ''),
(200013, '你今天找到费洛，立下了大功。谢谢你。'),
(200039, ''),
(200113, ''),
(200033, ''),
(200098, ''),
(200099, ''),
(200100, ''),
(200062, '你找到吊坠了吗，$N？'),
(200081, ''),
(200069, ''),
(200024, '欢迎回来。我让你做的事完成了吗？'),
(200023, '找得好。'),
(200057, '你回来了。');

DELETE FROM `creature_queststarter` WHERE `quest` IN (53000, 53001, 53002, 53003, 53004, 53005, 53006, 53007, 53008, 53009, 53010, 53011, 53012, 53013, 53014, 53015, 53016, 53017, 53201, 200011, 200012, 200013, 200019, 200023, 200024, 200033, 200035, 200039, 200052, 200053, 200054, 200057, 200062, 200069, 200075, 200081, 200098, 200099, 200100, 200113, 200140, 200141, 200142, 200145, 200168, 9302412, 9302413);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(1569, 53000),
(1569, 53001),
(1569, 53002),
(1569, 53003),
(1569, 53004),
(1569, 53005),
(1569, 53006),
(1569, 53007),
(1569, 53008),
(1569, 53009),
(1569, 53010),
(1569, 53011),
(1569, 53012),
(1569, 53013),
(1569, 53014),
(1569, 53015),
(1569, 53016),
(1569, 53017),
(1569, 53201),
(1569, 9302412),
(502951, 9302413),
(502922, 200019),
(502822, 200168),
(502833, 200075),
(50279, 200140),
(50293, 200141),
(50293, 200142),
(9300250, 200035),
(502930, 200052),
(50293, 200145),
(50281, 200011),
(9300253, 200012),
(9300253, 200013),
(502891, 200039),
(502913, 200113),
(502850, 200033),
(502773, 200098),
(502873, 200099),
(502873, 200100),
(50327, 200062),
(502803, 200081),
(502873, 200069),
(650688, 200024),
(50276, 200023),
(50275, 200057);

DELETE FROM `creature_questender` WHERE `quest` IN (53000, 53001, 53002, 53003, 53004, 53005, 53006, 53007, 53008, 53009, 53010, 53011, 53012, 53013, 53014, 53015, 53016, 53017, 53201, 200011, 200012, 200013, 200019, 200023, 200024, 200033, 200035, 200039, 200052, 200053, 200054, 200057, 200062, 200069, 200075, 200081, 200098, 200099, 200100, 200113, 200140, 200141, 200142, 200145, 200168, 9302412, 9302413);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(502891, 53000),
(502922, 53001),
(502833, 53002),
(50276, 53003),
(50279, 53004),
(9300250, 53005),
(502930, 53006),
(502822, 53007),
(50293, 53008),
(50281, 53009),
(502913, 53010),
(502773, 53011),
(50327, 53012),
(502803, 53013),
(502873, 53014),
(650688, 53015),
(9300251, 53016),
(50275, 53017),
(502850, 53201),
(502951, 9302412),
(502951, 9302413),
(502922, 200019),
(502822, 200168),
(502833, 200075),
(50293, 200140),
(50293, 200141),
(50279, 200142),
(9300250, 200035),
(502930, 200054),
(50293, 200145),
(9300253, 200011),
(9300253, 200012),
(50281, 200013),
(502891, 200039),
(502913, 200113),
(502850, 200033),
(502873, 200098),
(502873, 200099),
(502773, 200100),
(50327, 200062),
(502803, 200081),
(502873, 200069),
(650688, 200024),
(50276, 200023),
(50275, 200057);

DELETE FROM `gameobject_queststarter` WHERE `quest` IN (200053, 200054);
INSERT INTO `gameobject_queststarter` (`id`, `quest`)
VALUES
(9301250, 200053),
(9301250, 200054);

DELETE FROM `gameobject_questender` WHERE `quest` IN (200052, 200053);
INSERT INTO `gameobject_questender` (`id`, `quest`)
VALUES
(9301250, 200052),
(9301250, 200053);

-- Map markers where the text promises them: "Let me mark your map to the location of where my ritual must be
--   had" (200052) and "I've marked her location on your map" (200057).
DELETE FROM `quest_poi` WHERE `QuestID` IN (200052, 200057);
INSERT INTO `quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`)
VALUES
(200052, 0, 0, 0, 20, 0, 0, 1),
(200057, 0, 0, 0, 20, 0, 0, 1);

DELETE FROM `quest_poi_points` WHERE `QuestID` IN (200052, 200057);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`)
VALUES
(200052, 0, 0, 1756, 1590),
(200057, 0, 0, 1826, 1566);

-- ---------------------------------------------------------------------------
-- 6. Letter and chain item pages
-- ---------------------------------------------------------------------------
DELETE FROM `page_text` WHERE `ID` IN (10201, 11112, 15000, 15001, 15002, 15003, 15004, 15005, 15006, 15007, 15008, 15009, 15010, 15011, 15012, 15013, 15014, 15015, 15016, 15017, 25151, 27575, 931412);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`)
VALUES
(10201, '宇宙在召唤那些想要号令星辰之力的人。$B$B群星本身蕴含着无限的知识与能量，等待被驾驭。作为唤星者，你将以至高无上的清晰度引导天界之力，从遥远的星系与宇宙现象中汲取力量。$B$B来丧钟镇找我，我会教你号令永恒星辰。$B$B兰德拉尼斯$B唤星者训练师', 0),
(11112, '如果你正在读这个，你已经找到了我的朋友。纸条上附着一小瓶红色药剂。如果他受伤了，就交给他，他会知道接下来该怎么做。', 0),
(15000, '怒火不会随肉体消亡。对于那些走过坟墓又归来的人，愤怒会变成一种冰冷而耐心的东西，在死亡的磨刀石上磨砺得更加锋利。$B$B作为亡灵死神，你将学会收割生者的灵魂，并行走于这个世界与下一个世界之间的窄路。他人恐惧的，将由你带来。$B$B殡葬者奇泰在丧钟镇传授死神之道。在坟墓间找到他。', 0),
(15001, '对于那些不再拥有活人之血的人来说，血魔法有了全新的意义。猩红之术流经灵液与暗影，从亡灵存在的精髓中汲取力量。$B$B作为亡灵血法师，你将学会操纵驱动你躯体的黑暗生命力，将你的不死之身化为毁灭性魔法力量的武器。死亡成为你追求力量最伟大的盟友。$B$B血之守护者桑吉尼斯在丧钟镇精通了这些禁忌之术。去找她学习被诅咒者的血魔法。', 0),
(15002, '上古存在的低语对那些跨越了死亡门槛的人尤为响亮。从坟墓之外的角度审视，邪教徒与远古力量的沟通会更加清晰。$B$B作为亡灵邪教徒，你将充当生者世界与远古实体领域之间的桥梁。你的亡灵之身使你成为凡人头脑无法理解的力量的完美容器。$B$B虚空召唤者马勒菲库斯在丧钟镇与这些力量沟通。如果你想听到死亡使其变得清晰可闻的低语，就去找他。', 0),
(15003, '邪能不会让已经尝过死亡滋味的人感到恐惧。它的火焰在坟墓留下的空洞处燃烧，并回应那些足够大胆去束缚它的人的意志。$B$B作为恶魔猎手，你将行走于凡人与恶魔的边界，汲取邪能之力而不被其吞噬。$B$B达达尼斯在丧钟镇号令这些黑暗力量。去礼拜堂找他。', 0),
(15004, '守护者誓约超越生死。即便在亡灵之身中，保护他人的神圣职责依然永恒燃烧，或许因为曾从坟墓中幸存而燃烧得更加炽烈。$B$B作为亡灵守护者，你将化为由骸骨与意志构成的堡垒，你的防御魔法由死亡无法击碎的决心驱动。你的保护延伸至生者与死者。$B$B杜尔根队长在丧钟镇坚守这一神圣警戒。去找他，学习守护者职责如何即便死亡也无法终结。', 0),
(15005, '以克索诺斯的印章起誓：荣誉比肉体更长久。克索诺斯骑士披着凡人的外表，服务于比任何生者王国都更古老的目的。$B$B作为克索诺斯骑士，你将学会在高贵气度的盾牌之后驾驭扭曲虚空的冰冷黑暗。$B$B布拉尔穆拉在丧钟镇坚守这些黑暗誓约。在墓地大门处找到他。', 0),
(15006, '那些死去又复活的人比任何活着的学者都更了解生死之间的道路。号令死者的技艺对像你这样的人来说浑然天成。$B$B作为亡灵死灵法师，你将自骸骨与墓土中唤起仆从，并使其屈从于你的意志。$B$B多纳尔·瘟疫编织者在丧钟镇精通这些技艺。在墓地中找他。', 0),
(15007, '时间是一条河流，大多数人被它裹挟而行。时光术士则学会逆流而涉，减缓一次心跳，或加速一次挥刃。$B$B作为时光术士，你将让时间与空间的沙粒服从你的目的，并学会这样的力量所要求的耐心。$B$B夸多弥在丧钟镇弯曲时间与空间。在旅店楼上找他。', 0),
(15008, '死亡无法熄灭炎术师的火焰。它只会将其转化为一种没有温度却吞噬一切的冰冷之火。$B$B作为亡灵炎术师，你将号令服从你意志、而非服从活人之心热度的火焰。$B$B卡德摩斯·余烬烈焰在丧钟镇号令这些死亡之火。在旅店里找他。', 0),
(15009, '游侠与自然的联系在亡灵之身中加深，但呈现出更黑暗的面向。你追踪的不仅是生者，还有亡灵、灵魂，以及那些本不该存在的东西。$B$B作为亡灵游侠，你将如穿行林地般自如地穿行暗影，你的感官同时适应自然世界与死亡领域。你的猎鹰伙伴或许已是骸骨，但它的忠诚绝对如初。$B$B游侠瓦莱丝在丧钟镇的暗影中潜行。找到她，学习死亡触碰过的追踪者的黑暗技艺。', 0),
(15010, '符文比雕刻它们的手更长久。符文大师的铭刻在血肉腐烂之后依然长存。$B$B作为亡灵符文大师，你将把力量刻入石头、钢铁与骸骨，并学会在战斗中召唤它。$B$B威廉·巴尔蒂尔在丧钟镇雕刻这些永恒符号。去礼拜堂找他。', 0),
(15011, '风暴携带着亡者的声音。它的狂风以迷失灵魂的怒火呼啸，它的闪电回应那些已无所畏惧的人。$B$B作为亡灵风暴使者，你将呼唤幽灵闪电并驾驭暴风。$B$B达伯特·斯塔兹在丧钟镇号令这些幽灵风暴。在旅店里找他。', 0),
(15012, '即便在死亡的帷幕之外，太阳的光芒依然可以被引导。经过亡灵之身过滤的神圣之光，会变成既美丽又可怕的存在。$B$B作为太阳祭司，你将承载太阳的光辉来治疗盟友、灼烧敌人。$B$B太阳低语者塔莱西亚在丧钟镇坚守这份矛盾的信仰。去礼拜堂找她。', 0),
(15013, '神圣誓言甚至超越坟墓的束缚。圣殿骑士对正义的奉献超越生死，铸就了在亡灵之身中仍侍奉正义的勇士。$B$B作为圣殿骑士，你将掌握圣光对其最高教团所要求的对身体与心智的精确控制。$B$B瓦利昂·宏钟在丧钟镇坚守这些神圣职责。在礼拜堂旁找他。', 0),
(15014, '当从死亡的束缚中解放出来，创新呈现出全新的维度。你的发明以灵魂能量而非蒸汽运转，机械弥合了魔法与机械之间的鸿沟。$B$B作为亡灵工匠，你将创造由死灵能量驱动的装置，服务于生者与死者的发明。死亡为创造之术带来了全新的视角。$B$B工程师莫蒂斯在丧钟镇创造这些奇迹。去找他，学习亡灵之身如何为发明开启新的前沿。', 0),
(15015, '剧毒术士的技艺在亡灵之身中达到终极表达。你对腐朽与腐化的深刻理解，让你能调配出前所未有的强效毒素，同时创造出超越死亡本身的解药。$B$B作为亡灵剧毒术士，你将掌握能同时影响生者与亡灵目标的毒药，你的解药携带着治愈本应致命之伤的力量。死亡教会了你毒理学的终极课程。$B$B药剂师凯兰在丧钟镇调配这些致命化合物。向他学习死亡如何完善毒药与解药之间的平衡。', 0),
(15016, '灵魂在提瑞斯法并不安息。它们在死树中低语，在每一座坟墓上徘徊，而巫医能听见它们全部。$B$B作为巫医，你将通过神像与仪式架起生死之间的桥梁，用妖术诅咒敌人，用治疗抚慰朋友。$B$B暗影行者沃斯在丧钟镇修行这些神秘艺术。在村庄南端找他。', 0),
(15017, '当追猎腐化的人亲身经历过终极腐化，并因死亡本身而得到净化时，这场狩猎便有了全新的意义。亡灵猎魔人深刻地理解邪恶。$B$B作为亡灵猎魔人，你将凭借跨越死亡门槛的权威追猎超自然威胁。你的神圣武器将击倒不洁之物，你对黑暗的知识被用来保护无辜者免受曾俘获你的力量的侵害。$B$B贝利·恐恨在丧钟镇继续永恒的十字军远征。去找他，学习死亡如何将对抗邪恶的狩猎转化为更加无情而纯粹的存在。', 0),
(25151, '血即生命。血即力量。$B$B猩红之术教导我们，流经每个活体的精髓都可以被抽取、塑造，并转而对抗其主人。掌握它的人既不需要钢铁，也不需要火焰。', 0),
(27575, '我没有眼睑，却从不睡眠。$B我不用一言一语便评判何为公正。$B他们说，美从不在事物本身，而永远在我之中。$B我是什么？在这些墙壁之内寻找。', 0),
(931412, '死亡不会冷却野蛮人的血。它只会让那曾经告诉身体停下的疼痛沉默。$B$B作为亡灵野蛮人，你将带着生者的怒火与死者的耐力战斗，仅凭力量便击碎敌人。$B$B阿莱西亚在丧钟镇传授野蛮人之道。在街道南端、礼拜堂大门对面找到她。', 0);

-- 9302412 Grave-Etched Tablet: the Barbarian letter item, with the look and flags of the Fury Tablet 9200570
--   (SOURCED-CACHE itemcache).
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `ItemLevel`, `maxcount`, `stackable`, `bonding`, `description`, `PageText`, `Material`)
VALUES
(9302412, 12, 0, '墓碑石板', 3108, 1, 0, 0, 1, 1, 1, '一块破碎的墓碑残片，被一只沉重的手凿刻着战争符文。', 931412, 0)
ON DUPLICATE KEY UPDATE `class` = VALUES(`class`), `subclass` = VALUES(`subclass`), `name` = VALUES(`name`), `displayid` = VALUES(`displayid`), `Quality` = VALUES(`Quality`), `Flags` = VALUES(`Flags`), `ItemLevel` = VALUES(`ItemLevel`), `maxcount` = VALUES(`maxcount`), `stackable` = VALUES(`stackable`), `bonding` = VALUES(`bonding`), `description` = VALUES(`description`), `PageText` = VALUES(`PageText`), `Material` = VALUES(`Material`);

-- ---------------------------------------------------------------------------
-- 7. Loot
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE (`Entry`, `Item`) IN ((9300252, 661316), (9300254, 662331), (1502, 458421), (1502, 458422), (1502, 458423), (1890, 661417), (1506, 662330));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(9300252, 661316, 0, 100, 1, 1, 0, 1, 1, 'Suspicious Blood Elf - Tome of Blood (the quest''s holder, INFERRED 100%)'),
(9300254, 662331, 0, 100, 1, 1, 0, 1, 1, 'Scorch - Heart of Scorch (unique, INFERRED 100%)'),
(1502, 458421, 0, 55, 1, 1, 0, 1, 1, 'Wretched Ghoul - Bones (SOURCED-EXILES 55%)'),
(1502, 458422, 0, 35, 1, 1, 0, 1, 1, 'Wretched Ghoul - Fresh Flesh (SOURCED-EXILES 35%)'),
(1502, 458423, 0, 45, 1, 1, 0, 1, 1, 'Wretched Ghoul - Skull (SOURCED-EXILES 45%)'),
(1890, 661417, 0, 33, 1, 1, 0, 1, 1, 'Rattlecage Skeleton - Power Core (SOURCED-EXILES 33%)'),
(1506, 662330, 0, 33, 1, 1, 0, 1, 1, 'Scarlet Convert - Small Sword (SOURCED-EXILES 33%)');

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`, `Idx`) IN ((9300252, 0), (9300254, 0), (1502, 0), (1502, 1), (1502, 2), (1890, 1), (1506, 1));
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(9300252, 0, 661316),
(9300254, 0, 662331),
(1502, 0, 458421),
(1502, 1, 458422),
(1502, 2, 458423),
(1890, 1, 661417),
(1506, 1, 662330);

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (9301252, 9301253, 9301254, 9301255, 9301256);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(9301252, 661335, 0, 100, 1, 1, 0, 1, 1, 'CoA Deathknell: Training Wand'),
(9301253, 661330, 0, 100, 1, 1, 0, 1, 1, 'CoA Deathknell: Eye of the Beholder'),
(9301254, 663319, 0, 100, 1, 1, 0, 1, 1, 'CoA Deathknell: Lost Pendant'),
(9301255, 663320, 0, 100, 1, 1, 0, 1, 1, 'CoA Deathknell: Scrap Metal'),
(9301256, 661321, 0, 100, 1, 1, 0, 1, 1, 'CoA Deathknell: Skull of Pax');

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` IN (9301252, 9301253, 9301254, 9301255, 9301256);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(9301252, 0, 661335),
(9301253, 0, 661330),
(9301254, 0, 663319),
(9301255, 0, 663320),
(9301256, 0, 661321);

-- ---------------------------------------------------------------------------
-- 8. Spawns
-- ---------------------------------------------------------------------------

-- Maquell Ebonwood 2315 (guid 31916) path: the inn turnaround (1861.98, 1563.01) was 0.69 yd from Cadmus
--   Emberblaze's sourced post (53008). He now turns on the open floor 7.8 yd inside the front door, 3.4 yd from
--   Archibald Kava and 7.8 yd from Cadmus; both legs from the door are clear of walls and pass every NPC at 3.4
--   yd or more.
UPDATE `waypoint_data` SET `position_x` = 1862.0, `position_y` = 1571.0, `position_z` = 94.314 WHERE `id` = 319160 AND `point` = 4;
-- Deathguard Phillip 1739 (guid 28705) path: both legs through the east turnaround (1893.23, 1586.92) pass
--   0.3-0.4 yd from Marla's Grave at its CoA point (ST6961). He now turns 1.9 yd further south on the same open
--   street, so both legs pass 1.5 yd from the grave, 3.3 yd from Deathguard Bradforth and 4.6 yd from Deathguard
--   Randolph.
UPDATE `waypoint_data` SET `position_x` = 1893.2, `position_y` = 1585.0, `position_z` = 88.312 WHERE `id` = 287050 AND `point` = 5;

DELETE FROM `creature` WHERE `guid` IN (9003700, 9003701, 9003702, 9003703, 9003704, 9003705, 9003706, 9003707, 9003708, 9003709, 9003710, 9003711, 9003712, 9003713, 9003714, 9003715, 9003716, 9003717, 9003718, 9003719, 9003720, 9003721, 9003722, 9003723, 9003724, 9003725, 9003726, 9003727, 9003728, 9003729) OR `guid` BETWEEN 9003700 AND 9003899;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9003700, 50276, 0, 0, 0, 1, 1, 1, 1839.63, 1645.13, 97.628, 5.07, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Dar''danis, Felsworn trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53003, z from surface.floor. Faces 5.07 toward the nave and the chapel door the letter-bearers walk in by, clear 15 yd'),
(9003701, 50275, 0, 0, 0, 1, 1, 1, 1849.52, 1563.24, 94.859, 1.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Bailey Horrorhate, Witch Hunter trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53017, z from surface.floor. Faces 1.60 west down the lane to the street and the mailbox by the chapel door; the stock-derived 2.88 faced the farmhouse wall 4.6 yd away'),
(9003702, 502773, 0, 0, 0, 1, 1, 1, 1859.99, 1556.58, 94.789, 1.55, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Dabbert Staze, Stormbringer trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53011, z from surface.floor. Faces 1.55 toward the inn''s front door (1860, 1577), 15 yd of open floor'),
(9003703, 9300250, 0, 0, 0, 1, 1, 1, 1876.2, 1611, 93.979, 3.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Brallmular, Knight of Xoroth trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53005, z from surface.floor. Faces 3.80 down the street toward the chapel door players come from, open 9-15 yd; the stock-derived 4.71 faced across the street away from the approach'),
(9003704, 50279, 0, 0, 0, 1, 1, 1, 1881.26, 1589.64, 89.973, 2.76, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Deathguard Bradforth, Guardian trainer. Deathknell: hand-placed (INFERRED) north gate, 1.6 yd west of his SuperTrack post (53004), which is 2.3 yd from Marla''s Grave at its CoA point (ST6961); now 3.7 yd from the grave, 3.3 yd from the Deathguard patrol and 5.1 yd from the Wretched Ghoul''s turnaround, inspected with inspect_area and passing surface.check. Faces 2.76 toward the mailbox and chapel door at the far end of the street'),
(9003705, 502803, 0, 0, 0, 1, 1, 1, 1864.39, 1614.29, 95.617, 3.4, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Vaelion Grandbell, Templar trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53013, z from surface.floor. Faces 3.40 toward the chapel door and mailbox players come from; the stock-derived 4.69 faced across the street'),
(9003706, 502922, 0, 0, 0, 1, 1, 1, 1849.53, 1631.43, 96.933, 3.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Irina Valreed, Bloodmage trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53001, z from surface.floor. Faces 3.30 into the nave toward the door, as Dark Cleric Duesten beside her does'),
(9003707, 50281, 0, 0, 0, 1, 1, 1, 1886.79, 1646.3, 92.426, 3.91, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Gustaf Blightflight, Ranger trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53009, z from surface.floor. Faces 3.91 toward the mailbox and chapel door across the graveyard'),
(9003708, 502822, 0, 0, 0, 1, 1, 1, 1863.5, 1567.95, 99.071, 1.25, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Quardormi, Chronomancer trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53007, z from surface.floor. Faces 1.25 toward the head of the stairs players climb (1866.5, 1576); the stock-derived 2.28 turned his back on them'),
(9003709, 502930, 0, 0, 0, 1, 1, 1, 1885.34, 1620.71, 94.043, 3.44, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Dornall Plagueweaver, Necromancer trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53006, z from surface.floor. Faces 3.44 toward the mailbox and chapel door from the graveyard'),
(9003710, 50293, 0, 0, 0, 1, 1, 1, 1862.66, 1563.19, 94.311, 1.8, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Cadmus Emberblaze, Pyromancer trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53008, z from surface.floor. Faces 1.80 toward the inn''s front door, 13.8 yd of open floor'),
(9003711, 502833, 0, 0, 0, 1, 1, 1, 1861.02, 1625.68, 95.621, 5.11, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Thaddeus Voidseeker, Cultist trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53002, z from surface.floor. Faces 5.11 east-north-east past the hearse at his side (1.2 yd south) to the street, clear 15 yd'),
(9003712, 502850, 0, 0, 0, 1, 1, 1, 1855.68, 1568.99, 99.083, 0.6, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Landralanis, Starcaller trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53201, z from surface.floor. Faces 0.60 toward the head of the stairs players climb (1866.5, 1576), 11-14 yd clear'),
(9003713, 50327, 0, 0, 0, 1, 1, 1, 1837.4, 1627.78, 96.933, 6.05, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Sunspeaker Talethia, Sun Cleric trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53012, z from surface.floor. Faces 6.05 across the nave toward the door, as the stock NPCs of the south aisle face; the stock-derived 0.66 faced the altar end'),
(9003714, 502873, 0, 0, 0, 1, 1, 1, 1842.78, 1574.23, 96.582, 2.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Riley Jett, Tinker trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53014, z from surface.floor. Faces 2.30 toward the farmhouse door (1840, 1577) 3 yd away; the stock-derived 2.91 faced the butcher''s table'),
(9003715, 650688, 0, 0, 0, 1, 1, 1, 1876.2, 1569.7, 94.314, 2.75, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Apothecary Kelan, Venomancer trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53015, z from surface.floor. Faces 2.75 toward the inn''s front door, 15 yd open'),
(9003716, 502891, 0, 0, 0, 1, 1, 1, 1870.29, 1635.95, 95.484, 5.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Undertaker Chite, Reaper trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53000, z from surface.floor. Faces 5.30 toward the graveyard gate players enter by, his open grave and dirt mound in front of him; the wheelbarrow at his side blocks the other approach'),
(9003717, 502913, 0, 0, 0, 1, 1, 1, 1847.92, 1641.24, 97.628, 4.01, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Wilhelm Balthier, Runemaster trainer. Deathknell: SOURCED-CLIENT QuestSuperTrack turn-in point of quest 53010, z from surface.floor. Faces 4.01 down the nave toward the door, past Novice Elreth'),
(9003718, 9300251, 0, 0, 0, 1, 1, 1, 1835.5, 1598.5, 95.254, 0.85, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Shadow-Walker Voss, Witch Doctor trainer. Deathknell: hand-placed (INFERRED) south end of the street, west side, in front of the chapel''s south-east corner: the empty part of the village, 9 yd from both guard patrol lines, inspected with inspect_area and passing surface.check. Faces 0.85 toward the chapel door (1843, 1607.5) where players leave with their letters'),
(9003719, 502951, 0, 0, 0, 1, 1, 1, 1838, 1583.5, 94.395, 1.37, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Alessia, Barbarian trainer. Deathknell: hand-placed (INFERRED) south end of the street, east side, in front of the farmhouse, across the street from Shadow-Walker Voss; 2.1 yd west of Maquell Ebonwood''s walk into the farmhouse, 5 yd from the Deathguard patrol, inspected with inspect_area and passing surface.check. Faces 1.37 across the street to the chapel door players leave with their letters'),
(9003720, 299240, 0, 0, 0, 1, 1, 1, 1863.2, 1556.3, 94.793, 2.5, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Deathknell inn (the two-storey house), ground floor: the stock warrior trainer Dannal Stern''s alcove, 0.75 yd from his post and 3.2 yd from Dabbert Staze; the stock spawn (guid 28464) stood 2.48 yd from Dabbert''s sourced point, so the kill copy replaces it. Stock facing'),
(9003721, 299226, 0, 0, 0, 1, 1, 0, 1915, 1596, 83.835, 3.6, 60, 8, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Deathknell, the field north of the village exit where the risen wander, running amok among the Mindless Zombies'),
(9003722, 9300252, 0, 0, 0, 1, 1, 1, 1898, 1573.5, 89.074, 0, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: abandoned farmhouses north-east of Deathknell, south house, rummaging at the Shadowfang table'),
(9003723, 9300252, 0, 0, 0, 1, 1, 1, 1903.5, 1553, 88.964, 1.57, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: abandoned farmhouses north-east of Deathknell, north house, rummaging at the Shadowfang table'),
(9003724, 9300253, 0, 0, 0, 1, 1, 0, 1923.5, 1697, 86.623, 4.15, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: north-west of Deathknell: perched injured at the wrecked wagon CoA placed there (Badlandssunkenwagon.m2), facing south-east back toward the village he flew from and the player coming from Gustaf (bearing 4.09) and the street (4.13), clear for 10 yd; the wagon and the rising ground are behind him'),
(9003725, 9300255, 0, 0, 0, 1, 1, 0, 1860.3, 1556.2, 99.727, 1.57, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Deathknell inn (the two-storey house), upper floor: lying in the canopy bed CoA furnished (Innbedcanopy and three Innpillow models), head on the pillows'),
(9003726, 9300256, 0, 0, 0, 1, 1, 0, 1826, 1566, 95.623, 1.25, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: Deathknell, the shadowed nook behind the dead canopy tree by the south gate torch, watching the street'),
(9003727, 685034, 0, 0, 0, 1, 1, 0, 1913, 1728, 99.976, 0, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: north-west of Deathknell: at the foot of the Elune statue with pilgrim candles (Diremaulstonestatue04.m2, CoA-only) on the side that faces the village'),
(9003728, 685037, 0, 0, 0, 1, 1, 0, 1845, 1778.5, 122.244, 0, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: western mountains: in the hidden gully west of the village, before the paladin statue'),
(9003729, 9300257, 0, 0, 0, 1, 1, 1, 1898.5, 1597, 87.587, 3.73, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Deathknell: outside the north gate, below the graveyard''s east lantern post, glaring back at the gate he was turned away from');

DELETE FROM `creature_addon` WHERE `guid` = 9003725 OR `guid` BETWEEN 9003700 AND 9003899;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`)
VALUES
(9003725, 0, 0, 3, 1, 0, 0, NULL);

DELETE FROM `gameobject` WHERE `guid` IN (7912400, 7912401, 7912402, 7912403, 7912404, 7912405, 7912406, 7912407, 7912408, 7912409, 7912410, 7912411, 7912412, 7912413, 7912414, 7912415, 7912416, 7912417, 7912418, 7912419, 7912420, 7912421) OR `guid` BETWEEN 7912400 AND 7912499;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7912400, 9301250, 0, 0, 0, 1, 1, 1756, 1590, 111.813, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Deathknell: hills south of Deathknell: before the two tombstone monuments where CoA lit four candles (CoA-only Candle01.m2)'),
(7912401, 9301251, 0, 0, 0, 1, 1, 1793, 1662, 112.677, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Deathknell: the hills south-west of Deathknell: the sheltered hollow between the two knolls'),
(7912402, 9301252, 0, 0, 0, 1, 1, 1836, 1575, 97.488, 1.2, 0, 0, 0.564642, 0.825336, 60, 100, 1, '', 'CoA Deathknell: the farmhouse next door to the inn: on the butcher''s table'),
(7912403, 9301253, 0, 0, 0, 1, 1, 1858.3, 1572.2, 95.2, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Deathknell: Deathknell inn (the two-storey house), ground floor: on the table by the hearth'),
(7912404, 9301253, 0, 0, 0, 1, 1, 1864.25, 1554.62, 100.011, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Deathknell: Deathknell inn (the two-storey house), upper floor: on the free west half of the small table, clear of the candelabra and the book stack'),
(7912405, 9301254, 0, 0, 0, 1, 1, 1803, 1378, 81.192, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, north edge, on the way she fled toward Deathknell'),
(7912406, 9301254, 0, 0, 0, 1, 1, 1822, 1410, 80.221, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, further north toward Deathknell, in the dip below the camp where she ran'),
(7912407, 9301256, 0, 0, 0, 1, 1, 1864, 1531.5, 88.542, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Deathknell: abandoned barn south-east of Deathknell: set among the sacks beside the dead mule'),
(7912408, 9301256, 0, 0, 0, 1, 1, 1945, 1536, 90.165, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Deathknell: abandoned smithy east of Deathknell: on the smithy floor by the cold forge (the ground outside the back wall is a walled-off pocket with no path)'),
(7912409, 9301257, 0, 0, 0, 1, 1, 1847.5, 1778.5, 122.06, 0, 0, 0, 0, 1, 300, 100, 1, '', 'CoA Deathknell: western mountains: the hidden gully west of the village behind the knoll, below the fallen tree; faces north to the gully mouth'),
(7912410, 9301255, 0, 0, 0, 1, 1, 1761, 1388, 93.93, 0.4, 0, 0, 0.198669, 0.980067, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, inside the tent, in the middle under the canvas'),
(7912411, 9301255, 0, 0, 0, 1, 1, 1759.5, 1389.5, 94.486, 2.1, 0, 0, 0.867423, 0.497571, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, inside the tent, back corner'),
(7912412, 9301255, 0, 0, 0, 1, 1, 1762.5, 1386.5, 93.309, 5.2, 0, 0, 0.515501, -0.856889, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, inside the tent, by the flap'),
(7912413, 9301255, 0, 0, 0, 1, 1, 1766.5, 1385.5, 92.609, 1.3, 0, 0, 0.605186, 0.796084, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, at the tent mouth by the lantern and goblet'),
(7912414, 9301255, 0, 0, 0, 1, 1, 1767, 1390.5, 93.751, 3.6, 0, 0, 0.973848, -0.227202, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, north corner of the tent'),
(7912415, 9301255, 0, 0, 0, 1, 1, 1763, 1395.5, 95.189, 0.9, 0, 0, 0.434966, 0.900447, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, behind the tent, west side'),
(7912416, 9301255, 0, 0, 0, 1, 1, 1758, 1395, 95.784, 4.4, 0, 0, 0.808496, -0.588501, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, behind the tent, south-west corner'),
(7912417, 9301255, 0, 0, 0, 1, 1, 1754.5, 1390, 95.814, 2.7, 0, 0, 0.975723, 0.219007, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, south side of the tent'),
(7912418, 9301255, 0, 0, 0, 1, 1, 1754.5, 1384, 94.454, 5.9, 0, 0, 0.190423, -0.981702, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, south-east of the tent'),
(7912419, 9301255, 0, 0, 0, 1, 1, 1758.5, 1381, 92.511, 1.8, 0, 0, 0.783327, 0.62161, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, east of the tent, beside the path'),
(7912420, 9301255, 0, 0, 0, 1, 1, 1769, 1385.5, 92.444, 4, 0, 0, 0.909297, -0.416147, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, between the tent and Meven Korgal'),
(7912421, 9301255, 0, 0, 0, 1, 1, 1770, 1394.5, 94.159, 0.2, 0, 0, 0.099833, 0.995004, 60, 100, 1, '', 'CoA Deathknell: Scarlet camp south-east of Deathknell, Meven Korgal''s tent, north-west of the tent under the canopy tree');

-- ---------------------------------------------------------------------------
-- 9. Scripts
-- ---------------------------------------------------------------------------
-- Credits: the three Venomancer targets on the concoction (SPELLHIT, D22); Felo on the Red Vial and on accepting
--   "A Surprise Attack!"; Dalin Soft by gossip, the option shown only with the quest (D10); the disguised witch
--   on the torch; walk-in markers at the two statues (D10); the ritual circle and the campfire by
--   SmartGameObjectAI (GameObject::Use calls AI()->GossipHello for every type, GameObject.cpp:1476-1480; quest
--   accept, PlayerQuest.cpp:487).
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (50275, 50327, 502930, 685034, 9300253, 9300255, 9300256) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(50275, 0, 0, 0, 8, 0, 100, 0, 685013, 0, 0, 0, 0, 0, 33, 685013, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bailey Horrorhate - On Spellhit Poison the World - Credit Poisoning the World'),
(50327, 0, 0, 0, 8, 0, 100, 0, 685013, 0, 0, 0, 0, 0, 33, 685012, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunspeaker Talethia - On Spellhit Poison the World - Credit Poisoning the World'),
(502930, 0, 0, 0, 8, 0, 100, 0, 685013, 0, 0, 0, 0, 0, 33, 685014, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Dornall Plagueweaver - On Spellhit Poison the World - Credit Poisoning the World'),
(685034, 0, 0, 0, 10, 0, 100, 0, 1, 10, 1000, 1000, 1, 0, 33, 685031, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Invisible Dummy (Starcaller3) - On LOS Out of Combat - Credit Champion of Elune'),
(9300253, 0, 0, 0, 8, 0, 100, 0, 684328, 0, 0, 0, 0, 0, 33, 685011, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Felo - On Spellhit Tend Wounds (Red Vial) - Credit Falcons Are Friends'),
(9300253, 0, 1, 0, 19, 0, 100, 0, 200012, 0, 0, 0, 0, 0, 12, 299222, 4, 60000, 1, 0, 0, 8, 0, 0, 0, 0, 1918, 1703, 88.144, 5, 'Felo - On Quest A Surprise Attack! Accepted - Summon Suspicious Creature from the bushes'),
(9300255, 0, 0, 0, 62, 0, 100, 0, 930352, 0, 0, 0, 0, 0, 33, 685022, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Dalin Soft - On Gossip Option 0 Selected - Credit Call of the Shadowlands'),
(9300256, 0, 0, 1, 8, 0, 100, 0, 512352, 0, 5000, 5000, 0, 0, 33, 685221, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Agatha Harlow - On Spellhit Torch - Credit Find the Witch'),
(9300256, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Agatha Harlow - Linked - Yell Line 0'),
(9300256, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 299333, 4, 60000, 1, 0, 0, 8, 0, 0, 0, 0, 1826, 1566, 95.623, 1.25, 'Agatha Harlow - Linked - Summon the Witch in her place'),
(9300256, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Agatha Harlow - Linked - Despawn for 60 seconds');

DELETE FROM `smart_scripts` WHERE `entryorguid` = -9003728 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(-9003728, 0, 0, 0, 10, 0, 100, 0, 1, 8, 1000, 1000, 1, 0, 33, 685037, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '[KC] Visit (hidden statue) - On LOS Out of Combat - Credit A Quiet Life');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9301250, 9301251) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(9301250, 1, 0, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 33, 685121, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ritual Circle - On Gossip Hello - Credit Call of Death'),
(9301250, 1, 1, 0, 19, 0, 100, 0, 200054, 0, 0, 0, 0, 0, 12, 299232, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, 1758.5, 1592.5, 111.461, 3.9, 'Ritual Circle - On Quest Call of the Dead Accepted - Summon the Undead Monstrosity'),
(9301250, 1, 2, 0, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 299232, 4, 120000, 1, 0, 0, 8, 0, 0, 0, 0, 1758.5, 1592.5, 111.461, 3.9, 'Ritual Circle - On Use - Summon the Undead Monstrosity again if none is near'),
(9301251, 1, 0, 1, 64, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 9300254, 4, 60000, 1, 0, 0, 8, 0, 0, 0, 0, 1791, 1664.5, 112.891, 5.5, 'Bound Campfire - On Gossip Hello - Summon Scorch'),
(9301251, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bound Campfire - Linked - Burn out for 60 seconds');

DELETE FROM `conditions` WHERE `SourceEntry` = 9301250 AND `SourceTypeOrReferenceId` = 22;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(22, 3, 9301250, 1, 0, 9, 0, 200054, 0, 0, 0, 0, 0, '', 'Ritual Circle - re-summon only while Call of the Dead is taken'),
(22, 3, 9301250, 1, 0, 29, 1, 299232, 20, 0, 1, 0, 0, '', 'Ritual Circle - re-summon only if no living Undead Monstrosity is within 20 yd');

DELETE FROM `creature_text` WHERE `CreatureID` = 9300256;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `comment`)
VALUES
(9300256, 0, 0, '恐恨的猎犬找到我了！那就和我一起腐烂吧，猎人！', 14, 0, 100, '阿加莎·哈洛 - 被火炬揭露（推断）');
