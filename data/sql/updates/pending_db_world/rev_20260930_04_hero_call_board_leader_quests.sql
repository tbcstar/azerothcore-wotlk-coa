-- Weekly leader quests of the Call Boards on Darkmoon - Season 10 Wildcard, as that realm's quest cache holds them:
-- the group leader who defeats the final boss of any dungeon (Lead a Dungeon!, 5000 Runes of Ascension) or raid
-- (Lead a Raid!, 10000) earns the credit. The Mythic+ variant is left out because this server has no Mythic+.
-- The boards offer them only on a Wildcard realm, whose worldserver starts the season event (194).
INSERT INTO `creature_template` (`entry`, `name`, `faction`, `unit_class`, `type`)
VALUES
(101000, '团队领袖成就', 35, 1, 10),
(101001, '地下城领袖成就', 35, 1, 10)
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `faction` = VALUES(`faction`), `unit_class` = VALUES(`unit_class`),
`type` = VALUES(`type`);
INSERT INTO `quest_template` (`ID`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `RewardHonor`, `Flags`,
`RewardItem1`, `RewardAmount1`, `RewardArenaPoints`, `LogTitle`, `LogDescription`, `QuestDescription`,
`AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGoCount1`, `ObjectiveText1`)
VALUES
(100077, 60, 60, -380, 0, 0, 32832, 375250, 10000, 0, '领导团队！',
'领导任意团队击败最终团队首领。',
'公告板正在寻找指挥官。保持团队领袖身份并击败任意团队的最终首领，'
'然后返回公告板领取奖励。',
'', '返回公告板。', 101000, 1, '领导任意团队击败最终团队首领'),
(100078, 60, 60, -380, 0, 0, 32768, 375250, 5000, 0, '领导地下城！',
'领导任意非史诗+地下城队伍击败最终地下城首领。',
'公告板正在寻找指挥官。保持队伍领袖身份并击败任意非史诗+地下城的最终首领，'
'然后返回公告板领取奖励。',
'', '返回公告板。', 101001, 1, '领导任意非史诗+地下城队伍击败最终地下城首领')
ON DUPLICATE KEY UPDATE `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`),
`QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `RewardHonor` = VALUES(`RewardHonor`),
`Flags` = VALUES(`Flags`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`),
`RewardArenaPoints` = VALUES(`RewardArenaPoints`), `LogTitle` = VALUES(`LogTitle`),
`LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`),
`AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`),
`RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`),
`ObjectiveText1` = VALUES(`ObjectiveText1`);
DELETE FROM `quest_template_addon` WHERE `ID` IN (100077, 100078);
INSERT INTO `quest_template_addon` (`ID`, `SpecialFlags`) VALUES
(100077, 1),
(100078, 1);
DELETE FROM `gameobject_queststarter` WHERE `quest` IN (100077, 100078);
DELETE FROM `game_event_gameobject_quest` WHERE `quest` IN (100077, 100078);
INSERT INTO `game_event_gameobject_quest` (`eventEntry`, `id`, `quest`) VALUES
(194, 402000, 100077),
(194, 402000, 100078),
(194, 402001, 100077),
(194, 402001, 100078);
DELETE FROM `gameobject_questender` WHERE `quest` IN (100077, 100078);
INSERT INTO `gameobject_questender` (`id`, `quest`) VALUES
(402000, 100077),
(402000, 100078),
(402001, 100077),
(402001, 100078);
