-- Deferred Blessing (175329): Sacristan Tareth's turn-in text was empty; transcribed from the live realm (video
-- RIEMlZSgbQw 06:46:15-06:46:30).
DELETE FROM `quest_offer_reward` WHERE `ID` = 175329;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175329, 0, 0, 0, 0, 0, 0, 0, 0, '啊，一只吊坠。$B$B<塔瑞斯温和地笑了笑。>$B$B这类东西流到圣风来并不稀奇。有人认为，交出一件随身之物，就足以让自己免于那趟旅程。$B$B我仍会为她的灵魂祈祷。也为她母亲的健康祈祷。', 0);
