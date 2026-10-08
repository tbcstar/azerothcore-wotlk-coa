DELETE FROM `coa_client_spell_description` WHERE `ID` = 680575;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES (680575,
CONCAT(
    '当 |cFFFFFFFF无畏|r 激活时，你的 |cFFFFFFFF暮光掷盾|r ',
    '冷却时间缩短 $/1000;s1 秒。\r\n\r\n此外，你的 |cffffffff邪术 ',
    '震击|r 现在会攻击主要目标附近的 2 个额外敌人。'
  ), '');
