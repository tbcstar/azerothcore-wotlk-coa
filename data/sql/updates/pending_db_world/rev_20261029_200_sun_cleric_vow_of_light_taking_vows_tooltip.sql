-- Vow of Light (807547): the buff tooltip reads $807750s1 without the caster's spell modifiers, so it kept
-- showing 10% after Taking Vows (300331) adds 5 to 807750 effect 1 (#9780). State the talent-adjusted value.
DELETE FROM `coa_client_spell_description` WHERE `ID` = 807547;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(807547, '你直接承受的伤害或直接获得的治疗会生成 1 点 |cFFFF9800太阳能量|r，并治疗最近的友方目标，治疗量等于该数值的 $807750s1%。\r\n\r\n|cffffffff满足|r：使治疗量翻倍。\r\n\r\n@ext:同一时间只能激活 1 个 |cffffffff誓言|r。:ext@', '你承受的伤害或直接获得的治疗现在会治疗最近的友方目标，治疗量为该数值的 $?s300331[${$807750s1+$300331s1}][$807750s1]%。');
