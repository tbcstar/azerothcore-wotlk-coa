-- Teri Glozilk, the War Games organizer, with her two capital placements.
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `faction`, `npcflag`,
`unit_class`, `type`, `ScriptName`)
VALUES
(9990001, '泰瑞·格洛兹克', '战争游戏', 'Speak', 1, 1, 35, 1, 1, 7, 'npc_coa_teri_glozilk')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `IconName` = VALUES(`IconName`),
`minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `faction` = VALUES(`faction`),
`npcflag` = VALUES(`npcflag`), `unit_class` = VALUES(`unit_class`), `type` = VALUES(`type`),
`ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` = 9990001;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(9990001, 0, 7054, 1, 1);

DELETE FROM `npc_text` WHERE `ID` IN (900032, 900033);
INSERT INTO `npc_text` (`ID`, `text0_0`, `Probability0`) VALUES
(900032, '一个对手向你的队伍发起了战争游戏挑战。请查看下方的挑战。', 1),
(900033, '有账要算吗？让我们给你一个合适的战场！选择你想战斗的地方，并告诉我你要挑战谁。一旦他们接受，我会把双方都送进去。你带对手来，我来安排比赛。', 1);

DELETE FROM `creature` WHERE `guid` IN (7905208, 7905209);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `curhealth`, `curmana`, `MovementType`, `Comment`) VALUES
(7905208, 9990001, 1, 1, 1, 1505, -4424, 22.8431, 1.57, 300, 0, 42, 0, 0, '泰瑞·格洛兹克 - 奥格瑞玛'),
(7905209, 9990001, 0, 1, 1, -8809.6, 619.522, 94.979, 2.12171, 300, 0, 42, 0, 0, '泰瑞·格洛兹克 - 暴风城');
