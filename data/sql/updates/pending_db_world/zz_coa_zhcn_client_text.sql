-- CoA world database: zhCN client text for the spells whose tooltips the upstream
-- 2026-11 revisions wrote in English (Bless 804247, Justice 572848, Felstrike 802678,
-- Scars of Suffering 570159). The ${...} and $<index> expressions stay untouched, so the
-- values are still computed from the client Spell.dbc record; only the wording is Chinese.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (804247, 572848, 802678, 570159);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(804247, '祝福你自己与一名盟友，每 10 秒恢复其 5% 的最大生命值和你的 5% 最大法力值，持续 5 分钟。\n\n同一时间只能影响 1 名盟友。', '已受祝福。治疗太阳祭司的目标时，每 10 秒为其恢复相当于你 5% 最大生命值的生命值，并为太阳祭司恢复 5% 最大法力值。'),
(572848, '挥舞双武器，对 $a1 码内最多 $i 名敌人造成 $524857s1% 武器伤害。\n\n你的主手打击额外造成 ${$572850m2+$spfi*0.2} 点物理伤害，副手打击额外造成 ${$572045m2+$spfi*0.2} 点火焰伤害。', NULL),
(802678, '灼烧一名敌人，在 $d 内造成 ${($d*1000/$T1)*($802678m1+$802678ppl1+$SP*.05)} 点暗影烈焰伤害，可叠加 $u 次。', NULL),
(570159, '', '攻击者对此目标造成的攻击强度提高 ${$AGI*0.15} 点。');
