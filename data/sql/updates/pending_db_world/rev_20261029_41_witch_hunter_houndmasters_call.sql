-- Houndmaster's Call: changelog entries 71841 and 71842 (2026-08-25) added 90 base damage and raised its ranged attack
-- power scaling to 55%; the client text still shows the old base and 35%.
DELETE FROM `coa_client_spell_description` WHERE `ID` = 802273;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(802273, '命令你的 |cffffffff暗影猎犬|r 跃向一个敌方目标，进行两次打击，造成 ${($706332m2+90)*$<scalingbp>2+$RAP*0.55} 点暗影伤害。', '');
