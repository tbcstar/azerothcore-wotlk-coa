-- Boring Peace (175343) progress and reward texts, from live footage of Alcarian's turn-in windows
-- (i5vATMYui0I at 1:39:05).
DELETE FROM `quest_request_items` WHERE `ID` = 175343;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175343, 0, 0, '有事吗？需要我帮忙？', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` = 175343;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175343, 0, 0, 0, 0, 0, 0, 0, 0, '啊，我哥哥维洛尔的信。$B$B他到底有没有一天不再坚持？我看难。他现在跟小时候一样固执。$B$B你看，他想让我搬到纳玛丽恩去。去圣所。去学他的样，也学许多其他高等精灵的样。$B$B不过，跟你说实话……我在格雷斯基待得挺自在。那么多安宁，我想会让我闷得慌。$B$B我会写封信把这些都告诉他。', 0);
