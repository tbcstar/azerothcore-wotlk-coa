-- Witch Hunter Edicts and Runemaster Etchings: an Edict or Etching and its Greater version are one buff, whoever
-- casts them (#5385); a caster gives each recipient one Etching, as group 1139 already does for Edicts (#4039).
-- The pair groups sort below 1139 and 1140 so their exclusive rule is the one SpellMgr reads first.
DELETE FROM `spell_group` WHERE `id` IN (1039, 1040, 1041, 1042, 1043, 1044, 1140);
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES
(1039, 523485),
(1039, 523510),
(1040, 706741),
(1040, 680303),
(1041, 707684),
(1041, 681442),
(1042, 561237),
(1042, 561241),
(1043, 561236),
(1043, 561242),
(1044, 560295),
(1044, 561243),
(1140, 561237),
(1140, 561241),
(1140, 561236),
(1140, 561242),
(1140, 560295),
(1140, 561243);

DELETE FROM `spell_group_stack_rules` WHERE `group_id` IN (1039, 1040, 1041, 1042, 1043, 1044, 1140);
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`, `description`) VALUES
(1039, 1, 'Local CoA: 骑士敕令与强效骑士敕令'),
(1040, 1, 'Local CoA: 审判官敕令与强效审判官敕令'),
(1041, 1, 'Local CoA: 巫术敕令与强效巫术敕令'),
(1042, 1, 'Local CoA: 灵巧蚀刻及其强效版本'),
(1043, 1, 'Local CoA: 地脉蚀刻及其强效版本'),
(1044, 1, 'Local CoA: 法师蚀刻及其强效版本'),
(1140, 2, 'Local CoA: 每位施法者在每个目标身上只能施加一个符文大师蚀刻');
