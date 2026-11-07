-- The Runes of Ascension item inherited a mistranslated ZHCN name.
-- Guarded by both possible current values, so a re-run changes nothing.

UPDATE `item_template`
SET `name` = '飞升符文'
WHERE `entry` = 375250
    AND `name` IN ('Runes of Ascension', '降阶符文');
