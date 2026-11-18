-- Shadow Rage (680275): the client text scaled with attack power and carried a stray ")"; the server uses ranged attack power (owner ruling O-39).
DELETE FROM `coa_client_spell_description` WHERE `ID` = 680275;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(680275, '远程自动攻击额外造成 ${$m3+$RAP*0.15} 点暗影伤害。', '');
