-- Depravity 638403: ProcChance 50 renders "$h" as 50, so the client text read "an 50% chance" (#10530)
DELETE FROM `coa_client_spell_description` WHERE `ID` = 638403;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(638403, '使你的亡灵仆从的近战急速提高 $s1%，并使其近战自动攻击的爆击有 $h% 的几率触发 |cFFFFFFFF骨棒|r，造成其造成伤害的 $s2% 作为暗影伤害。', '');
