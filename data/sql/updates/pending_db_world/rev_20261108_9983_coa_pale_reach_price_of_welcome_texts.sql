-- The Price of Welcome (175335): Mindra Roble's progress and turn-in windows were empty. Transcribed from live
-- footage (https://youtu.be/RIEMlZSgbQw?t=23529, 6:32:09-6:32:17), where a dialogue addon shows one paragraph at a
-- time; the progress window is taken to end at "How was the hunt?", before her reaction to the meat.
DELETE FROM `quest_request_items` WHERE `ID` = 175335;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175335, 0, 0, '狩猎如何？', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` = 175335;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175335, 0, 0, 0, 0, 0, 0, 0, 0, '啊！$B$B<明德拉闻了闻肉，翻了个白眼。>$B$B我甚至愿意生吃它。$B$B很好。这让我很满意！你为自己赢得了一份小小的、怯生生的、有条件的欢迎。', 0);
