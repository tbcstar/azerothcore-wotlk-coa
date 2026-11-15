-- Xorothian Strength (300382 rank 1, 570100 rank 2) now raises Intellect by the same percent as Strength
-- (AscensionXorothContracts.cpp). The client keeps the one-effect spell and its text in Spell.dbc, so its
-- description and the rank 1 aura text are rewritten here.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (300382, 570100);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(300382, '使你的力量和智力提高 $s1%。', '使力量和智力提高 ${$w1}%。'),
(570100, '使你的力量和智力提高 $s1%。', NULL);
