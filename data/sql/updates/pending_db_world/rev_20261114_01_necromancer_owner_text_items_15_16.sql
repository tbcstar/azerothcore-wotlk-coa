-- Necromancer client texts aligned to the owner's rulings of 2026-11-14: text items 15 (Raising the Kirin Tor
-- refunds 10 Runic Power) and 16 (Wormfood's Rotling damage increases with level) (G-8, owner go relayed by the
-- mentor; text-items.md). Description only; an empty ToolTip keeps the client's.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (560800, 805649);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(560800, '引导完 |cFFFFFFFF地穴虫群|r 后，你召唤一只 |cffffffff腐烂怪|r，它会冲向敌人并在 $807640t2 秒后爆炸，造成 ${$500585m1+$500585ppl1+$SP*0.335} 点瘟疫伤害，伤害随你的等级提高。', ''),
(805649, '你的 |cff90ee90命令|r 法术现在有 $h% 的几率返还 10 点符文能量。', '');
