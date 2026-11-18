-- Thick Pelt (704626, #12568): the talent text added Thick Pelt 556233's -15 base value to 20% of attack power, so
-- below 75 attack power it showed a negative reduction. Both texts now show the reduction the server applies.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (556233, 704626);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(556233, '使你在 $d 内受到的下一次攻击的物理伤害降低 ${15+$AP*0.2} 点。', ''),
(704626, '受到物理伤害后，你在 $556233d 内受到的下一次攻击的物理伤害降低 ${15+$AP*0.2} 点。', '');
