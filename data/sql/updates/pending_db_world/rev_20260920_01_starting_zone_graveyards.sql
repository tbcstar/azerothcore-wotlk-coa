-- #4086 The CoA client splits each starting valley into its own top-level zone (AreaTable 10138-10144, 10146). The
-- graveyard links sit on the stock parent zones, so a death in a valley found no link and fell back to the default
-- Barrens (Horde) or Westfall (Alliance) graveyard. Link each valley to its own start graveyard for both factions,
-- since any race can start in any valley.
DELETE FROM `graveyard_zone` WHERE `GhostZone` IN (10138, 10139, 10140, 10141, 10142, 10143, 10144, 10146);
INSERT INTO `graveyard_zone` (`ID`, `GhostZone`, `Faction`, `Comment`) VALUES
(105, 10138, 0, '北郡谷 - 艾尔文森林，北郡'),
(100, 10139, 0, '寒脊山谷 - 丹莫罗，安威玛尔'),
(94, 10140, 0, '丧钟镇 - 提瑞斯法林地，丧钟镇'),
(912, 10141, 0, '逐日岛 - 永歌森林，逐日岛'),
(918, 10142, 0, '埃门谷 - 秘蓝岛，埃门谷'),
(93, 10143, 0, '影歌林地 - 泰达希尔，奥达希尔'),
(709, 10144, 0, '试炼谷 - 杜隆塔尔，试炼谷'),
(34, 10146, 0, '红云台地 - 莫高雷，红云台地');
