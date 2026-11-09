-- The Price on a Head (175038) reward text, from live footage of Randec's turn-in window.
DELETE FROM `quest_offer_reward` WHERE `ID` = 175038;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175038, 0, 0, 0, 0, 0, 0, 0, 0, '你杀了他。该死，你真的把他杀了。我自己都没把握能胜得过他。$B$B但说好的就是说好的，我们说好了赏金平分。$B$B拿着吧，你有资格提前领走属于你的那一半。就我这副样子，光是走到格雷斯基那儿恐怕就得花上几天。', 0);
