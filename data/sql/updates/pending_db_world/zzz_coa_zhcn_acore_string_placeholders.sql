-- acore_string entries whose zhCN text carries a placeholder count that does
-- not match the enUS format string. The realm sends content_default, so such a
-- row aborts the message with "Wrong format occurred (argument not found)"
-- instead of printing it. Every row below keeps the enUS placeholder count and
-- order, together with the colour and link codes the client expects.

UPDATE `acore_string` SET `content_default` = '你正在组队中，无法进入该玩家的副本。', `locale_zhCN` = '你正在组队中，无法进入该玩家的副本。' WHERE `entry` = 104;
UPDATE `acore_string` SET `content_default` = '你与该玩家不同队时，只有开启 GM 模式才能进入其副本。', `locale_zhCN` = '你与该玩家不同队时，只有开启 GM 模式才能进入其副本。' WHERE `entry` = 105;
UPDATE `acore_string` SET `content_default` = '你已将 GUID={} 的阵营改为 {}，flags 改为 {}，npcflag 改为 {}，dyflag 改为 {}。', `locale_zhCN` = '你已将 GUID={} 的阵营改为 {}，flags 改为 {}，npcflag 改为 {}，dyflag 改为 {}。' WHERE `entry` = 130;
UPDATE `acore_string` SET `content_default` = '你已将 spellflatid={}、val={}、mark={} 改为 {}。', `locale_zhCN` = '你已将 spellflatid={}、val={}、mark={} 改为 {}。' WHERE `entry` = 131;
UPDATE `acore_string` SET `content_default` = '已清除字段 {} 中的第 {} 位。', `locale_zhCN` = '已清除字段 {} 中的第 {} 位。' WHERE `entry` = 161;
UPDATE `acore_string` SET `content_default` = '已设置字段 {} 中的第 {} 位。', `locale_zhCN` = '已设置字段 {} 中的第 {} 位。' WHERE `entry` = 162;
UPDATE `acore_string` SET `content_default` = '找到的地点：\n{}', `locale_zhCN` = '找到的地点：\n{}' WHERE `entry` = 168;
UPDATE `acore_string` SET `content_default` = '液面高度：{}，地面：{}，类型：{}，flags {}，状态：{}。', `locale_zhCN` = '液面高度：{}，地面：{}，类型：{}，flags {}，状态：{}。' WHERE `entry` = 175;
UPDATE `acore_string` SET `content_default` = '物品 ''{}'' ''{}'' 已加入列表，最大数量 ''{}''，刷新时间 ''{}''，扩展花费 ''{}''', `locale_zhCN` = '物品 ''{}'' ''{}'' 已加入列表，最大数量 ''{}''，刷新时间 ''{}''，扩展花费 ''{}''' WHERE `entry` = 206;
UPDATE `acore_string` SET `content_default` = '游戏对象 |cffffffff|Hgameobject:{}|h[{}]|h|r（GUID：{}）已被转动', `locale_zhCN` = '游戏对象 |cffffffff|Hgameobject:{}|h[{}]|h|r（GUID：{}）已被转动' WHERE `entry` = 276;
UPDATE `acore_string` SET `content_default` = '游戏对象 |cffffffff|Hgameobject:{}|h[{}]|h|r（GUID：{}）已被移动', `locale_zhCN` = '游戏对象 |cffffffff|Hgameobject:{}|h[{}]|h|r（GUID：{}）已被移动' WHERE `entry` = 277;
UPDATE `acore_string` SET `content_default` = '{} 已禁言 {} 的聊天 {}，将在该玩家下次登录时生效。原因：{}。', `locale_zhCN` = '{} 已禁言 {} 的聊天 {}，将在该玩家下次登录时生效。原因：{}。' WHERE `entry` = 283;
UPDATE `acore_string` SET `content_default` = '你的聊天已被禁言 {}。操作者：{}，原因：{}。', `locale_zhCN` = '你的聊天已被禁言 {}。操作者：{}，原因：{}。' WHERE `entry` = 300;
UPDATE `acore_string` SET `content_default` = '{}（idx:{}） - |cffffffff|Htitle:{}|h[{} {}]|h|r {} {} ', `locale_zhCN` = '{}（idx:{}） - |cffffffff|Htitle:{}|h[{} {}]|h|r {} {} ' WHERE `entry` = 349;
UPDATE `acore_string` SET `content_default` = '{}（idx:{}） - [{} {}] {} {} ', `locale_zhCN` = '{}（idx:{}） - [{} {}] {} {} ' WHERE `entry` = 350;
UPDATE `acore_string` SET `content_default` = '账号不存在：{}', `locale_zhCN` = '账号不存在：{}' WHERE `entry` = 413;
UPDATE `acore_string` SET `content_default` = 'IP：{}\n封禁日期：{}\n解封日期：{}\n剩余：{}\n原因：{}\n操作者：{}', `locale_zhCN` = 'IP：{}\n封禁日期：{}\n解封日期：{}\n剩余：{}\n原因：{}\n操作者：{}' WHERE `entry` = 423;
UPDATE `acore_string` SET `content_default` = '找到物品 {}：{}（背包 {} 邮件 {} 拍卖 {} 公会 {}）', `locale_zhCN` = '找到物品 {}：{}（背包 {} 邮件 {} 拍卖 {} 公会 {}）' WHERE `entry` = 438;
UPDATE `acore_string` SET `content_default` = '封禁剩余时间：{}，封禁者：{}，原因：{}', `locale_zhCN` = '封禁剩余时间：{}，封禁者：{}，原因：{}' WHERE `entry` = 453;
UPDATE `acore_string` SET `content_default` = 'id：{} {} effmask：{} 充能：{} 堆叠：{} 槽位 {} 持续时间：{} 最长持续时间：{} {} {} 施法者：{} guid：{}', `locale_zhCN` = 'id：{} {} effmask：{} 充能：{} 堆叠：{} 槽位 {} 持续时间：{} 最长持续时间：{} {} {} 施法者：{} guid：{}' WHERE `entry` = 468;
UPDATE `acore_string` SET `content_default` = '目标单位拥有 {} 个 {} 类型的光环：', `locale_zhCN` = '目标单位拥有 {} 个 {} 类型的光环：' WHERE `entry` = 469;
UPDATE `acore_string` SET `content_default` = '{} - （entry：{}） |cffffffff|Hcreature:{}|h[{} X:{} Y:{} Z:{} 地图 ID:{}]|h|r', `locale_zhCN` = '{} - （entry：{}） |cffffffff|Hcreature:{}|h[{} X:{} Y:{} Z:{} 地图 ID:{}]|h|r' WHERE `entry` = 515;
UPDATE `acore_string` SET `content_default` = '单位标志：{}。\n单位标志 2：{}。\n动态标志：{}。\n阵营模板：{}。', `locale_zhCN` = '单位标志：{}。\n单位标志 2：{}。\n动态标志：{}。\n阵营模板：{}。' WHERE `entry` = 542;
UPDATE `acore_string` SET `content_default` = '玩家{} {}（guid：{}）账号：{}（id：{}）邮箱：{} GM 等级：{} 最后 IP：{} 最后登录：{} 延迟：{}ms', `locale_zhCN` = '玩家{} {}（guid：{}）账号：{}（id：{}）邮箱：{} GM 等级：{} 最后 IP：{} 最后登录：{} 延迟：{}ms' WHERE `entry` = 548;
UPDATE `acore_string` SET `content_default` = '种族：{} 职业：{} 游戏时间：{} 等级：{} 金钱：{}g{}s{}c', `locale_zhCN` = '种族：{} 职业：{} 游戏时间：{} 等级：{} 金钱：{}g{}s{}c' WHERE `entry` = 549;
UPDATE `acore_string` SET `content_default` = '禁言剩余时间：{}，操作者：{}，原因：{}', `locale_zhCN` = '禁言剩余时间：{}，操作者：{}，原因：{}' WHERE `entry` = 550;
UPDATE `acore_string` SET `content_default` = '已对 [GUID: {}，entry: {}，名称: {}] 执行 SetData：字段 {}，数据 {}，附加 {}', `locale_zhCN` = '已对 [GUID: {}，entry: {}，名称: {}] 执行 SetData：字段 {}，数据 {}，附加 {}' WHERE `entry` = 555;
UPDATE `acore_string` SET `content_default` = 'GUID={} 的 updateIndex：{}，值：{}。', `locale_zhCN` = 'GUID={} 的 updateIndex：{}，值：{}。' WHERE `entry` = 562;
UPDATE `acore_string` SET `content_default` = '你已将 {} 的字段 {} 设为 uint32 值 {}', `locale_zhCN` = '你已将 {} 的字段 {} 设为 uint32 值 {}' WHERE `entry` = 566;
UPDATE `acore_string` SET `content_default` = '|cffff0000[战场公告]:|r {} -- [{}-{}] [{}/{}]|r', `locale_zhCN` = '|cffff0000[战场公告]:|r {} -- [{}-{}] [{}/{}]|r' WHERE `entry` = 712;
UPDATE `acore_string` SET `content_default` = '地图：{}，区域：{}，地带：{}，相位：{}', `locale_zhCN` = '地图：{}，区域：{}，地带：{}，相位：{}' WHERE `entry` = 714;
UPDATE `acore_string` SET `content_default` = '地图：{}，区域：{}', `locale_zhCN` = '地图：{}，区域：{}' WHERE `entry` = 716;
UPDATE `acore_string` SET `content_default` = '你的邮箱是：{}', `locale_zhCN` = '你的邮箱是：{}' WHERE `entry` = 878;
UPDATE `acore_string` SET `content_default` = '注册邮箱：{} - 电子邮件：{}', `locale_zhCN` = '注册邮箱：{} - 电子邮件：{}' WHERE `entry` = 879;
UPDATE `acore_string` SET `content_default` = '安全等级：{}', `locale_zhCN` = '安全等级：{}' WHERE `entry` = 880;
UPDATE `acore_string` SET `content_default` = '{} - |cffffffff|Htaxinode:{}|h[{} {}]|h|r（地图:{} X:{} Y:{} Z:{}）', `locale_zhCN` = '{} - |cffffffff|Htaxinode:{}|h[{} {}]|h|r（地图:{} X:{} Y:{} Z:{}）' WHERE `entry` = 1128;
UPDATE `acore_string` SET `content_default` = '{} - {} {}（地图:{} X:{} Y:{} Z:{}）', `locale_zhCN` = '{} - {} {}（地图:{} X:{} Y:{} Z:{}）' WHERE `entry` = 1129;
UPDATE `acore_string` SET `content_default` = '   跟随玩家 {}（lowguid {}）', `locale_zhCN` = '   跟随玩家 {}（lowguid {}）' WHERE `entry` = 1139;
UPDATE `acore_string` SET `content_default` = '   跟随生物 {}（lowguid {}）', `locale_zhCN` = '   跟随生物 {}（lowguid {}）' WHERE `entry` = 1140;
UPDATE `acore_string` SET `content_default` = '目标的 moveFlags：{}，moveFlagsExtra：{}。', `locale_zhCN` = '目标的 moveFlags：{}，moveFlagsExtra：{}。' WHERE `entry` = 1143;
UPDATE `acore_string` SET `content_default` = '目标的 moveFlags 已设为：{}，moveFlagsExtra 设为：{}', `locale_zhCN` = '目标的 moveFlags 已设为：{}，moveFlagsExtra 设为：{}' WHERE `entry` = 1144;
UPDATE `acore_string` SET `content_default` = '工单 {} 尚未指派，无法取消指派。', `locale_zhCN` = '工单 {} 尚未指派，无法取消指派。' WHERE `entry` = 2014;
UPDATE `acore_string` SET `content_default` = '单位标志：{}', `locale_zhCN` = '单位标志：{}' WHERE `entry` = 5038;
UPDATE `acore_string` SET `content_default` = '游戏时长达到 {} 后才可发言。你可以使用队伍和公会频道。', `locale_zhCN` = '游戏时长达到 {} 后才可发言。你可以使用队伍和公会频道。' WHERE `entry` = 30000;
