-- Anguish (504742 talent, 500566 buff): Darkflock is no longer channeled, and the buff's -50% read as "by -50%".
DELETE FROM `spell_script_names` WHERE `spell_id` = 500566 AND `ScriptName` = 'aura_ascension_witch_hunter_anguish';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (500566, 'aura_ascension_witch_hunter_anguish');

-- Darkflock: changelog entry 71840 (2026-08-25) raised its attack power scaling to 35%; the client text still shows 25%.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (500566, 504742, 520270, 520708, 520709, 562024, 562025);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(500566, '使你下一次黑暗鸦群持续时间缩短 ${-$m1}%。', '使你下一次黑暗鸦群持续时间缩短。'),
(504742, '你造成的暗影伤害现在有 $h% 几率重置冷却，并使你在 $500566d 内下一次 |cffffffff黑暗鸦群|r 的持续时间缩短 ${-$500566m1}%。', ''),
(520270, '持续 $d，召唤一群乌鸦，每 $t1 秒对前方敌人造成 ${$m1+0+$AP*.35+$SP*1.0625} 点暗影伤害。', ''),
(520708, '持续 $d，召唤一群乌鸦，每 $t1 秒对前方敌人造成 ${$m1+0+$AP*.35+$SP*1.0625} 点暗影伤害。', ''),
(520709, '持续 $d，召唤一群乌鸦，每 $t1 秒对前方敌人造成 ${$m1+0+$AP*.35+$SP*1.0625} 点暗影伤害。', ''),
(562024, '持续 $d，召唤一群乌鸦，每 $t1 秒对前方敌人造成 ${$m1+0+$AP*.35+$SP*1.0625} 点暗影伤害。', ''),
(562025, '持续 $d，召唤一群乌鸦，每 $t1 秒对前方敌人造成 ${$m1+0+$AP*.35+$SP*1.0625} 点暗影伤害。', '');
