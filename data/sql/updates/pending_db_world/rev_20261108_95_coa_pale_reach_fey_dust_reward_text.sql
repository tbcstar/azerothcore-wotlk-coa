-- Fey Dust (175025) reward text, from live footage of Beldred's turn-in window.
DELETE FROM `quest_offer_reward` WHERE `ID` = 175025;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175025, 0, 0, 0, 0, 0, 0, 0, 0, '<贝尔德雷德把她那鹰钩鼻凑近妖精之尘，深深吸了一口四溢的魔力。有那么一瞬，她的眼珠翻了上去。>$B$B啊！好。我很满意，没错。这些够我用上好几个月了。$B$B可别说贝尔德雷德不守信用！你还在把他们那娇小的尸体上的尘粉抖下来的时候，我就已经动手熬药了。$B$B只差一点工夫就能收尾。', 0);
