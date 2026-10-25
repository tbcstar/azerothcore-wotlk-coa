DELETE FROM `coa_client_spell_description` WHERE `ID` = 680397;
INSERT INTO `coa_client_spell_description` (`ID`,`Description`) VALUES
(680397,'你的治疗会在被治疗目标周围触发一次神圣脉冲，对附近敌人造成 ${$680398m1*$<scalingbp>+$AP*0.05+$AGI*0.2} 点神圣伤害。\n\n每 0.5 秒只会触发一次。');
