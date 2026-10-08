INSERT INTO `item_template` (
    `entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`,
    `AllowableClass`, `AllowableRace`, `RequiredLevel`, `stackable`, `spellid_1`, `spelltrigger_1`,
    `spellcharges_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `bonding`, `description`, `Material`
) VALUES
(2205304, 0, 8, '技能卡 - 能量箭', 137694, 3, 134221824, 1, 5000000,
    512, -1, 1, 100, 92657, 0, -1, -1, -1, 1,
    '你从希拉斯·暗月那里获得技能卡！\n\n你可以在1级到9级之间在技能卡收藏中激活技能卡。', -1),
(2205339, 0, 8, '黄金技能卡 - 能量箭', 137694, 3, 134221824, 1, 5000000,
    512, -1, 1, 100, 92657, 0, -1, -1, -1, 1,
    '你从希拉斯·暗月那里获得技能卡！\n\n你可以在1级到9级之间在技能卡收藏中激活技能卡。', -1)
ON DUPLICATE KEY UPDATE
    `class` = VALUES(`class`),
    `subclass` = VALUES(`subclass`),
    `name` = VALUES(`name`),
    `displayid` = VALUES(`displayid`),
    `Quality` = VALUES(`Quality`),
    `Flags` = VALUES(`Flags`),
    `BuyCount` = VALUES(`BuyCount`),
    `BuyPrice` = VALUES(`BuyPrice`),
    `AllowableClass` = VALUES(`AllowableClass`),
    `AllowableRace` = VALUES(`AllowableRace`),
    `RequiredLevel` = VALUES(`RequiredLevel`),
    `stackable` = VALUES(`stackable`),
    `spellid_1` = VALUES(`spellid_1`),
    `spelltrigger_1` = VALUES(`spelltrigger_1`),
    `spellcharges_1` = VALUES(`spellcharges_1`),
    `spellcooldown_1` = VALUES(`spellcooldown_1`),
    `spellcategorycooldown_1` = VALUES(`spellcategorycooldown_1`),
    `bonding` = VALUES(`bonding`),
    `description` = VALUES(`description`),
    `Material` = VALUES(`Material`);
