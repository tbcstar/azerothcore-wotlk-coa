-- Missing texts at the old watchtower, transcribed from the live realm (video HIbr82QgX6w): Sister Sarah's turn-in text
-- for Shelter in the Watchtower (175055, 01:43:34-01:43:48) and Soldier Rulven's progress and turn-in texts for
-- Kharadol Supplies (175058, 01:53:27-01:53:53).
DELETE FROM `quest_offer_reward` WHERE `ID` IN (175055, 175058);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175055, 0, 0, 0, 0, 0, 0, 0, 0, '你也受伤了吗？$B$B<女祭司用满是怜悯的目光将你审视了一遍。随后，她的神情松了下来。>$B$B没有。你一定是大家都在说的那个人。那个救下了这么多条性命的人。$B$B我本想说“愿圣光保佑你”，可我相信它早已保佑了你。而且借着你，也保佑了我们所有人。', 0),
(175058, 0, 0, 0, 0, 0, 0, 0, 0, '武器和弹药我自己来分发。$B$B莎拉修女处理医疗物资比我内行。不过这个你先拿着：迟早你会用得着。你还真是一刻也停不下来，是吧！$B$B别推辞；就凭你带回来的这些东西，我们够治三场战争的伤员了。', 0);

DELETE FROM `quest_request_items` WHERE `ID` = 175058;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175058, 0, 0, '弹药、武器和药品应该都在卡拉多尔桥里面。你都找到了吗？', 0);
