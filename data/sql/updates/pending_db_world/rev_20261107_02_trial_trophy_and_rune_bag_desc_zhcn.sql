-- ZHCN descriptions for the Trial Master's Trophy and the Runes of Ascension bags.
--
-- The live world database still carries the English `description`, so the
-- tooltip falls back to the source text. Both rows are matched on their
-- current English text, so re-running the file is a no-op.

UPDATE `item_template`
SET `description` = '完成试炼获得的奖杯，可用于兑换奖励。\n\n可以在任意主城或起始区域与挑战大师兑换专属外观。'
WHERE `entry` = 97751
    AND `description` LIKE 'A trophy earned by completing trials%';

UPDATE `item_template`
SET `description` = '内含 12,500 枚符文'
WHERE `entry` = 509872
    AND `description` LIKE 'Contains 12,500 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 15,000 枚符文'
WHERE `entry` = 509873
    AND `description` LIKE 'Contains 15,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 17,500 枚符文'
WHERE `entry` = 509886
    AND `description` LIKE 'Contains 17,500 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 20,000 枚符文'
WHERE `entry` = 509874
    AND `description` LIKE 'Contains 20,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 25,000 枚符文'
WHERE `entry` = 509875
    AND `description` LIKE 'Contains 25,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 30,000 枚符文'
WHERE `entry` = 509876
    AND `description` LIKE 'Contains 30,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 32,500 枚符文'
WHERE `entry` = 509893
    AND `description` LIKE 'Contains 32,500 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 35,000 枚符文'
WHERE `entry` = 518448
    AND `description` LIKE 'Contains 35,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 39,000 枚符文'
WHERE `entry` = 509894
    AND `description` LIKE 'Contains 39,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 40,000 枚符文'
WHERE `entry` = 518449
    AND `description` LIKE 'Contains 40,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 45,500 枚符文'
WHERE `entry` = 509895
    AND `description` LIKE 'Contains 45,500 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 50,000 枚符文'
WHERE `entry` = 518450
    AND `description` LIKE 'Contains 50,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 52,000 枚符文'
WHERE `entry` = 509896
    AND `description` LIKE 'Contains 52,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 65,000 枚符文'
WHERE `entry` = 509897
    AND `description` LIKE 'Contains 65,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 200,000 枚符文'
WHERE `entry` = 800902
    AND `description` LIKE 'Contains 200,000 Runes of Ascension%';

UPDATE `item_template`
SET `description` = '内含 500,000 枚符文'
WHERE `entry` = 2509893
    AND `description` LIKE 'Contains 500,000 Runes of Ascension%';
