-- DB update 2026_07_14_01 -> 2026_07_14_02
-- -------------------------------------------
-- Acherus: The Ebon Hold (Eastern Plaguelands, map 0)
-- Ebon Hold Re-haul Part 3: Lord Thorval (Walking Lecture)
-- NPC Updates, waypoints, etc
-- -------------------------------------------
-- Lord Thorval (Entry 29196, GUID 125712)
UPDATE `creature` SET `position_x`= 2527.7344, `position_y`= -5549.2075, `position_z`= 377.18475, `orientation`= 3.735, `wander_distance`= 0, `MovementType`= 2 WHERE `guid`= 125712;

DELETE FROM `creature_addon` WHERE `guid`= 125712;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(125712, 1257120, 0, 0, 1, 0, 0, NULL);
-- Waypoints (22 min between lectures/walking cycle)
DELETE FROM `waypoint_data` WHERE `id`= 1257120;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `velocity`, `delay`, `smoothTransition`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(1257120, 1, 2527.7344, -5549.2075, 377.18475, 3.735, 0, 1320000, 0, 0, 0, 100, 0),
(1257120, 2, 2523.0664, -5544.4194, 377.22162, 4.433136, 0, 8000, 0, 0, 0, 100, 0),
(1257120, 3, 2530.72, -5555.91, 377.13217, 3.263766, 0, 6500, 0, 0, 0, 100, 0),
(1257120, 4, 2530.4983, -5555.5771, 377.135, 3.263766, 0, 8500, 0, 0, 0, 100, 0),
(1257120, 5, 2523.0664, -5544.4194, 377.22162, 4.433136, 0, 6400, 0, 0, 0, 100, 0),
(1257120, 6, 2523.2881, -5544.7523, 377.219, 4.433136, 0, 8500, 0, 0, 0, 100, 0),
(1257120, 7, 2530.72, -5555.91, 377.13217, NULL, 0, 0, 0, 0, 0, 100, 0),
(1257120, 8, 2523.0664, -5544.4194, 377.22162, NULL, 0, 0, 0, 0, 0, 100, 0),
(1257120, 9, 2530.72, -5555.91, 377.13217, NULL, 0, 0, 0, 0, 0, 100, 0),
(1257120, 10, 2523.0664, -5544.4194, 377.22162, 4.433136, 0, 10000, 0, 0, 0, 100, 0);
-- Speech
DELETE FROM `creature_text` WHERE (`CreatureID` = 29196) AND (`GroupID` IN (0, 1, 2, 3, 4, 5, 6, 7, 8));
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(29196, 0, 0, '作为鲜血的门徒，你们要努力掌握敌人最根本的生命力。', 12, 0, 100, 1, 0, 0, 29867, 0, 'Lord Thorval Lecture 1'),
(29196, 1, 0, '无论是刀锋还是咒语，鲜血滋养我们的攻击，削弱我们的敌人。', 12, 0, 100, 1, 0, 0, 29868, 0, 'Lord Thorval Lecture 2'),
(29196, 2, 0, '真正的大师懂得让鲜血不只服务于战斗中的力量。', 12, 0, 100, 1, 0, 0, 29869, 0, 'Lord Thorval Lecture 3'),
(29196, 3, 0, '从我们的敌人身上——无论是活着的还是倒下的——抽取能量，让我们得以坚持下去，而那些弱者早已力竭倒下。', 12, 0, 100, 1, 0, 0, 29870, 0, 'Lord Thorval Lecture 4'),
(29196, 4, 0, '而每一个倒下的敌人，被吸干夺走的能量，只会进一步助长我们的攻势。', 12, 0, 100, 1, 0, 0, 29871, 0, 'Lord Thorval Lecture 5'),
(29196, 5, 0, '作为鲜血的主宰，我们懂得无尽的战斗……', 12, 0, 100, 1, 0, 0, 29872, 0, 'Lord Thorval Lecture 6'),
(29196, 6, 0, '我们懂得永不消解的饥饿……', 12, 0, 100, 1, 0, 0, 29873, 0, 'Lord Thorval Lecture 7'),
(29196, 7, 0, '我们懂得永不屈服的力量……', 12, 0, 100, 1, 0, 0, 29874, 0, 'Lord Thorval Lecture 8'),
(29196, 8, 0, '作为鲜血的主宰，我们就是生死的主宰。在我们面前，就连希望也会被抽干、失去生气。', 12, 0, 100, 1, 0, 0, 29875, 0, 'Lord Thorval Lecture 9');
-- SAI to talk on waypoint reached
DELETE FROM `smart_scripts` WHERE (`entryorguid`= 29196 AND `source_type`= 0) OR (`entryorguid`= 2919600 AND `source_type`= 9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(29196, 0, 0, 0, 108, 0, 100, 0, 2, 1257120, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Thorval - On Waypoint 2 Reached - Say Line 0'),
(29196, 0, 1, 0, 108, 0, 100, 0, 3, 1257120, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Thorval - On Waypoint 3 Reached - Say Line 1'),
(29196, 0, 2, 0, 108, 0, 100, 0, 4, 1257120, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Thorval - On Waypoint 4 Reached - Say Line 2'),
(29196, 0, 3, 0, 108, 0, 100, 0, 5, 1257120, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Thorval - On Waypoint 5 Reached - Say Line 3'),
(29196, 0, 4, 0, 108, 0, 100, 0, 6, 1257120, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Thorval - On Waypoint 6 Reached - Say Line 4'),
(29196, 0, 5, 0, 108, 0, 100, 0, 7, 1257120, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Thorval - On Waypoint 7 Reached - Say Line 5'),
(29196, 0, 6, 0, 108, 0, 100, 0, 8, 1257120, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Thorval - On Waypoint 8 Reached - Say Line 6'),
(29196, 0, 7, 0, 108, 0, 100, 0, 9, 1257120, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Thorval - On Waypoint 9 Reached - Say Line 7'),
(29196, 0, 8, 0, 108, 0, 100, 0, 10, 1257120, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Thorval - On Waypoint 10 Reached - Say Line 8');
