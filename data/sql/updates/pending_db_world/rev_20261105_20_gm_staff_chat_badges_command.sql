DELETE FROM `command` WHERE `name` IN ('gm mod chat', 'gm cm chat', 'gm admin chat');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('gm mod chat', 1, '语法：.gm mod chat [on/off]\n在聊天中（说、喊、密语、小队、团队、战场、公会、官员与各频道）于你的名字前显示 MOD 徽章；不填 on/off 时显示当前状态。会替换 .gm cm chat 与 .gm admin chat。客户端没有徽章界面时会在文字前看到 <MOD>。登出后重置。'),
('gm cm chat', 3, '语法：.gm cm chat [on/off]\n在聊天中（说、喊、密语、小队、团队、战场、公会、官员与各频道）于你的名字前显示 CM（社区管理员）徽章；不填 on/off 时显示当前状态。会替换 .gm mod chat 与 .gm admin chat。客户端没有徽章界面时会在文字前看到 <CM>。登出后重置。'),
('gm admin chat', 3, '语法：.gm admin chat [on/off]\n在聊天中（说、喊、密语、小队、团队、战场、公会、官员与各频道）于你的名字前显示 ADMIN 徽章；不填 on/off 时显示当前状态。会替换 .gm mod chat 与 .gm cm chat。客户端没有徽章界面时会在文字前看到 <ADMIN>。登出后重置。');
