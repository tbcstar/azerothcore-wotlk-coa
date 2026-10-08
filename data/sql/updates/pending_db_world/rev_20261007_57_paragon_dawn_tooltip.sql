DELETE FROM `coa_client_spell_description` WHERE `ID` = 680639;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES (680639,
CONCAT(
    '成为圣光的典范，持续 $d，使所有主要属性提高 $s1% ',
    '并使你的护甲提高相当于你智力 5 倍的数值。\r\n\r\n在 ',
    '持续时间内，|Cffffffff阳炎步伐|r 的冷却时间缩短 $s3%。 ',
    '\r\n\r\n需要 |cffffffff黎明|r 处于激活状态。'
  ), CONCAT(
    '圣光的典范。所有主要属性提高 ${$w1}%，并且 ',
    '护甲提高相当于你智力 5 倍的 ',
    '数值。\r\n\r\n|Cffffffff炽天使步伐|r 的冷却时间缩短 ${$w3}%。''
  ));
