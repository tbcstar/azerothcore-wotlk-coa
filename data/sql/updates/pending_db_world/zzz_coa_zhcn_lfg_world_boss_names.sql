-- The world boss dungeon row that the 2026-11-12 upstream merge added is the
-- only LFG entry whose name is still English in the shipped world database.
UPDATE `lfgdungeons_dbc` SET `Name_Lang_enUS` = '艾索雷葛斯（PvE）' WHERE `Name_Lang_enUS` = 'Azuregos (PvE)';
UPDATE `lfgdungeons_dbc` SET `Name_Lang_zhCN` = '艾索雷葛斯（PvE）' WHERE `Name_Lang_zhCN` = 'Azuregos (PvE)';
