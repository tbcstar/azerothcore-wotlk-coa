-- A design has one aura spell, shared by every item level, so the $s1/$s2
-- placeholders in its text could not name the amount that is applied: their base
-- points stay at 0 and the client renders them as 1. The aura text now carries the
-- fixed movement and armor magnitudes directly and states the item-level attack
-- and spell power powers without a number, while the item's own power text keeps
-- naming its exact amount. Republish the aura rows the module migration applied.

UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。' WHERE `ID` = 9710000;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 15%。', `AuraDescription_Lang_enUS` = '移动速度提高 15%。' WHERE `ID` = 9710001;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710003;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 18%。', `AuraDescription_Lang_enUS` = '移动速度提高 18%。' WHERE `ID` = 9710004;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。' WHERE `ID` = 9710006;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 20%。', `AuraDescription_Lang_enUS` = '移动速度提高 20%。' WHERE `ID` = 9710007;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。' WHERE `ID` = 9710009;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 10%。', `AuraDescription_Lang_enUS` = '移动速度提高 10%。' WHERE `ID` = 9710010;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。' WHERE `ID` = 9710012;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 15%。', `AuraDescription_Lang_enUS` = '移动速度提高 15%。' WHERE `ID` = 9710013;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。' WHERE `ID` = 9710015;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 18%。', `AuraDescription_Lang_enUS` = '移动速度提高 18%。' WHERE `ID` = 9710016;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。' WHERE `ID` = 9710018;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 20%。', `AuraDescription_Lang_enUS` = '移动速度提高 20%。' WHERE `ID` = 9710019;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。' WHERE `ID` = 9710021;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 10%。', `AuraDescription_Lang_enUS` = '移动速度提高 10%。' WHERE `ID` = 9710022;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710024;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 15%。', `AuraDescription_Lang_enUS` = '移动速度提高 15%。' WHERE `ID` = 9710025;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。' WHERE `ID` = 9710027;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 18%。', `AuraDescription_Lang_enUS` = '移动速度提高 18%。' WHERE `ID` = 9710028;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710030;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 20%。', `AuraDescription_Lang_enUS` = '移动速度提高 20%。' WHERE `ID` = 9710031;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710033;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 10%。', `AuraDescription_Lang_enUS` = '移动速度提高 10%。' WHERE `ID` = 9710034;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710035;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710036;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 15%。', `AuraDescription_Lang_enUS` = '移动速度提高 15%。' WHERE `ID` = 9710037;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。' WHERE `ID` = 9710039;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 18%。', `AuraDescription_Lang_enUS` = '移动速度提高 18%。' WHERE `ID` = 9710040;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710042;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 20%。', `AuraDescription_Lang_enUS` = '移动速度提高 20%。' WHERE `ID` = 9710043;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710045;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 10%。', `AuraDescription_Lang_enUS` = '移动速度提高 10%。' WHERE `ID` = 9710046;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。' WHERE `ID` = 9710048;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 15%。', `AuraDescription_Lang_enUS` = '移动速度提高 15%。' WHERE `ID` = 9710049;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710051;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 18%。', `AuraDescription_Lang_enUS` = '移动速度提高 18%。' WHERE `ID` = 9710052;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高近战和远程攻击强度，其数值随物品等级增长。' WHERE `ID` = 9710054;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 20%。', `AuraDescription_Lang_enUS` = '移动速度提高 20%。' WHERE `ID` = 9710055;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高攻击强度和法术强度，其数值随物品等级增长。' WHERE `ID` = 9710057;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 10%。', `AuraDescription_Lang_enUS` = '移动速度提高 10%。' WHERE `ID` = 9710058;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '提高法术强度，其数值随物品等级增长。', `AuraDescription_Lang_enUS` = '提高法术强度，其数值随物品等级增长。' WHERE `ID` = 9710060;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '移动速度提高 15%。', `AuraDescription_Lang_enUS` = '移动速度提高 15%。' WHERE `ID` = 9710061;
UPDATE `spell_dbc` SET `Description_Lang_enUS` = '护甲提高 20%。', `AuraDescription_Lang_enUS` = '护甲提高 20%。' WHERE `ID` = 9710063;
