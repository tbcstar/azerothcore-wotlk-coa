-- Poor Petunia (175327) progress text, from live footage of Ulira Greyvale's turn-in window.
DELETE FROM `quest_request_items` WHERE `ID` = 175327;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175327, 0, 0, '你找到她了吗？', 0);
