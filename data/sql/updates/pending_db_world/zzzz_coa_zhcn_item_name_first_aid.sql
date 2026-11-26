-- 「第一援助」是 First Aid 的机翻，客户端 zhCN 的正式译名是「急救」
-- （patch-ZZZZZ.mpq 的 GlobalStrings.dbc / SkillLine.dbc 均写作「急救」）。
-- 只改这四件物品名的守卫式更新，重复执行安全。

UPDATE `item_template` SET `name` = '急救徽记' WHERE `entry` = 5000005 AND `name` = '第一援助徽记';
UPDATE `item_template` SET `name` = '急救速度药水' WHERE `entry` = 1180014 AND `name` = '第一援助速度药水';
UPDATE `item_template` SET `name` = '急救装置' WHERE `entry` = 2001005 AND `name` = '第一援助装置';
UPDATE `item_template` SET `name` = '急救长靴' WHERE `entry` = 2081382 AND `name` = '第一援助长靴';
