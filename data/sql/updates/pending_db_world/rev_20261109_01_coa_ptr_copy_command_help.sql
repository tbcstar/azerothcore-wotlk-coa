DELETE FROM `command` WHERE `name` IN ('ptr', 'ptr list', 'ptr copy');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('ptr', 0, '用法：.ptr <list|copy>。把你自己的角色从本服务器复制到测试服。请在角色所在的服务器上使用。'),
('ptr list', 0, '用法：.ptr list。列出你在本服务器的角色，以及它们最近一次复制到测试服的状态。'),
('ptr copy', 0, '用法：.ptr copy <角色名>。把你的角色 <角色名> 从本服务器复制到测试服。复制就绪后会在这里通知你。名字被占用时会在登录时改名。');
