-- Restless Family Members 1660025: each relative speaks CoA's line when its remains summon it (CoA footage,
-- transcribed by the playtester). SmartAI on JUST_SUMMONED (54), say (12). Cousin Salem is a woman in CoA: the
-- female Spectral Citizen 10486 (grey cloth, translucent), the same Stratholme set as the male 10483 she had.
-- Mother is a ghost in civilian clothes too: the other female Spectral Citizen 10485, replacing the dark-robed
-- 11835 (playtest). CoA's own displays (652013-652015) are not in the client DBCs. Father keeps 3222 at player size:
-- 3222 draws at 1.2x, 11835 drew at 1.25x.
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (161762, 161763, 161764, 161765);
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (161762, 161763, 161764);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(161762, 0, 10485, 1, 1),
(161763, 0, 3222, 0.8333, 1),
(161764, 0, 10486, 1, 1);
DELETE FROM `creature_text` WHERE `CreatureID` IN (161762, 161763, 161764, 161765);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `comment`)
VALUES
(161762, 0, 0, '宅邸已成废墟……被怪物占据……我的孩子们……我的孩子们在哪里？', 12, 100, '母亲 - 被召唤（飞升录像）'),
(161763, 0, 0, '我的庄园……我的遗产……全都成了废墟！为什么我无法逃脱这折磨？', 12, 100, '父亲 - 被召唤（飞升录像）'),
(161764, 0, 0, '我找不到圣光。只有黑暗。只有堕落。而我已没有声音可呼喊……', 12, 100, '表亲塞勒姆 - 被召唤（飞升录像）'),
(161765, 0, 0, '我一直知道……我的侄女会给我们带来毁灭。这一定是她的巫术！', 12, 100, '叔叔阿贝尔 - 被召唤（飞升录像）');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (161762, 161763, 161764, 161765) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(161762, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mother - Just Summoned - Say Line 0'),
(161763, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Father - Just Summoned - Say Line 0'),
(161764, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cousin Salem - Just Summoned - Say Line 0'),
(161765, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Uncle Abel - Just Summoned - Say Line 0');
