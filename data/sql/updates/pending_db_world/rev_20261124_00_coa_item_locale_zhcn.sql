-- CoA item names are Chinese in item_template, but the CoA data set (item_template_coa) has no
-- zhCN rows in item_template_locale, unlike the stock items that carry one row per locale.
-- Fill the gap from the base row so a zhCN session resolves CoA items through the locale table,
-- and so their Chinese survives a later base-name refresh from an English data set.
-- A database without the CoA provenance table is left untouched, and reapplying rewrites only
-- the CoA rows.

SET @coa_item_locale = 'zhCN';

SELECT IF(
    EXISTS (SELECT 1 FROM `information_schema`.`TABLES`
        WHERE `TABLE_SCHEMA` = DATABASE() AND `TABLE_NAME` = 'item_template_coa'),
    CONCAT('DELETE FROM `item_template_locale` WHERE `locale` = ', QUOTE(@coa_item_locale),
        ' AND `ID` IN (SELECT `entry` FROM `item_template_coa`)'),
    'DO 0') INTO @coa_item_locale_delete;
PREPARE `coa_item_locale_delete` FROM @coa_item_locale_delete;
EXECUTE `coa_item_locale_delete`;
DEALLOCATE PREPARE `coa_item_locale_delete`;

SELECT IF(
    EXISTS (SELECT 1 FROM `information_schema`.`TABLES`
        WHERE `TABLE_SCHEMA` = DATABASE() AND `TABLE_NAME` = 'item_template_coa'),
    CONCAT('INSERT INTO `item_template_locale` (`ID`, `locale`, `Name`, `Description`, `VerifiedBuild`)',
        ' SELECT `it`.`entry`, ', QUOTE(@coa_item_locale), ', `it`.`name`, `it`.`description`, 0',
        ' FROM `item_template` `it` JOIN `item_template_coa` `c` ON `c`.`entry` = `it`.`entry`'),
    'DO 0') INTO @coa_item_locale_insert;
PREPARE `coa_item_locale_insert` FROM @coa_item_locale_insert;
EXECUTE `coa_item_locale_insert`;
DEALLOCATE PREPARE `coa_item_locale_insert`;
