DELETE FROM `command` WHERE `name` IN ('raidphase', 'raidphase set', 'raidphase clear', 'hiddencache list', 'hiddencache spawn', 'hiddencache despawn', 'hr stage', 'hr stage set', 'hr stage clear');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('raidphase', 2, '用法：.raidphase\n显示团队副本开放阶段、配置的阶段以及当前的覆盖值。'),
('raidphase set', 3, '用法：.raidphase set #阶段\n临时覆盖团队副本开放阶段（0-8），直到执行 .raidphase clear。'),
('raidphase clear', 3, '用法：.raidphase clear\n清除覆盖值，重新按配置项 Ascension.CallboardCache.ReleaseStage 生效。'),
('hiddencache list', 2, '用法：.hiddencache list [all]\n列出本区域（all：全部区域）的稀有与史诗隐藏宝箱，附带其状态与一条 .go gameobject 指令。'),
('hiddencache spawn', 2, '用法：.hiddencache spawn [all]\n重生本区域（all：全部区域）已开启的隐藏宝箱，并在未刷新的位置补充临时调试宝箱。'),
('hiddencache despawn', 2, '用法：.hiddencache despawn\n移除临时调试用的隐藏宝箱。'),
('hr stage', 2, '用法：.hr stage\n显示高风险模式的开放阶段、配置的阶段（HighRisk.ReleaseStage）以及当前的覆盖值。'),
('hr stage set', 3, '用法：.hr stage set #阶段\n临时覆盖高风险模式的开放阶段（1-8），直到执行 .hr stage clear。'),
('hr stage clear', 3, '用法：.hr stage clear\n清除覆盖值，重新按 HighRisk.ReleaseStage 生效。');
