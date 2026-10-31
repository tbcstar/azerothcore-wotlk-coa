-- Dawnfall (806118): enemies carry only effects 1-2 and allies only effect 3, so the shared tooltip's live
-- ${$w1} and ${$w3} read 0% on whichever half is absent (#9781). Use the static $s1/$s3 values, and state
-- Solar Flare's own damage formula (807175) instead of Dawnfall's empty effect 2 amount.
DELETE FROM `coa_client_spell_description` WHERE `ID` = 806118;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(806118, '在目标位置降下安瑟之光，持续 $d。\r\n\r\n身处其中的友方受到的所有来源治疗提高 $s3%，敌人受到你造成的伤害提高 $s1%，并且每 $t2 秒被 |cffffffff太阳耀斑|R 击中一次。@s:807175:0@', '身处其中的敌人受到太阳祭司造成的伤害提高 $s1%，并被太阳耀斑击中，每 $t2 秒造成 ${$807175m2+$807175ppl2+$SP*0.26} 点神圣火焰伤害。\r\n\r\n身处其中的友方受到的所有来源治疗提高 $s3%。');
