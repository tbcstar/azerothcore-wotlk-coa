-- Sixfold Shot (807364, inlined in 500567): owner ruling O-19 (2026-11-15) with mentor D-154; Shadow Rage (804192, inlined in 705455): owner ruling O-27 (D-214, D-215), both texts render the server's RAP terms.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (807364, 804192);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(807364, '在 $d 内射出 6 次快速射击，每次造成 $807527s1% 远程武器伤害外加 ${45+$807527ppl2+$RAP*0.25} 点物理伤害，并产生 $/10;521228s1 点怒气以及 $521228s2% 的最大法力值。\r\n\r\n可在移动中使用。', ''),
(804192, '自动攻击有 $h% 几率额外造成 ${$m3*$<scalingbp>+$RAP*0.15} 点暗影伤害。持续 $d。', '');
