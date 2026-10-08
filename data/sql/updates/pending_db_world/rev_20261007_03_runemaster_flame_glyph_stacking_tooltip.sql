DELETE FROM `coa_client_spell_description` WHERE `ID` IN (520091, 520097);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(520091, '|cFFFFFFFF释放|r：造成 ${$520097m1*$<scalingbp>+$spfi*0.35} 点火焰伤害，并在 $520097d 内额外造成 ${($520097d*1000/$520097T2)*($520097m1*$<scalingbp>+$SP*.1)} 点火焰伤害。\r\n\r\n持续伤害最多叠加 $520097u 次。', '使用雕文毁灭或奇术来对敌人释放任何激活的雕文。\r\n\r\n释放：在 $520097d 内造成火焰伤害并额外造成火焰伤害。\r\n\r\n持续伤害最多叠加 $520097u 次。'),
(520097, '造成 ${$m1*$<scalingbp>+$SP*0.35} 点火焰伤害，并在 $d 内额外造成 ${($d*1000/$T2)*($m2*$<scalingbp>+$SP*.1)} 点火焰伤害。\r\n\r\n持续伤害最多叠加 $u 次。', '每 $t2 秒造成 ${$w2} 点火焰伤害，持续 $d\r\n\r\n持续伤害最多叠加 $u 次。');
