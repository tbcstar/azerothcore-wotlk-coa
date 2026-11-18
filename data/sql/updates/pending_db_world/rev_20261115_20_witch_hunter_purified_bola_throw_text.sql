-- Purified Bola Throw (803333, Purified Bola 707230): owner ruling O-25 (Q-wh-18 option b, 2026-11-15), the slow lasts 10 sec with the talent; the client's $d would render the DBC's 8 sec.
DELETE FROM `coa_client_spell_description` WHERE `ID` = 803333;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(803333, '|cffffffff2 次充能，15 秒恢复|r\r\n向敌人投掷套索，造成 ${$m2+0+$AP*.4} 点神圣伤害，并使其移动速度降低 $s1%，持续 10 秒。', '');
