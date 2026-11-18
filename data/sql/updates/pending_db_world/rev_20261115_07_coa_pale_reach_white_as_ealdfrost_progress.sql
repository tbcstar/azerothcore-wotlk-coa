-- White as Ealdfrost (175339): Morik's progress text, read from Redthedeer's dialogue window (RIEMlZSgbQw 9:10:20).
DELETE FROM `quest_request_items` WHERE `ID` = 175339;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175339, 1, 0, '你把毛皮带来了？你确定它像我要求的那样毫无瑕疵？', 0);
