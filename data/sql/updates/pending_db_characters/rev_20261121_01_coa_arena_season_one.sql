-- Keep the fresh realm on arena season 1.
--
-- The character base dump ships `active_arena_season` as (8, 1), the WotLK season 8.
-- A new realm has to start at season 1, and the season must match a row in
-- `acore_world`.`game_event_arena_seasons` (season 1 -> event 75), otherwise the
-- arena events stay closed with "ArenaSeason (1) must be an existant Arena Season".
-- This patch runs once per database: later seasons are switched with
-- `.arena season start <N>` and are not rolled back by this file.

DELETE FROM `active_arena_season` WHERE `season_id` <> 1;

INSERT INTO `active_arena_season` (`season_id`, `season_state`)
SELECT 1, 1
WHERE NOT EXISTS (SELECT 1 FROM `active_arena_season` WHERE `season_id` = 1);

UPDATE `active_arena_season` SET `season_state` = 1 WHERE `season_id` = 1;
