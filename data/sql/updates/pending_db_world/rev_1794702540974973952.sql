--
DELETE FROM `command` WHERE `name` = 'coa trial objectives';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('coa trial objectives', 3, CONCAT(
    '用法：.coa trial objectives [玩家]。列出玩家进行中挑战的挑战ID、等级和死亡次数，',
    '以及每个目标及其目标ID的已完成或待完成标记，还有该玩家被锁定无法参与的挑战ID。',
    '玩家默认为你的目标；双词名字需加引号。对离线角色同样有效。'));

DELETE FROM `command` WHERE `name` = 'coa trial credit';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('coa trial credit', 3, CONCAT(
    '用法：.coa trial credit <挑战ID> <目标ID> [玩家]。把玩家进行中挑战的某个目标标记为已完成，无论玩家等级如何。',
    '用 .coa trial objectives 查找这些ID。',
    '玩家默认为你的目标，且必须在线；双词名字需加引号。'));

DELETE FROM `command` WHERE `name` = 'coa trial restore';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('coa trial restore', 3, CONCAT(
    '用法：.coa trial restore <挑战ID> [玩家]。让失败的挑战带着它的等级、目标和计时器重新激活，重置饥饿、口渴与疲劳，',
    '并复活角色。如果角色自失败以来升级过多，或已超过某个待完成目标的等级，',
    '则会被拒绝。',
    '玩家默认为你的目标，且必须在线；双词名字需加引号。'));

DELETE FROM `command` WHERE `name` = 'coa challenge objectives';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('coa challenge objectives', 3, CONCAT(
    '用法：.coa challenge objectives [玩家]。等同于 .coa trial objectives。'));

DELETE FROM `command` WHERE `name` = 'coa challenge credit';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('coa challenge credit', 3, CONCAT(
    '用法：.coa challenge credit <挑战ID> <目标ID> [玩家]。等同于 .coa trial credit。'));

DELETE FROM `command` WHERE `name` = 'coa challenge restore';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('coa challenge restore', 3, CONCAT(
    '用法：.coa challenge restore <挑战ID> [玩家]。等同于 .coa trial restore。'));
