-- Class bundle contents whose description names no single item: the set cache, both warblades, the three named runeblades, the backsheath weapons.
DELETE FROM `item_loot_template` WHERE (`Entry`, `Item`) IN ((2615024, 317292), (2615024, 317290), (2615026, 558230), (2615027, 100765), (2615027, 100922), (2615027, 100891), (2615029, 106268), (2615033, 101000));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(2615024, 317292, 0, 100, 0, 1, 0, 1, 1, '守望者的月光战刃（主手）'),
(2615024, 317290, 0, 100, 0, 1, 0, 1, 1, '守望者的月光战刃（副手）'),
(2615026, 558230, 0, 100, 0, 1, 0, 1, 1, '碧蓝发条套装宝箱'),
(2615027, 100765, 0, 100, 0, 1, 0, 1, 1, '法力锻造符文之刃（冰霜）'),
(2615027, 100922, 0, 100, 0, 1, 0, 1, 1, '法力锻造符文之刃（火焰）'),
(2615027, 100891, 0, 100, 0, 1, 0, 1, 1, '法力锻造符文之刃（奥术）'),
(2615029, 106268, 0, 100, 0, 1, 0, 1, 1, '恐怖梦魇的双镰（背鞘）'),
(2615033, 101000, 0, 100, 0, 1, 0, 1, 1, '钢铸龙刃（背鞘）');
