-- DB update 2026_07_22_10 -> 2026_07_22_11
-- Wright Williams (28355) banter fix: groups 0-3 had Text/BroadcastTextId scrambled,
-- making the Miles Sidney <-> Wright Williams conversations nonsensical, and group 3
-- pointed at BroadcastTextId 27809 ("Skadi the Ruthless is within range...").
-- Realign with correct broadcast lines so the scripted conversations read coherently.
DELETE FROM `creature_text` WHERE `CreatureID` = 28355 AND `GroupID` IN (0,1,2,3);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(28355,0,0,'长官，客户抱怨我们的致命毒药里少女之哀不够。',12,0,100,0,0,0,27801,0,'Wright Williams'),
(28355,1,0,'长官，我觉得上一份毒药配方里昏睡草的量已经很接近了。',12,0,100,0,0,0,27803,0,'Wright Williams'),
(28355,2,0,'我正在弄，只是在满意之前不想卖。应该不会太久。',12,0,100,0,0,0,27808,0,'Wright Williams'),
(28355,3,0,'长官，客户抱怨我们的麻醉剂里死亡草放得太多。',12,0,100,0,0,0,27802,0,'Wright Williams');
