-- DB update 2026_03_22_05 -> 2026_03_23_00
-- Add creature_text for Stephanie Sindree (31019)
DELETE FROM `creature_text` WHERE `CreatureID` = 31019;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(31019, 0, 0, '那不是我的粮食！', 12, 0, 100, 6, 0, 0, 31838, 0, 'Stephanie Sindree - Stephanie Crowd'),
(31019, 1, 0, '求你了，这不是我的错！要……要是我给你退款，也许你可以去找个治疗者？我不知道你指望我做什么！', 12, 0, 100, 20, 0, 0, 31840, 0, 'Stephanie Sindree - Stephanie Crowd');

-- Add creature_text for Agitated Stratholme Citizen (31126) - Stephanie Crowd
DELETE FROM `creature_text` WHERE `CreatureID` = 31126 AND `GroupID` IN (4, 5, 6);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(31126, 4, 0, '我的妻儿因为你卖给我的毒药病倒在床上！', 12, 0, 100, 5, 0, 0, 31837, 0, 'Agitated Stratholme Citizen - Stephanie Crowd'),
(31126, 5, 0, '别想在这事上蒙混过关！', 12, 0, 100, 25, 0, 0, 31839, 0, 'Agitated Stratholme Citizen - Stephanie Crowd'),
(31126, 6, 0, '那个……不，留着你的脏钱吧！它救不了我的家人！', 12, 0, 100, 5, 0, 0, 31842, 0, 'Agitated Stratholme Citizen - Stephanie Crowd');
