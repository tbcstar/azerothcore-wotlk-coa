DELETE FROM `coa_client_spell_description` WHERE `ID` = 707539;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES (707539,
    CONCAT('在 $u 层时，你的下一个 |cffffffff猎鹰打击|r 在 $712427d 内消耗降低 ',
        '$712427s2%，并使敌人受到的治疗效果降低 $712428s1%，持续 $712428d。'),
    CONCAT('在 $u 层时，你的下一个 |cffffffff猎鹰打击|r 在 $712427d 内消耗降低 ',
        '100%，并使敌人受到的治疗效果降低 40%，持续 $712428d。'));
