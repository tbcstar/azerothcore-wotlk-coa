-- Triple Blessing (175045): Cathal's turn-in text was empty; transcribed from the live realm (video VGzezmaiv8A 21:40).
DELETE FROM `quest_offer_reward` WHERE `ID` = 175045;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175045, 0, 0, 0, 0, 0, 0, 0, 0, '你说艾什琳派你来的？$B$B<卡萨尔嗅了嗅空气，仿佛能凭你身上的气味分辨真话与谎言。>$B$B好吧。从格雷斯基去三姐妹那儿有条路，不过你得仔细听好：', 0);
