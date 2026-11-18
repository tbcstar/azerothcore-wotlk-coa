-- Milk for Beer (175337): texts read from Redthedeer's dialogue window (RIEMlZSgbQw 8:17:59-8:18:16);
-- each page becomes a paragraph.
DELETE FROM `quest_request_items` WHERE `ID` = 175337;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175337, 1, 0, '这是给我的？', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` = 175337;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175337, 1, 0, 0, 0, 0, 0, 0, 0, '你说牦牛奶？$B$B<石辫朝那只几乎要溢出来的桶里张望。>$B$B是尼维拉恩达利格尼尔的牦牛产的，没错。$B$B矮人会喝除酒以外的东西，这倒是稀罕事；不过我会给客人倒上一杯，让他们自己判断值不值得买。', 0);
