-- DB update 2026_05_17_03 -> 2026_05_17_04
--
-- Griselda Hunderland → Talker: 26043
DELETE FROM `creature_text` WHERE (`CreatureID` = 26043);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(26043, 0, 0, '你好，$c。', 12, 0, 100, 3, 0, 0, 32808, 0, 'Griselda Hunderland'),
(26043, 0, 1, '要是找不到什么，就告诉我，$c。', 12, 0, 100, 3, 0, 0, 32810, 0, 'Griselda Hunderland'),
(26043, 0, 2, 'Greetings.', 12, 0, 100, 3, 0, 0, 32935, 0, 'Griselda Hunderland'),
(26043, 0, 3, '欢迎！', 12, 0, 100, 3, 0, 0, 32807, 0, 'Griselda Hunderland'),
(26043, 0, 4, '你好！请随便看看吧。', 12, 0, 100, 0, 0, 0, 32809, 0, 'Griselda Hunderland - Player In Range'),
(26043, 0, 5, '欢迎。需要我帮你找点什么吗？', 12, 0, 100, 0, 0, 0, 32811, 0, 'Griselda Hunderland - Player In Range'),
(26043, 0, 6, 'Welcome.', 12, 0, 100, 0, 0, 0, 32936, 0, 'Griselda Hunderland - Player In Range');

-- Endora Moorehead → Talker: 29636
DELETE FROM `creature_text` WHERE (`CreatureID` = 29636);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(29636, 0, 0, '你好！请随便看看吧。', 12, 0, 100, 3, 0, 0, 32809, 0, 'Endora Moorehead'),
(29636, 0, 1, '你好，$c。', 12, 0, 100, 3, 0, 0, 32808, 0, 'Endora Moorehead'),
(29636, 0, 2, '欢迎！', 12, 0, 100, 3, 0, 0, 32807, 0, 'Endora Moorehead'),
(29636, 0, 3, '要是找不到什么，就告诉我，$c。', 12, 0, 100, 0, 0, 0, 32810, 0, 'Endora Moorehead - Player In Range'),
(29636, 0, 4, '欢迎。需要我帮你找点什么吗？', 12, 0, 100, 0, 0, 0, 32811, 0, 'Endora Moorehead - Player In Range'),
(29636, 0, 5, 'Greetings.', 12, 0, 100, 0, 0, 0, 32935, 0, 'Endora Moorehead - Player In Range'),
(29636, 0, 6, 'Welcome.', 12, 0, 100, 0, 0, 0, 32936, 0, 'Endora Moorehead - Player In Range');

-- Karandonna → Talker: 28995
DELETE FROM `creature_text` WHERE (`CreatureID` = 28995);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(28995, 0, 0, '欢迎。需要我帮你找点什么吗？', 12, 0, 100, 3, 0, 0, 32811, 0, 'Karandonna'),
(28995, 0, 1, 'Welcome.', 12, 0, 100, 3, 0, 0, 32936, 0, 'Karandonna'),
(28995, 0, 2, '欢迎！', 12, 0, 100, 0, 0, 0, 32807, 0, 'Karandonna - Player In Range'),
(28995, 0, 3, '你好，$c。', 12, 0, 100, 0, 0, 0, 32808, 0, 'Karandonna - Player In Range'),
(28995, 0, 4, '你好！请随便看看吧。', 12, 0, 100, 0, 0, 0, 32809, 0, 'Karandonna - Player In Range'),
(28995, 0, 5, '要是找不到什么，就告诉我，$c。', 12, 0, 100, 0, 0, 0, 32810, 0, 'Karandonna - Player In Range'),
(28995, 0, 6, 'Greetings.', 12, 0, 100, 0, 0, 0, 32935, 0, 'Karandonna - Player In Range');

-- Miles Sidney → Talker: 28355
DELETE FROM `creature_text` WHERE (`CreatureID` = 28355);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
-- GroupID 0 → Script 2834700 id=1 e Script 2834701 id=0
(28355, 0, 0, '我正在弄，只是在满意之前不想卖。应该不会太久。', 12, 0, 100, 0, 0, 0, 27808, 0, 'Wright Williams'),
-- GroupID 1 → Script 2834702 id=0
(28355, 1, 0, '长官，客户抱怨我们的致命毒药里少女之哀不够。', 12, 0, 100, 0, 0, 0, 27803, 0, 'Wright Williams'),
-- GroupID 2 → Script 2834700 id=1 e Script 2834702 id=0
(28355, 2, 0, '长官，我觉得上一份毒药配方里昏睡草的量已经很接近了。', 12, 0, 100, 0, 0, 0, 27802, 0, 'Wright Williams'),
-- GroupID 3 → Script 2834703 id=0
(28355, 3, 0, '长官，客户抱怨我们的麻醉剂里死亡草放得太多。', 12, 0, 100, 0, 0, 0, 27809, 0, 'Wright Williams'),
(28355, 5, 0, 'Greetings.', 12, 7, 100, 3, 0, 0, 43337, 0, 'Miles Sidney'),
(28355, 5, 1, '你好，$c。', 12, 7, 100, 3, 0, 0, 43330, 0, 'Miles Sidney'),
(28355, 5, 2, '你好！请随便看看吧。', 12, 7, 100, 3, 0, 0, 43333, 0, 'Miles Sidney'),
(28355, 5, 3, '要是找不到什么，就告诉我，$c。', 12, 7, 100, 3, 0, 0, 43335, 0, 'Miles Sidney'),
(28355, 5, 4, '欢迎。需要我帮你找点什么吗？', 12, 7, 100, 3, 0, 0, 43336, 0, 'Miles Sidney');
