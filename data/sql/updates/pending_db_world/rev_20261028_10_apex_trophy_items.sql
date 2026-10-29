-- Apex hunt trophies, the diploma that carries the title, and their icons.

-- Icons first: the client resolves an item's icon from ItemDisplayInfo, so each
-- item gets its own row here and the server streams these to the client.
DELETE FROM `itemdisplayinfo_dbc` WHERE `ID` IN (990002, 990003, 990004, 990005);
INSERT INTO `itemdisplayinfo_dbc` (`ID`, `InventoryIcon_1`) VALUES
(990002, 'trade_archaeology_apexisscroll'),
(990003, 'inv_misc_pelt_07'),
(990004, 'inv_misc_pelt_08'),
(990005, 'inv_misc_scales_reptileviolet03');

-- Stormfang Pelt, Scarred Owlcat Pelt and Tide-Warped Hide are the three quest
-- trophies. The Diploma is the keepsake handed over with them.
DELETE FROM `item_template` WHERE `entry` IN (1009100, 1009101, 1009102, 1009103);
INSERT INTO `item_template`
(`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`,
 `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`,
 `maxcount`, `stackable`, `bonding`, `description`, `Material`, `VerifiedBuild`) VALUES
(1009101, 12, 0, '风暴之牙毛皮',        990003, 5, 0, 1, 0, 0, 0, -1, -1, 60, 0, 1, 1, 4,
 '仍在噼啪作响。毛发无法平伏。', 0, 0),
(1009102, 12, 0, '伤痕累累的枭兽皮',   990004, 5, 0, 1, 0, 0, 0, -1, -1, 60, 0, 1, 1, 4,
 '二十年食人魔长矛的痕迹，写在疤痕组织里。', 0, 0),
(1009103, 12, 0, '潮汐扭曲的兽皮',      990005, 5, 0, 1, 0, 0, 0, -1, -1, 60, 0, 1, 1, 4,
 '闻起来有深水的气息和古老溺亡者的祈祷。', 0, 0),
(1009100, 15, 0, '巅峰狩猎文凭', 990002, 5, 0, 1, 0, 0, 0, -1, -1, 60, 0, 1, 1, 1,
 '授予头衔：巅峰猎人。', 0, 0);
