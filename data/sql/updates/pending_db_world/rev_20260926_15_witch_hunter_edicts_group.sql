-- Witch Hunter Edicts: one Edict per caster on each recipient. rev_20260921_30 put them in spell group 1138,
-- which rev_20260922_01 (Venomancer Pheromones) deletes and reuses, so the Edicts get their own group.
DELETE FROM `spell_group` WHERE `id` = 1139;
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES
(1139, 523485),
(1139, 706741),
(1139, 707684),
(1139, 523510),
(1139, 680303),
(1139, 681442);
DELETE FROM `spell_group_stack_rules` WHERE `group_id` = 1139;
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`, `description`) VALUES
(1139, 2, '本地 CoA：每个施法者在每个接受者身上只能应用一个巫猎手法令');
