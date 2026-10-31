-- Untainted (705298 talent, 705299 buff): 705299's effect 0 is SPELL_AURA_MOD_DAMAGE_TAKEN with a negative
-- base (-10), and aura_ascension_templar_lifecycle subtracts 0.1 x Stamina from it, so the reduction is
-- 10 + 0.1 x Stamina. The client text added the negative base to the positive Stamina term and read
-- "reduced by -0" at about 100 Stamina (#9895).
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (705298, 705299);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(705298, '有效地治疗自己现在会使你受到的物理伤害降低 ${-$705299m1+$STA*0.1}，持续 $705299d。\r\n\r\n每 15 秒只能触发一次。', ''),
(705299, '', '受到的物理伤害降低 ${-$m1+$STA*0.1}。');
