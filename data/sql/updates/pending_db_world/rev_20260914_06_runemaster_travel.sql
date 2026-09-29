-- #88: captured summon entries and displays; neutral level-one marker stats are local compatibility defaults.
-- Requires matching CreatureDisplayInfo/CreatureModelData from apps/coa-spells/runemaster_travel.py.
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (50063, 51335);
INSERT INTO `creature_template` (`entry`, `name`, `minlevel`, `maxlevel`, `faction`, `unit_class`, `type`, `ScriptName`)
SELECT 50063, '回声符文', 1, 1, 35, 1, 11, 'npc_ascension_runemaster_marker'
WHERE NOT EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 50063)
UNION ALL
SELECT 51335, '曲空匕首', 1, 1, 35, 1, 11, 'npc_ascension_runemaster_marker'
WHERE NOT EXISTS (SELECT 1 FROM `creature_template` WHERE `entry` = 51335);
UPDATE `creature_template` SET `ScriptName` = 'npc_ascension_runemaster_marker' WHERE `entry` IN (50063, 51335);
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (50063, 51335);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(50063, 0, 460733, 1, 1),
(51335, 0, 131041, 1, 1);
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (131041, 460733);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`) VALUES
(131041, 0.5, 0, 2),
(460733, 0.5, 0, 2);
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_ascension_runemaster_travel', 'spell_ascension_runemaster_return');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(500270, 'spell_ascension_runemaster_travel'),
(500272, 'spell_ascension_runemaster_return'),
(500287, 'spell_ascension_runemaster_travel'),
(500587, 'spell_ascension_runemaster_return');
DELETE FROM `spell_bonus_data` WHERE `entry` IN (500272, 500495);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(500272, 0, 0, 1.5, 0, '符文大师回声符文：原生治疗，150% 攻击强度'),
(500495, 0.44, 0, 0.2, 0, '符文大师曲空匕首：原生抵达伤害，44% 法术强度和 20% 攻击强度');
