-- Ursine Rampage (175034), Change of Heart (175323) and A Tooth for a Song (175324) progress text,
-- from live footage of Jornan Thalor's and Aisling's turn-in windows.
DELETE FROM `quest_request_items` WHERE `ID` IN (175034, 175323, 175324);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175034, 0, 0, '你拿到那些毛皮了吗？', 0),
(175323, 0, 0, '你把心脏带来了吗？要说斯卡德尔什么东西最多，除了那些该死的乌鸦，就数狐狸了。', 0),
(175324, 0, 0, '外面情况如何？东西都备齐了吗？', 0);
