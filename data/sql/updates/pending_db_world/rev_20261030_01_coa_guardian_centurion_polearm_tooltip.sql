-- AscensionCompat streams coa_client_spell_description rows to the client as
-- SMSG_PATCH_SPELL; the DLL applies the row to the client Spell record. This
-- corrects the polearm line without a client Spell.dbc patch (#10014).
--
-- Centurion Strike 802738's polearm extra hit is a second 802738 damage event
-- and reuses the spell's swipe visual. Only the wording changes here; the
-- mechanic, damage and sword proc 807967 are unchanged.
CREATE TABLE IF NOT EXISTS `coa_client_spell_description` (
  `ID` INT UNSIGNED NOT NULL,
  `Description` TEXT NOT NULL,
  `ToolTip` TEXT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DELETE FROM `coa_client_spell_description` WHERE `ID` = 802738;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`) VALUES
(802738, '刺击一名敌人，造成 $s3% 武器伤害，并根据你的武器附加额外效果。\r\n\r\n|cFFFFFFFF剑：|r 触发 $807967s1 次额外自动攻击。\r\n\r\n|cFFFFFFFF斧：|r 必定暴击，伤害提高 $542238s2%。\r\n\r\n|cFFFFFFFF锤：|r 无视目标 $542265s1% 的护甲。\r\n\r\n|cFFFFFFFF长柄武器：|r 再次横扫目标及其身后的敌人。');
