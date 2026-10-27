-- Redridge Mountains restore from Ascension captures: six missing Lakeshire quests (WDB questcache 2026-09-07..08),
-- the Minervia chain 254067-254071 (conquest-of-azeroth questcache 2026-09-04), their givers, Red Mage Tower and
-- Lakeshire NPCs and objects, plus field differences in existing Redridge data.
-- Positions follow the client QuestSuperTrack/SuperTrack points or observed object positions; displays marked
-- stand-in replace Ascension models the client lacks. NPC levels follow Roman Murashoff's Ascension Redridge videos
-- where they show one and are estimated otherwise; the captures carry none. Luca Tyndall, Lady Idelia Solomon and
-- Father Norice instead take their levels, Luca's axe and pose, Idelia's spot, the Guard Pearce and Guard Ashlock
-- moves and nine Lakeshire Guards from a live CoA world export (pale_reach_and_redridge.sql, 2026-10-11) whose source
-- is unknown.
-- Seventeen more Lakeshire NPCs from the creaturecache (WDB captures up to 2026-09-05) have no recorded position in
-- any source; their spots, facings, levels and stand-in displays are estimated and marked so below.

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`,
  `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,
  `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`,
  `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`,
  `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`,
  `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`,
  `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`,
  `RegenHealth`, `CreatureImmunitiesId`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
