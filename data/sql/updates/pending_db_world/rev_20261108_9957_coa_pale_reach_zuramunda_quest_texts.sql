-- Lieutenant Frieren's missing Zuramunda texts, transcribed from the live realm (video HIbr82QgX6w 01:41:13-01:41:41):
-- the turn-in text of Fangs of Zuramunda (175052) and the progress texts of A Troll's Grim Mercy (175053) and War's
-- True Ambition (175054).
DELETE FROM `quest_offer_reward` WHERE `ID` = 175052;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175052, 0, 0, 0, 0, 0, 0, 0, 0, '是的。<一丝残酷的笑容在中尉脸上扩散开来。>他们的惨叫从这里都听得见。$B$B这些杂种早就该懂得什么叫恐惧了。', 0);

DELETE FROM `quest_request_items` WHERE `ID` IN (175053, 175054);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175053, 0, 0, '人质的安全是我们的首要之务。', 0),
(175054, 0, 0, '你似乎有些不安……你是不是知道些什么我不知道的事？', 0);
