-- Sins Beyond Mercy (175200): Confessor Mourn's progress and turn-in texts were empty. The quest was never seen in live
-- footage; these are the realm's English texts as carried by the AscensionES translation addon (HideXs/AscensionES,
-- data/Quests.lua, Q[175200] pEN and cEN), whose English matches footage for the neighbouring quests.
DELETE FROM `quest_request_items` WHERE `ID` = 175200;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175200, 0, 0, '有什么要忏悔的吗？', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` = 175200;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175200, 0, 0, 0, 0, 0, 0, 0, 0, '圣光的意志已经达成。$B$B忏悔，若出自真心，并不带来慰藉……它带来创伤。而带来创伤的，才能赎罪。$B$B告诉我：你可有什么要忏悔的？', 0);
