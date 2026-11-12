-- Scaidern Village (175061): Sir Draewyn's progress and turn-in texts were empty; transcribed from the live realm
-- (video i5vATMYui0I 01:38:46). The emote's closing bracket is missing on the realm as well.
DELETE FROM `quest_request_items` WHERE `ID` = 175061;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175061, 0, 0, '那么，斯凯德恩村那边有消息了？说吧。', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` = 175061;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175061, 0, 0, 0, 0, 0, 0, 0, 0, '死了。$B$B可惜那么多人放任自己被这种念头蛊惑。若艾尔迪尔退回森林、停止他们的分裂之争，斯卡德尔德会强大得多。$B$B<德雷温爵士叹了口气。随后，他点头以示认可。>$B这是你的报酬。', 0);
