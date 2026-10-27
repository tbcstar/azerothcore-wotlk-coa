-- DB update 2026_08_08_06 -> 2026_08_08_07
--
DELETE FROM `creature_text` WHERE `CreatureID` = 33271 AND `GroupID` IN (9, 10);
DELETE FROM `creature_text` WHERE `CreatureID` = 33488;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(33271, 9, 0, '保护维萨克斯将军的萨隆邪铁屏障闪动着消散了！', 41, 0, 100, 0, 0, 0, 33647, 0, 'General Vezax - EMOTE_BARRIER_FADE'),
(33271, 10, 0, '附近凝聚出一团萨隆邪铁蒸气！', 41, 0, 100, 0, 0, 0, 33587, 0, 'General Vezax - EMOTE_VAPORS');
