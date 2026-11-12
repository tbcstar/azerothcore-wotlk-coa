-- 清理团队代币（Global Token）描述里的残留英文部位名与不一致译名
-- 例如：'此代币是用于 1 级Boots槽位物品的通用代币…暴风城（玛丁雷少校） or 奥格瑞玛（伦萨克）。'

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Boots', '靴子')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Boots%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Bracer', '护腕')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Bracer%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Gloves', '手套')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Gloves%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Belt', '腰带')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Belt%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Chest', '胸甲')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Chest%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Shoulder', '肩部')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Shoulder%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Cloak', '披风')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Cloak%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Ring', '戒指')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Ring%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Neck', '项链')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Neck%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Head', '头部')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Head%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Legs', '腿部')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Legs%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, 'Leg', '腿部')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%Leg%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, ' or ', ' 或 ')
WHERE `description` LIKE '%代币%' AND `description` LIKE '% or %';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '玛丁雷少校', '马廷利少校')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%玛丁雷少校%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '（伦萨克）', '（伦萨克督军）')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%（伦萨克）%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '(伦萨克)', '(伦萨克督军)')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%(伦萨克)%';

-- 描述头部的难度标签（客户端把 @标签@ 渲染成单独一行彩色文字）

UPDATE `item_template`
SET `description` = REPLACE(`description`, '@Mythic Raid@', '@神话团本@')
WHERE `description` LIKE '%@Mythic Raid@%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '@Heroic Raid@', '@英雄团本@')
WHERE `description` LIKE '%@Heroic Raid@%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '@Ascended Raid@', '@飞升团本@')
WHERE `description` LIKE '%@Ascended Raid@%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '@Ascended@', '@飞升@')
WHERE `description` LIKE '%@Ascended@%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '@Worldforged@', '@世界铸造@')
WHERE `description` LIKE '%@Worldforged@%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '@Prestigious@', '@尊贵@')
WHERE `description` LIKE '%@Prestigious@%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '@Classic@', '@经典@')
WHERE `description` LIKE '%@Classic@%';

UPDATE `item_template`
SET `description` = REPLACE(`description`, '@The Burning Crusade@', '@燃烧的远征@')
WHERE `description` LIKE '%@The Burning Crusade@%';

-- 阶数写法统一为 T1/T2/T3…，部位名统一用「部位」

UPDATE `item_template`
SET `description` = REPLACE(REPLACE(`description`, '第 2.5 阶', 'T2.5 '), '2.5 级', 'T2.5 ')
WHERE `description` LIKE '%代币%'
    AND (`description` LIKE '%第 2.5 阶%' OR `description` LIKE '%2.5 级%');

UPDATE `item_template`
SET `description` = REPLACE(REPLACE(`description`, '第 1 阶', 'T1 '), '1 级', 'T1 ')
WHERE `description` LIKE '%代币%' AND (`description` LIKE '%第 1 阶%' OR `description` LIKE '%1 级%');

UPDATE `item_template`
SET `description` = REPLACE(REPLACE(`description`, '第 2 阶', 'T2 '), '2 级', 'T2 ')
WHERE `description` LIKE '%代币%' AND (`description` LIKE '%第 2 阶%' OR `description` LIKE '%2 级%');

UPDATE `item_template`
SET `description` = REPLACE(REPLACE(`description`, '第 3 阶', 'T3 '), '3 级', 'T3 ')
WHERE `description` LIKE '%代币%' AND (`description` LIKE '%第 3 阶%' OR `description` LIKE '%3 级%');

UPDATE `item_template`
SET `description` = REPLACE(REPLACE(`description`, '第 4 阶', 'T4 '), '4 级', 'T4 ')
WHERE `description` LIKE '%代币%' AND (`description` LIKE '%第 4 阶%' OR `description` LIKE '%4 级%');

UPDATE `item_template`
SET `description` = REPLACE(REPLACE(`description`, '第 5 阶', 'T5 '), '5 级', 'T5 ')
WHERE `description` LIKE '%代币%' AND (`description` LIKE '%第 5 阶%' OR `description` LIKE '%5 级%');

UPDATE `item_template`
SET `description` = REPLACE(REPLACE(`description`, '第 6 阶', 'T6 '), '6 级', 'T6 ')
WHERE `description` LIKE '%代币%' AND (`description` LIKE '%第 6 阶%' OR `description` LIKE '%6 级%');

UPDATE `item_template`
SET `description` = REPLACE(`description`, '槽位', '部位')
WHERE `description` LIKE '%代币%' AND `description` LIKE '%槽位%';
