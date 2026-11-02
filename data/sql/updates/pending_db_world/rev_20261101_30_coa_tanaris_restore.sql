-- Tanaris restore from Ascension captures: the 15 Tanaris quests this server lacks (WDB questcache captures up to
-- 2026-09-07), their givers, enders and credit NPCs (WDB creaturecache), the Bloodsail Logbook and Zeppelin Battery
-- quest objects (WDB gameobjectcache), the quest item drops, the Steamwheedle Port vendor and engineering trainer,
-- the rare elites Mordok Charstone, Thaladorius Rex and Ze'bulba, the vendor Rektha Gruff, and the Giant Surf
-- Glider, Raging Dune Smasher and Great Shark spawns of the SUB creature_spawn table (db.exil.es dump 2026-10-04)
-- this server lacks. Legacy of Lei'shen 25004 is left out: its giver and objectives are not captured. Positions
-- follow the client QuestSuperTrack/SuperTrack points where one exists. The Cerulis camp, Rektha Gruff and the three
-- rogue elites follow the spawns of Project Descension (descension-server b18d7ee7) at their corrected heights;
-- those come from that realm, not live CoA. Renthar and two Apprentice Engineers stand at Henry Crabgrass's rocket
-- scaffold, and the Stormborn Cloud Serpent and Zeppelin Battery at the zeppelin wreck, where a live stream (YouTube
-- rEaTnfr2Ke4) shows them. The levels of Zebel Shplit, Snazzy Boomsprocket, Renthar, the Apprentice Engineers,
-- Franchesca, Gabriel Smokestacks, Barnabas, the serpent and Cerulis are the stream's. Every other spot, every
-- facing and respawn time, and every other level and every faction, NPC and unit flag of the new NPCs is estimated,
-- since the captures carry none. Type, family, rank, type flags and health modifiers follow each creaturecache row;
-- the Bronze Whelp's kill credit 100323 is not on this server and is left out.

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`,
  `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,
  `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`,
  `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`,
  `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`,
  `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`,
  `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`,
  `RegenHealth`, `CreatureImmunitiesId`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
