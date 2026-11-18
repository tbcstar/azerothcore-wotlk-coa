-- Heartseeking Bolt (807280-807284): owner ruling O-15 (2026-11-15), the server stands on 300% Ranged Weapon Damage with the raised base and a ranged attack power share of 0.5; the client text shows 200%, the old base and 0.4 (a literal 300%: the client prints "$%" for ${$s2+100}).
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (807280, 807281, 807282, 807283, 807284);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(807280, '蓄力射出一支强力弩矢，对敌人造成 300% 远程武器伤害外加 ${$m1+69+0+$RAP*0.5+$sps*0.3} 点伤害，并使其受到的治疗效果降低 $807316s1%，持续 $807316d。\r\n\r\n根据造成的伤害产生怒气。', ''),
(807281, '蓄力射出一支强力弩矢，对敌人造成 300% 远程武器伤害外加 ${$m1+91+0+$RAP*0.5+$sps*0.3} 点伤害，并使其受到的治疗效果降低 $807316s1%，持续 $807316d。\r\n\r\n根据造成的伤害产生怒气。', ''),
(807282, '蓄力射出一支强力弩矢，对敌人造成 300% 远程武器伤害外加 ${$m1+123+0+$RAP*0.5+$sps*0.3} 点伤害，并使其受到的治疗效果降低 $807316s1%，持续 $807316d。\r\n\r\n根据造成的伤害产生怒气。', ''),
(807283, '蓄力射出一支强力弩矢，对敌人造成 300% 远程武器伤害外加 ${$m1+167+0+$RAP*0.5+$sps*0.3} 点伤害，并使其受到的治疗效果降低 $807316s1%，持续 $807316d。\r\n\r\n根据造成的伤害产生怒气。', ''),
(807284, '蓄力射出一支强力弩矢，对敌人造成 300% 远程武器伤害外加 ${$m1+244+0+$RAP*0.5+$sps*0.3} 点伤害，并使其受到的治疗效果降低 $807316s1%，持续 $807316d。\r\n\r\n根据造成的伤害产生怒气。', '');
