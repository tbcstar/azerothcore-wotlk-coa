-- Quartermaster Miranda Breechlock (11536) hides her shop until Argent Dawn Commission (5401, 5405 or 5503) is
-- rewarded, and her greeting 4213 never says so (#12928). Without a Commission she now greets with 1153600, which
-- sends the player to Duke Nicholas Zverenhoff; 4213 keeps the opposite conditions so exactly one text matches.
-- The two formulas below are on SUB npc_vendor (db.exil.es dump, 2026-10-04) and sold nowhere here.
DELETE FROM `npc_text` WHERE `ID` = 1153600;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(1153600,
    '你好，$c。我只向持有正式委任状、为银色黎明效力的人供货。$B$B'
    '去礼拜堂那边找尼古拉斯·兹维伦霍夫公爵谈谈。等你拿到银色黎明的委任状，'
    '我的货架就为你敞开。',
    '你好，$c。我只向持有正式委任状、为银色黎明效力的人供货。$B$B'
    '去礼拜堂那边找尼古拉斯·兹维伦霍夫公爵谈谈。等你拿到银色黎明的委任状，'
    '我的货架就为你敞开。',
    0, 0, 1, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` = 3461 AND `TextID` = 1153600;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (3461, 1153600);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 14 AND `SourceGroup` = 3461
    AND `SourceEntry` IN (4213, 1153600);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`,
    `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,
    `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(14, 3461, 1153600, 0, 0, 8, 0, 5401, 0, 0, 1, 0, 0, '', 'Miranda - Commission greeting - no Alliance Commission'),
(14, 3461, 1153600, 0, 0, 8, 0, 5405, 0, 0, 1, 0, 0, '', 'Miranda - Commission greeting - no Horde Commission'),
(14, 3461, 1153600, 0, 0, 8, 0, 5503, 0, 0, 1, 0, 0, '', 'Miranda - Commission greeting - no Commission'),
(14, 3461, 4213, 0, 0, 8, 0, 5401, 0, 0, 0, 0, 0, '', 'Miranda - greeting 4213 - Alliance Commission rewarded'),
(14, 3461, 4213, 0, 1, 8, 0, 5405, 0, 0, 0, 0, 0, '', 'Miranda - greeting 4213 - Horde Commission rewarded'),
(14, 3461, 4213, 0, 2, 8, 0, 5503, 0, 0, 0, 0, 0, '', 'Miranda - greeting 4213 - Commission rewarded');

DELETE FROM `npc_vendor` WHERE `ExtendedCost` = 0
    AND ((`entry` = 11536 AND `item` = 46517) OR (`entry` = 12944 AND `item` = 46519));
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(11536, 0, 46517, 0, 0, 0, 0),
(12944, 0, 46519, 0, 0, 0, 0);
