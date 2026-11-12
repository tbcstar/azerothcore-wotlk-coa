-- Gorlin's Scroll (175338): Ergrain Tattersail's progress and turn-in texts as on the live realm (video RIEMlZSgbQw
-- 09:13:31-09:13:57). The scroll icon shows on the last progress line, so the split falls after "Did he?".
DELETE FROM `quest_request_items` WHERE `ID` = 175338;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175338, 0, 0, '那卷东西……$B$B<埃尔格莱因飞快地扫了一眼。>$B$B别告诉我又是那个游手好闲的戈林打发你来的。是他吗？', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` = 175338;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175338, 0, 0, 0, 0, 0, 0, 0, 0, '真是好大的胆子！$B$B他消失几个星期，把自己交给酒瓶，然后像个懦夫一样，托一个信使、还写成字，来向我道歉。$B$B唉，戈林啊。$B$B<埃尔格莱因的双眼像两座炉子般烧起来，可怒气很快耗尽了自己，只余下余烬。>$B$B<她对你笑了笑。>$B$B那……谢谢你吧。当然，这怪不得你。', 0);
