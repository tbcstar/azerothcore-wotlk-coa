-- CoA Barrens: Sakari's cure continues past "Avianna's Rose" with "The Last Piece" (254014) and "Reversion" (254015).
-- Quest values and texts: CoA client captures 2026-09-04 (AscensionDB d6494ceb3150) and
-- questcache-dawnrise-2026-09-01c. Templates: WDB captures; Erethina's level 12 from Questie-X-AscensionDB.
-- Sakari stands on the client turn-in marker (QuestSuperTrack 8993/8994 -> SuperTrack 3362), Erethina at her Questie
-- point, the crystal at the addon observation matching SuperTrack 3567. Reversion's credit is given when Sakari
-- starts the cure; the archives hold no script for it. Maintainer approved the archive values (#13170).

INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `family`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `RegenHealth`, `flags_extra`, `KillCredit1`, `ScriptName`)
VALUES
(254014, '萨卡里', NULL, 0, 20, 20, 0, 126, 2, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, 'SmartAI', 0, 1.25, 1, 1, 1, 1, 0, 0, ''),
(254016, '埃瑞希娜女王', NULL, 0, 12, 12, 0, 35, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 0, 7, 0, 0, '', 0, 6, 3, 1, 1, 1, 0, 0, '')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `family` = VALUES(`family`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `DamageModifier` = VALUES(`DamageModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `KillCredit1` = VALUES(`KillCredit1`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (254014, 254016);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(254014, 0, 254003, 1, 1),
(254016, 0, 10873, 1, 1);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 254014 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(254014, 0, 0, 0, 19, 0, 100, 0, 254015, 0, 0, 0, 0, 0, 33, 254016, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sakari - On Quest ''逆转'' Accepted - Quest Credit ''已观察逆转过程''');

INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `AIName`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`)
VALUES
(254002, 3, 2978, '欧鲁盖水晶', '', '', 1, '', 43, 254002, 0, 1, 0, 0, 0, 0, 254014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `AIName` = VALUES(`AIName`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`);

DELETE FROM `gameobject_loot_template` WHERE `Entry` = 254002;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(254002, 254008, 0, 100, 1, 1, 0, 1, 1, 'Ouru''gai Crystal - Ouru''Gai Crystal');

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` = 254002;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(254002, 0, 254008);

UPDATE `quest_template` SET `RewardNextQuest` = 254014 WHERE `ID` = 254013;

INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoneyDifficulty`, `Flags`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionID2`, `RewardFactionValue2`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGoCount1`, `RequiredItemId1`, `RequiredItemCount1`, `ObjectiveText1`)
VALUES
(254014, 2, 10, 8, 17, 254015, 5, 67, 8, 1397885, 1, 0, 0, 76, 5, 530, 5, '最后一块', '在贫瘠之地找到欧鲁盖水晶。', '说实话，我也不确定那些传说是真是假，但故事总得有个源头；如果这朵花真有强力的解咒之力，那一切就说得通了。不过要是改用炼金的手段，也许能把它稀释，做出好几份解药——虽然也不算多。这朵花只有一粒种子，可如果能想办法让它长出更多……啊，我扯远了。我们得先确定这个法子真管用。你都已经陪我走到这一步了，那就去把鹰身人说的那块水晶取来，完工后在贫瘠之地与我会合；我相信可以用恶魔之血，让它附着在我们体内的恶魔之血上，把它中和掉。', '', '在贫瘠之地与萨卡里交谈', 0, 0, 254008, 1, ''),
(254015, 2, 10, 8, 17, 0, 8, 67, 8, 254010, 1, 1397886, 1, 76, 5, 530, 5, '逆转', '观察萨卡里配制解药。', '好了，我想我已经弄清了这些材料的性质，至少够用了。我只有一次机会，所以最好一次成功。没有你，我根本走不到这一步，所以你至少该留下来，亲眼看到它成真。', '', '在贫瘠之地与萨卡里交谈', 254016, 1, 0, 0, '已观察逆转过程')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `Flags` = VALUES(`Flags`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `ObjectiveText1` = VALUES(`ObjectiveText1`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (254014, 254015);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `NextQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(254014, 0, 0, 254013, 254015, 0, 0),
(254015, 0, 0, 254014, 0, 0, 0);

DELETE FROM `creature_queststarter` WHERE `quest` IN (254014, 254015);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(254013, 254014),
(254014, 254015);

DELETE FROM `creature_questender` WHERE `quest` IN (254014, 254015);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(254014, 254014),
(254014, 254015);

DELETE FROM `creature` WHERE `guid` IN (9012570, 9012571);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9012570, 254014, 1, 0, 0, 1, 1, 0, 920.448, -3705.25, 27.262, 1.09, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sakari: SuperTrack 3362, the 254014/254015 turn-in; faces Queen Erethina'),
(9012571, 254016, 1, 0, 0, 1, 1, 0, 922.99, -3700.368, 27.489, 4.23, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Sakari: Questie point of Queen Erethina beside Sakari; faces her');

DELETE FROM `gameobject` WHERE `guid` = 7917228;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7917228, 254002, 1, 0, 0, 1, 1, 253.97, -3132.5, 91.819, 0, 0, 0, 0, 1, 60, 100, 1, '', 'CoA Sakari: addon observation of the Ouru''gai Crystal, SuperTrack 3567 2.3 yd away');