VALUES
(255204, 0, 0, 0, 0, 0, '卢卡·廷德尔', NULL, NULL, 0, 20, 20, 0, 12, 2, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255206, 0, 0, 0, 0, 0, '伊迪莉亚·所罗门女士', NULL, NULL, 0, 30, 30, 0, 12, 2, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255207, 0, 0, 0, 0, 0, '诺里斯神父', NULL, NULL, 0, 25, 25, 0, 12, 2, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(991477, 0, 0, 0, 0, 0, '魔网追踪者赫斯特洛', '大法师', NULL, 0, 30, 30, 0, 12, 3, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(991474, 0, 0, 0, 0, 0, '梅里亚·克拉斯托', '法师学徒', NULL, 0, 25, 25, 0, 12, 2, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(991475, 0, 0, 0, 0, 0, '贾斯珀·吉莱昂', '见习法师', NULL, 0, 15, 15, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(991476, 0, 0, 0, 0, 0, '亚历山德里亚·罗文', '见习法师', NULL, 0, 15, 15, 0, 12, 2, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(991482, 0, 0, 0, 0, 0, '科温·布兰威克', '见习法师', NULL, 0, 15, 15, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(254969, 0, 0, 0, 0, 0, '阿佐拉仆从', NULL, NULL, 0, 9, 9, 0, 12, 2, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(254976, 0, 0, 0, 0, 0, '萨基努', '加斯伊尔佐格之手', NULL, 0, 26, 26, 0, 40, 0, 1, 1.14286, 1, 1, 20, 1, 0, 2.4, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 7, 0, 254976, 0, 0, 0, 0, 139, 186, '', 0, 1, 3.008, 1, 1.5, 1, 0, 0, 1, 0, 0, '', 0),
(255201, 0, 0, 0, 0, 0, '达米安·廷德尔', '裁缝训练师', NULL, 0, 25, 25, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255213, 0, 0, 0, 0, 0, '卡特琳', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255208, 0, 0, 0, 0, 0, '弗内尔', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255212, 0, 0, 0, 0, 0, '艾梅琳', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255214, 0, 0, 0, 0, 0, '马里努斯', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255215, 0, 0, 0, 0, 0, '被俘的黑石哨兵', NULL, NULL, 0, 21, 21, 0, 35, 0, 1, 1.14286, 1, 1, 18, 1, 0, 1.7, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 3.75, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255216, 0, 0, 0, 0, 0, '渔夫奥德里克', '钓鱼训练师', NULL, 5665, 20, 20, 0, 12, 81, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255217, 0, 0, 0, 0, 0, '农民工人', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255218, 0, 0, 0, 0, 0, '农场帮工塞维姆', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255219, 0, 0, 0, 0, 0, '湖畔镇卫兵', NULL, NULL, 0, 35, 35, 0, 11, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 4096, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2.032, 1, 1, 1, 0, 0, 1, 0, 0, '', 0),
(255220, 0, 0, 0, 0, 0, '西多尼亚·克拉斯托', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255221, 0, 0, 0, 0, 0, '赖利·奥斯古德', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255467, 0, 0, 0, 0, 0, '埃尔玛', '祭坛侍僧', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.28576, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255468, 0, 0, 0, 0, 0, '伊万', '祭坛侍僧', NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.28576, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255469, 0, 0, 0, 0, 0, '派恩', NULL, NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.28576, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255470, 0, 0, 0, 0, 0, '索莱娜', NULL, NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.28576, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255471, 0, 0, 0, 0, 0, '阿德琳·廷德尔', NULL, NULL, 0, 1, 1, 0, 35, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.28576, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255472, 0, 0, 0, 0, 0, '爱德华·廷德尔', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(255473, 0, 0, 0, 0, 0, '艾迪生·卢瑟福', NULL, NULL, 0, 20, 20, 0, 12, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.312, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(254971, 0, 0, 0, 0, 0, '大法师米内维亚', NULL, NULL, 0, 25, 25, 0, 35, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0)
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

-- Stand-in displays: Ascension displays 255204, 255206, 255207 and 811477 are not in the client's
-- CreatureDisplayInfo.dbc, so Luca Tyndall wears 1541, Lady Idelia Solomon 15947, Father Norice 3283 and
-- Ley-Tracker Hestlor 1484. The same holds for Meria Crastlor (811474, stand-in 3292), Jasper Gilleon (811475,
-- stand-in 1294), Alexandria Rowen (811476, stand-in 3768), Damion Tyndall (255201, stand-in 1502) and Cateline
-- (255213, stand-in 213). Corwin Branwick, the Servant of Azora and Sah'kihnu keep their client displays.
-- Sah'kihnu's combat values copy Gath'Ilzogg (334) and are estimated; the creaturecache has none.
-- The later Lakeshire NPCs carry Ascension displays the client lacks as well; their stand-ins are estimated, with the
-- sex guessed from the name: Vernell 3254, Emelyne 1571, Marinus 5082, Fisherman Audric 4491, Peasant Worker 87/89,
-- Farmhand Sevim 3614, Sidonia Crastlor 1295, Reilly Osgood 3331, Edvard Tyndall 1944 and Addison Rutherford 5038.
-- The Captured Blackrock Sentry (6029), the Lakeshire Guard (3447) and the children keep their client displays.
-- Levels, factions and flags are estimated: adults follow Cateline, children Jamin (5608), the guard Guard Pearce
-- (935, same HealthModifier) and the sentry Blackrock Sentry (4065, same rank, HealthModifier and display), made
-- friendly because it is captured. Fisherman Audric teaches what Matthew Hooper (1680) teaches.
-- Archmage Minervia (254971) wears the stand-in 1495 for her Ascension display 254971; her level, faction and flags
-- are estimated.
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (255204,255206,255207,991477,991474,991475,991476,991482,
  254969,254976,255201,255213,255208,255212,255214,255215,255216,255217,255218,255219,255220,255221,255467,255468,
  255469,255470,255471,255472,255473,254971);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`,
  `VerifiedBuild`) VALUES
(255204, 0, 1541, 1, 1, 0),
(255206, 0, 15947, 1, 1, 0),
(255207, 0, 3283, 1, 1, 0),
(991477, 0, 1484, 1, 1, 0),
(991474, 0, 3292, 1, 1, 0),
(991475, 0, 1294, 1, 1, 0),
(991476, 0, 3768, 1, 1, 0),
(991482, 0, 1491, 1, 1, 0),
(254969, 0, 5018, 1, 1, 0),
(254976, 0, 9849, 1, 1, 0),
(255201, 0, 1502, 1, 1, 0),
(255213, 0, 213, 1, 1, 0),
(255208, 0, 3254, 1, 1, 0),
(255212, 0, 1571, 1, 1, 0),
(255214, 0, 5082, 1, 1, 0),
(255215, 0, 6029, 1, 1, 0),
(255216, 0, 4491, 1, 1, 0),
(255217, 0, 87, 1, 1, 0),
(255217, 1, 89, 1, 1, 0),
(255218, 0, 3614, 1, 1, 0),
(255219, 0, 3447, 1, 1, 0),
(255220, 0, 1295, 1, 1, 0),
(255221, 0, 3331, 1, 1, 0),
(255467, 0, 262, 1, 1, 0),
(255468, 0, 221, 1, 1, 0),
(255469, 0, 251, 1, 1, 0),
(255470, 0, 252, 1, 1, 0),
(255471, 0, 257, 1, 1, 0),
(255472, 0, 1944, 1, 1, 0),
(255473, 0, 5038, 1, 1, 0),
(254971, 0, 1495, 1, 1, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` = 255216;
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(255216, 98);

-- Heights are the client SuperTrack points, which stand on the floors of the Lakeshire buildings.
-- Jasper Gilleon, Corwin Branwick, Damion Tyndall and Cateline stand where the videos show them; their exact spots
-- are estimated and their heights are client WMO floors (Red Mage Tower ground floor, inn upper floor, chapel).
-- In the videos Jasper works at the ground-floor desk behind the rune circle, so he sits on its chair (stand state 5,
-- estimated), and Corwin stands on the top floor by the mage dummies. Every facing in the tower follows what the
-- videos show: Meria toward Jasper, Hestlor toward the Uldum portal, Alexandria toward the stairwell (estimated).
-- Guids 9950412-9950430 are the position-unknown Lakeshire NPCs: every spot and facing is estimated, placed by
-- role and family name next to existing NPCs, at client WMO floor or terrain height.
-- The chapel has no pews: its congregation stands in two rows on each side of the nave, facing the altar.
-- Guid 9950431, an earlier trigger bunny for 254068, stays in the delete range so it is removed.
DELETE FROM `creature` WHERE `guid` BETWEEN 9950400 AND 9950431;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`,
  `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`,
  `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`,
  `CreateObject`, `Comment`) VALUES
(9950400, 255206, 0, 0, 0, 1, 1, 0, -9440.38, -2306.45, 83.4431, 1.54181, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lady Idelia Solomon (live CoA world export 2026-10-11, source unknown)'),
(9950401, 991477, 0, 0, 0, 1, 1, 0, -9656.0, -1970.4, 99.49, 4.89, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Ley-Tracker Hestlor (client SuperTrack 21386, Red Mage Tower; facing the Uldum portal estimated)'),
(9950402, 255204, 0, 0, 0, 1, 1, 1, -9466.25, -2186.6, 70.1972, 1.07997, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Luca Tyndall (live CoA world export 2026-10-11, source unknown)'),
(9950403, 255207, 0, 0, 0, 1, 1, 0, -9428.72, -2075.62, 68.25, 4.7, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Father Norice (client SuperTrack 21396, chapel; facing estimated)'),
(9950404, 991474, 0, 0, 0, 1, 1, 0, -9664.04, -1957.14, 65.01, 3.48, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Meria Crastlor (client SuperTrack 8504, Red Mage Tower; facing Jasper estimated)'),
(9950405, 991475, 0, 0, 0, 1, 1, 0, -9678.01, -1961.99, 65.01, 3.14, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Jasper Gilleon (Red Mage Tower ground floor, on the desk chair; spot and facing estimated)'),
(9950406, 991482, 0, 0, 0, 1, 1, 0, -9684.18, -1976.82, 99.49, 0.93, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Corwin Branwick (Red Mage Tower top floor by the mage dummies; spot and facing estimated)'),
(9950407, 991476, 0, 0, 0, 1, 1, 0, -9678.96, -1948.64, 90.7, 5.29, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Alexandria Rowen (client SuperTrack 8535, Red Mage Tower upstairs; facing the stairwell estimated)'),
(9950408, 254969, 0, 0, 0, 1, 1, 0, -9228.15, -3348.43, 102.03, 3.1, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Servant of Azora (client SuperTrack 8533, Tower of Ilgalar; facing estimated)'),
(9950409, 254976, 0, 0, 0, 1, 1, 0, -9287.31, -2929.06, 163.85, 1.6, 900, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Sah''kihnu (client SuperTrack 8527, top of Stonewatch Tower; facing and respawn estimated)'),
(9950410, 255201, 0, 0, 0, 1, 1, 0, -9236.5, -2157.0, 71.21, 3.1, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Damion Tyndall (Lakeshire inn upper floor; spot and facing estimated)'),
(9950411, 255213, 0, 0, 0, 1, 1, 0, -9425.4, -2082.5, 67.55, 1.42, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Cateline (Lakeshire chapel nave, front row; spot and facing estimated)'),
(9950412, 255208, 0, 0, 0, 1, 1, 0, -9434.2, -2082.5, 67.55, 1.42, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Vernell (chapel nave, front row; spot and facing estimated)'),
(9950413, 255212, 0, 0, 0, 1, 1, 0, -9425.9, -2086.5, 67.55, 1.42, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Emelyne (chapel nave, second row; spot and facing estimated)'),
(9950414, 255214, 0, 0, 0, 1, 1, 0, -9434.7, -2086.5, 67.55, 1.42, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Marinus (chapel nave, second row; spot and facing estimated)'),
(9950415, 255467, 0, 0, 0, 1, 1, 0, -9431.8, -2076.3, 68.25, 4.57, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Elmar (chapel altar beside Father Norice; spot and facing estimated)'),
(9950416, 255468, 0, 0, 0, 1, 1, 0, -9425.6, -2076.3, 68.25, 4.57, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Ivan (chapel altar beside Father Norice; spot and facing estimated)'),
(9950417, 255470, 0, 0, 0, 1, 1, 0, -9221.0, -2216.0, 66.18, 1.57, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Solaina (town hall near Magistrate Solomon; spot and facing estimated)'),
(9950418, 255219, 0, 0, 0, 1, 1, 0, -9212.0, -2212.0, 66.18, 3.14, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (town hall; spot and facing estimated)'),
(9950419, 255471, 0, 0, 0, 1, 1, 0, -9462.0, -2190.0, 70.21, 2.52, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Adelynn Tyndall (house of Luca Tyndall; spot and facing estimated)'),
(9950420, 255472, 0, 0, 0, 1, 1, 0, -9458.0, -2186.0, 70.21, 3.08, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Edvard Tyndall (house of Luca Tyndall; spot and facing estimated)'),
(9950421, 255469, 0, 0, 0, 1, 1, 0, -9266.0, -2203.0, 63.93, 5.92, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Paien (with the Lakeshire children; spot and facing estimated)'),
(9950422, 255221, 0, 0, 0, 1, 1, 0, -9262.0, -2245.5, 63.93, 0.73, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Reilly Osgood (beside Verner Osgood; spot and facing estimated)'),
(9950423, 255216, 0, 0, 0, 1, 1, 0, -9311.0, -2150.0, 63.48, 2.4, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Fisherman Audric (fishing dock by Matthew Hooper; spot and facing estimated)'),
(9950424, 255217, 0, 0, 0, 1, 1, 0, -9283.0, -2275.0, 67.51, 1.0, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Peasant Worker (bridge works by Foreman Oslow; spot and facing estimated)'),
(9950425, 255217, 0, 0, 0, 1, 1, 0, -9275.0, -2278.0, 67.63, 2.5, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Peasant Worker (bridge works by Foreman Oslow; spot and facing estimated)'),
(9950426, 255217, 0, 0, 0, 1, 1, 0, -9287.0, -2284.0, 67.54, 0.4, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Peasant Worker (bridge works by Foreman Oslow; spot and facing estimated)'),
(9950427, 255218, 0, 0, 0, 1, 1, 0, -9252.0, -2048.0, 77.0, 0.41, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Farmhand Sevim (Jainrose farm; spot and facing estimated)'),
(9950428, 255220, 0, 0, 0, 1, 1, 0, -9661.0, -1954.0, 65.01, 3.94, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Sidonia Crastlor (Red Mage Tower ground floor by Meria; spot and facing estimated)'),
(9950429, 255215, 0, 0, 0, 1, 1, 0, -9286.0, -2294.0, 67.52, 5.16, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Captured Blackrock Sentry (by Marshal Marris; spot and facing estimated)'),
(9950430, 255473, 0, 0, 0, 1, 1, 0, -9245.0, -2165.0, 63.93, 0.0, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Addison Rutherford (Lakeshire square by the inn; spot and facing estimated)');

-- Nine Lakeshire Guards around the town hall, Luca Tyndall's Hamhock's Ham Hacker and work emote 234, and the
-- guards' sitting and emote 69 poses: live CoA world export (pale_reach_and_redridge.sql, 2026-10-11, rows marked
-- 'placed in game'), source unknown.
DELETE FROM `creature_equip_template` WHERE `CreatureID` = 255204;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(255204, 1, 2827, 0, 0, 0);

DELETE FROM `creature` WHERE `guid` BETWEEN 9965147 AND 9965155;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`,
  `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`,
  `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`,
  `CreateObject`, `Comment`) VALUES
(9965147, 10037, 0, 0, 0, 1, 1, 0, -9445.97, -2318.83, 75.5701, 1.4303, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (live CoA world export 2026-10-11, source unknown)'),
(9965148, 10037, 0, 0, 0, 1, 1, 0, -9441.94, -2315.92, 75.5555, 4.5601, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (live CoA world export 2026-10-11, source unknown)'),
(9965149, 10037, 0, 0, 0, 1, 1, 0, -9445.78, -2315.3, 75.6253, 4.60251, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (live CoA world export 2026-10-11, source unknown)'),
(9965150, 10037, 0, 0, 0, 1, 1, 0, -9447.2, -2313.26, 75.2872, 4.95673, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (live CoA world export 2026-10-11, source unknown)'),
(9965151, 10037, 0, 0, 0, 1, 1, 0, -9451.96, -2317.94, 75.4158, 1.38237, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (live CoA world export 2026-10-11, source unknown)'),
(9965152, 10037, 0, 0, 0, 1, 1, 0, -9448.54, -2292.81, 72.6894, 0.772904, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (live CoA world export 2026-10-11, source unknown)'),
(9965153, 10037, 0, 0, 0, 1, 1, 0, -9437.47, -2293.3, 72.3666, 3.52022, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (live CoA world export 2026-10-11, source unknown)'),
(9965154, 10037, 0, 0, 0, 1, 1, 0, -9439.9, -2294.53, 72.4386, 0.421822, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (live CoA world export 2026-10-11, source unknown)'),
(9965155, 10037, 0, 0, 0, 1, 1, 0, -9431.9, -2308.33, 72.4847, 1.45933, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Lakeshire Guard (live CoA world export 2026-10-11, source unknown)');

DELETE FROM `creature_addon` WHERE `guid` IN (9950402,9950405) OR `guid` BETWEEN 9965147 AND 9965155;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`,
  `visibilityDistanceType`, `auras`) VALUES
(9950402, 0, 0, 0, 0, 234, 0, ''),
(9950405, 0, 0, 5, 0, 0, 0, ''),
(9965147, 0, 0, 5, 0, 0, 0, ''),
(9965148, 0, 0, 5, 0, 0, 0, ''),
(9965149, 0, 0, 5, 0, 0, 0, ''),
(9965151, 0, 0, 5, 0, 0, 0, ''),
(9965152, 0, 0, 0, 0, 69, 0, ''),
(9965155, 0, 0, 5, 0, 0, 0, '');

-- Guard Pearce and Guard Ashlock: live CoA world export 2026-10-11, source unknown.
UPDATE `creature` SET `position_x` = -9417.57, `position_y` = -2286.87, `position_z` = 67.9547,
  `orientation` = 3.11022 WHERE `guid` = 6157 AND `id` = 935;
UPDATE `creature` SET `position_x` = -9415.32, `position_y` = -2263.41, `position_z` = 67.5423,
  `orientation` = 3.37411 WHERE `guid` = 6715 AND `id` = 932;

-- patch-WB1 moved the Lakeshire flagpole and banners from beside Deputy Feldon about 21 yards east and put the
-- gryphon roosts where they stood. Feldon moves to his client SuperTrack point 528 (quests 244 and 246) next to
-- the new flagpole; his facing is unchanged.
UPDATE `creature` SET `position_x` = -9422.85, `position_y` = -2243.02, `position_z` = 68.49
WHERE `guid` = 6713 AND `id` = 1070;

-- Gnoll Food Barrel, Chalice of Tyrenel, Alther's Mill Plank, Codex of Secrets, Pristine Black Dragon Egg and the
-- 254069 Gravestone (quest 254069, gossip 60071), the Eye of Ilgalar (gossip 60064) and the Red Mage Tower props
-- 97379-97449: WDB gameobject cache 2026-09-04..08.
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`,
  `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`,
  `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`,
  `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`)
VALUES
(255062, 3, 32, '豺狼人食物桶', '', 'Collecting', '', 1, 43, 255062, 0, 1, 0, 0, 0, 0, 255113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(255063, 3, 185436, '泰瑞内尔圣杯', '', 'Collecting', '', 1, 43, 255063, 0, 1, 0, 0, 0, 0, 255114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(255064, 3, 4651, '奥瑟尔磨坊木板', '', 'Collecting', '', 0.3, 43, 255064, 0, 1, 0, 0, 0, 0, 255117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(518612, 2, 6619, '秘密法典', '', '', '', 1, 0, 93, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(254685, 3, 980926, '原始黑龙蛋', '', 'Looting', '', 1.5, 43, 254685, 0, 0, 0, 0, 0, 0, 254071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(254684, 10, 1010093, '墓碑', '', '', '', 1, 0, 254069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60071, 0, 0, 0, 0, 'SmartGameObjectAI', '', 0),
(254683, 10, 621, '伊尔加拉之眼', '', '凝视', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60064, 0, 0, 0, 0, 'SmartGameObjectAI', '', 0),
(97379, 5, 1016266, '漂浮书籍RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97392, 5, 1022454, '法师塔漂浮书籍RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97394, 5, 87502, '魔法旗帜RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97395, 5, 7631, '奥术监狱RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97396, 5, 60710, '大型蓝色符文圆环RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97397, 5, 1034378, '人类市政厅指挥官桌3级RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97398, 5, 91, '通用中型椅子RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97399, 5, 1034594, '人类旅店小桌2RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97401, 5, 1048414, '库尔提拉斯长地毯RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97403, 5, 1045158, '人类旅店食物盘4RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97404, 5, 1026045, '人类市政厅指挥官架3RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97405, 5, 1061306, '吸血鬼魔法羽毛笔漂浮RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97406, 5, 1015592, '人类铭文桌RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97407, 5, 63145, '发光蓝色符文RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97411, 5, 1013619, '奥丹姆星界传送门RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97413, 5, 1015582, '人类附魔台RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97415, 5, 1056949, '人类附魔架漂浮2RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97416, 5, 1015578, '人类附魔箱RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97417, 5, 1014917, '人类附魔罐8RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97418, 5, 1016159, '铭文书堆3RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97420, 5, 1031712, '漂浮蜡烛RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97421, 5, 1025945, '矮人打开的书讲台RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97422, 5, 1030129, '散落的纸张RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97423, 5, 1049727, '铭文书堆2RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97424, 5, 1029694, '人类附魔盒RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97425, 5, 1051575, '人类附魔罐3RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97426, 5, 1017648, '暴风城坟墓12RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97427, 5, 1015977, '人类附魔罐1RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97428, 5, 1015411, '铭文书堆5RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97430, 5, 1034377, '人类市政厅指挥官桌2RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97431, 5, 1034375, '人类市政厅指挥官桌0RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97432, 5, 1015588, '人类附魔罐3RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97433, 5, 1030877, '人类附魔小桌RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97435, 5, 100183, '人类大书架3RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97437, 5, 1060048, '魔网水晶RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97438, 5, 1060148, '人类附魔架漂浮1RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97439, 5, 1060149, '人类书架6RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97440, 5, 1060150, '人类大书架1RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97443, 5, 1060453, '狼人地毯2RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97444, 5, 1026036, '人类法师假人RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97445, 5, 1026236, '人类大书架2RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97446, 5, 1026237, '法师半身像4RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97447, 5, 1026238, '法师半身像1RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97448, 5, 1026239, '法师半身像2RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0),
(97449, 5, 1026240, '法师半身像3RPG道具', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0)
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

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (255062,255063,255064,254685);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `artkit0`, `artkit1`,
  `artkit2`, `artkit3`) VALUES
(255062, 0, 4, 0, 0, 0, 0, 0, 0),
(255063, 0, 4, 0, 0, 0, 0, 0, 0),
(255064, 0, 4, 0, 0, 0, 0, 0, 0),
(254685, 0, 4, 0, 0, 0, 0, 0, 0);

-- The egg's chance is estimated: the db.exil.es dump 2026-10-04 (gameobject_loot) lists the egg with chance 0.
DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (255062,255063,255064,254685);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`,
  `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(255062, 355199, 0, 100, 1, 1, 0, 1, 1, 'Gnoll Food Barrel - Gnoll Food Supplies'),
(255063, 355200, 0, 100, 1, 1, 0, 1, 1, 'Chalice of Tyrenel - Chalice of Tyrenel'),
(255064, 355201, 0, 100, 1, 1, 0, 1, 1, 'Alther''s Mill Plank - Wood Planks'),
(254685, 354661, 0, 100, 1, 1, 0, 1, 1, 'Pristine Black Dragon Egg - Pristine Black Dragon Egg');

-- Sah'kihnu's page drop: db.exil.es dump 2026-10-04, creature_loot (100%).
DELETE FROM `creature_loot_template` WHERE `Entry` = 254976 AND `Item` = 354660;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`,
  `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(254976, 354660, 0, 100, 1, 1, 0, 1, 1, 'Sah''kihnu - Lost Page of the Codex');

-- Object spawns at the quests' client SuperTrack objective points; the Codex of Secrets and the egg stand where an
-- addon observed them on Bronzebeard (AscensionDB gameobjects catalogue). Respawn times are estimated.
-- The Gravestone stands at the 254069 objective point (client SuperTrack 8598) on the terrain; its facing is estimated.
-- Red Mage Tower furnishing, the Portal to Stormwind and the Eye of Ilgalar stand at the positions the same catalogue
-- observed (GameObjects-Bronzebeard dumps, AscensionDB revision built 2026-09-12). It keeps one sighting per entry and
-- no rotation, so every facing is estimated: props by the wall turn toward the tower centre, the top-floor table row
-- and its items face the room, the Worgen rug lies parallel to that row and the Uldum portal opens between its
-- crystals, as the videos show. Estimated objects: the Human Enchanting Table under the Codex of Secrets and the
-- Human Enchanting Chest, a third one under the Lectern and Jars 3 (both raised onto it), the second Ley Crystal
-- flanking the Uldum portal and stone pedestals under Busts 2-4 like the observed one under Bust 1.
DELETE FROM `gameobject` WHERE `guid` BETWEEN 9001300 AND 9001380;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`,
  `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`,
  `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(9001300, 255062, 0, 0, 0, 1, 1, -9792.87, -2206.67, 58.61, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21387, gnoll camp; second barrel and facings estimated)'),
(9001301, 255062, 0, 0, 0, 1, 1, -9789.37, -2209.17, 58.61, 4.1, 0, 0, 0.887362, -0.461073, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21387, gnoll camp; second barrel and facings estimated)'),
(9001302, 255062, 0, 0, 0, 1, 1, -9601.91, -2512.04, 59.25, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21388, gnoll camp; second barrel and facings estimated)'),
(9001303, 255062, 0, 0, 0, 1, 1, -9598.41, -2514.54, 59.65, 4.1, 0, 0, 0.887362, -0.461073, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21388, gnoll camp; second barrel and facings estimated)'),
(9001304, 255062, 0, 0, 0, 1, 1, -9037.15, -2411.9, 129.14, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21389, gnoll camp; second barrel and facings estimated)'),
(9001305, 255062, 0, 0, 0, 1, 1, -9033.65, -2414.4, 129.43, 4.1, 0, 0, 0.887362, -0.461073, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21389, gnoll camp; second barrel and facings estimated)'),
(9001306, 255062, 0, 0, 0, 1, 1, -8941.3, -2314.05, 132.45, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21390, gnoll camp; second barrel and facings estimated)'),
(9001307, 255062, 0, 0, 0, 1, 1, -8937.8, -2316.55, 132.47, 4.1, 0, 0, 0.887362, -0.461073, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21390, gnoll camp; second barrel and facings estimated)'),
(9001308, 255062, 0, 0, 0, 1, 1, -8964.85, -2081.38, 132.44, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21391, gnoll camp; second barrel and facings estimated)'),
(9001309, 255062, 0, 0, 0, 1, 1, -8961.35, -2083.88, 132.44, 4.1, 0, 0, 0.887362, -0.461073, 120, 100, 1, '', 0, 'Gnoll Food Barrel (client SuperTrack 21391, gnoll camp; second barrel and facings estimated)'),
(9001310, 255063, 0, 0, 0, 1, 1, -9010.18, -3221.56, 109.31, 2.3, 0, 0, 0.912764, 0.408487, 120, 100, 1, '', 0, 'Chalice of Tyrenel (client SuperTrack 21395; facing estimated)'),
(9001311, 255064, 0, 0, 0, 1, 1, -9227.62, -2701.3, 88.8, 0.4, 0, 0, 0.198669, 0.980067, 120, 100, 1, '', 0, 'Alther''s Mill Plank (client SuperTrack 21393, Alther''s Mill; spread and facings estimated)'),
(9001312, 255064, 0, 0, 0, 1, 1, -9223.62, -2698.3, 88.8, 2.0, 0, 0, 0.841471, 0.540302, 120, 100, 1, '', 0, 'Alther''s Mill Plank (client SuperTrack 21393, Alther''s Mill; spread and facings estimated)'),
(9001313, 255064, 0, 0, 0, 1, 1, -9231.12, -2697.3, 88.8, 3.3, 0, 0, 0.996865, -0.079121, 120, 100, 1, '', 0, 'Alther''s Mill Plank (client SuperTrack 21393, Alther''s Mill; spread and facings estimated)'),
(9001314, 255064, 0, 0, 0, 1, 1, -9232.62, -2703.8, 88.8, 5.1, 0, 0, 0.557684, -0.830054, 120, 100, 1, '', 0, 'Alther''s Mill Plank (client SuperTrack 21393, Alther''s Mill; spread and facings estimated)'),
(9001315, 255064, 0, 0, 0, 1, 1, -9225.12, -2706.3, 88.8, 1.1, 0, 0, 0.522687, 0.852525, 120, 100, 1, '', 0, 'Alther''s Mill Plank (client SuperTrack 21393, Alther''s Mill; spread and facings estimated)'),
(9001316, 255064, 0, 0, 0, 1, 1, -9220.62, -2702.3, 88.8, 4.4, 0, 0, 0.808496, -0.588501, 120, 100, 1, '', 0, 'Alther''s Mill Plank (client SuperTrack 21393, Alther''s Mill; spread and facings estimated)'),
(9001317, 255064, 0, 0, 0, 1, 1, -9228.62, -2693.3, 88.8, 0.9, 0, 0, 0.434966, 0.900447, 120, 100, 1, '', 0, 'Alther''s Mill Plank (client SuperTrack 21393, Alther''s Mill; spread and facings estimated)'),
(9001318, 518612, 0, 0, 0, 1, 1, -9664.1, -1963.22, 100.817, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Codex of Secrets (observed position, client SuperTrack 8528; facing estimated)'),
(9001319, 254685, 0, 0, 0, 1, 1, -9714.99, -2897.01, 53.525, 0, 0, 0, 0, 1, 120, 100, 1, '', 0, 'Pristine Black Dragon Egg (observed position, client SuperTrack 8505, the Rookery; facing estimated)'),
(9001320, 254684, 0, 0, 0, 1, 1, -9105.3, -2412.26, 119.48, 0, 0, 0, 0, 1, 120, 100, 1, '', 0, 'Gravestone (client SuperTrack 8598, the grave of 254069; facing estimated)'),
(9001321, 97398, 0, 0, 0, 1, 1, -9678.010, -1961.990, 64.917, 3.142, 0, 0, 1.000000, 0.000000, 120, 100, 1, '', 0, 'General Medium Chair (Red Mage Tower; observed position; facing estimated)'),
(9001322, 97396, 0, 0, 0, 1, 1, -9669.344, -1961.957, 64.958, 0.000, 0, 0, 0.000000, 1.000000, 120, 100, 1, '', 0, 'Blue Rune Circle Large (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001323, 97430, 0, 0, 0, 1, 1, -9679.440, -1961.710, 64.971, 0.000, 0, 0, 0.000000, 1.000000, 120, 100, 1, '', 0, 'Human Townhall Commander Desk 2 (Red Mage Tower; observed position; facing estimated)'),
(9001324, 97427, 0, 0, 0, 1, 1, -9669.521, -1969.705, 64.996, 1.772, 0, 0, 0.774533, 0.632533, 120, 100, 1, '', 0, 'Human Enchanting Jars 1 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001325, 97418, 0, 0, 0, 1, 1, -9671.200, -1955.790, 65.008, 4.641, 0, 0, 0.731806, -0.681514, 120, 100, 1, '', 0, 'Inscription Bookstack 3 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001326, 97379, 0, 0, 0, 1, 1, -9669.162, -1962.127, 65.014, 2.403, 0, 0, 0.932657, 0.360765, 120, 100, 1, '', 0, 'Floating Books (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001327, 97397, 0, 0, 0, 1, 1, -9667.880, -1954.230, 65.014, 4.152, 0, 0, 0.875057, -0.484020, 120, 100, 1, '', 0, 'Human Townhall Commander Desk Level 3 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001328, 97431, 0, 0, 0, 1, 1, -9678.370, -1965.140, 65.014, 0.000, 0, 0, 0.000000, 1.000000, 120, 100, 1, '', 0, 'Human Townhall Commander Desk 0 (Red Mage Tower; observed position; facing estimated)'),
(9001329, 97440, 0, 0, 0, 1, 1, -9673.582, -1968.998, 65.017, 1.343, 0, 0, 0.622323, 0.782761, 120, 100, 1, '', 0, 'Human Bookshelf Large 1 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001330, 97395, 0, 0, 0, 1, 1, -9680.000, -1957.040, 66.348, 5.948, 0, 0, 0.166768, -0.985996, 120, 100, 1, '', 0, 'Arcane Prison (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001331, 97392, 0, 0, 0, 1, 1, -9667.950, -1968.460, 66.689, 1.968, 0, 0, 0.832747, 0.553653, 120, 100, 1, '', 0, 'Mage Tower Floating Book (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001332, 97428, 0, 0, 0, 1, 1, -9674.090, -1957.604, 67.649, 5.537, 0, 0, 0.364648, -0.931146, 120, 100, 1, '', 0, 'Inscription Bookstack 5 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001333, 97433, 0, 0, 0, 1, 1, -9675.300, -1955.870, 69.677, 5.456, 0, 0, 0.401811, -0.915722, 120, 100, 1, '', 0, 'Human Enchanting Table Small (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001334, 97432, 0, 0, 0, 1, 1, -9676.250, -1954.950, 69.685, 5.467, 0, 0, 0.396775, -0.917916, 120, 100, 1, '', 0, 'Human Enchanting Jar 3 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001335, 97415, 0, 0, 0, 1, 1, -9678.654, -1953.566, 70.928, 5.551, 0, 0, 0.358098, -0.933684, 120, 100, 1, '', 0, 'Human Enchanting Shelf Floating 2 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001336, 97399, 0, 0, 0, 1, 1, -9658.170, -1959.460, 75.324, 3.182, 0, 0, 0.999795, -0.020243, 120, 100, 1, '', 0, 'Human Inn Table Small 2 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001337, 97401, 0, 0, 0, 1, 1, -9658.300, -1959.600, 75.331, 3.172, 0, 0, 0.999885, -0.015146, 120, 100, 1, '', 0, 'Kultiras Long Rug (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001338, 97403, 0, 0, 0, 1, 1, -9658.330, -1959.574, 76.153, 3.174, 0, 0, 0.999869, -0.016167, 120, 100, 1, '', 0, 'Human Inn Food Plate 4 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001339, 97426, 0, 0, 0, 1, 1, -9681.280, -1947.910, 90.688, 5.393, 0, 0, 0.430743, -0.902475, 120, 100, 1, '', 0, 'Stormwind Grave 12 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001340, 97445, 0, 0, 0, 1, 1, -9687.660, -1955.700, 90.701, 6.023, 0, 0, 0.129665, -0.991558, 120, 100, 1, '', 0, 'Human Bookshelf Large 2 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001341, 97448, 0, 0, 0, 1, 1, -9657.570, -1951.920, 92.184, 3.667, 0, 0, 0.965664, -0.259793, 120, 100, 1, '', 0, 'Mage Bust 2 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001342, 97446, 0, 0, 0, 1, 1, -9684.834, -1971.438, 92.185, 0.709, 0, 0, 0.347126, 0.937819, 120, 100, 1, '', 0, 'Mage Bust 4 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001343, 97449, 0, 0, 0, 1, 1, -9660.883, -1974.828, 92.188, 2.192, 0, 0, 0.889429, 0.457074, 120, 100, 1, '', 0, 'Mage Bust 3 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001344, 97447, 0, 0, 0, 1, 1, -9681.291, -1947.920, 92.191, 5.394, 0, 0, 0.430312, -0.902680, 120, 100, 1, '', 0, 'Mage Bust 1 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001345, 97394, 0, 0, 0, 1, 1, -9681.620, -1947.340, 92.240, 5.387, 0, 0, 0.433362, -0.901220, 120, 100, 1, '', 0, 'Magic Banner (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001346, 97443, 0, 0, 0, 1, 1, -9670.162, -1968.709, 99.203, 0.000, 0, 0, 0.000000, 1.000000, 120, 100, 1, '', 0, 'Worgen Rug 2 (Red Mage Tower; observed position; facing estimated: long side parallel to the table row as in the video)'),
(9001347, 97420, 0, 0, 0, 1, 1, -9677.860, -1970.640, 99.295, 1.032, 0, 0, 0.493421, 0.869791, 120, 100, 1, '', 0, 'Floating Candles (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001348, 97413, 0, 0, 0, 1, 1, -9678.980, -1964.870, 99.366, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Human Enchanting Table (Red Mage Tower; observed position; facing estimated: turned to the room like the rest of the video''s table row)'),
(9001349, 97417, 0, 0, 0, 1, 1, -9668.090, -1963.770, 99.388, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Human Enchanting Jar 8 (Red Mage Tower; observed position; facing estimated: turned to the room like the rest of the video''s table row)'),
(9001350, 97407, 0, 0, 0, 1, 1, -9661.040, -1942.540, 99.438, 4.173, 0, 0, 0.870034, -0.492992, 120, 100, 1, '', 0, 'Glowing Blue Rune (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001351, 97406, 0, 0, 0, 1, 1, -9654.805, -1947.449, 99.476, 3.786, 0, 0, 0.948503, -0.316768, 120, 100, 1, '', 0, 'Human Inscription Desk (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001352, 97404, 0, 0, 0, 1, 1, -9658.020, -1942.824, 99.479, 4.047, 0, 0, 0.899273, -0.437387, 120, 100, 1, '', 0, 'Human Townhall Commander Shelf 3 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001353, 97444, 0, 0, 0, 1, 1, -9686.100, -1976.740, 99.485, 0.854, 0, 0, 0.413949, 0.910300, 120, 100, 1, '', 0, 'Human Mage Dummy (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001354, 97439, 0, 0, 0, 1, 1, -9655.781, -1944.297, 99.487, 3.926, 0, 0, 0.923977, -0.382448, 120, 100, 1, '', 0, 'Human Bookshelf 6 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001355, 97435, 0, 0, 0, 1, 1, -9674.000, -1942.350, 99.488, 4.853, 0, 0, 0.655651, -0.755064, 120, 100, 1, '', 0, 'Human Bookshelf Large 3 (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001356, 97421, 0, 0, 0, 1, 1, -9675.870, -1964.700, 100.88, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Dwarf Book Open Lecturn (Red Mage Tower; observed x/y, z raised from 100.553 onto the estimated second table; facing estimated: turned to the room like the rest of the video''s table row)'),
(9001357, 97405, 0, 0, 0, 1, 1, -9656.550, -1949.330, 100.711, 3.761, 0, 0, 0.952353, -0.304997, 120, 100, 1, '', 0, 'Vampire Magic Quill Floating (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001358, 97425, 0, 0, 0, 1, 1, -9674.700, -1963.260, 100.88, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Human Enchanting Jars 3 (Red Mage Tower; observed x/y, z raised from 100.760 onto the estimated second table; facing estimated: turned to the room like the rest of the video''s table row)'),
(9001359, 97416, 0, 0, 0, 1, 1, -9661.520, -1962.230, 100.824, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Human Enchanting Chest (Red Mage Tower; observed position; facing estimated: turned to the room like the rest of the video''s table row)'),
(9001360, 97423, 0, 0, 0, 1, 1, -9679.190, -1964.440, 100.842, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Inscription Bookstack 2 (Red Mage Tower; observed position; facing estimated: turned to the room like the rest of the video''s table row)'),
(9001361, 97422, 0, 0, 0, 1, 1, -9678.120, -1965.200, 100.933, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Scattered Papers (Red Mage Tower; observed position; facing estimated: turned to the room like the rest of the video''s table row)'),
(9001362, 97424, 0, 0, 0, 1, 1, -9680.271, -1964.902, 101.163, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Human Enchanting Box (Red Mage Tower; observed position; facing estimated: turned to the room like the rest of the video''s table row)'),
(9001363, 97411, 0, 0, 0, 1, 1, -9655.460, -1973.350, 101.641, 0.876, 0, 0, 0.424129, 0.905602, 120, 100, 1, '', 0, 'Uldum Star Portal (Red Mage Tower; observed position; facing estimated: opening toward the room between its crystals as in the video)'),
(9001364, 97438, 0, 0, 0, 1, 1, -9664.141, -1961.158, 101.763, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Human Enchanting Shelf Floating 1 (Red Mage Tower; observed position; facing estimated: turned to the room like the rest of the video''s table row)'),
(9001365, 97437, 0, 0, 0, 1, 1, -9657.850, -1976.250, 102.106, 2.269, 0, 0, 0.906419, 0.422379, 120, 100, 1, '', 0, 'Ley Crystal (Red Mage Tower; observed position; facing estimated: turned toward the tower centre)'),
(9001366, 97413, 0, 0, 0, 1, 1, -9662.8, -1962.7, 99.39, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Human Enchanting Table (Red Mage Tower, under the Codex of Secrets; spot and facing estimated)'),
(9001367, 195139, 0, 0, 0, 1, 1, -9688.553, -1948.303, 99.486, 5.682, 0, 0, 0.296100, -0.955157, 120, 100, 1, '', 0, 'Portal to Stormwind (Red Mage Tower top floor; observed position; facing estimated: toward the tower centre)'),
(9001368, 254683, 0, 0, 0, 1, 1, -9270.980, -3310.740, 150.929, 0.000, 0, 0, 0.000000, 1.000000, 120, 100, 1, '', 0, 'Eye of Ilgalar (observed position, client SuperTrack 8532, Tower of Ilgalar; facing estimated)'),
(9001369, 97413, 0, 0, 0, 1, 1, -9674.85, -1964.2, 99.37, 4.712, 0, 0, 0.707107, -0.707107, 120, 100, 1, '', 0, 'Human Enchanting Table (Red Mage Tower, under the Lectern and Jars 3 whose observed z float above the floor; spot and facing estimated from the video''s table row)'),
(9001370, 97437, 0, 0, 0, 1, 1, -9653.07, -1970.45, 102.106, 2.626, 0, 0, 0.966927, 0.255055, 120, 100, 1, '', 0, 'Ley Crystal (Red Mage Tower; second crystal of the pair flanking the Uldum portal in the video; spot mirrored from the observed crystal, estimated)'),
(9001371, 97426, 0, 0, 0, 1, 1, -9657.57, -1951.92, 90.69, 3.667, 0, 0, 0.965664, -0.259793, 120, 100, 1, '', 0, 'Stone pedestal under Bust 2 (Red Mage Tower; like the observed pedestal under Bust 1; spot and facing estimated)'),
(9001372, 97426, 0, 0, 0, 1, 1, -9684.834, -1971.438, 90.69, 0.709, 0, 0, 0.347126, 0.937819, 120, 100, 1, '', 0, 'Stone pedestal under Bust 4 (Red Mage Tower; like the observed pedestal under Bust 1; spot and facing estimated)'),
(9001373, 97426, 0, 0, 0, 1, 1, -9660.883, -1974.828, 90.69, 2.192, 0, 0, 0.889429, 0.457074, 120, 100, 1, '', 0, 'Stone pedestal under Bust 3 (Red Mage Tower; like the observed pedestal under Bust 1; spot and facing estimated)');

-- 'Pefectly Good Planks' keeps the title as captured.
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
(254067, 2, 25, 12, 44, 0, 0, 0, 0, 0, 0, 254068, 3, 0, 720, 0, 0, 0, 0, 0, 8, 0, 375250, 100, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '米内维亚的遗产', '在三角塔和湖畔镇寻找大法师米内维亚法杖的线索。', '所以你对她也很感兴趣，是吗？    她在袭击后不久就消失了，有人说她死了，有人说她退休去了艾泽拉斯某个安静的角落，如果那种地方真的存在的话。    我必须知道！她救了我的命，她是我最初想在这里学习的理由……我欠她太多了，但我甚至不知道她发生了什么。我读遍了塔里的每一本书，但都是一样的。    不过你看起来像是喜欢冒险的那种人。也许你能找到我遗漏的东西？只是，拜托，如果你知道什么就告诉我！', '', '与湖畔镇旅店的酒保丹尼尔斯交谈', 991477, 344, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '询问魔网追踪者赫斯特洛', '询问治安官所罗门', '', '', 0),
(254068, 2, 25, 12, 44, 0, 0, 0, 0, 0, 0, 254069, 5, 0, 720, 0, 0, 0, 0, 0, 8, 0, 375250, 100, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '米内维亚的往事', '调查伊尔加拉之塔，寻找大法师米内维亚失踪的线索。', '所以是她派你来追查这件事的，是吗？我真的应该早就想到了。真希望多年前就把真相告诉她，但我从来不知道合适的时机是什么时候。答应我暂时保密，好吗，下次她来访时由我亲口告诉她更好。    大法师米内维亚是我的母亲，我知道她被称为伟大的大法师，但当我还是个孩子时，她跑了，直到那次袭击才再次听到她的消息，即使那时也没有多少时间说话。我恨过她一段时间，但我想她救下亚历克斯是她弥补的方式，你懂吗？很难真的对一个救了我女儿命的人怀恨在心。    此外，我最终确实得知了原因，她有一段黑暗的过去。即使她逃脱了那些，我觉得她从未真正相信自己。可能觉得没有她在身边我更安全……    你可以试着在伊尔加拉之塔周围探索一下，我想她曾待过的那个组织还在那里，所以你可能找到些东西。', '', '离开伊尔加拉之塔', 254969, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '在伊尔加拉之塔搜寻米内维亚的下落', '', '', '', 0),
(254069, 2, 25, 12, 44, 0, 0, 0, 0, 0, 0, 0, 5, 0, 720, 0, 0, 0, 0, 0, 8, 0, 375250, 100, 1397886, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500817, 1, 500818, 1, 500819, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '米内维亚的命运', '调查湖畔镇的墓地。', '……米内维亚？    这个名字我多年没听过了。如果你来这里，看来你对她的情况已经相当了解。    在摩根斯成为伊尔加拉的法师之前，统治这座塔的是一位名叫米内维亚的黑暗魔法学者。她多年前曾在达拉然与法师西奥克里图斯共事，虽然她是我们的敌人，但他谈起她时总是充满钦佩。多年前他终于成功将阿佐拉的智慧带给了她，我们最大的敌人背离了伊尔加拉的道路。    无论她做过什么，我们只寻求启迪，而非复仇，我们所有人都对这个结果感到非常满意。尤其是西奥克里图斯。    不过，西奥克里图斯说过那段过去即使在新的生活中也一直困扰着她。我不知道她后来怎么了，我只希望她最终能与那段过去和解。', '', '向亚历山德里亚·罗文告知你调查的结果', 254971, 0, 0, 0, 1, 0, 0, 0, 354659, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '揭开米内维亚失踪的真相', '', '', '', 0),
(254070, 2, 26, 12, 44, 1, 3, 0, 0, 0, 0, 0, 6, 11000, 12150, 0, 0, 0, 0, 0, 8, 0, 375250, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '失落的秘密', '找回《秘密法典》丢失的一页。', '我是《秘密法典》，我可以帮助你揭开这个世界的真相，直到你明白它的本质。我也是你获取许多被认为是“禁忌”的知识的向导。    啊，但可惜的是，我最近的目标变得有些混乱了。一个寻求我知识的可恶兽人实在太没有耐心，撕掉了我的一页，简直野蛮至极！她完全不配得到我慷慨的馈赠！    她现在在石堡要塞附近的一座塔上研究它，我对其他那些蠢货毫不在意，但我希望她因傲慢而死，最重要的是，找回我丢失的那一页。    我相信你是文明得多的那种人，对吧？', '', '把书页归还给《秘密法典》', 0, 0, 0, 0, 0, 0, 0, 0, 354660, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(254071, 2, 18, 12, 44, 0, 0, 0, 0, 0, 0, 0, 5, 1500, 855, 0, 0, 0, 0, 0, 8, 0, 375250, 100, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '龙巢', '获取一枚原始黑龙蛋', '嗯，既然我在等贾斯珀醒来，不如先做点别的事。    我一直在尝试了解更多关于这片区域黑龙的信息，以及兽人似乎是如何把它们变成盟友的。    他们在森林深处有一个龙巢，用蛋孵化新的雏龙，但看守很严密。如果你能穿过他们，我能从他们最好的蛋中获得最好的信息。', '', '返回赤色法师塔找梅里亚·克拉斯托', 0, 0, 0, 0, 0, 0, 0, 0, 354661, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255111, 2, 16, 11, 44, 0, 0, 0, 0, 0, 0, 255112, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '备选盟友', '代表伊迪莉亚·所罗门女士前往赤色法师塔会见魔网追踪者赫斯特洛。', '如果暴风城不肯派更多援助，那就算了，我们还有别的地方可以求助。    赤色法师塔的法师们一直置身冲突之外，但他们的一位大法师在前段时间的龙袭中保护了湖畔镇。天知道我们现在多需要米内维亚……    嗯，她在那之后不久就消失了，但如果湖畔镇沦陷，下一个就是他们的问题，所以也许有些人会同情我们。我想你愿不愿意去那里跟他们谈谈？我觉得他们对我不会太欢迎。', '', '在赤色法师塔与魔网追踪者赫斯特洛交谈。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255112, 2, 16, 11, 44, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '旧日错误', '带着赫斯特洛的答复返回伊迪莉亚·所罗门女士处。', '不过，我想这个请求是为了整个湖畔镇，而不仅仅是为了她自己……    我们大多数人都不是战斗专精。如果兽人真打上来，我们会通过多里安和赛拉斯的传送门逃走，然后把门关上。亚历克斯最可能帮忙，但她只是个新手。    <赫斯特洛叹息。>    我想米内维亚给镇上的人造成了对我们的偏见。如果士兵们把装备带上来，维里丹可以给它们附魔，而我自己的追踪能探测出兽人是否在进行任何特别危险的仪式。这是我们能提供的最好帮助了。', '', '返回湖畔镇向伊迪莉亚·所罗门女士复命。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255113, 2, 17, 11, 44, 0, 0, 0, 0, 0, 0, 0, 5, 700, 427, 0, 0, 0, 0, 0, 8, 0, 375250, 95, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '适合豺狼人的食物', '为卢卡·廷德尔从赤脊山各处的豺狼人营地收集豺狼人食物补给。', '这些天打猎太危险了，西部荒野运来的谷物也停了。我们湖畔镇一直吃很多鱼，但湖里的鱼不够光靠它生活。    没有食材我就没法给家人做饭，但我有个主意，也许你能帮忙。当地的豺狼人越来越大胆，我说不清他们是和兽人结盟了还是只是不在乎。不管怎样，他们打了不少猎。我打赌他们甚至有多余的可以分给我们，你懂我的意思吧。', '', '返回湖畔镇找卢卡·廷德尔。', 0, 0, 0, 0, 0, 0, 0, 0, 355199, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255114, 2, 25, 18, 44, 0, 2, 0, 0, 0, 0, 0, 5, 700, 427, 0, 0, 0, 0, 0, 8, 0, 375250, 95, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '圣光的祝福', '为诺里斯神父找回泰瑞内尔圣杯。', '愿圣光保佑你，善良的旅行者！    如果你要深入荒野，也许你能以圣光之名帮个小忙？    我们湖畔镇曾经有一件古老的遗物，泰瑞内尔圣杯。一件美丽的东西，我的描述难以表达它的万分之一。它前一阵子被暗影隐藏豺狼人氏族夺走了，我们没有能力夺回它。    但如果你在旅途中碰巧遇到它，我恳求你把它带回我的礼拜堂。', '', '返回湖畔镇找诺里斯神父。', 0, 0, 0, 0, 0, 0, 0, 0, 355200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255116, 2, 19, 13, 44, 0, 0, 0, 0, 0, 0, 0, 5, 700, 427, 0, 0, 0, 0, 0, 8, 0, 375250, 95, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '夺回奥瑟尔磨坊', '击杀奥瑟尔磨坊周围的大塔兰图拉蜘蛛，帮助湖畔镇人民夺回该区域。', '由于运进来的货物很少，我们几乎每种补给都不够用。很多问题没有立刻的解决方案，但湖畔镇一直有一个很好的伐木场，直到石堡沦陷。它离黑石很近很危险，但他们实际上也没有占领它。    报告说奥瑟尔磨坊到处都是蜘蛛。你觉得你能清掉它们吗？', '', '返回湖畔镇向伊迪莉娅·所罗门女士复命。', 505, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0),
(255117, 2, 19, 13, 44, 0, 0, 0, 0, 0, 0, 0, 5, 700, 427, 0, 0, 0, 0, 0, 8, 0, 375250, 95, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '完好的木板', '为工头奥斯洛从奥瑟尔磨坊收集木板。', '目前我们还有一些木材可以周转，但算上码头维修和桥梁，我看我们的储备撑不了多久。    我听说有关于夺回奥瑟尔磨坊的讨论，但那现在帮不了我多少。要我说，那个想法本来就是疯狂的，那里离兽人的要塞太近了。    不过，当时撤离得很匆忙。我打赌那里肯定有很多好木板就那么放着。你给我带些来我付好价钱，比你在暴风城卖掉能赚的多。', '', '返回湖畔镇找工头奥斯洛。', 0, 0, 0, 0, 0, 0, 0, 0, 355201, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, '', '', '', '', 0)
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

DELETE FROM `quest_template_addon` WHERE `ID` IN (254067,254068,254069,254070,254071,255111,255112,255113,255114,255116,255117);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`,
  `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`,
  `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`,
  `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(254067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254068, 0, 0, 0, 254067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254069, 0, 0, 0, 254068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255112, 0, 0, 0, 255111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- The Servant of Azora's reward text for 254068 as shown in Roman Murashoff's Ascension Redridge video BPZDdztVTZU
-- at 11:51; the questcache does not carry reward texts.
DELETE FROM `quest_offer_reward` WHERE `ID` = 254068;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`,
  `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(254068, 0, 0, 0, 0, 0, 0, 0, 0, '在这外面看到一张友善的面孔真是太好了。我想你在塔里的时候没有看到另一个侏儒吧，有吗？没有？$B$B也许那真的不是摩根斯找到了把他隐藏起来不让人发现的办法……$B$B我确信我会找到他的，毕竟阿佐拉的力量站在我这边。既然你省了我侦察这个地方的麻烦，也许我可以帮你做点什么作为回报？$B$B我总是乐于与像你这样的旅行者分享阿佐拉的智慧。', 0);

-- Starters of 254067-254069 are estimated from the speaker of each captured Details text: Alexandria Rowen,
-- Barkeep Daniels and the Servant of Azora.
DELETE FROM `creature_queststarter` WHERE `quest` IN (254067,254068,254069,254070,254071,255111,255112,255113,255114,255116,255117);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(255206, 255111),
(991477, 255112),
(255204, 255113),
(255207, 255114),
(255206, 255116),
(341, 255117),
(991474, 254071),
(991476, 254067),
(346, 254068),
(254969, 254069);

DELETE FROM `creature_questender` WHERE `quest` IN (254067,254068,254069,254070,254071,255111,255112,255113,255114,255116,255117);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(991477, 255111),
(255206, 255112),
(255204, 255113),
(255207, 255114),
(255206, 255116),
(341, 255117),
(346, 254067),
(254969, 254068),
(991476, 254069),
(991474, 254071);

DELETE FROM `gameobject_queststarter` WHERE `quest` = 254070;
INSERT INTO `gameobject_queststarter` (`id`, `quest`) VALUES
(518612, 254070);

DELETE FROM `gameobject_questender` WHERE `quest` = 254070;
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES
(518612, 254070);

-- Minervia chain credits. No capture describes the live scripts, so every trigger below is estimated; the credit
-- entries, items and points are the captured ones.
-- 254067: talking to Ley-Tracker Hestlor and Magistrate Solomon while on the quest credits them.
-- 254068: gazing into the Eye of Ilgalar (gossip 60064) at the search point (client SuperTrack 8532) credits the Servant
-- of Azora.
-- 254069: the Gravestone's gossip 60071 credits Archmage Minervia, gives her staff and shows her for one minute.
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 344 AND `AIName` = '';
DELETE FROM `smart_scripts` WHERE (`entryorguid` IN (991477,344) AND `source_type` = 0)
  OR (`entryorguid` = -9950431 AND `source_type` = 0) OR (`entryorguid` IN (254684,254683) AND `source_type` = 1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
  `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`,
  `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`,
  `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`,
  `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(991477, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 991477, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ley-Tracker Hestlor - On Gossip Hello - Quest Credit ''Minervia''s Legacy'''),
(344, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 344, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Magistrate Solomon - On Gossip Hello - Quest Credit ''Minervia''s Legacy'''),
(254683, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 254969, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Eye of Ilgalar - On Gossip Hello - Quest Credit ''Minervia''s Past'''),
(254684, 1, 0, 1, 62, 0, 100, 0, 60071, 0, 0, 0, 0, 0, 33, 254971, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravestone - On Gossip Option 0 Selected - Quest Credit ''Minervia''s Fate'''),
(254684, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 56, 354659, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravestone - On Link - Add Item ''Archmage Minervia''s Staff'''),
(254684, 1, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 254971, 3, 60000, 0, 0, 0, 8, 0, 0, 0, 0, -9103.0, -2410.0, 120.21, 3.9, 'Gravestone - On Link - Summon Creature ''Archmage Minervia'''),
(254684, 1, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravestone - On Link - Close Gossip');

-- The Eye of Ilgalar's text: Ascension npccache.wdb capture (conquest-of-azeroth, 2026-09-04..08); the capture's
-- probability 0 is written as 1 like the other Ascension texts here.
DELETE FROM `gossip_menu` WHERE `MenuID` = 60064;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(60064, 60064);

DELETE FROM `npc_text` WHERE `ID` = 60064;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `Probability0`) VALUES
(60064, '<宝珠散发着奥术能量的嗡鸣声。>', '<宝珠散发着奥术能量的嗡鸣声。>', 1);

-- The option text is estimated from the captured objective 'Investigate the grave at Lakeshire.'
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 60071;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`,
  `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`,
  `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(60071, 0, 0, '调查坟墓。', 0, 1, 1, 0, 0, 0, 0, '', 0, 0);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 22 AND `SourceEntry` IN (991477,344,-9950431)
  AND `SourceId` = 0)
  OR (`SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 254683 AND `SourceId` = 1)
  OR (`SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 60071);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`,
  `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,
  `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 991477, 0, 0, 9, 0, 254067, 0, 0, 0, 0, 0, '', 'Ley-Tracker Hestlor - credit only on ''Minervia''s Legacy'''),
(22, 1, 344, 0, 0, 9, 0, 254067, 0, 0, 0, 0, 0, '', 'Magistrate Solomon - credit only on ''Minervia''s Legacy'''),
(22, 1, 254683, 1, 0, 9, 0, 254068, 0, 0, 0, 0, 0, '', 'Eye of Ilgalar - credit only on ''Minervia''s Past'''),
(15, 60071, 0, 0, 0, 9, 0, 254069, 0, 0, 0, 0, 0, '', 'Gravestone - option only on ''Minervia''s Fate'''),
(15, 60071, 0, 0, 0, 2, 0, 354659, 1, 0, 1, 0, 0, '', 'Gravestone - option only without ''Archmage Minervia''s Staff''');

-- Redridge quest levels and requirements: Ascension questcache.wdb captures 2026-09-07..08.
UPDATE `quest_template` SET `QuestLevel` = -1 WHERE `ID` IN (19,20,34,89,91,92,94,115,116,118,119,120,121,122,124,126,
  127,128,129,130,131,143,150,178,180,244,246,3741);
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `ID` IN (89,92,125,126,178);
UPDATE `quest_template` SET `QuestLevel` = 11 WHERE `ID` = 125;
UPDATE `quest_template` SET `SuggestedGroupNum` = 3 WHERE `ID` = 169;
UPDATE `quest_template` SET `QuestInfoID` = 1 WHERE `ID` IN (248,249);

-- Redridge creature cache values: Ascension creaturecache.wdb captures up to 2026-09-05.
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` IN (61,947,1106,14269,14270,14271,14272,14273);
UPDATE `creature_template` SET `subname` = '采矿和锻造补给' WHERE `entry` = 790;
UPDATE `creature_template` SET `subname` = '鱼饵和渔具供应商' WHERE `entry` = 1678;
UPDATE `creature_template` SET `subname` = '毒药供应商' WHERE `entry` = 3090;
UPDATE `creature_template` SET `subname` = '食物和饮料' WHERE `entry` = 5620;

-- Redridge creature levels: db.exil.es dump 2026-10-04, creature.
UPDATE `creature_template` SET `minlevel` = 23, `maxlevel` = 24 WHERE `entry` IN (579,615);
UPDATE `creature_template` SET `minlevel` = 22, `maxlevel` = 23 WHERE `entry` = 4463;

-- Lakeshire vendor goods missing here: db.exil.es dump 2026-10-04, npc_vendor.
DELETE FROM `npc_vendor` WHERE (`entry`=6727 AND `item` IN (6948, 21829, 21833, 772061, 772062, 772063, 772064, 772065, 772066, 772067, 772068, 772069, 772070, 772071, 772072, 772073, 772074, 772075, 772076)) OR
  (`entry`=5620 AND `item` IN (772061, 772062, 772063, 772064, 772065, 772066, 772067, 772068, 772069, 772070, 772071, 772072, 772073, 772074, 772075, 772076)) OR
  (`entry`=777 AND `item` IN (2692, 3713, 6954)) OR
  (`entry`=3085 AND `item` IN (2692, 3713)) OR
  (`entry`=789 AND `item` IN (421276, 3595665)) OR
  (`entry`=1678 AND `item` IN (1061923));
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(6727, 0, 6948, 0, 0, 0, 0),
(6727, 0, 21829, 0, 0, 0, 0),
(6727, 0, 21833, 0, 0, 0, 0),
(6727, 0, 772061, 0, 0, 0, 0),
(6727, 0, 772062, 0, 0, 0, 0),
(6727, 0, 772063, 0, 0, 0, 0),
(6727, 0, 772064, 0, 0, 0, 0),
(6727, 0, 772065, 0, 0, 0, 0),
(6727, 0, 772066, 0, 0, 0, 0),
(6727, 0, 772067, 0, 0, 0, 0),
(6727, 0, 772068, 0, 0, 0, 0),
(6727, 0, 772069, 0, 0, 0, 0),
(6727, 0, 772070, 0, 0, 0, 0),
(6727, 0, 772071, 0, 0, 0, 0),
(6727, 0, 772072, 0, 0, 0, 0),
(6727, 0, 772073, 0, 0, 0, 0),
(6727, 0, 772074, 0, 0, 0, 0),
(6727, 0, 772075, 0, 0, 0, 0),
(6727, 0, 772076, 0, 0, 0, 0),
(5620, 0, 772061, 0, 0, 0, 0),
(5620, 0, 772062, 0, 0, 0, 0),
(5620, 0, 772063, 0, 0, 0, 0),
(5620, 0, 772064, 0, 0, 0, 0),
(5620, 0, 772065, 0, 0, 0, 0),
(5620, 0, 772066, 0, 0, 0, 0),
(5620, 0, 772067, 0, 0, 0, 0),
(5620, 0, 772068, 0, 0, 0, 0),
(5620, 0, 772069, 0, 0, 0, 0),
(5620, 0, 772070, 0, 0, 0, 0),
(5620, 0, 772071, 0, 0, 0, 0),
(5620, 0, 772072, 0, 0, 0, 0),
(5620, 0, 772073, 0, 0, 0, 0),
(5620, 0, 772074, 0, 0, 0, 0),
(5620, 0, 772075, 0, 0, 0, 0),
(5620, 0, 772076, 0, 0, 0, 0),
(777, 0, 2692, 0, 0, 0, 0),
(777, 0, 3713, 0, 0, 0, 0),
(777, 0, 6954, 0, 0, 0, 0),
(3085, 0, 2692, 0, 0, 0, 0),
(3085, 0, 3713, 0, 0, 0, 0),
(789, 0, 421276, 0, 0, 0, 0),
(789, 0, 3595665, 0, 0, 0, 0),
(1678, 0, 1061923, 0, 0, 0, 0);
