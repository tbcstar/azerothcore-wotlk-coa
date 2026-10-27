-- DB update 2026_06_13_05 -> 2026_06_14_00

-- Add SAI (High General Abbendis)
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 28548;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 28548);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(28548, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Reset - Set Event Phase 1'),
(28548, 0, 1, 0, 1, 1, 100, 0, 15000, 35000, 15000, 35000, 0, 0, 88, 2854800, 2854803, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - OOC - Call Random Actionlist (Phase 1)');

-- Set Action Lists
DELETE FROM `smart_scripts` WHERE (`source_type` = 9) AND (`entryorguid` IN (2854800, 2854801, 2854802, 2854803));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2854800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Set Event Phase 2'),
(2854800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 10, 129476, 28660, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 0 (Citizen of Havenshire)'),
(2854800, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 0'),
(2854800, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Play Emote \'Talk\''),
(2854800, 9, 4, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 10, 129476, 28660, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 1 (Citizen of Havenshire)'),
(2854800, 9, 5, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 28558, 20, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 0 (High Abbot Landgren)'),
(2854800, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Set Event Phase 1'),
(2854800, 9, 7, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, 0, 5, 6, 0, 0, 0, 0, 0, 19, 28558, 20, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Play Emote \'Question\' (High Abbot Landgren)'),
(2854801, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Set Event Phase 2'),
(2854801, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 10, 129478, 28660, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 2 (Citizen of Havenshire)'),
(2854801, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 10, 129489, 28662, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 0 (Citizen of Havenshire)'),
(2854801, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 10, 129474, 28660, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 3 (Citizen of Havenshire)'),
(2854801, 9, 4, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 10, 129490, 28662, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 1 (Citizen of Havenshire)'),
(2854801, 9, 5, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 1'),
(2854801, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Set Event Phase 1'),
(2854801, 9, 7, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 5, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Play Emote \'Question\''),
(2854801, 9, 8, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Play Emote \'Point\''),
(2854802, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Set Event Phase 2'),
(2854802, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 10, 129475, 28660, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 4 (Citizen of Havenshire)'),
(2854802, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 2'),
(2854802, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Set Event Phase 1'),
(2854802, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, 0, 5, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Play Emote \'Question\''),
(2854803, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Set Event Phase 2'),
(2854803, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 10, 129487, 28662, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 2 (Citizen of Havenshire)'),
(2854803, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 10, 129483, 28662, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 3 (Citizen of Havenshire)'),
(2854803, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Say Line 3'),
(2854803, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Set Event Phase 1'),
(2854803, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, 0, 5, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'High General Abbendis - On Script - Play Emote \'Roar\'');

-- Add Creature Texts
DELETE FROM `creature_text` WHERE `CreatureID` IN (28548, 28558, 28660, 28662);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(28548, 0, 0, "心存纯净者将被允许留在新阿瓦隆。被审判官判定为缺少圣光者将被逐出。", 12, 0, 100, 1, 0, 0, 28580, 0, "High General Abbendis"),
(28548, 1, 0, "安静！圣光没有抛弃我们！圣光在纯净者中比以往更强大！", 12, 0, 100, 5, 0, 0, 28575, 0, "High General Abbendis"),
(28548, 2, 0, "我们战斗！我们把它们打回去，就像我们一直以来做的那样！", 12, 0, 100, 5, 0, 0, 28568, 0, "High General Abbendis"),
(28548, 3, 0, "我们要派十字军去夺回本该属于我们的一切！任何挡路的天灾都会被化为灰烬。", 12, 0, 100, 1, 0, 0, 28578, 0, "High General Abbendis"),
(28558, 0, 0, "但你们谁都不可能有任何可担心的，对吧？", 12, 0, 100, 25, 0, 0, 28582, 0, "High Abbot Landgren"),
(28660, 0, 0, "你指望我们住哪儿？新阿瓦隆容不下我们所有人！", 12, 0, 100, 1, 0, 0, 28579, 0, "Citizen of Havenshire"),
(28660, 1, 0, "人群倒吸一口冷气。", 16, 0, 100, 0, 0, 0, 28581, 0, "Citizen of Havenshire"),
(28660, 2, 0, "圣光现在怎么跟你说的，阿比迪斯！", 12, 0, 100, 25, 0, 0, 28570, 0, "Citizen of Havenshire"),
(28660, 3, 0, "我的丈夫和兄弟们也一样！", 12, 0, 100, 1, 0, 0, 28572, 0, "Citizen of Havenshire"),
(28660, 4, 0, "我们该怎么办？我们什么都没了！", 12, 0, 100, 5, 0, 0, 0, 0, "Citizen of Havenshire"),
(28662, 0, 0, "我可没看见圣光出手救我的妻儿！", 12, 0, 100, 1, 0, 0, 28571, 0, "Citizen of Havenshire"),
(28662, 1, 0, "圣光已经抛弃了我们！", 12, 0, 100, 1, 0, 0, 28574, 0, "Citizen of Havenshire"),
(28662, 2, 0, "避风郡失守了！", 12, 0, 100, 1, 0, 0, 28576, 0, "Citizen of Havenshire"),
(28662, 3, 0, "马厩和磨坊都被弃置了！我们的马会怎么样？", 12, 0, 100, 1, 0, 0, 28577, 0, "Citizen of Havenshire");