VALUES
(449390, 0, 0, 0, 0, 0, '泽贝尔·什普利特', '热砂港搬运工', NULL, 9975003, 57, 57, 0, 474, 3, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.328, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(749258, 0, 0, 0, 0, 0, '斯纳兹·爆齿轮', NULL, NULL, 9975005, 50, 50, 0, 474, 3, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 304, 4, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2.0, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(713002, 0, 0, 0, 0, 0, '伦塔尔', NULL, NULL, 9975006, 23, 23, 0, 474, 3, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.328, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(46996, 0, 0, 0, 0, 0, '见习工程师', NULL, NULL, 0, 57, 57, 0, 474, 0, 1, 1.14286, 1, 1, 18, 1, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 34.0, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(449295, 0, 0, 0, 0, 0, '玛丽', '海盗爱好者', NULL, 0, 53, 53, 0, 474, 2, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.328, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(449391, 0, 0, 0, 0, 0, '弗兰切斯卡', NULL, NULL, 9975004, 60, 60, 0, 474, 3, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.328, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(41676, 0, 0, 0, 0, 0,  '进口商斯普罗克特斯普林', '食物与饮料', NULL, 9975001, 45, 45, 0, 474, 129, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1.048, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(46252, 0, 0, 0, 0, 0, '亨利·马唐草', '工程学训练师', NULL, 9975000, 45, 45, 0, 474, 81, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1.312, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(255331, 0, 0, 0, 0, 0, '阿尔文', '深南部制革厂', NULL, 0, 40, 40, 0, 120, 2, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1.248, 1, 1, 1, 0, 999, 1, 0, 0, '', 0),
(449290, 0, 0, 0, 0, 0, '雷克塔·格拉夫', NULL, NULL, 0, 42, 42, 0, 474, 128, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.328, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(449401, 0, 0, 0, 0, 0, '加布里埃尔·烟囱', NULL, NULL, 9975007, 45, 45, 0, 474, 1, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1.0, 1, 1, 1, 0, 999, 1, 0, 2, '', 0),
(449402, 0, 0, 0, 0, 0, '巴纳巴斯', '加布里埃尔的保镖', NULL, 0, 44, 44, 0, 474, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 134217728, 449402, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1.2, 1, 1, 1, 0, 999, 1, 0, 0, '', 0),
(255334, 0, 0, 0, 0, 0, '风暴降生云端翔龙', NULL, NULL, 0, 49, 49, 0, 14, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 27, 1, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2.5, 1, 1, 1, 0, 999, 1, 0, 0, '', 0),
(255335, 0, 0, 0, 0, 0, '塞鲁利斯', '风暴升腾者', NULL, 0, 50, 50, 0, 14, 0, 1, 1.14286, 1, 1, 18, 1, 0, 1, 2000, 2000, 1, 1, 8, 0, 2048, 0, 301, 4, 1, 255335, 0, 0, 0, 0, 0, 0, '', 0, 1, 6, 1, 1, 1, 0, 999, 1, 0, 0, '', 0),
(255336, 0, 0, 0, 0, 0, '活体风暴', '塞鲁利斯的侍从', NULL, 0, 48, 48, 0, 14, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 301, 4, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.32, 1, 1, 1, 0, 999, 1, 0, 0, '', 0),
(255292, 0, 0, 0, 0, 0, '青铜雏龙', NULL, NULL, 0, 45, 45, 0, 14, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 426, 2, 9, 255292, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.4, 1, 1, 1, 0, 999, 1, 0, 0, '', 0),
(542311, 0, 0, 0, 0, 0, '莫多克·焦石', '盗贼炎术师', NULL, 0, 43, 43, 0, 14, 0, 1, 1.14286, 1, 1, 18, 2, 0, 1, 2000, 2000, 1, 1, 8, 0, 2048, 0, 20, 7, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 4.5, 1, 1, 1, 0, 999, 1, 0, 0, '', 0),
(542312, 0, 0, 0, 0, 0, '塔拉多里乌斯·雷克斯', '盗贼野蛮人', NULL, 0, 43, 43, 0, 14, 0, 1, 1.14286, 1, 1, 18, 2, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 20, 7, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 4.5, 1, 1, 1, 0, 999, 1, 0, 0, '', 0),
(542313, 0, 0, 0, 0, 0, '泽布尔巴', '盗贼工匠', NULL, 0, 43, 43, 0, 14, 0, 1, 1.14286, 1, 1, 18, 2, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 20, 7, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 4.5, 1, 1, 1, 0, 999, 1, 0, 0, '', 0),
(9975000, 0, 0, 0, 0, 0, '血帆日志', NULL, NULL, 0, 1, 1, 0, 35, 2, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 33555202, 2048, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 999, 1, 0, 2, '', 0)
ON DUPLICATE KEY UPDATE `difficulty_entry_1` = VALUES(`difficulty_entry_1`),
  `difficulty_entry_2` = VALUES(`difficulty_entry_2`), `difficulty_entry_3` = VALUES(`difficulty_entry_3`),
  `KillCredit1` = VALUES(`KillCredit1`), `KillCredit2` = VALUES(`KillCredit2`), `name` = VALUES(`name`),
  `subname` = VALUES(`subname`), `IconName` = VALUES(`IconName`), `gossip_menu_id` = VALUES(`gossip_menu_id`),
  `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`),
  `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`),
  `speed_run` = VALUES(`speed_run`), `speed_swim` = VALUES(`speed_swim`), `speed_flight` = VALUES(`speed_flight`),
  `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `dmgschool` = VALUES(`dmgschool`),
  `DamageModifier` = VALUES(`DamageModifier`), `BaseAttackTime` = VALUES(`BaseAttackTime`),
  `RangeAttackTime` = VALUES(`RangeAttackTime`), `BaseVariance` = VALUES(`BaseVariance`),
  `RangeVariance` = VALUES(`RangeVariance`), `unit_class` = VALUES(`unit_class`),
  `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`),
  `dynamicflags` = VALUES(`dynamicflags`), `family` = VALUES(`family`), `type` = VALUES(`type`),
  `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `pickpocketloot` = VALUES(`pickpocketloot`),
  `skinloot` = VALUES(`skinloot`), `PetSpellDataId` = VALUES(`PetSpellDataId`), `VehicleId` = VALUES(`VehicleId`),
  `mingold` = VALUES(`mingold`), `maxgold` = VALUES(`maxgold`), `AIName` = VALUES(`AIName`),
  `MovementType` = VALUES(`MovementType`), `HoverHeight` = VALUES(`HoverHeight`),
  `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`),
  `ArmorModifier` = VALUES(`ArmorModifier`), `ExperienceModifier` = VALUES(`ExperienceModifier`),
  `RacialLeader` = VALUES(`RacialLeader`), `movementId` = VALUES(`movementId`),
  `RegenHealth` = VALUES(`RegenHealth`), `CreatureImmunitiesId` = VALUES(`CreatureImmunitiesId`),
  `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`),
  `VerifiedBuild` = VALUES(`VerifiedBuild`);

-- Stand-in displays, estimated: the captured displays of 255331, 449290, 449295, 449390, 449391, 449401, 542311,
-- 542312, 542313, 713002 are not in the client's CreatureDisplayInfo.dbc (checked in every Data\*.MPQ and the realm
-- patch archives) nor the server's. They take a Tanaris or Booty Bay NPC display of the race and sex the name and
-- the capture suggest: 255331 7429 (human male); 449290 4488 (human female); 449295 4490 (human female); 449390 7181
-- (goblin male); 449391 1546 (human female); 449401 7180 (goblin male); 542311 19174 (dwarf male); 542312 4478
-- (human male); 542313 15210 (troll male); 713002 7337 (goblin male). Every other display is the captured one.
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (41676,46252,46996,255292,255331,255334,255335,255336,
  449290,449295,449390,449391,449401,449402,542311,542312,542313,713002,749258,9975000);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`,
  `VerifiedBuild`) VALUES
(41676, 0, 21629, 1, 1, 0),
(46252, 0, 10472, 1, 1, 0),
(46996, 0, 7109, 1, 1, 0),
(255292, 0, 14720, 1, 1, 0),
(255331, 0, 7429, 1, 1, 0),
(255334, 0, 2703, 1, 1, 0),
(255335, 0, 35513, 1, 1, 0),
(255336, 0, 8716, 1, 1, 0),
(449290, 0, 4488, 1, 1, 0),
(449295, 0, 4490, 1, 1, 0),
(449390, 0, 7181, 1, 1, 0),
(449391, 0, 1546, 1, 1, 0),
(449401, 0, 7180, 1, 1, 0),
(449402, 0, 30244, 1, 1, 0),
(542311, 0, 19174, 1, 1, 0),
(542312, 0, 4478, 1, 1, 0),
(542313, 0, 15210, 1, 1, 0),
(713002, 0, 7337, 1, 1, 0),
(749258, 0, 7343, 1, 1, 0),
(9975000, 0, 11686, 1, 1, 0);

-- Guids 9975000-9975025 are the new NPCs; Arvon stands in Booty Bay (map 0) where the client point of 255040 puts
-- him. Guids 9975026-9975067 are the SUB spawns of the Giant Surf Glider, Raging Dune Smasher and Great Shark this
-- server lacks, at the dump's positions. Guid 9975068 is the logbook's quest mark.
DELETE FROM `creature` WHERE `guid` BETWEEN 9975000 AND 9975299;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`,
  `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`,
  `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`,
  `CreateObject`, `Comment`) VALUES
(9975000, 449390, 1, 0, 0, 1, 1, 0, -6955.0, -4881.7, 0.7, 5.02, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Zebel Shplit (client SuperTrack point; facing estimated)'),
(9975001, 749258, 1, 0, 0, 1, 1, 0, -8260.0, -5051.2, 8.7, 1.14, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Snazzy Boomsprocket (client SuperTrack point; facing estimated)'),
(9975002, 449295, 1, 0, 0, 1, 1, 0, -6905.2, -4839.1, 8.4, 1.27, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Marie (client SuperTrack point beside Yeh''kinya; facing estimated)'),
(9975003, 449391, 1, 0, 0, 1, 1, 0, -6906.9, -4691.0, 8.9, 5.39, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Franchesca (client SuperTrack point; facing estimated)'),
(9975004, 41676, 1, 0, 0, 1, 1, 0, -7019.86, -4737.99, 9.75, 5.35, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Importer Sprocketspring (placed in game (.npc move) at the client SuperTrack point of objective 2 of 255037; estimated)'),
(9975005, 46252, 1, 0, 0, 1, 1, 0, -6854.5, -4768.2, 9.76, 0.24, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Henry Crabgrass (client SuperTrack point of objective 3 of 255037; z terrain, facing estimated)'),
(9975006, 713002, 1, 0, 0, 1, 1, 0, -6850.5, -4759.2, 9.85, 4.1, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Renthar (beside Henry Crabgrass at the rocket scaffold as the live stream shows; spot, z terrain and facing estimated)'),
(9975007, 46996, 1, 0, 0, 1, 1, 0, -6856.5, -4762.5, 9.69, 5.96, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Apprentice Engineer (at the rocket scaffold beside Henry Crabgrass as the live stream shows; spot, z terrain and facing estimated)'),
(9975008, 46996, 1, 0, 0, 1, 1, 0, -6851.0, -4765.5, 9.91, 2.47, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Apprentice Engineer (at the rocket scaffold beside Henry Crabgrass as the live stream shows; spot, z terrain and facing estimated)'),
(9975009, 255331, 0, 0, 0, 1, 1, 0, -14453.1, 406.3, 25.3, 2.43, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Arvon (client SuperTrack point; facing estimated)'),
(9975010, 449401, 1, 0, 0, 1, 1, 0, -7020.97, -4760.24, 10.43, 2.15, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Gabriel Smokestacks (placed in game (.npc move) off the bed beside the client SuperTrack point of 255048; estimated)'),
(9975011, 449402, 1, 0, 0, 1, 1, 0, -7022.95, -4756.94, 10.39, 5.26, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Barnabas (placed in game (.npc move) beside Gabriel Smokestacks; estimated)'),
(9975012, 255335, 1, 0, 0, 1, 1, 0, -9509.0, -2495.0, 21.85, 3.91, 900, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Cerulis (Project Descension spawn b18d7ee7; z terrain, facing and respawn estimated)'),
(9975013, 255336, 1, 0, 0, 1, 1, 0, -9463.0, -2426.0, 20.05, 4.28, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Living Storm (Project Descension spawn b18d7ee7; facing estimated)'),
(9975014, 255336, 1, 0, 0, 1, 1, 0, -9498.0, -2489.0, 19.62, 3.64, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Living Storm (beside Cerulis as the Project Descension pin; spot, z terrain and facing estimated)'),
(9975015, 255334, 1, 0, 0, 1, 1, 0, -9298.0, -2408.0, 8.98, 3.54, 300, 8, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Stormborn Cloud Serpent (at the zeppelin wreck by the Zeppelin Battery as the live stream shows; spot, z terrain and facing estimated)'),
(9975016, 449290, 1, 0, 0, 1, 1, 0, -9049.0, -3668.0, 35.1, 5.7, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Rektha Gruff (Project Descension spawn b18d7ee7 at its corrected height; facing estimated)'),
(9975017, 542311, 1, 0, 0, 1, 1, 0, -7899.0, -3461.0, 76.05, 2.79, 900, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Mordok Charstone (Project Descension spawn b18d7ee7 at its corrected height; facing and respawn estimated)'),
(9975018, 542312, 1, 0, 0, 1, 1, 0, -7902.0, -3458.0, 76.48, 3.16, 900, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Thaladorius Rex (beside Mordok Charstone as the Project Descension pin; spot, z terrain, facing and respawn estimated)'),
(9975019, 542313, 1, 0, 0, 1, 1, 0, -7899.0, -3392.0, 74.11, 3.53, 900, 15, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Ze''bulba (one of the ten Project Descension pins b18d7ee7 at its corrected height; facing, wander and respawn estimated)'),
(9975020, 255292, 1, 0, 0, 1, 1, 0, -8195.9, -4482.1, 8.97, 0.0, 300, 5, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Bronze Whelp (around the client SuperTrack point of 255029; spot, z terrain and facing estimated)'),
(9975021, 255292, 1, 0, 0, 1, 1, 0, -8205.1, -4477.4, 9.04, 2.4, 300, 5, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Bronze Whelp (around the client SuperTrack point of 255029; spot, z terrain and facing estimated)'),
(9975022, 255292, 1, 0, 0, 1, 1, 0, -8199.1, -4491.1, 8.95, 4.8, 300, 5, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Bronze Whelp (around the client SuperTrack point of 255029; spot, z terrain and facing estimated)'),
(9975023, 255292, 1, 0, 0, 1, 1, 0, -8193.4, -4473.6, 9.47, 0.92, 300, 5, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Bronze Whelp (around the client SuperTrack point of 255029; spot, z terrain and facing estimated)'),
(9975024, 255292, 1, 0, 0, 1, 1, 0, -8211.8, -4484.2, 9.71, 3.32, 300, 5, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Bronze Whelp (around the client SuperTrack point of 255029; spot, z terrain and facing estimated)'),
(9975025, 255292, 1, 0, 0, 1, 1, 0, -8188.6, -4489.3, 8.04, 5.72, 300, 5, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Bronze Whelp (around the client SuperTrack point of 255029; spot, z terrain and facing estimated)'),
(9975026, 5432, 1, 0, 0, 1, 1, 0, -10257.0, -3768.0, 0.6, 4.55, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975027, 5432, 1, 0, 0, 1, 1, 0, -10137.0, -3918.0, 8.9, 4.99, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975028, 5432, 1, 0, 0, 1, 1, 0, -10103.0, -3846.0, 5.8, 5.01, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975029, 5432, 1, 0, 0, 1, 1, 0, -10096.0, -4194.0, 0.6, 1.32, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975030, 5432, 1, 0, 0, 1, 1, 0, -10062.0, -3730.0, 6.4, 1.34, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975031, 5432, 1, 0, 0, 1, 1, 0, -9983.0, -3600.0, 1.1, 5.45, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975032, 5432, 1, 0, 0, 1, 1, 0, -9989.0, -4221.0, 6.9, 3.23, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975033, 5432, 1, 0, 0, 1, 1, 0, -9944.0, -4370.0, 0.6, 1.04, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975034, 5432, 1, 0, 0, 1, 1, 0, -9884.0, -3640.0, 10.0, 4.4, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975035, 5432, 1, 0, 0, 1, 1, 0, -9829.0, -3566.0, 0.7, 5.91, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975036, 5432, 1, 0, 0, 1, 1, 0, -9836.0, -4304.0, 8.5, 3.32, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975037, 5432, 1, 0, 0, 1, 1, 0, -9754.0, -4453.0, 0.6, 2.26, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975038, 5432, 1, 0, 0, 1, 1, 0, -9718.0, -4372.0, 6.0, 3.02, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975039, 5432, 1, 0, 0, 1, 1, 0, -9610.0, -4381.0, 0.6, 5.3, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975040, 5432, 1, 0, 0, 1, 1, 0, -10254.0, -4093.0, 0.6, 5.66, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975041, 5432, 1, 0, 0, 1, 1, 0, -10200.0, -3943.0, 3.4, 0.52, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975042, 5432, 1, 0, 0, 1, 1, 0, -10145.0, -3699.0, 0.2, 2.03, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Giant Surf Glider (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975043, 5470, 1, 0, 0, 1, 1, 0, -9551.3, -2781.9, 7.9, 3.51, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Raging Dune Smasher (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975044, 5470, 1, 0, 0, 1, 1, 0, -9614.7, -2783.2, 7.9, 5.32, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Raging Dune Smasher (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975045, 5470, 1, 0, 0, 1, 1, 0, -9516.2, -2750.0, 8.8, 3.9, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Raging Dune Smasher (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975046, 12124, 1, 0, 0, 1, 1, 0, -10531.1, -4098.5, -47.3, 5.37, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975047, 12124, 1, 0, 0, 1, 1, 0, -10270.0, -4498.0, -10.0, 1.46, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975048, 12124, 1, 0, 0, 1, 1, 0, -9950.0, -2766.0, -5.0, 0.54, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975049, 12124, 1, 0, 0, 1, 1, 0, -9918.0, -3272.0, -10.0, 6.1, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975050, 12124, 1, 0, 0, 1, 1, 0, -9257.0, -4765.0, -6.0, 5.75, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975051, 12124, 1, 0, 0, 1, 1, 0, -9031.0, -4754.0, -2.0, 1.45, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975052, 12124, 1, 0, 0, 1, 1, 0, -8967.0, -4736.0, -14.0, 0.01, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975053, 12124, 1, 0, 0, 1, 1, 0, -8683.0, -5351.0, -67.0, 4.61, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975054, 12124, 1, 0, 0, 1, 1, 0, -8556.0, -5368.0, -7.0, 1.36, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975055, 12124, 1, 0, 0, 1, 1, 0, -8260.0, -5424.0, -6.0, 4.12, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975056, 12124, 1, 0, 0, 1, 1, 0, -8146.0, -5495.0, -11.0, 2.34, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975057, 12124, 1, 0, 0, 1, 1, 0, -7877.0, -5452.0, -9.0, 1.39, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975058, 12124, 1, 0, 0, 1, 1, 0, -7862.0, -5524.0, -9.0, 0.66, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975059, 12124, 1, 0, 0, 1, 1, 0, -7621.0, -5110.0, -21.0, 1.91, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975060, 12124, 1, 0, 0, 1, 1, 0, -7620.0, -5040.0, -15.0, 2.28, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975061, 12124, 1, 0, 0, 1, 1, 0, -10054.6, -4651.1, -82.3, 6.02, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975062, 12124, 1, 0, 0, 1, 1, 0, -9870.3, -4875.4, -65.7, 5.02, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975063, 12124, 1, 0, 0, 1, 1, 0, -8994.0, -4864.5, -75.2, 2.58, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975064, 12124, 1, 0, 0, 1, 1, 0, -8776.6, -5152.9, -84.9, 1.6, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975065, 12124, 1, 0, 0, 1, 1, 0, -8429.4, -5566.2, -60.3, 4.39, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975066, 12124, 1, 0, 0, 1, 1, 0, -7793.1, -5573.2, -60.2, 1.07, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975067, 12124, 1, 0, 0, 1, 1, 0, -7578.3, -5245.5, -51.6, 5.26, 300, 10, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Great Shark (SUB creature_spawn, db.exil.es dump 2026-10-04; facing and wander estimated)'),
(9975068, 9975000, 1, 0, 0, 1, 1, 0, -7948.9, -5436.9, 17.41, 2.1, 60, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Bloodsail Logbook marker (invisible quest giver on the Bloodsail Logbook for its quest mark; estimated)');

-- Importer Sprocketspring sells the ten drinks and fruits of the first vendor page the live stream shows, then the
-- 16 goods of SUB npc_vendor (2026-10-04); the stream does not show pages 2 and 3, so their order is estimated.
-- Rektha Gruff's Mystic Scrolls follow SUB npc_vendor; her list may be partial. The same table lists goods the
-- Gadgetzan and Steamwheedle vendors here lack: Innkeeper Fizzgrimble's Hearthstone, Dirge Quikcleave's 100582,
-- 100587 and 100627 and Blizrik Buckshot's 426757 and 426761. Henry Crabgrass teaches the stock engineering trainer
-- list (estimated: no trainer capture exists).
DELETE FROM `npc_vendor` WHERE `entry` IN (41676,449290);
DELETE FROM `npc_vendor` WHERE (`entry` = 7733 AND `item` = 6948) OR
  (`entry` = 8125 AND `item` = 100582) OR
  (`entry` = 8125 AND `item` = 100587) OR
  (`entry` = 8125 AND `item` = 100627) OR
  (`entry` = 8131 AND `item` = 426757) OR
  (`entry` = 8131 AND `item` = 426761);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(41676, 0, 159, 0, 0, 0, 0),
(41676, 1, 1179, 0, 0, 0, 0),
(41676, 2, 1205, 0, 0, 0, 0),
(41676, 3, 1645, 0, 0, 0, 0),
(41676, 4, 1708, 0, 0, 0, 0),
(41676, 5, 4536, 0, 0, 0, 0),
(41676, 6, 4537, 0, 0, 0, 0),
(41676, 7, 4538, 0, 0, 0, 0),
(41676, 8, 4539, 0, 0, 0, 0),
(41676, 9, 4602, 0, 0, 0, 0),
(41676, 10, 772061, 0, 0, 0, 0),
(41676, 11, 772062, 0, 0, 0, 0),
(41676, 12, 772063, 0, 0, 0, 0),
(41676, 13, 772064, 0, 0, 0, 0),
(41676, 14, 772065, 0, 0, 0, 0),
(41676, 15, 772066, 0, 0, 0, 0),
(41676, 16, 772067, 0, 0, 0, 0),
(41676, 17, 772068, 0, 0, 0, 0),
(41676, 18, 772069, 0, 0, 0, 0),
(41676, 19, 772070, 0, 0, 0, 0),
(41676, 20, 772071, 0, 0, 0, 0),
(41676, 21, 772072, 0, 0, 0, 0),
(41676, 22, 772073, 0, 0, 0, 0),
(41676, 23, 772074, 0, 0, 0, 0),
(41676, 24, 772075, 0, 0, 0, 0),
(41676, 25, 772076, 0, 0, 0, 0),
(449290, 0, 201005, 0, 0, 0, 0),
(449290, 1, 201450, 0, 0, 0, 0),
(7733, 0, 6948, 0, 0, 0, 0),
(8125, 0, 100582, 0, 0, 0, 0),
(8125, 0, 100587, 0, 0, 0, 0),
(8125, 0, 100627, 0, 0, 0, 0),
(8131, 0, 426757, 0, 0, 0, 0),
(8131, 0, 426761, 0, 0, 0, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` = 46252;
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(46252, 92);

-- Greetings and gossip options as the live stream (YouTube rEaTnfr2Ke4) shows them. Words hidden by the stream
-- overlay are reconstructed: "Two" and "back" in Prospector Ironboot's greeting, "who" and "While" in Franchesca's
-- and the end of Zebel Shplit's, which the stream cuts off after "Steamwheedle". Zebel's "Famous for what
-- exactly..?" option is left out, since the stream never shows its answer. Ironboot keeps his quests and gains the
-- gossip flag.
DELETE FROM `gossip_menu` WHERE `MenuID` BETWEEN 9975000 AND 9975099;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(9975000, 9975000),
(9975001, 9975001),
(9975002, 9975002),
(9975003, 9975003),
(9975004, 9975004),
(9975005, 9975005),
(9975006, 9975006),
(9975007, 9975007),
(9975008, 9975008);

DELETE FROM `npc_text` WHERE `ID` BETWEEN 9975000 AND 9975099;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`) VALUES
(9975000, '<亨利对你说话时，声音听起来像是他的舌头永远粘在了嘴底。>$B$B你知道我当工程师还没多久，所以有时候我自己都会惊讶于我知道的东西。', '<亨利对你说话时，声音听起来像是他的舌头永远粘在了嘴底。>$B$B你知道我当工程师还没多久，所以有时候我自己都会惊讶于我知道的东西。', 0, 0, 1, 0),
(9975001, '有水果、牛奶，任何能在这塔纳利斯酷热天气里让你凉快下来的东西。', '有水果、牛奶，任何能在这塔纳利斯酷热天气里让你凉快下来的东西。', 0, 0, 1, 0),
(9975002, '两周前，我从酒吧凳上抬起我那不争气的屁股，说我要把生活找回来。我来这里寻找瑟银。我找到了，没错，但不止这些。$B$B这里往南不远有一处废墟。那里有龙，青铜色如沙。其中一条守着一件宝物。一把看起来很古老的剑。等我的腿不再发抖，我打算回去拿它。', '两周前，我从酒吧凳上抬起我那不争气的屁股，说我要把生活找回来。我来这里寻找瑟银。我找到了，没错，但不止这些。$B$B这里往南不远有一处废墟。那里有龙，青铜色如沙。其中一条守着一件宝物。一把看起来很古老的剑。等我的腿不再发抖，我打算回去拿它。', 0, 0, 1, 0),
(9975003, '啊，我想我们还没认识。我是泽贝尔·什普利特，著名的热砂港搬运工。', '啊，我想我们还没认识。我是泽贝尔·什普利特，著名的热砂港搬运工。', 0, 0, 1, 0),
(9975004, '沙子在说矮人语，但只说给愿意倾听的人。虽然这镇子是个可怜的住处，但沙丘才是重要的。', '沙子在说矮人语，但只说给愿意倾听的人。虽然这镇子是个可怜的住处，但沙丘才是重要的。', 0, 0, 1, 0),
(9975005, '地精工程学的秘诀？一份科学，两份勇气，三份在东西突然开始滴滴响时拼命快跑。', '地精工程学的秘诀？一份科学，两份勇气，三份在东西突然开始滴滴响时拼命快跑。', 0, 0, 1, 0),
(9975006, '<伦塔尔茫然地望向中远处。他似乎从自己已经思考了一段时间的念头中间开始说话>$B$B……你知道，说到造火箭，你其实只有两个选择。你要么建立一套体系，由这套体系去培养从零开始建造火箭所需的工程师；要么借用那个超级先进的太空文明的技术——几年前，他们把自己的、先进得多的火箭坠毁在了我们的星球上。$B$B<伦塔尔转回头，看着其中一名工程师不知疲倦地敲打那枚摇摇晃晃、只完成了一半的火箭。>$B$B……我还是不完全确定自己为什么选了第一个方案。', '<伦塔尔茫然地望向中远处。他似乎从自己已经思考了一段时间的念头中间开始说话>$B$B……你知道，说到造火箭，你其实只有两个选择。你要么建立一套体系，由这套体系去培养从零开始建造火箭所需的工程师；要么借用那个超级先进的太空文明的技术——几年前，他们把自己的、先进得多的火箭坠毁在了我们的星球上。$B$B<伦塔尔转回头，看着其中一名工程师不知疲倦地敲打那枚摇摇晃晃、只完成了一半的火箭。>$B$B……我还是不完全确定自己为什么选了第一个方案。', 0, 0, 1, 0),
(9975007, '那么，我能为你做什么，$r？', '那么，我能为你做什么，$r？', 0, 0, 1, 0),
(9975008, '是啊，好吧，他最近五批货都没付钱给我。所以你可以这样告诉他。要么他把每一批的钱连本带利都付清，要么他再也别想见到另一件专利烟囱产品。', '是啊，好吧，他最近五批货都没付钱给我。所以你可以这样告诉他。要么他把每一批的钱连本带利都付清，要么他再也别想见到另一件专利烟囱产品。', 0, 0, 1, 0);

DELETE FROM `gossip_menu_option` WHERE `MenuID` BETWEEN 9975000 AND 9975099;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`,
  `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`,
  `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(9975000, 0, 3, '训练我。', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
(9975000, 1, 0, '我有一些货物要交给你。', 0, 1, 1, 0, 0, 0, 0, '', 0, 0),
(9975001, 0, 1, '我想浏览你的货物。', 0, 3, 128, 0, 0, 0, 0, '', 0, 0),
(9975001, 1, 0, '我有一些货物要交给你。', 0, 1, 1, 0, 0, 0, 0, '', 0, 0),
(9975002, 0, 0, '我有一些货物要交给你。', 0, 1, 1, 0, 0, 0, 0, '', 0, 0),
(9975007, 0, 0, '泽贝尔派我来取一批雪茄货', 0, 1, 1, 9975008, 0, 0, 0, '', 0, 0),
(9975008, 0, 0, '那不关我的事，我只是来取雪茄的。', 0, 1, 1, 0, 0, 0, 0, '', 0, 0);

UPDATE `creature_template` SET `gossip_menu_id` = 9975002, `npcflag` = `npcflag` | 1 WHERE `entry` = 10460;

-- Each delivery option of 255037 shows only while that delivery is outstanding, and Gabriel Smokestacks asks about
-- the cigars only while the player is on 255048 without the shipment.
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` BETWEEN 9975000 AND 9975099;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`,
  `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,
  `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 9975002, 0, 0, 0, 9, 0, 255037, 0, 0, 0, 0, 0, '', 'Prospector Ironboot - delivery only on quest 255037'),
(15, 9975002, 0, 0, 0, 48, 0, 255037, 0, 1, 1, 0, 0, '', 'Prospector Ironboot - delivery not made yet'),
(15, 9975001, 1, 0, 0, 9, 0, 255037, 0, 0, 0, 0, 0, '', 'Importer Sprocketspring - delivery only on quest 255037'),
(15, 9975001, 1, 0, 0, 48, 0, 255037, 1, 1, 1, 0, 0, '', 'Importer Sprocketspring - delivery not made yet'),
(15, 9975000, 1, 0, 0, 9, 0, 255037, 0, 0, 0, 0, 0, '', 'Henry Crabgrass - delivery only on quest 255037'),
(15, 9975000, 1, 0, 0, 48, 0, 255037, 2, 1, 1, 0, 0, '', 'Henry Crabgrass - delivery not made yet'),
(15, 9975007, 0, 0, 0, 9, 0, 255048, 0, 0, 0, 0, 0, '', 'Gabriel Smokestacks - cigars only on quest 255048'),
(15, 9975007, 0, 0, 0, 2, 0, 355500, 1, 0, 1, 0, 0, '', 'Gabriel Smokestacks - shipment not looted yet');

-- Quest objects: WDB gameobjectcache captures up to 2026-09-07. The logbook starts 255040 and the battery ends
-- 255055 and starts 255056. The logbook's captured size 0.25 shrinks its book model to about 0.2 yd, too small to
-- see on the deck, so it takes size 0.5 (estimated), about 0.4 yd. The 3.3.5a client draws a quest mark only over a
-- quest giver creature, never over an object, so the invisible, unselectable creature 9975000 (display 11686, like
-- the Hidden Statue 9300260) stands on the logbook and also starts 255040 (estimated).
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`,
  `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`,
  `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`,
  `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`)
VALUES
(255040, 2, 1021172, '血帆日志', '', '', '', 0.5, 0, 255040, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(255045, 2, 1011195, '飞艇电池', '', '', '', 0.5, 0, 255045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0)
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`),
  `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `unk1` = VALUES(`unk1`),
  `size` = VALUES(`size`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`),
  `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`),
  `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`),
  `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`),
  `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`),
  `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`),
  `Data23` = VALUES(`Data23`), `AIName` = VALUES(`AIName`), `ScriptName` = VALUES(`ScriptName`),
  `VerifiedBuild` = VALUES(`VerifiedBuild`);

DELETE FROM `gameobject` WHERE `guid` BETWEEN 9001900 AND 9001999;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`,
  `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`,
  `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(9001900, 255040, 1, 0, 0, 1, 1, -7948.9, -5436.9, 17.41, 2.1, 0, 0, 0.867423, 0.497571, 60, 100, 1, '', 0, 'Bloodsail Logbook next to the Dented Footlocker at Lost Rigger Cove; spot and facing estimated'),
(9001901, 255045, 1, 0, 0, 1, 1, -9305.0, -2415.0, 9.46, 4.0, 0, 0, 0.909297, -0.416147, 60, 100, 1, '', 0, 'Zeppelin Battery at the zeppelin wreck as the live stream shows; spot, z terrain and facing estimated');

-- Quest item drops; each comment names its source.
DELETE FROM `creature_loot_template` WHERE (`Entry` = 255292 AND `Item` = 355083) OR
  (`Entry` = 255335 AND `Item` = 355103) OR
  (`Entry` = 449402 AND `Item` = 355500) OR
  (`Entry` = 5466 AND `Item` = 355089) OR
  (`Entry` = 8667 AND `Item` = 9200813) OR
  (`Entry` = 7855 AND `Item` = 355137) OR
  (`Entry` = 7856 AND `Item` = 355137) OR
  (`Entry` = 7857 AND `Item` = 355137) OR
  (`Entry` = 7858 AND `Item` = 355137);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`,
  `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(255292, 355083, 0, 50, 1, 1, 0, 1, 1, 'Bronze Whelp - quest 255029, WDB creaturecache quest item; chance estimated'),
(255335, 355103, 0, 100, 1, 1, 0, 1, 1, 'Cerulis - quest 255056, WDB creaturecache quest item; chance estimated'),
(449402, 355500, 0, 100, 1, 1, 0, 1, 1, 'Barnabas - quest 255048, SUB creature_loot 2026-10-04'),
(5466, 355089, 0, 100, 1, 1, 0, 1, 1, 'Coast Strider - quest 255036, SUB creature_loot 2026-10-04 and Exiles DB 2026-09-13'),
(8667, 9200813, 0, 100, 1, 1, 0, 1, 1, 'Gusting Vortex - quest 982258, SUB creature_loot 2026-10-04 and Exiles DB 2026-09-13'),
(7855, 355137, 0, 30, 1, 1, 0, 1, 1, 'Southsea Pirate - quest 909041, Lost Rigger Cove pirates per the quest text; chance estimated'),
(7856, 355137, 0, 30, 1, 1, 0, 1, 1, 'Southsea Freebooter - quest 909041, Lost Rigger Cove pirates per the quest text; chance estimated'),
(7857, 355137, 0, 30, 1, 1, 0, 1, 1, 'Southsea Dock Worker - quest 909041, Lost Rigger Cove pirates per the quest text; chance estimated'),
(7858, 355137, 0, 30, 1, 1, 0, 1, 1, 'Southsea Swashbuckler - quest 909041, Lost Rigger Cove pirates per the quest text; chance estimated');

-- Quests: WDB questcache.
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`,
  `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`,
  `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`,
  `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`,
  `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`,
  `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`,
  `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`,
  `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`,
  `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`,
  `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`,
  `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`,
  `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`,
  `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`,
  `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`,
  `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`,
  `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`,
  `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`,
  `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`,
  `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`,
  `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES
(255028, 2, 45, 40, 440, 0, 0, 0, 0, 0, 0, 0, 5, 6500, 2475, 0, 0, 0, 0, 0, 8, 0, 375250, 200, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '蛇形怪事', '调查热砂港以南出现的奇怪纳迦目击事件。', '最近我看到了些奇怪的东西，$r。就在这儿正南方那道山脊后面，我看到有条纳迦在游来游去。我从没在沙漠里见过那些黏糊糊的混蛋，但这肯定不是好事。我们一半的活儿都在水里干，我可不想那东西滑上来把我的某个炼金师当点心吃了。你能去那儿处理掉它吗？', '', '告知安保主管比尔吉兹尔，纳迦目击事件已处理完毕。', 8617, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '纳迦目击事件已解决', '', '', '', 0),
(255029, 2, 45, 40, 440, 0, 0, 0, 0, 0, 0, 0, 5, 6500, 2475, 0, 0, 0, 0, 0, 8, 0, 375250, 200, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '上层精灵的腐化', '在时光之穴附近收集1份时光之沙，并把它带给扎拉什吉。', '我的人民曾经和你们一样，$r。我们居住在一个伟大国度的海岸上。但我们的女王背叛了我们，把我们卖给了敌人，以换取力量的承诺。现在我们拥有了它，却被束缚在黑暗的深渊中……\n\n我在寻找一种逆转我们转化、恢复我们失落形态的方法。逆转时间的这种力量必定掌握在青铜龙手中。找到他们的巢穴，屠杀他们的幼崽。把我寻求的救赎带给我。', '', '返回扎拉什吉的巢穴，向扎拉什吉复命。', 0, 0, 0, 0, 0, 0, 0, 0, 355083, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255036, 2, 45, 40, 440, 1, 2, 0, 0, 0, 0, 255037, 6, 6500, 2475, 0, 0, 0, 0, 0, 8, 0, 375250, 200, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '海巨人幻想', '从附近的海巨人那里找回斯纳兹的无线电。', '求你别告诉泽贝尔！比我的职业生涯更糟的是，如果他心情不好的时候抓住我，天知道我还会出什么事。\n\n听着。我可能、也许曾经在海边闲晃。而且可能、也许我还在那儿带着无线电打了个盹。谁能说得准呢？又或者……我是被伏击了！像真正的狠角色一样左右开弓击退海巨人，直到他们终于把我打晕才丢了无线电。\n\n第二个版本，我觉得配上闪亮的金币听起来更好，上面还写着你的名字呢，对吧？既然我已经引起你的注意了，不如你去帮我找回无线电怎么样？我打赌这绝对值回票价。', '', '返回斯纳兹·爆齿轮处。', 0, 0, 0, 0, 0, 0, 0, 0, 355089, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255037, 2, 45, 40, 440, 0, 0, 0, 0, 0, 0, 0, 5, 6500, 2475, 0, 0, 0, 0, 0, 8, 0, 375250, 200, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 355174, 1, 355175, 1, 355176, 1, 355177, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '无可申报', '在热砂港交付斯纳兹的货物', '我说，既然你反正都要回热砂港，能帮我个忙吗？\n\n我在这下面有不少空闲时间，而且你猜怎么着，我给自己搞出了相当不错的产品。去港口的路可不好走，所以我大部分的跑腿最后都早早不干了，自愿的也好，不自愿的也罢。\n\n但你显然是在外面混得毫无问题的类型，所以就这么定了。去港口，搬运并交付我的东西，我给你钱。没有比这更方便的了，对吧？另外，既然我们是这么好的哥们，我甚至还会免费送你一记，怎么样？', '', '返回热砂港，向泽贝尔·什普利特复命。', 10460, 41676, 46252, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '交付给勘探员铁靴', '交付给进口商斯普罗克特斯普林', '交付给亨利·马唐草', '', 0),
(255040, 2, 40, 35, 440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '线人', '在藏宝海湾与血帆线人对峙。', '<这本日志包含有关藏宝海湾内部运作的情报。看来血帆劫掠者在藏宝海湾安插了一名线人，此人拥有一家当地制革厂。有了这些情报，要追踪到他应该不太麻烦。>', '', '在藏宝海湾与血帆线人对峙。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255041, 2, 40, 35, 440, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '线人 - 藏宝海湾的盟友', '站在藏宝海湾一方，向雷维尔加兹男爵报告线人的情况。', '你究竟有什么理由站在他们那边？这不是你的问题，所以重新考虑一下，接受我的交易吧。\n\n我可不想让你弄清楚我们为什么被叫做血帆……', '', '向雷维尔加兹男爵报告线人已被击败。', 255331, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255042, 2, 40, 35, 440, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '线人 - 血帆的盟友', '站在血帆海盗一方，接受线人的贿赂。', '看吧？我就知道我们会意见一致。', '', '收下你的金币，然后上路吧。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255048, 2, 45, 40, 440, 0, 0, 0, 0, 0, 0, 0, 5, 6500, 2475, 0, 0, 0, 0, 0, 8, 0, 375250, 200, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '水上之烟', '从泽贝尔的供应商那里取回他的雪茄货，然后返回热砂港的泽贝尔·什普利特处。', '啊，你来了。看，这就是我喜欢的！一个叫回来就真回来的人。\n\n现在听好了，小子，因为我有个更轻松的活儿给你。轻松得像系鞋带或者数手指。我需要雪茄。好雪茄。不是这里某些人想蒙混过关的那种湿漉漉的烂木头。\n\n我在热砂港有个欠我人情的供应商。你只要过去，告诉他泽贝尔派你来的，然后把货取回来。不许讨价还价。不许自由发挥。你拿上箱子，然后直接回到这里。明白了吗？', '', '返回热砂港，向泽贝尔·什普利特复命。', 0, 0, 0, 0, 0, 0, 0, 0, 355500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '泽贝尔的雪茄货', '', '', '', 0),
(255055, 2, 49, 44, 440, 0, 0, 0, 0, 0, 0, 255056, 5, 6500, 2475, 0, 0, 0, 0, 0, 8, 0, 375250, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '电池回收', '击败风暴降生云端翔龙，收集飞艇的电池。', '我们需要一块更好的电池来造一枚像样的火箭，但我在这儿弄不到任何像样的东西\n\n一个冒险者，太好了，你也许能解决这个问题。几周前有一艘飞艇在西南方向坠毁了。那些东西总是有好电池……虽然不是它救了这艘飞艇，但这不是重点。\n\n我有的是金币付给你，只需要有人跋涉过去，从残骸里把那块电池拿出来。', '', '检查飞艇电池。', 255334, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '找到飞艇电池', '', '', '', 0),
(255056, 2, 49, 44, 440, 1, 2, 0, 0, 0, 0, 0, 5, 6500, 2475, 0, 0, 0, 0, 355101, 8, 0, 375250, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '风暴之力', '找到能量源并恢复电池', '<你能听到附近空气元素特有的旋转声。也许它们被某种强大的能量源吸引到这里，某种可以用来恢复流失电荷的东西。至少在把快没电的电池带回伦塔尔之前，值得调查一下。>', '', '返回热砂港，向伦塔尔复命。', 0, 0, 0, 0, 0, 0, 0, 0, 355103, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(909040, 2, 46, 40, 440, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1935, 0, 0, 0, 0, 990900, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '紧急措施', '把比尔吉兹尔的订单送到热砂港的泽贝尔·什普利特处。', '整个运作都靠水，而现在废土强盗那群渣滓已经让我们几乎连一滴多余的水都不剩了。疏通我们的水泵是一回事，但我们的储备已经低到危险的程度。如果加基森要解渴，我们就需要更多的水，而且得快。\n\n当你在收拾那些强盗的时候，顺路去热砂港帮我把这份订单送过去。当地的一个搬运工，泽贝尔·什普利特，应该是我们快速补给的人选。把订单交给他，他会知道该怎么做。', '', '返回塔纳利斯热砂港，向泽贝尔·什普利特复命。', 0, 0, 0, 0, 0, 0, 0, 0, 990900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(909041, 2, 53, 45, 440, 0, 0, 0, 0, 0, 0, 0, 4, 2100, 3150, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '墨水与幻象', '从落帆海湾取回一本海盗日记。', '哦哦哦，这时间点太完美了。我就知道外面一定写着什么不可思议的东西，某种真实的东西。不是酒馆里的谣言或者水手的闲话，而是一本真正的海盗日记。那种被海水和糟糕决定浸染的日记。\n\n想想看。他们的想法。他们的日常。他们的派头。大家都把海盗说成是拿着刀子的野蛮人，但那不可能是全部。一定有智慧。有戏剧性。在他们生活和偷盗的方式中有一种风格感。\n\n如果我能读到一本真正的日记，我终于能理解海盗真正是怎么思考的了。当然是为了研究。非常严肃的研究。\n\n你应该帮我找一本。一本真的。别担心听起来有多危险。海盗们一直都在写东西。大概吧。', '', '带着一本真正的海盗日记返回塔纳利斯的玛丽处。', 0, 0, 0, 0, 0, 0, 0, 0, 355137, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '海盗日记', '', '', '', 0),
(909042, 2, 54, 45, 440, 0, 0, 0, 0, 0, 0, 0, 5, 0, 3600, 0, 0, 0, 0, 0, 8, 0, 8484, 1, 375250, 190, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '沙丘下的污秽', '消灭裂隙深渊中的虫类生物。', '你给我带来的沙子不像它本该的那样纯净。\n\n有什么东西在南边的沙丘下打洞。许多条腿。无尽的饥饿。它们啃噬着土地，在本该是记忆的地方留下空洞。沙漠因它们而退缩，但它无法移开。\n\n往南去。消灭在下面爬行和进食的东西。不要听它们的噪音。它们不属于这个地方。这不是屠杀。这是净化。', '', '净化裂隙深渊后，返回塔纳利斯的弗兰切斯卡处。', 5454, 5453, 5441, 5451, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '哈扎利沙掠者被击杀', '哈扎利隧道虫被击杀', '哈扎利黄蜂被击杀', '哈扎利群居虫被击杀', 0),
(982257, 2, 50, 44, 440, 0, 0, 0, 0, 0, 0, 0, 5, 1500, 975, 0, 0, 0, 0, 0, 8, 0, 375250, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '合同之忧', '找到泽贝尔最南端的特工，斯纳兹·爆齿轮。', '斯纳兹偏偏挑这个时候迟到！我到底付钱给他干什么？\n\n等着瞧。等我抓到他，他就会知道为什么他们叫我桑……啊哈！你现在看起来正是我需要的那种$r。想接个活儿吗？\n\n斯纳兹是我在南边的特工。他的工作是盯着失落索具帮，确保我的船准备离港时他们没在搞什么名堂。问题是，他刚刚无线电静默了，而今天的货物价值整船整船的黄金。\n\n但说真的，在我确定海岸安全之前，我动不了。我需要你找到他，确保他干好自己的活，或者把他带到这里让我亲自收拾他。', '', '找到斯纳兹·爆齿轮。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(982258, 2, 47, 40, 440, 0, 0, 0, 0, 0, 0, 909042, 5, 0, 1800, 0, 0, 0, 0, 0, 8, 0, 8484, 1, 375250, 190, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '活沙中的低语', '击杀一个阵风漩涡，收集它的活沙。', '沙丘躁动不安。\n\n当沙子升起并成形时，那不是愤怒。那是警告。当有什么东西打破了它的平衡，当脚步停留得太久，或者鲜血被无端洒落，沙漠就会凝聚自身。\n\n你看到那些在沙丘上移动的生物，并不是你所理解的那种元素。它们是沙丘在回应入侵。\n\n去面对其中一个。当它倒下时，它留下的沙子仍会因运动而温热。那就是活沙。只取剩下的部分。不要将它散落。不要逗留。', '', '带着阵风漩涡的活沙返回塔纳利斯的弗兰切斯卡处。', 0, 0, 0, 0, 0, 0, 0, 0, 9200813, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '活沙', '', '', '', 0)
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`),
  `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`),
  `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`),
  `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`),
  `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`),
  `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`),
  `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`),
  `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`),
  `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`),
  `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`),
  `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`),
  `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`),
  `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`),
  `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`),
  `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`),
  `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`),
  `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`),
  `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`),
  `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`),
  `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`),
  `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`),
  `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`),
  `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`),
  `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`),
  `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`),
  `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`),
  `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`),
  `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`),
  `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`),
  `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`),
  `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`),
  `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`),
  `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`),
  `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`),
  `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`),
  `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`),
  `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`),
  `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`),
  `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`),
  `TimeAllowed` = VALUES(`TimeAllowed`), `AllowableRaces` = VALUES(`AllowableRaces`),
  `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`),
  `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`),
  `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`),
  `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`),
  `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`),
  `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`),
  `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`),
  `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`),
  `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`),
  `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`),
  `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`),
  `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`),
  `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`),
  `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `Unknown0` = VALUES(`Unknown0`),
  `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`),
  `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`),
  `VerifiedBuild` = VALUES(`VerifiedBuild`);

-- Chains follow the captured NextQuestInChain and the quest texts. Contractual Concern is captured twice, as 255035
-- at level 45 and 982257 at level 50; Zebel offers only 982257, with the details, objective and completion text of
-- the 255035 capture, which the live stream shows for it. Sea Giant Fantasy 255036 does not require it. Arvon offers
-- two endings to The Informant: report him to Baron Revilgaz (255041) or keep his secret (255042); only one can be
-- taken (estimated).
DELETE FROM `quest_template_addon` WHERE `ID` IN (255028,255029,255036,255037,255040,255041,255042,255048,255055,255056,
  909040,909041,909042,982257,982258);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`,
  `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`,
  `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`,
  `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(255028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255029, 0, 0, 0, 255028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255037, 0, 0, 0, 255036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255041, 0, 0, 0, 255040, 0, 255041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255042, 0, 0, 0, 255040, 0, 255041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255056, 0, 0, 0, 255055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(909040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(909041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(909042, 0, 0, 0, 982258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(982257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(982258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Givers and enders follow the captured texts and the client SuperTrack turn-in points. Emergency Measures 909040
-- hands over Bilgewhizzle's Order for Zebel; its giver is Chief Engineer Bilgewhizzle of the Gadgetzan water tower,
-- whom the text names (estimated: no capture names the giver).
DELETE FROM `creature_queststarter` WHERE `quest` IN (255028,255029,255036,255037,255040,255041,255042,255048,255055,
  255056,909040,909041,909042,982257,982258);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(7407, 909040),
(7882, 255028),
(8617, 255029),
(255331, 255041),
(255331, 255042),
(449295, 909041),
(449390, 255048),
(449390, 982257),
(449391, 909042),
(449391, 982258),
(713002, 255055),
(749258, 255036),
(749258, 255037),
(9975000, 255040);

DELETE FROM `creature_questender` WHERE `quest` IN (255028,255029,255036,255037,255040,255041,255042,255048,255055,
  255056,909040,909041,909042,982257,982258);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(2496, 255041),
(7882, 255028),
(8617, 255029),
(255331, 255040),
(255331, 255042),
(449295, 909041),
(449390, 255037),
(449390, 255048),
(449390, 909040),
(449391, 909042),
(449391, 982258),
(713002, 255056),
(749258, 255036),
(749258, 982257);

DELETE FROM `gameobject_queststarter` WHERE `quest` IN (255040,255056);
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES
(255040, 255040),
(255045, 255056);

DELETE FROM `gameobject_questender` WHERE `quest` = 255055;
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES
(255045, 255055);

-- Credits; the credit entries are the captured ones. Each delivery of 255037 counts when the player picks "I have
-- some goods to deliver for you." at its recipient, and choosing "That's none of my business, I'm just here for the
-- cigars." makes Gabriel Smokestacks send his bodyguard Barnabas, who drops the shipment of 255048, at the player
-- while Gabriel cheers him on, as the live stream shows. Barnabas takes the attackable neutral faction 7 for the
-- fight. The other triggers are estimated, since no capture shows them: speaking to Zalashji resolves the naga
-- sighting of 255028, and Arvon turns on a player who takes 255041 and must be killed; he takes faction 7 too, so
-- the Booty Bay bruisers stay out of it.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (8617,10460,41676,46252,255331,449401,449402) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
  `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`,
  `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`,
  `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`,
  `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(8617, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 8617, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Zalashji - On Gossip Hello - Quest Credit'),
(10460, 0, 0, 1, 62, 0, 100, 0, 9975002, 0, 0, 0, 0, 0, 33, 10460, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Ironboot - On Gossip Select - Quest Credit'),
(10460, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Prospector Ironboot - Linked - Close Gossip'),
(41676, 0, 0, 1, 62, 0, 100, 0, 9975001, 1, 0, 0, 0, 0, 33, 41676, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Importer Sprocketspring - On Gossip Select - Quest Credit'),
(41676, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Importer Sprocketspring - Linked - Close Gossip'),
(46252, 0, 0, 1, 62, 0, 100, 0, 9975000, 1, 0, 0, 0, 0, 33, 46252, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Henry Crabgrass - On Gossip Select - Quest Credit'),
(46252, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Henry Crabgrass - Linked - Close Gossip'),
(449401, 0, 0, 1, 62, 0, 100, 0, 9975008, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gabriel Smokestacks - On Gossip Select - Say Line 0'),
(449401, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gabriel Smokestacks - Linked - Close Gossip'),
(449401, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gabriel Smokestacks - Linked - Store Invoker'),
(449401, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 19, 449402, 30, 0, 0, 0, 0, 0, 0, 'Gabriel Smokestacks - Linked - Send Invoker to Barnabas'),
(449401, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 449402, 30, 0, 0, 0, 0, 0, 0, 'Gabriel Smokestacks - Linked - Set Data 1 1 on Barnabas'),
(449402, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Barnabas - On Data Set 1 1 - Set Faction Neutral Attackable'),
(449402, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 'Barnabas - Linked - Attack Stored Invoker'),
(449402, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 449401, 30, 0, 0, 0, 0, 0, 0, 'Barnabas - On Aggro - Gabriel Smokestacks Say Line 1'),
(449402, 0, 3, 0, 0, 0, 100, 0, 8000, 10000, 12000, 15000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 449401, 30, 0, 0, 0, 0, 0, 0, 'Barnabas - In Combat - Gabriel Smokestacks Say Line 1'),
(449402, 0, 4, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Barnabas - On Evade - Restore Faction'),
(449402, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Barnabas - On Respawn - Restore Faction'),
(255331, 0, 0, 1, 19, 0, 100, 0, 255041, 0, 0, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Arvon - On Quest Accepted - Set Faction Neutral Attackable'),
(255331, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Arvon - Linked - Attack Invoker'),
(255331, 0, 2, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Arvon - On Evade - Restore Faction'),
(255331, 0, 3, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Arvon - On Respawn - Restore Faction');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (8617,10460);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceId` = 0 AND `SourceEntry` IN
  (8617,10460,41676,46252,255331,449401,449402);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`,
  `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,
  `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 8617, 0, 0, 9, 0, 255028, 0, 0, 0, 0, 0, '', 'Zalashji - credit only on quest 255028');

DELETE FROM `creature_text` WHERE `CreatureID` = 449401;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`,
  `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(449401, 0, 0, '够了！我受够了跟他的那些蠢货手下解释这些！我敢打赌你的脑袋能把消息清清楚楚地送到泽贝尔那儿，上吧巴尼！', 12, 0, 100, 0, 0, 0, 0, 0, '加布里埃尔·烟囱 - 派出巴纳巴斯'),
(449401, 1, 0, '对！就是这样巴尼，让他们看看惹了加布里埃尔·烟囱会有什么下场！', 12, 0, 50, 0, 0, 0, 0, 0, '加布里埃尔·烟囱 - 为巴纳巴斯加油'),
(449401, 1, 1, '来吧，巴尼！让那个软蛋知道自己的位置！', 12, 0, 50, 0, 0, 0, 0, 0, '加布里埃尔·烟囱 - 为巴纳巴斯加油');
