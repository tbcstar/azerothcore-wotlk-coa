-- Apex Huntmasters: Alliance name change.
-- "Huntmaster" stays the subtitle; the personal name is Torvald Greyfeather.

START TRANSACTION;

UPDATE `creature_template`
   SET `name` = '托瓦尔德·灰羽', `subname` = '狩猎大师'
 WHERE `entry` = 9916111;

COMMIT;
