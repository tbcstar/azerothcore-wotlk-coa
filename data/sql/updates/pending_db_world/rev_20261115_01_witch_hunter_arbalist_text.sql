-- Arbalist (520851): owner ruling O-2 (2026-11-15), the passive grants ranged attack power only.
DELETE FROM `coa_client_spell_description` WHERE `ID` = 520851;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(520851, '|cFF66DDFF30 级被动|r\r\n使你的远程攻击强度提高，数值相当于智力的 $s1%。', '');
