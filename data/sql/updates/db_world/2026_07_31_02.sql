-- DB update 2026_07_31_01 -> 2026_07_31_02
--
-- Zeppelin, Alliance - Westguard Keep to Shattered Straits (taxi path 727)
UPDATE `gameobject_template` SET `ScriptName` = 'go_transport_westguard_zeppelin' WHERE (`entry` = 186371);

-- Harrowmeiser - dock announcements, fired from the taxi arrival event 15431
DELETE FROM `creature_text` WHERE (`CreatureID` = 23823);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(23823, 0, 0, '我的飞艇已经靠岸了。尽管我被扣着，而且它状况也很糟，但它两分钟后就会再次离港。', 14, 0, 100, 0, 0, 0, 22336, 0, 'Harrowmeiser - Arrival'),
(23823, 1, 0, '飞艇不到一分钟就要出发环游海湾了！哦，要是有人愿意放我自由，我就在码头上。', 14, 0, 100, 0, 0, 0, 22337, 0, 'Harrowmeiser - Departure');

-- Harrowmeiser and Bombardier Petrov - gossip text picked from the zeppelin's path
-- progress, which also pushes the world state that npc_text 11322 and 11332 substitute
-- into "in less than $3078w minutes"
UPDATE `creature_template` SET `ScriptName` = 'npc_harrowmeiser' WHERE (`entry` = 23823);
UPDATE `creature_template` SET `ScriptName` = 'npc_bombardier_petrov' WHERE (`entry` = 23895);
