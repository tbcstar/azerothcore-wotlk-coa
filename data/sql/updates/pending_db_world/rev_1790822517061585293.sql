START TRANSACTION;
DELETE FROM `spell_group` WHERE `id` = 103955;
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES
(103955, 572810),
(103955, 572816),
(103955, 800197),
(103955, 572817),
(103955, 680310);
DELETE FROM `spell_group_stack_rules` WHERE `group_id` = 103955;
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`, `description`) VALUES
(103955, 2, '仪祭师：每个施法者在每个目标上只能施加一个本能');
COMMIT;
