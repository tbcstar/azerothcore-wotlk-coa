-- On "Darkmoon - Season 10 Wildcard" the first character of an account found a Specialization Cache (2977359) in
-- its bags. It belongs to the item family of the CoA Elite Warchest (2977351: quality 6, item level 15, dummy spell
-- 93461); name, display, binding and text follow the client item cache (harvest 2026-08-31).
CREATE TEMPORARY TABLE `wildcard_specialization_cache` ENGINE=InnoDB AS
    SELECT * FROM `item_template` WHERE `entry` = 2977351;
UPDATE `wildcard_specialization_cache` SET
    `entry` = 2977359,
    `name` = '专精宝箱（灵魂绑定）',
    `displayid` = 14575,
    `bonding` = 1,
    `description` = CONCAT('包含：\n  \n - 6x 神秘附魔：专精 \n',
        ' - 专精之书 II \n - 专精之书 III \n - 专精之书 IV \n',
        ' - 专精之书 V \n - 专精之书 VI \n  \n',
        ' |cFFFF5500重要：|r 请确保在你想要接收奖励的角色上打开此物品，因为',
        ' |cFFFF5500内容无法转移或找回。|r'),
    `ScriptName` = 'item_wildcard_specialization_cache';
INSERT INTO `item_template` SELECT * FROM `wildcard_specialization_cache`
ON DUPLICATE KEY UPDATE
    `name` = VALUES(`name`), `displayid` = VALUES(`displayid`), `bonding` = VALUES(`bonding`),
    `description` = VALUES(`description`), `ScriptName` = VALUES(`ScriptName`);
DROP TEMPORARY TABLE `wildcard_specialization_cache`;
