-- Moss for the Witch (175336): Deirdre's progress and turn-in windows were empty. Transcribed from live footage of
-- the turn-in (https://youtu.be/fppvzzEmIX8?t=1361, 0:22:41-0:22:42).
DELETE FROM `quest_request_items` WHERE `ID` = 175336;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175336, 0, 0, '我的苔藓呢？', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` = 175336;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175336, 0, 0, 0, 0, 0, 0, 0, 0, '很好。这就足够了。$B$B<黛尔德拉打了个响指，苔藓便从你手中神奇地消失了。>$B$B你要知道，这是一种增幅剂，供我们的仪式使用。它能让心灵超脱血肉的重负与拖累，一直升到灵魂之界的穹顶。', 0);
