-- 修正 item_template 中被字节损坏、显示成替换符「�」的物品名。
-- 以 entry 精确定位，并用损坏后的名字做守卫：只有当前仍是坏名字时才改写，重复执行安全。
UPDATE `item_template` SET `name` = '瓦尔德里斯的长袍' WHERE `entry` = 2089715 AND `name` LIKE '瓦尔德里斯的%袍';
UPDATE `item_template` SET `name` = '歹毒的前肢' WHERE `entry` = 8200091 AND `name` LIKE '歹毒的%肢';
UPDATE `item_template` SET `name` = '现场指挥长靴' WHERE `entry` = 2081228 AND `name` LIKE '现场主%长靴';
