-- High-Risk (PvP) 84421's spellbook text states a literal 15% experience bonus, but the High-Risk aura it
-- applies, 1004019, grants SPELL_AURA_MOD_XP_PCT with EffectBasePoints 19 + 1 = 20% and its own text reads $s1%.
-- Stream the unchanged DBC text with the number read from the aura's first effect (#9333).
DELETE FROM `coa_client_spell_description` WHERE `ID` = 84421;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(84421, '高风险模式激活期间，在开放世界中死亡会使你失去已装备的装备（若装备已投保则改为失去邪能金币）以及背包中的物品。\r\n\r\n开启高风险开放世界 PvP，并使你在开放世界中击杀生物或玩家所获得的经验值提高 $1004019s1%。在高风险模式下无法使用飞行坐骑。\r\n\n使你可以从开放世界中采集新的制造材料、血铸 PvP 装备和战争印记，并与隐藏宝箱和野兽巢穴互动。\r\n\r\n只能在休息区域中施放！', NULL);
