START TRANSACTION;
DELETE FROM `spell_group` WHERE `id` = 1160;
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES
(1160, 572629),
(1160, 572630),
(1160, 706634),
(1160, 300916),
(1160, 300917),
(1160, 300918),
(1160, 300919),
(1160, 300923),
(1160, 680306);
DELETE FROM `spell_group_stack_rules` WHERE `group_id` = 1160;
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`, `description`) VALUES
(1160, 2, '本地 CoA：圣殿骑士的狂热之赐/热忱之赐及其团队版本按施法者互斥（#4449）');
COMMIT;
