-- Re-seed the Manastorm hub death returns after a world import.
--
-- A world baseline archive can be exported from a database that still carried the
-- retired Horde pad GUID 6901536 (deleted by rev_20260924_01 and rev_20260925_35,
-- replaced by 6901539 in rev_20261028_10). The archive's `updates` ledger already
-- lists the module base files, so the updater skips them and nothing repairs the
-- stale mapping. The datastore then resolves only one return pad and refuses to
-- load. This file sorts after every other module update so it always lands last.

DELETE FROM `gameobject` WHERE `guid` = 6901535 AND `id` = 20832;
INSERT INTO `gameobject`
(
    `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`,
    `position_x`, `position_y`, `position_z`, `orientation`,
    `rotation0`, `rotation1`, `rotation2`, `rotation3`,
    `spawntimesecs`, `animprogress`, `state`, `ScriptName`,
    `VerifiedBuild`, `Comment`
)
SELECT
    6901535, 20832, 0, 0, 0, 1, 1,
    -8888.36, 590.391, 93.5542, 2.21732,
    0, 0, 0.895101, 0.445863,
    300, 0, 1, '', NULL, NULL
WHERE NOT EXISTS
(
    SELECT 1
    FROM `gameobject`
    WHERE `guid` = 6901535
);

DELETE FROM `gameobject` WHERE `guid` = 6901539 AND `id` = 20832;
INSERT INTO `gameobject`
(
    `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`,
    `position_x`, `position_y`, `position_z`, `orientation`,
    `rotation0`, `rotation1`, `rotation2`, `rotation3`,
    `spawntimesecs`, `animprogress`, `state`, `ScriptName`,
    `VerifiedBuild`, `Comment`
)
SELECT
    6901539, 20832, 1, 0, 0, 1, 1,
    1648.1, -4431.11, 16.9532, 2.18527,
    0, 0, 0.887843, 0.460146,
    300, 0, 1, '', NULL, NULL
WHERE NOT EXISTS
(
    SELECT 1
    FROM `gameobject`
    WHERE `guid` = 6901539
);

DELETE FROM `manastorm_hub_return`;
INSERT INTO `manastorm_hub_return`
(
    `team_id`,
    `gameobject_guid`,
    `z_offset`
)
SELECT
    0,
    `guid`,
    1.0
FROM `gameobject`
WHERE `guid` = 6901535
  AND `id` = 20832
  AND `map` = 0
UNION ALL
SELECT
    1,
    `guid`,
    1.0
FROM `gameobject`
WHERE `guid` = 6901539
  AND `id` = 20832
  AND `map` = 1;
