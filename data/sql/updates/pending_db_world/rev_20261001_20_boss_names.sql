-- Boss names Ascension uses (Exiles creature names); vanilla names stayed here, e.g. the Spirestone rares in Lower
-- Blackrock Spire are Ascension bosses (Wizz'Magg, Razmorg, Chop'gog, Xot'hot). Sneed's Shredder (642) stays as it is.

UPDATE `creature_template` SET `name` = '米德温特队长' WHERE `entry` IN (3872, 103872, 203872); -- was Deathsworn Captain
UPDATE `creature_template` SET `name` = '亮翼' WHERE `entry` IN (5912, 105912, 205912); -- was Deviate Faerie Dragon
UPDATE `creature_template` SET `name` = '魔术师维兹马格' WHERE `entry` IN (9217, 109217, 209217); -- was Spirestone Lord Magus
UPDATE `creature_template` SET `name` = '斩首者拉兹莫格' WHERE `entry` IN (9218, 109218, 209218); -- was Spirestone Battle Lord
UPDATE `creature_template` SET `name` = '屠夫乔普戈格' WHERE `entry` IN (9219, 109219, 209219); -- was Spirestone Butcher
UPDATE `creature_template` SET `name` = '燃烧者克索特霍特' WHERE `entry` IN (10263, 110263, 210263); -- was Burning Felguard
