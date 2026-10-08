-- Malgorm Hollowhoof becomes a fight (npc_coa_malgorm_hollowhoof in src/server/coa/AscensionThreeTotems.cpp) in place
-- of calling the village to arms. Players who ran it on CoA recall a charge at least every 20 seconds: a red line on
-- the floor and the ground quaking under him as he wound up, then a run until he struck a wall that killed the players
-- in his path outright and knocked them back; an enrage at half health for 10 seconds; Thunderclap; and Slam. CoA's
-- Charge 256743-256746 and Enrage 256756 build it, with the low-level creature Thunderclap 8078 every 14-18 s and
-- Slam 11430 (a 2 s stun) every 10-14 s;
-- spell_coa_malgorm_trample makes each trample 256745 lethal. A video of the fight shows him at 874 health at level 7
-- (health modifier 6.38 on the level 7 warrior base of 137). His aggro, kill and death lines are CoA's, as players
-- recorded them; the charge, enrage and low-health lines, the line visual 255356, the Ground Tremor 64228 quake and
-- the 30 yd reach are INFERRED.
-- In the Grimtotem Disguise he stands neutral instead of hostile: his faction is template 1842 (faction 1027, used by
-- no creature), hostile to players, and spell_coa_grimtotem_disguise forces it neutral while the disguise lasts.
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_coa_malgorm_hollowhoof', `faction` = 1842,
    `HealthModifier` = 6.38 WHERE `entry` = 161816;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 161816 AND `source_type` = 0;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (256709, 256710, 256745);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(256709, 'spell_coa_grimtotem_disguise'),
(256710, 'spell_coa_grimtotem_disguise'),
(256745, 'spell_coa_malgorm_trample');

DELETE FROM `creature_text` WHERE `CreatureID` = 161816;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `comment`) VALUES
(161816, 0, 0, '啊……哈！你一定是我女儿的杰作。我就知道她不会袖手旁观。好吧，让我看看你有什么本事。', 14, 100, 'Malgorm - aggro (CoA)'),
(161816, 1, 0, '跪下，就像那些叛徒跪下一样！', 14, 100, 'Malgorm - charge'),
(161816, 2, 0, '莫瑞加以为钢铁也能把我赶下台。问问她的伴侣结果如何。', 14, 100, 'Malgorm - enrage'),
(161816, 3, 0, '我饶过我女儿一次。我不会饶过你！', 14, 100, 'Malgorm - low health'),
(161816, 4, 0, '我女儿的冠军达不到她的期望。肯定是绝望驱使着她。', 12, 100, 'Malgorm - kills a player (CoA)'),
(161816, 5, 0, '哈……呃……！你会看到的……既然她得逞了……她会向你展示她的真面目……', 12, 100, 'Malgorm - death (CoA)');
