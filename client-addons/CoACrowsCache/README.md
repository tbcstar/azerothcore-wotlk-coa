# 乌鸦的宝库

这个可选的60级高风险PvP事件使用现有的CoA客户端资源和服务器数据。
它需要CoA世界数据库、客户端DBC和地形数据，包括宝库物品1615010、
高风险光环1004019、携带光环1005000和高风险宝箱模板994300。
客户端存档和数据库转储不包含在内。

## 安装

正常构建并安装服务器，让其数据库更新器应用待处理的世界
和角色迁移。已应用的SQL文件保持不变。
在服务器的modules/coa.conf中启用CrowsCache.Enable = 1，然后重启服务器。
随附的默认值为禁用。坐标、间隔和随机位置设置位于
src/server/coa/conf/coa.conf.dist。

Copy this entire `CoACrowsCache` directory into the CoA client's `Interface/AddOns` directory.
Fully reopen the client after first installation; use `/reload` for later addon updates.
The marker uses the client's dungeon portal atlas, is 55 pixels wide and has the hover text
"High-Risk 60 PvP Event". The server also sends the location as a native client map pin
(`SMSG_COA_AREA_POI_PAYLOAD`, atlas `hr-event-gear-active`), so clients without this addon still see it.

## 事件行为

每次计划事件随机选择一个地点：塔纳利斯的深渊沙地、希利苏斯的南风村、
千针石林的黄鼠狼 crater 或配置的贫瘠之地地点。
宝箱每三小时出现一次，出现前30、15、5和1分钟发出警告。
地图标记在第一次警告时出现；乌鸦在最后五分钟出现。
初始宝箱被认领后标记消失。未被认领的宝箱仍然可用。

一个活着的60级高风险玩家通过十秒的开箱施法认领宝箱；
移动或任何伤害都会打断它。携带会减慢玩家速度、移除坐骑速度加成并阻止
在交付城镇外的潜行、隐身和传送法术。死亡会掉落一个可立即认领的
宝箱给另一个符合条件的玩家。已认领的宝库在24小时后过期。
加基森、塞纳里奥要塞和棘齿城允许在脱战状态下打开携带的物品。
现有区域PvP规则仍然有效。

预置的奖励池包含60级物品等级95的英雄血铸纳克萨玛斯装备。
打开会授予五件不同的随机装备物品以及20个交织猩红布、
20个交织瘟疫织和20个交织冬织。此奖励池可通过
coa_crows_cache_rewards配置；它不会自动追踪未来的团队副本层级。
背包已满时保留未打开的宝库。

## GM测试

- `.crows start 60`: 塔纳利斯一分钟倒计时。
- `.crows silithus 60`: 希利苏斯一分钟倒计时。
- `.crows needles 60`: 千针石林一分钟倒计时。
- `.crows barrens 60`: 贫瘠之地一分钟倒计时。
- `.crows visit`: 传送到最新事件处，在携带其宝库之前。
- `.crows here 60`: 在这四个区域中任意一个的你的位置进行倒计时。
- `.crows status`: 检查当前事件和下一次计划出现时间。
- `.crows cancel`: 移除未认领的事件；保留携带和掉落的宝库。
- `.crows schedule 10800`: 将下一次自动出现设置在三小时后。
- `.gps`: 报告精确位置；清除你的目标以检查自己。

手动事件不会移动自动时间表。交付城镇为塔纳利斯
和千针石林的加基森、希利苏斯的塞纳里奥要塞，以及贫瘠之地的棘齿城。

## 验证

聚焦验证通过了构建、乌鸦的宝库单元检查、Lua地图测试工具和四个
加速的原生游戏场景。原生场景测试了警告、标记
传输、认领、移动/伤害打断、死亡交接和城镇交付/奖励。
Lua测试工具检查地图投影和悬停文本。实际客户端渲染和更广泛的
生产部署与这些自动化检查分开。
按照AGENTS.md中的说明使用tools/verify_all.py进行验证。
在Linux上，隔离的模块配置必须暂存到服务器编译后的CONF_DIR/modules
目录中，并停止实时服务器，保留其配置并在之后恢复。
