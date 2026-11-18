-- No One to Bring Her Flowers (175340) and Hands That Heal (175341): texts read from Redthedeer's dialogue window
-- (RIEMlZSgbQw 9:54:13-9:54:20 and 9:55:28-9:55:44); each page becomes a paragraph.
DELETE FROM `quest_request_items` WHERE `ID` = 175341;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175341, 1, 0, '你把花带来了吗？', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (175340, 175341);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175340, 0, 0, 0, 0, 0, 0, 0, 0, '谢谢你。$B$B<这是他闭上眼前说的唯一一句话。也许是想睡一觉。也许是为了忍住眼泪。>', 0),
(175341, 1, 0, 0, 0, 0, 0, 0, 0, '是的，这就够了。至少短期内，它比我那些祈祷更能派上用场，无论那些祈祷有多诚心。$B$B谢谢你，$C。', 0);
