-- GM teleports (.teleport <name>): positions picked in game with .gps, on top of
-- rev_20261026_00_coa_ascension_zone_teleports.sql.
-- 10116 ADarkPlace and 10118 TempleOfEmbersDungeon move; 10284 TempleOfEmbersBossRoom, 10285 ShadowboneDepths
-- (the dungeon itself, on map 940) and 10286 AdtDevMap (centre of the flat dev map 929, computed) are new.
DELETE FROM `game_tele` WHERE `id` IN (10116, 10118, 10284, 10285, 10286);
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES
(10116, 601.288, -73.9168, 181.494, 3.36081, 940, '黑暗之地'),
(10118, 325.116, 2542.12, 2071.72, 1.53547, 941, '余烬神殿地下城'),
(10284, 1571.84, 1636.48, 108.664, 0.502659, 941, '余烬神殿首领房间'),
(10285, 2204.33, -1079.07, 262.48, 2.46154, 940, '影骨深渊'),
(10286, 10400, -1333.33, 0.5, 0, 929, 'Adt开发地图');
