-- Conquest of Azeroth: guards direct each class to its own class trainers.
--
-- The stock class-trainer directions stay for the stock classes a realm may still offer. Where CoA class trainers
-- stand, the guard gains a second "Class Trainer" option that points each CoA class to its own trainers in that
-- city. Class conditions show the stock option to the stock classes and the CoA option to the CoA classes.
--
-- WHERE EACH VALUE COMES FROM
--   option and POI keys  SOURCED-DB: research/trainers-guards-markers/guard-directions.md (+ .json), re-derived on
--     coa_grd. Every stock per-class option names a stock class (Druid, Hunter, Mage, Paladin, Priest, Rogue,
--     Shaman, Warlock, Warrior); none names a Death Knight or a CoA class.
--   core path  SOURCED-CORE: a GOSSIP_OPTION_GOSSIP option sends its ActionPoiID as a map flag and then opens its
--     ActionMenuID (PlayerGossip.cpp:302-313); an option shows when OptionNpcFlag & npcflag (PlayerGossip.cpp:65;
--     every guard here has npcflag 1) and its conditions hold. Guard directions exist only as these rows:
--     guards.cpp holds only the Shattrath combat AIs, the only script SendPointOfInterest is
--     culling_of_stratholme.cpp:1240's wave POIs (1000+), and no smart_scripts row sends (action 98) or handles
--     (event 62) these menus.
--   stock directions  DERIVED: the stock "Class Trainer" / "A class trainer" root options, their per-class submenu
--     options, their points of interest and all their locale rows are kept. Section 2 shows each stock root
--     option only to the stock classes (CONDITION_CLASS mask 1535), the 18 guard root options and Dalaran's
--     10082/1 alike, so a CoA class is never sent to a trainer that cannot train it.
--   CoA trainers  SOURCED-DB: the 111 class-trainer spawns (trainer Type 0, Requirement 12-32) that stand in a
--     city or town with guard directions, read from coa_grd2 = scratch acore_world plus every updater-pending file
--     in name order (effective positions). Stormwind 16, Ironforge 11, Darnassus 13 (with Mathrengyl Bearwalker
--     4217), the Exodar 14, Orgrimmar 15, the Undercity 18, Thunder Bluff 7, Silvermoon 16 and Kharanos 1 (Zipak
--     Cogweight, Reaper). Every trainer has its city's faction. No CoA class trainer stands in Dalaran, Shattrath,
--     Razor Hill, Bloodhoof Village, Brill, Goldshire, Dolanaar, Azure Watch or Falconwing Square, so those guards
--     get no CoA option.
--   CoA root options  DESIGN: the 11 root menus of those 9 places get a CoA "Class Trainer" option with the next
--     OptionID free in gossip_menu_option and in its locale table (stock keeps orphan locale rows such as 2121/13),
--     the stock option's icon and broadcast text (so it is localised like the stock one), leading to the CoA
--     submenu. It is shown only to the CoA classes 12-32 (CONDITION_CLASS mask 4294965248).
--   class names  SOURCED-CLIENT: ChrClasses.dbc 12-32 of the CoA client data; the options are ordered by class
--     name.
--   places  SOURCED-CLIENT (server maps/vmaps): the AreaTable id of the spawn cell and the WMOAreaTable name of
--     the WMO group under each spawn, plus the named NPCs and stock POIs within 15/40 yd in coa_grd2; each leaf
--     menu comment below names what was checked. INFERRED: the wording of every text (modelled on the stock guard
--     texts of the same city).
--   points of interest  each new point stands on its trainer's spawn, Icon 7, Flags 99, Importance 0 like the stock
--     class-trainer points; points_of_interest rows need valid map coordinates (ObjectMgr.cpp:8477).
--   menus and texts  the gossip loader drops a gossip_menu row whose TextID has no npc_text (ObjectMgr.cpp:10283)
--     and an npc_text BroadcastTextID that does not exist (ObjectMgr.cpp:6767); each submenu text copies the
--     city's stock submenu text with its broadcast text id. The id block holds 100 menus, so trainers who stand in
--     the same hall share one leaf menu whose text names each of them.
--
-- Counts: no stock row deleted or changed; 11 CoA root options, 9 CoA submenus with 111 options, 84 leaf menus,
-- 111 points of interest; 30 class conditions.

-- ---------------------------------------------------------------------------
-- 1. Directions to CoA class trainers
-- ---------------------------------------------------------------------------
-- Stormwind: submenu 932100 (text copied from stock npc_text 898), 16 class options, reached from 435/16
--     (Stormwind City Guard 68, City Patroller 1976, Harbor Guard 29712).
--   leaf 932110: Barbarian Connor the Barbarian guid 9004500 POI 9321000; checked at the spawn: Command Center,
--       Old Town (WMO A01Sw_Oldtown_Commandcenter)
--   leaf 932111: Guardian Kalanaros the Bard guid 9004501 POI 9321001; checked at the spawn: Pig and Whistle
--       Tavern, Old Town (WMO area Old Town; barmaid Elly Langston 6.5 yd)
--   leaf 932112: Templar Brother Faren guid 9004502 POI 9321002, Sun Cleric Crusader Natalie guid 9004503 POI
--       9321003; checked at the spawn: Cathedral of Light nave (WMO area Cathedral of Light)
--   leaf 932113: Witch Doctor The Great Yumbabo guid 9004504 POI 9321004; checked at the spawn: The Park lawn
--       (AreaTable 10224; elven table and benches 4-6 yd, park moonwell 24 yd)
--   leaf 932114: Witch Hunter Talvin guid 9004505 POI 9321005; checked at the spawn: Cathedral Square paving south
--       of the cathedral (AreaTable 10225)
--   leaf 932115: Stormbringer Viktor Thunder-Eye guid 9004506 POI 9321006; checked at the spawn: lakeshore under
--       the trees below the Valley of Heroes (AreaTable 1617)
--   leaf 932116: Bloodmage Sofiya Taylor guid 9004507 POI 9321007, Necromancer Jefferson Lively guid 9004510 POI
--       9321010, Cultist Gerald the Demented guid 9004512 POI 9321012; checked at the spawn: The Slaughtered Lamb,
--       Mage Quarter: taproom z 122, cellar z 101 (WMO area The Slaughtered Lamb)
--   leaf 932117: Chronomancer Yisdormi guid 9004509 POI 9321009, Runemaster Balthazar Marone guid 9004515 POI
--       9321015; checked at the spawn: Wizard's Sanctum under the Mage Quarter tower (WMO area Wizard's Sanctum;
--       areatrigger_teleport 704 "Wizard Sanctum Tower Portal")
--   leaf 932118: Ranger Phoebe Lakewander guid 9004508 POI 9321008; checked at the spawn: Dwarven District plaza
--       before the hunters' lodge (stable master Jenova Stoneshield 11.7 yd)
--   leaf 932119: Pyromancer Michael Pietrus guid 9004511 POI 9321011; checked at the spawn: Dwarven District
--       forges (WMO area Dwarven District; stock POI 41 Therum Deepforge 7.6 yd)
--   leaf 932120: Tinker James Randal guid 9004513 POI 9321013; checked at the spawn: Dwarven District engineering
--       yard (Lilliam Sparkspindle 11.2 yd, Sprite Jumpsprocket 6.7 yd)
--   leaf 932121: Reaper Wilfred Soulcatcher guid 9004514 POI 9321014; checked at the spawn: city cemetery beside
--       the cathedral, foot of Sw_Staircase (gravestones 10-20 yd)
DELETE FROM `points_of_interest_locale` WHERE `ID` IN (
    9321000, 9321007, 9321009, 9321012, 9321001, 9321010, 9321011, 9321008, 9321014, 9321015, 9321006, 9321003,
    9321002, 9321013, 9321004, 9321005);
DELETE FROM `points_of_interest` WHERE `ID` IN (
    9321000, 9321007, 9321009, 9321012, 9321001, 9321010, 9321011, 9321008, 9321014, 9321015, 9321006, 9321003,
    9321002, 9321013, 9321004, 9321005);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`)
VALUES
(9321000, -8810, 327, 7, 99, 0, '暴风城野蛮人训练师'),
(9321007, -8948.5, 998.5, 7, 99, 0, '暴风城血法师训练师'),
(9321009, -9002.5, 879.5, 7, 99, 0, '暴风城时光术士训练师'),
(9321012, -8972.5, 1025.5, 7, 99, 0, '暴风城邪教徒训练师'),
(9321001, -8621, 412.5, 7, 99, 0, '暴风城守护者训练师'),
(9321010, -8988.5, 1039.5, 7, 99, 0, '暴风城死灵法师训练师'),
(9321011, -8440.5, 609, 7, 99, 0, '暴风城炎术师训练师'),
(9321008, -8436, 566, 7, 99, 0, '暴风城游侠训练师'),
(9321014, -8470, 903.5, 7, 99, 0, '暴风城死神训练师'),
(9321015, -8998, 866.5, 7, 99, 0, '暴风城符文大师训练师'),
(9321006, -9037, 549.5, 7, 99, 0, '暴风城风暴使者训练师'),
(9321003, -8547.5, 828, 7, 99, 0, '暴风城太阳祭司训练师'),
(9321002, -8541, 861, 7, 99, 0, '暴风城圣殿骑士训练师'),
(9321013, -8355, 652, 7, 99, 0, '暴风城工匠训练师'),
(9321004, -8746, 1129, 7, 99, 0, '暴风城巫医训练师'),
(9321005, -8598, 815, 7, 99, 0, '暴风城猎魔人训练师');

DELETE FROM `npc_text_locale` WHERE `ID` IN (
    932100, 932110, 932111, 932112, 932113, 932114, 932115, 932116, 932117, 932118, 932119, 932120, 932121);
DELETE FROM `npc_text` WHERE `ID` IN (
    932100, 932110, 932111, 932112, 932113, 932114, 932115, 932116, 932117, 932118, 932119, 932120, 932121);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(932100, '你在找哪个职业的训练师？', '你在找哪个职业的训练师？', 2901, 7, 1, 0, 0, 0, 0, 0, 0),
(932110, '野蛮人康纳？你还没看到他，就能先听到他。他在旧城区指挥中心楼上训练他那帮人。', '野蛮人康纳？你还没看到他，就能先听到他。他在旧城区指挥中心楼上训练他那帮人。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932111, '吟游诗人卡拉纳罗斯教授守护者之道，听起来虽然古怪。你会在旧城区猪和哨声旅店的酒厅里找到他。', '吟游诗人卡拉纳罗斯教授守护者之道，听起来虽然古怪。你会在旧城区猪和哨声旅店的酒厅里找到他。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932112, '前往大教堂广场的光明大教堂。法伦修士在正殿里训练圣殿骑士，十字军娜塔莉则训练太阳祭司，两人都在里面。', '前往大教堂广场的光明大教堂。法伦修士在正殿里训练圣殿骑士，十字军娜塔莉则训练太阳祭司，两人都在里面。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932113, '一个巨魔巫医待在暴风城正中间，你信吗。伟大的扬巴博已经把公园当成了家，就在月井旁精灵桌椅附近的草坪上。', '一个巨魔巫医待在暴风城正中间，你信吗。伟大的扬巴博已经把公园当成了家，就在月井旁精灵桌椅附近的草坪上。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932114, '塔尔文在大教堂广场守望，就在光明大教堂南边的开阔石板地上。当心他看你的眼神。', '塔尔文在大教堂广场守望，就在光明大教堂南边的开阔石板地上。当心他看你的眼神。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932115, '维克托·雷眼喜欢靠近水边和开阔的天空。去英雄谷下方的湖岸边、树下找他。', '维克托·雷眼喜欢靠近水边和开阔的天空。去英雄谷下方的湖岸边、树下找他。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932116, '法师区的屠宰羔羊旅店专门吸引那类人。索菲娅·泰勒在酒厅里教血法师。下到地窖去找死灵法师杰斐逊·莱弗利和邪教徒疯癫的杰拉德。', '法师区的屠宰羔羊旅店专门吸引那类人。索菲娅·泰勒在酒厅里教血法师。下到地窖去找死灵法师杰斐逊·莱弗利和邪教徒疯癫的杰拉德。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932117, '从法师区的塔楼传送门下去，前往巫师圣殿。伊斯多弥在那里教时光术士，巴尔萨扎·马龙教符文大师。', '从法师区的塔楼传送门下去，前往巫师圣殿。伊斯多弥在那里教时光术士，巴尔萨扎·马龙教符文大师。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932118, '菲比·湖漫者在矮人区训练游侠。她在猎人小屋前的广场上，靠近耶诺瓦·石盾的马厩。', '菲比·湖漫者在矮人区训练游侠。她在猎人小屋前的广场上，靠近耶诺瓦·石盾的马厩。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932119, '迈克尔·皮特鲁斯自然是靠近火的。去矮人区锻炉旁的火盆边找他。', '迈克尔·皮特鲁斯自然是靠近火的。去矮人区锻炉旁的火盆边找他。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932120, '詹姆斯·兰德尔在矮人区的工程场院里捣鼓发明，和莉莉安·火花轴针及她的学徒们在一起。', '詹姆斯·兰德尔在矮人区的工程场院里捣鼓发明，和莉莉安·火花轴针及她的学徒们在一起。', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(932121, '威尔弗雷德·捕魂者在光明大教堂旁的城市墓地里与死者作伴。他在从大教堂下来的台阶脚下等待。', '威尔弗雷德·捕魂者在光明大教堂旁的城市墓地里与死者作伴。他在从大教堂下来的台阶脚下等待。', 0, 0, 1, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (
    932100, 932110, 932111, 932112, 932113, 932114, 932115, 932116, 932117, 932118, 932119, 932120, 932121);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932100, 932100),
(932110, 932110),
(932111, 932111),
(932112, 932112),
(932113, 932113),
(932114, 932114),
(932115, 932115),
(932116, 932116),
(932117, 932117),
(932118, 932118),
(932119, 932119),
(932120, 932120),
(932121, 932121);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 932100;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932100;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(932100, 0, 0, '野蛮人', 0, 1, 1, 932110, 9321000, 0, 0, '', 0, 0),
(932100, 1, 0, '血法师', 0, 1, 1, 932116, 9321007, 0, 0, '', 0, 0),
(932100, 2, 0, '时光术士', 0, 1, 1, 932117, 9321009, 0, 0, '', 0, 0),
(932100, 3, 0, '邪教徒', 0, 1, 1, 932116, 9321012, 0, 0, '', 0, 0),
(932100, 4, 0, '守护者', 0, 1, 1, 932111, 9321001, 0, 0, '', 0, 0),
(932100, 5, 0, '死灵法师', 0, 1, 1, 932116, 9321010, 0, 0, '', 0, 0),
(932100, 6, 0, '炎术师', 0, 1, 1, 932119, 9321011, 0, 0, '', 0, 0),
(932100, 7, 0, '游侠', 0, 1, 1, 932118, 9321008, 0, 0, '', 0, 0),
(932100, 8, 0, '死神', 0, 1, 1, 932121, 9321014, 0, 0, '', 0, 0),
(932100, 9, 0, '符文大师', 0, 1, 1, 932117, 9321015, 0, 0, '', 0, 0),
(932100, 10, 0, '风暴使者', 0, 1, 1, 932115, 9321006, 0, 0, '', 0, 0),
(932100, 11, 0, '太阳祭司', 0, 1, 1, 932112, 9321003, 0, 0, '', 0, 0),
(932100, 12, 0, '圣殿骑士', 0, 1, 1, 932112, 9321002, 0, 0, '', 0, 0),
(932100, 13, 0, '工匠', 0, 1, 1, 932120, 9321013, 0, 0, '', 0, 0),
(932100, 14, 0, '巫医', 0, 1, 1, 932113, 9321004, 0, 0, '', 0, 0),
(932100, 15, 0, '猎魔人', 0, 1, 1, 932114, 9321005, 0, 0, '', 0, 0);

-- Ironforge: submenu 932101 (text copied from stock npc_text 2766), 11 class options, reached from 2121/14
--     (Ironforge Guard 5595).
--   leaf 932122: Barbarian Modor Tarmund guid 9004516 POI 9321020, Guardian Dagnan the Blade guid 9004517 POI
--       9321021; checked at the spawn: Hall of Arms, Military Ward (WMO area Hall of Arms)
--   leaf 932123: Primalist Threllin the Bearded guid 9004523 POI 9321022; checked at the spawn: Military Ward
--       square by the brazier (WMO area Hall of Arms; stock POI 61 Hall of Arms 8.8 yd)
--   leaf 932124: Templar Yelya Flinthammer guid 9004518 POI 9321023, Sun Cleric Sunbeard the Pious guid 9004519
--       POI 9321024; checked at the spawn: Hall of Mysteries: floor z 504 and gallery z 525 (WMO area Hall of
--       Mysteries)
--   leaf 932125: Necromancer Baralor Oathbreaker guid 9004525 POI 9321025, Cultist Dippo the Doomer guid 9004526
--       POI 9321026; checked at the spawn: The Forlorn Cavern (WMO area The Forlorn Cavern)
--   leaf 932126: Tinker Zipgear Zoombang guid 9004520 POI 9321027; checked at the spawn: Tinker Town cavern floor
--       (WMO area Tinker Town)
--   leaf 932127: Pyromancer Penny Pyrewhistle guid 9004521 POI 9321028; checked at the spawn: The Great Forge
--       floor (WMO area The Great Forge; stock POI 67 The Great Forge 13.6 yd)
--   leaf 932128: Stormbringer Kharaz Dak guid 9004524 POI 9321029; checked at the spawn: ring road of The Great
--       Forge, north-east side (WMO area The Great Forge; stock POI 65 16.7 yd)
--   leaf 932129: Runemaster Beelo Blitzcog guid 9004522 POI 9321030; checked at the spawn: Hall of Explorers
--       library gallery (WMO area The Library)
DELETE FROM `points_of_interest_locale` WHERE `ID` IN (
    9321020, 9321026, 9321021, 9321025, 9321022, 9321028, 9321030, 9321029, 9321024, 9321023, 9321027);
DELETE FROM `points_of_interest` WHERE `ID` IN (
    9321020, 9321026, 9321021, 9321025, 9321022, 9321028, 9321030, 9321029, 9321024, 9321023, 9321027);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`)
VALUES
(9321020, -5054, -1251, 7, 99, 0, '铁炉堡野蛮人训练师'),
(9321026, -4630, -1100, 7, 99, 0, '铁炉堡邪教徒训练师'),
(9321021, -5029, -1231, 7, 99, 0, '铁炉堡守护者训练师'),
(9321025, -4617, -1130, 7, 99, 0, '铁炉堡死灵法师训练师'),
(9321022, -5026, -1262, 7, 99, 0, '铁炉堡仪祭师训练师'),
(9321028, -4806, -1101, 7, 99, 0, '铁炉堡炎术师训练师'),
(9321030, -4609, -1254, 7, 99, 0, '铁炉堡符文大师训练师'),
(9321029, -4737, -1144, 7, 99, 0, '铁炉堡风暴使者训练师'),
(9321024, -4588.5, -896.5, 7, 99, 0, '铁炉堡太阳祭司训练师'),
(9321023, -4620.5, -896.5, 7, 99, 0, '铁炉堡圣殿骑士训练师'),
(9321027, -4817, -1281, 7, 99, 0, '铁炉堡工匠训练师');

DELETE FROM `npc_text_locale` WHERE `ID` IN (
    932101, 932122, 932123, 932124, 932125, 932126, 932127, 932128, 932129);
DELETE FROM `npc_text` WHERE `ID` IN (
    932101, 932122, 932123, 932124, 932125, 932126, 932127, 932128, 932129);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(932101, '你找的是哪个职业的训练师？', '你找的是哪个职业的训练师？', 7000, 0, 1, 0),
(932122, '你自己去军事区的武器大厅，就在大门的东边。莫多尔·塔蒙德在那里训练野蛮人，利刃达格南训练守护者。', '你自己去军事区的武器大厅，就在大门的东边。莫多尔·塔蒙德在那里训练野蛮人，利刃达格南训练守护者。', 0, 0, 1, 0),
(932123, '长须者斯雷林？他在军事区广场上，武器大厅和猎人厅之间的火盆旁。你不会错过那把胡子的。', '长须者斯雷林？他在军事区广场上，武器大厅和猎人厅之间的火盆旁。你不会错过那把胡子的。', 0, 0, 1, 0),
(932124, '从大门向北走到秘法大厅。耶莉娅·燧石锤在大厅一层训练圣殿骑士，虔诚者日须则在楼上的回廊教太阳祭司。', '从大门向北走到秘法大厅。耶莉娅·燧石锤在大厅一层训练圣殿骑士，虔诚者日须则在楼上的回廊教太阳祭司。', 0, 0, 1, 0),
(932125, '那帮人不聚在孤寂洞穴还能聚在哪儿？巴拉洛·破誓者教死灵法师，末日者迪波教邪教徒。在下面看好你的钱包。', '那帮人不聚在孤寂洞穴还能聚在哪儿？巴拉洛·破誓者教死灵法师，末日者迪波教邪教徒。在下面看好你的钱包。', 0, 0, 1, 0),
(932126, '齿轮小子祖姆邦在侏儒区，大门的东边。从贸易区进来的隧道一过去，你就能在洞窟地面上找到他。', '齿轮小子祖姆邦在侏儒区，大门的东边。从贸易区进来的隧道一过去，你就能在洞窟地面上找到他。', 0, 0, 1, 0),
(932127, '佩妮·柴堆哨在大锻炉那里操弄她的火焰，就在城市中央的大风箱旁。', '佩妮·柴堆哨在大锻炉那里操弄她的火焰，就在城市中央的大风箱旁。', 0, 0, 1, 0),
(932128, '卡拉兹·达克在大锻炉附近，稍微往北一点，在东侧的环形路上。', '卡拉兹·达克在大锻炉附近，稍微往北一点，在东侧的环形路上。', 0, 0, 1, 0),
(932129, '比洛·闪电齿轮在探险者大厅研究他的符文，就在图书馆回廊上、泰坦花瓶旁。', '比洛·闪电齿轮在探险者大厅研究他的符文，就在图书馆回廊上、泰坦花瓶旁。', 0, 0, 1, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (
    932101, 932122, 932123, 932124, 932125, 932126, 932127, 932128, 932129);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932101, 932101),
(932122, 932122),
(932123, 932123),
(932124, 932124),
(932125, 932125),
(932126, 932126),
(932127, 932127),
(932128, 932128),
(932129, 932129);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 932101;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932101;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(932101, 0, 0, '野蛮人', 0, 1, 1, 932122, 9321020, 0, 0, '', 0, 0),
(932101, 1, 0, '邪教徒', 0, 1, 1, 932125, 9321026, 0, 0, '', 0, 0),
(932101, 2, 0, '守护者', 0, 1, 1, 932122, 9321021, 0, 0, '', 0, 0),
(932101, 3, 0, '死灵法师', 0, 1, 1, 932125, 9321025, 0, 0, '', 0, 0),
(932101, 4, 0, '仪祭师', 0, 1, 1, 932123, 9321022, 0, 0, '', 0, 0),
(932101, 5, 0, '炎术师', 0, 1, 1, 932127, 9321028, 0, 0, '', 0, 0),
(932101, 6, 0, '符文大师', 0, 1, 1, 932129, 9321030, 0, 0, '', 0, 0),
(932101, 7, 0, '风暴使者', 0, 1, 1, 932128, 9321029, 0, 0, '', 0, 0),
(932101, 8, 0, '太阳祭司', 0, 1, 1, 932124, 9321024, 0, 0, '', 0, 0),
(932101, 9, 0, '圣殿骑士', 0, 1, 1, 932124, 9321023, 0, 0, '', 0, 0),
(932101, 10, 0, '工匠', 0, 1, 1, 932126, 9321027, 0, 0, '', 0, 0);

-- Darnassus: submenu 932102 (text copied from stock npc_text 3022), 13 class options, reached from 2352/12
--     (Darnassus Sentinel 4262), 10265/12 (no user (orphan copy of 2352)).
--   leaf 932130: Felsworn Pelinor Felsight guid 9004527 POI 9321040, Knight of Xoroth Zeltur'atha the Exile guid
--       9004528 POI 9321041; checked at the spawn: Warrior's Terrace upper walk (AreaTable 1660; stock POI 101
--       12.8 yd)
--   leaf 932131: Ranger Surellion Trueshot guid 9004532 POI 9321042; checked at the spawn: training dummies north
--       of the Warrior's Terrace (AreaTable 1660; dummies 4.7 yd)
--   leaf 932132: Templar Corinthia the Templar guid 9004530 POI 9321043, Starcaller Moonpriest Ty'lera guid
--       9004535 POI 9321044; checked at the spawn: Temple of the Moon (WMO area Temple of the Moon)
--   leaf 932133: Chronomancer Belladormi guid 9004533 POI 9321045; checked at the spawn: Temple Gardens, west
--       colonnade of the temple grounds (AreaTable 1661; Chief Archaeologist Greywhisker 9.7 yd)
--   leaf 932134: Stormbringer Pak Thunderhoof guid 9004529 POI 9321046; checked at the spawn: Temple Gardens islet
--       (WMO area The Temple Gardens; Firodren Mooncaller 12.7 yd)
--   leaf 932135: Primalist Mathrengyl Bearwalker guid 46472 POI 9321047; checked at the spawn: upper Cenarion
--       Enclave (WMO area Cenarion Enclave; stock druid POI 98 9.5 yd)
--   leaf 932136: Cultist Soliras Darkwoven guid 9004534 POI 9321048, Reaper Turalen Darkwhisper guid 9004537 POI
--       9321049; checked at the spawn: lower Cenarion Enclave cave, z 1284 (WMO area Cenarion Enclave)
--   leaf 932137: Bloodmage Lokirus Veinspiller guid 9004531 POI 9321050; checked at the spawn: Craftsmen's Terrace
--       alchemy hall (AreaTable 1659; Ainethil 11.5 yd)
--   leaf 932138: Tinker Baarus the Tinker guid 9004536 POI 9321051; checked at the spawn: Craftsmen's Terrace path
--       (AreaTable 1659; Mythrin'dir 14.7 yd)
--   leaf 932139: Runemaster Shayla Runewander guid 9004538 POI 9321052; checked at the spawn: Craftsmen's Terrace
--       enchanting hall (WMO area Craftsmen's Terrace; Taladan 8.1 yd)
DELETE FROM `points_of_interest_locale` WHERE `ID` IN (
    9321050, 9321045, 9321048, 9321040, 9321041, 9321047, 9321042, 9321049, 9321052, 9321044, 9321046, 9321043,
    9321051);
DELETE FROM `points_of_interest` WHERE `ID` IN (
    9321050, 9321045, 9321048, 9321040, 9321041, 9321047, 9321042, 9321049, 9321052, 9321044, 9321046, 9321043,
    9321051);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`)
VALUES
(9321050, 10080, 2360, 7, 99, 0, '达纳苏斯血法师训练师'),
(9321045, 9636, 2600, 7, 99, 0, '达纳苏斯时光术士训练师'),
(9321048, 10067, 2543, 7, 99, 0, '达纳苏斯邪教徒训练师'),
(9321040, 9963, 2276, 7, 99, 0, '达纳苏斯恶魔猎手训练师'),
(9321041, 9973, 2289, 7, 99, 0, '达纳苏斯克索诺斯骑士训练师'),
(9321047, 10179, 2563.98, 7, 99, 0, '达纳苏斯仪祭师训练师'),
(9321042, 9996.5, 2256.5, 7, 99, 0, '达纳苏斯游侠训练师'),
(9321049, 10062, 2566, 7, 99, 0, '达纳苏斯死神训练师'),
(9321052, 10140, 2326, 7, 99, 0, '达纳苏斯符文大师训练师'),
(9321044, 9620, 2540, 7, 99, 0, '达纳苏斯唤星者训练师'),
(9321046, 9760.5, 2418.5, 7, 99, 0, '达纳苏斯风暴使者训练师'),
(9321043, 9626, 2502, 7, 99, 0, '达纳苏斯圣殿骑士训练师'),
(9321051, 10112, 2307.5, 7, 99, 0, '达纳苏斯工匠训练师');

DELETE FROM `npc_text_locale` WHERE `ID` IN (
    932102, 932130, 932131, 932132, 932133, 932134, 932135, 932136, 932137, 932138, 932139);
DELETE FROM `npc_text` WHERE `ID` IN (
    932102, 932130, 932131, 932132, 932133, 932134, 932135, 932136, 932137, 932138, 932139);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(932102, '在达纳苏斯，你会找到技艺精湛的训练师，他们经过漫长岁月的训练与奉献，已将自己所选职业的技艺磨炼至臻。我会指引你找到可以成为你导师的人，你只需说出你所选的道路。', '在达纳苏斯，你会找到技艺精湛的训练师，他们经过漫长岁月的训练与奉献，已将自己所选职业的技艺磨炼至臻。我会指引你找到可以成为你导师的人，你只需说出你所选的道路。', 5339, 0, 1, 0),
(932130, '与邪能力量做交易的人在这里受到严密监视。训练恶魔猎手的佩利诺·邪视，以及克索诺斯骑士的导师、流放者泽尔图拉塔，都待在战士区的上层步道上。', '与邪能力量做交易的人在这里受到严密监视。训练恶魔猎手的佩利诺·邪视，以及克索诺斯骑士的导师、流放者泽尔图拉塔，都待在战士区的上层步道上。', 0, 0, 1, 0),
(932131, '苏雷利昂·精准射击在战士区以北的训练假人处操练她的游侠们。循着她的声音找去。', '苏雷利昂·精准射击在战士区以北的训练假人处操练她的游侠们。循着她的声音找去。', 0, 0, 1, 0),
(932132, '两人都受到月神殿的欢迎。圣殿骑士科林西亚和唤星者的月祭司泰蕾拉都在神殿的下层大厅中教学。', '两人都受到月神殿的欢迎。圣殿骑士科林西亚和唤星者的月祭司泰蕾拉都在神殿的下层大厅中教学。', 0, 0, 1, 0),
(932133, '贝拉多米待在月神殿庭院的西侧柱廊处，就在矮人考古学家灰须身旁。', '贝拉多米待在月神殿庭院的西侧柱廊处，就在矮人考古学家灰须身旁。', 0, 0, 1, 0),
(932134, '一位德莱尼萨满，帕克·雷蹄，在神殿花园的小岛上找了个位置，就在菲罗登·唤月者和草药师们附近。沿着花园小径走上小岛。', '一位德莱尼萨满，帕克·雷蹄，在神殿花园的小岛上找了个位置，就在菲罗登·唤月者和草药师们附近。沿着花园小径走上小岛。', 0, 0, 1, 0),
(932135, '玛斯雷恩吉尔·熊行者从达纳苏斯北部的塞纳里奥区指引仪祭师们。', '玛斯雷恩吉尔·熊行者从达纳苏斯北部的塞纳里奥区指引仪祭师们。', 0, 0, 1, 0),
(932136, '邪教徒的索里拉斯·暗织和死神的图拉伦·暗语居住在塞纳里奥区，沿着盘旋的小路下去，在盗贼们聚集的下层洞穴中。', '邪教徒的索里拉斯·暗织和死神的图拉伦·暗语居住在塞纳里奥区，沿着盘旋的小路下去，在盗贼们聚集的下层洞穴中。', 0, 0, 1, 0),
(932137, '洛基鲁斯·血溅者在工匠区炼金堂敞开的门口等待，就在炼金师艾妮希尔附近。', '洛基鲁斯·血溅者在工匠区炼金堂敞开的门口等待，就在炼金师艾妮希尔附近。', 0, 0, 1, 0),
(932138, '工匠巴鲁斯，一位德莱尼，在工匠区米斯林迪尔的贸易补给店外工作。', '工匠巴鲁斯，一位德莱尼，在工匠区米斯林迪尔的贸易补给店外工作。', 0, 0, 1, 0),
(932139, '谢拉·符文漫游者在工匠区附魔堂研究她的符文，就在塔拉丹身旁。', '谢拉·符文漫游者在工匠区附魔堂研究她的符文，就在塔拉丹身旁。', 0, 0, 1, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (
    932102, 932130, 932131, 932132, 932133, 932134, 932135, 932136, 932137, 932138, 932139);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932102, 932102),
(932130, 932130),
(932131, 932131),
(932132, 932132),
(932133, 932133),
(932134, 932134),
(932135, 932135),
(932136, 932136),
(932137, 932137),
(932138, 932138),
(932139, 932139);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 932102;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932102;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(932102, 0, 0, '血法师', 0, 1, 1, 932137, 9321050, 0, 0, '', 0, 0),
(932102, 1, 0, '时光术士', 0, 1, 1, 932133, 9321045, 0, 0, '', 0, 0),
(932102, 2, 0, '邪教徒', 0, 1, 1, 932136, 9321048, 0, 0, '', 0, 0),
(932102, 3, 0, '恶魔猎手', 0, 1, 1, 932130, 9321040, 0, 0, '', 0, 0),
(932102, 4, 0, '克索诺斯骑士', 0, 1, 1, 932130, 9321041, 0, 0, '', 0, 0),
(932102, 5, 0, '仪祭师', 0, 1, 1, 932135, 9321047, 0, 0, '', 0, 0),
(932102, 6, 0, '游侠', 0, 1, 1, 932131, 9321042, 0, 0, '', 0, 0),
(932102, 7, 0, '死神', 0, 1, 1, 932136, 9321049, 0, 0, '', 0, 0),
(932102, 8, 0, '符文大师', 0, 1, 1, 932139, 9321052, 0, 0, '', 0, 0),
(932102, 9, 0, '唤星者', 0, 1, 1, 932132, 9321044, 0, 0, '', 0, 0),
(932102, 10, 0, '风暴使者', 0, 1, 1, 932134, 9321046, 0, 0, '', 0, 0),
(932102, 11, 0, '圣殿骑士', 0, 1, 1, 932132, 9321043, 0, 0, '', 0, 0),
(932102, 12, 0, '工匠', 0, 1, 1, 932138, 9321051, 0, 0, '', 0, 0);

-- The Exodar: submenu 932103 (text copied from stock npc_text 9533), 14 class options, reached from 7777/11 (Exodar
--     Peacekeeper 16733).
--   leaf 932140: Felsworn Haraaz Felscar guid 9004814 POI 9321060; checked at the spawn: Hunters' Sanctum terrace,
--       Trader's Tier (WMO area Trader's Tier)
--   leaf 932141: Stormbringer Kuraax Stormspeaker guid 9004816 POI 9321061; checked at the spawn: Crystal Hall,
--       east rim of the shamans' stones (WMO area The Crystal Hall)
--   leaf 932142: Knight of Xoroth Vorathaan Ashmantle guid 9004817 POI 9321062; checked at the spawn: forge hall,
--       lower Trader's Tier (WMO area Trader's Tier; stock POIs 206/215 25-28 yd)
--   leaf 932143: Guardian Warden Iruvaa guid 9004818 POI 9321063; checked at the spawn: Warriors' Terrace rim,
--       upper Trader's Tier (WMO area Trader's Tier; stock warrior POI 204 20 yd)
--   leaf 932144: Templar Lightwarden Moraala guid 9004819 POI 9321064; checked at the spawn: Vault of Lights,
--       among the armour stands (WMO area The Vault of Lights; stock paladin POI 201 4.7 yd)
--   leaf 932145: Chronomancer Archivist Tolaara guid 9004822 POI 9321065; checked at the spawn: Vault of Lights
--       emitters (WMO area The Vault of Lights)
--   leaf 932146: Necromancer Soulbinder Kaarun guid 9004823 POI 9321066; checked at the spawn: outside the
--       anchorites' chamber, between the Seat of the Naaru and the Vault of Lights (WMO area The Vault of Lights)
--   leaf 932147: Pyromancer Ilaara Cindervow guid 9004824 POI 9321067; checked at the spawn: Crystal Hall south
--       gate braziers (WMO area The Crystal Hall)
--   leaf 932148: Cultist Nyrosha the Veiled guid 9004825 POI 9321068; checked at the spawn: crystal mine beyond
--       the Crystal Hall (WMO area The Crystal Hall; Broken Miner 10.5 yd)
--   leaf 932149: Starcaller Starseer Naliima guid 9004826 POI 9321069; checked at the spawn: rim of the Seat of
--       the Naaru (WMO area Seat of the Naaru)
--   leaf 932150: Tinker Technician Draalon guid 9004828 POI 9321070; checked at the spawn: power crystals
--       (Exodar_Crystal_Large 17-20 yd; Artificers Drenin 10.6 yd, Andren 12.4 yd)
--   leaf 932151: Reaper Morvaal the Grim guid 9004830 POI 9321071; checked at the spawn: armoury at the back of
--       the Trader's Tier (WMO area Trader's Tier)
--   leaf 932152: Primalist Wildkeeper Oraana guid 9004831 POI 9321072; checked at the spawn: moth keeper's
--       platform, Crystal Hall (WMO area The Crystal Hall; Sixx 11.3 yd)
--   leaf 932153: Runemaster Runecarver Iskaar guid 9004832 POI 9321073; checked at the spawn: enchanters' corner,
--       Crystal Hall (WMO area The Crystal Hall; stock POI 207 Enchanters 20 yd)
DELETE FROM `points_of_interest_locale` WHERE `ID` IN (
    9321065, 9321068, 9321060, 9321063, 9321062, 9321066, 9321072, 9321067, 9321071, 9321073, 9321069, 9321061,
    9321064, 9321070);
DELETE FROM `points_of_interest` WHERE `ID` IN (
    9321065, 9321068, 9321060, 9321063, 9321062, 9321066, 9321072, 9321067, 9321071, 9321073, 9321069, 9321061,
    9321064, 9321070);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`)
VALUES
(9321065, -4078.5, -11433.5, 7, 99, 0, '埃索达时光术士训练师'),
(9321068, -3700, -11540, 7, 99, 0, '埃索达邪教徒训练师'),
(9321060, -4212, -11583, 7, 99, 0, '埃索达恶魔猎手训练师'),
(9321063, -4174, -11648, 7, 99, 0, '埃索达守护者训练师'),
(9321062, -4246, -11686, 7, 99, 0, '埃索达克索诺斯骑士训练师'),
(9321066, -4002, -11510, 7, 99, 0, '埃索达死灵法师训练师'),
(9321072, -3852, -11395, 7, 99, 0, '埃索达仪祭师训练师'),
(9321067, -3833, -11527, 7, 99, 0, '埃索达炎术师训练师'),
(9321071, -4232, -11805, 7, 99, 0, '埃索达死神训练师'),
(9321073, -3887, -11514, 7, 99, 0, '埃索达符文大师训练师'),
(9321069, -3890, -11631, 7, 99, 0, '埃索达唤星者训练师'),
(9321061, -3797, -11470, 7, 99, 0, '埃索达风暴使者训练师'),
(9321064, -4176.5, -11481.5, 7, 99, 0, '埃索达圣殿骑士训练师'),
(9321070, -3958, -11760, 7, 99, 0, '埃索达工匠训练师');

DELETE FROM `npc_text_locale` WHERE `ID` IN (
    932103, 932140, 932141, 932142, 932143, 932144, 932145, 932146, 932147, 932148, 932149, 932150, 932151,
    932152, 932153);
DELETE FROM `npc_text` WHERE `ID` IN (
    932103, 932140, 932141, 932142, 932143, 932144, 932145, 932146, 932147, 932148, 932149, 932150, 932151,
    932152, 932153);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(932103, '你在寻找哪位训练师？', '你在寻找哪位训练师？', 15819, 0, 1, 0),
(932140, '哈拉兹·邪痕待在商人阶梯的猎手圣所露台上。从锻炉大厅沿坡道上去。', '哈拉兹·邪痕待在商人阶梯的猎手圣所露台上。从锻炉大厅沿坡道上去。', 0, 0, 1, 0),
(932141, '库拉克斯·风暴语者站在水晶大厅，萨满石环边缘的火盆旁。愿圣光与你同在。', '库拉克斯·风暴语者站在水晶大厅，萨满石环边缘的火盆旁。愿圣光与你同在。', 0, 0, 1, 0),
(932142, '沃拉桑·灰斗篷在商人阶梯下层的锻炉大厅训练，就在锻炉和工程台之间。', '沃拉桑·灰斗篷在商人阶梯下层的锻炉大厅训练，就在锻炉和工程台之间。', 0, 0, 1, 0),
(932143, '守望者伊鲁瓦站在战士露台的边缘，俯瞰商人阶梯的其他地方。', '守望者伊鲁瓦站在战士露台的边缘，俯瞰商人阶梯的其他地方。', 0, 0, 1, 0),
(932144, '光之守望者莫拉拉在圣光之库中指导圣殿骑士，就在守备官的盔甲架之间。愿圣光与你同行。', '光之守望者莫拉拉在圣光之库中指导圣殿骑士，就在守备官的盔甲架之间。愿圣光与你同行。', 0, 0, 1, 0),
(932145, '档案员托拉拉在圣光之库的光发射器之间研究我们过去的记录。', '档案员托拉拉在圣光之库的光发射器之间研究我们过去的记录。', 0, 0, 1, 0),
(932146, '奥金尼的缚魂者卡伦与隐士们保持距离。他站在他们的房间外，从纳鲁之座通往圣光之库的路上。', '奥金尼的缚魂者卡伦与隐士们保持距离。他站在他们的房间外，从纳鲁之座通往圣光之库的路上。', 0, 0, 1, 0),
(932147, '伊拉拉·烬誓照料着水晶大厅南门的火盆，道路从它们之间穿过。', '伊拉拉·烬誓照料着水晶大厅南门的火盆，道路从它们之间穿过。', 0, 0, 1, 0),
(932148, '蒙面者奈罗莎藏身于水晶大厅之外的晶矿中，破碎者矿工们在那里劳作。', '蒙面者奈罗莎藏身于水晶大厅之外的晶矿中，破碎者矿工们在那里劳作。', 0, 0, 1, 0),
(932149, '观星者娜莉玛站在纳鲁之座的边缘，在沃洛斯上方。愿圣光与你同在。', '观星者娜莉玛站在纳鲁之座的边缘，在沃洛斯上方。愿圣光与你同在。', 0, 0, 1, 0),
(932150, '技师德拉隆在埃索达的巨大能量水晶处工作，就在技师安德伦和德雷宁面前。', '技师德拉隆在埃索达的巨大能量水晶处工作，就在技师安德伦和德雷宁面前。', 0, 0, 1, 0),
(932151, '冷酷者莫瓦尔待在商人阶梯后方的军械库，就在刀剑店的武器架旁。', '冷酷者莫瓦尔待在商人阶梯后方的军械库，就在刀剑店的武器架旁。', 0, 0, 1, 0),
(932152, '荒野守护者奥拉娜在水晶大厅照料着蛾类饲养者的平台，与西克斯和他的飞蛾在一起。', '荒野守护者奥拉娜在水晶大厅照料着蛾类饲养者的平台，与西克斯和他的飞蛾在一起。', 0, 0, 1, 0),
(932153, '符文雕刻者伊斯卡在水晶大厅教学，就在能量辞典旁的附魔师角落。', '符文雕刻者伊斯卡在水晶大厅教学，就在能量辞典旁的附魔师角落。', 0, 0, 1, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (
    932103, 932140, 932141, 932142, 932143, 932144, 932145, 932146, 932147, 932148, 932149, 932150, 932151,
    932152, 932153);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932103, 932103),
(932140, 932140),
(932141, 932141),
(932142, 932142),
(932143, 932143),
(932144, 932144),
(932145, 932145),
(932146, 932146),
(932147, 932147),
(932148, 932148),
(932149, 932149),
(932150, 932150),
(932151, 932151),
(932152, 932152),
(932153, 932153);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 932103;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932103;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(932103, 0, 0, '时光术士', 0, 1, 1, 932145, 9321065, 0, 0, '', 0, 0),
(932103, 1, 0, '邪教徒', 0, 1, 1, 932148, 9321068, 0, 0, '', 0, 0),
(932103, 2, 0, '恶魔猎手', 0, 1, 1, 932140, 9321060, 0, 0, '', 0, 0),
(932103, 3, 0, '守护者', 0, 1, 1, 932143, 9321063, 0, 0, '', 0, 0),
(932103, 4, 0, '克索诺斯骑士', 0, 1, 1, 932142, 9321062, 0, 0, '', 0, 0),
(932103, 5, 0, '死灵法师', 0, 1, 1, 932146, 9321066, 0, 0, '', 0, 0),
(932103, 6, 0, '仪祭师', 0, 1, 1, 932152, 9321072, 0, 0, '', 0, 0),
(932103, 7, 0, '炎术师', 0, 1, 1, 932147, 9321067, 0, 0, '', 0, 0),
(932103, 8, 0, '死神', 0, 1, 1, 932151, 9321071, 0, 0, '', 0, 0),
(932103, 9, 0, '符文大师', 0, 1, 1, 932153, 9321073, 0, 0, '', 0, 0),
(932103, 10, 0, '唤星者', 0, 1, 1, 932149, 9321069, 0, 0, '', 0, 0),
(932103, 11, 0, '风暴使者', 0, 1, 1, 932141, 9321061, 0, 0, '', 0, 0),
(932103, 12, 0, '圣殿骑士', 0, 1, 1, 932144, 9321064, 0, 0, '', 0, 0),
(932103, 13, 0, '工匠', 0, 1, 1, 932150, 9321070, 0, 0, '', 0, 0);

-- Orgrimmar: submenu 932104 (text copied from stock npc_text 2599), 15 class options, reached from 1951/15
--     (Orgrimmar Grunt 3296).
--   leaf 932154: Barbarian Zulaka'jin guid 9004650 POI 9321080, Guardian Grunt Korthaka guid 9004651 POI 9321081;
--       checked at the spawn: Hall of the Brave, Valley of Honor (WMO area Hall of the Brave)
--   leaf 932155: Ranger Grok-gar guid 9004652 POI 9321082; checked at the spawn: Hunter's Hall courtyard, Valley
--       of Honor (stock POI 300 7.9 yd)
--   leaf 932156: Tinker Engineer Rothakk guid 9004653 POI 9321083; checked at the spawn: Nogg's Machine Shop,
--       Valley of Honor (Nogg 6.9 yd, Roxxik 7.1 yd)
--   leaf 932157: Knight of Xoroth Xevaroth guid 9004654 POI 9321084, Necromancer Deathmagus Gorat guid 9004655 POI
--       9321085; checked at the spawn: Darkfire Enclave, Cleft of Shadow (WMO area Cleft of Shadow; stock POI 305
--       6-20 yd)
--   leaf 932158: Felsworn Xantis the Slayer guid 9004656 POI 9321086; checked at the spawn: Neeru Fireblade's den,
--       Cleft of Shadow (WMO area Cleft of Shadow; Neeru 4.5 yd)
--   leaf 932159: Cultist Rokia Lohka guid 9004657 POI 9321087; checked at the spawn: head of the passage to
--       Ragefire Chasm, Cleft of Shadow (WMO area Cleft of Shadow)
--   leaf 932160: Witch Doctor Zerin'dai guid 9004658 POI 9321088; checked at the spawn: Rekkul's poison shop,
--       Cleft of Shadow (WMO area Cleft of Shadow; Rekkul 7.0 yd)
--   leaf 932161: Venomancer Wun'zujek guid 9004659 POI 9321089; checked at the spawn: Shadowswift Brotherhood
--       ledge, Cleft of Shadow (stock POI 304 16.2 yd)
--   leaf 932162: Stormbringer Darakka Stormsworn guid 9004660 POI 9321090, Primalist Thako Maz guid 9004661 POI
--       9321091; checked at the spawn: entrance room of Grommash Hold, Valley of Wisdom (WMO area Grommash Hold;
--       Elder Far Seer Zor Lonetree 4.9 yd)
--   leaf 932163: Pyromancer Murthakk Krulk guid 9004662 POI 9321092, Bloodmage Sul'natu Hearteater guid 9004663
--       POI 9321093; checked at the spawn: Darkbriar Lodge ground floor, Valley of Spirits (WMO area Valley of
--       Spirits; stock POI 301 9-26 yd)
--   leaf 932164: Runemaster Washu Zebuljin guid 9004664 POI 9321094; checked at the spawn: Darkbriar Lodge upper
--       floor (z 59; portal trainer Thuul 6.4 yd)
DELETE FROM `points_of_interest_locale` WHERE `ID` IN (
    9321080, 9321093, 9321087, 9321086, 9321081, 9321084, 9321085, 9321091, 9321092, 9321082, 9321094, 9321090,
    9321083, 9321089, 9321088);
DELETE FROM `points_of_interest` WHERE `ID` IN (
    9321080, 9321093, 9321087, 9321086, 9321081, 9321084, 9321085, 9321091, 9321092, 9321082, 9321094, 9321090,
    9321083, 9321089, 9321088);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`)
VALUES
(9321080, 1983, -4801.5, 7, 99, 0, '奥格瑞玛野蛮人训练师'),
(9321093, 1460, -4225, 7, 99, 0, '奥格瑞玛血法师训练师'),
(9321087, 1804, -4392, 7, 99, 0, '奥格瑞玛邪教徒训练师'),
(9321086, 1804, -4377.5, 7, 99, 0, '奥格瑞玛恶魔猎手训练师'),
(9321081, 1972, -4790, 7, 99, 0, '奥格瑞玛守护者训练师'),
(9321084, 1831, -4353, 7, 99, 0, '奥格瑞玛克索诺斯骑士训练师'),
(9321085, 1846, -4364.5, 7, 99, 0, '奥格瑞玛死灵法师训练师'),
(9321091, 1919.5, -4227, 7, 99, 0, '奥格瑞玛仪祭师训练师'),
(9321092, 1477, -4228, 7, 99, 0, '奥格瑞玛炎术师训练师'),
(9321082, 2112, -4618, 7, 99, 0, '奥格瑞玛游侠训练师'),
(9321094, 1469.5, -4226.5, 7, 99, 0, '奥格瑞玛符文大师训练师'),
(9321090, 1938, -4215.5, 7, 99, 0, '奥格瑞玛风暴使者训练师'),
(9321083, 2032, -4752, 7, 99, 0, '奥格瑞玛工匠训练师'),
(9321089, 1789, -4274.5, 7, 99, 0, '奥格瑞玛剧毒术士训练师'),
(9321088, 1817, -4274.5, 7, 99, 0, '奥格瑞玛巫医训练师');

DELETE FROM `npc_text_locale` WHERE `ID` IN (
    932104, 932154, 932155, 932156, 932157, 932158, 932159, 932160, 932161, 932162, 932163, 932164);
DELETE FROM `npc_text` WHERE `ID` IN (
    932104, 932154, 932155, 932156, 932157, 932158, 932159, 932160, 932161, 932162, 932163, 932164);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(932104, '你在寻找哪位训练师？', '你在寻找哪位训练师？', 6769, 1, 1, 0),
(932154, '去荣誉谷的勇气大厅。祖拉卡金在练习坑旁训练野蛮人，步兵科尔塔卡在坑南侧高台上训练守护者。', '去荣誉谷的勇气大厅。祖拉卡金在练习坑旁训练野蛮人，步兵科尔塔卡在坑南侧高台上训练守护者。', 0, 0, 1, 0),
(932155, '格罗克加尔在荣誉谷猎手大厅的庭院里训练游侠，就在竞技场以西。', '格罗克加尔在荣誉谷猎手大厅的庭院里训练游侠，就在竞技场以西。', 0, 0, 1, 0),
(932156, '工程师罗萨克在荣誉谷诺格机械店工作。小心火花。', '工程师罗萨克在荣誉谷诺格机械店工作。小心火花。', 0, 0, 1, 0),
(932157, '去暗影裂口下面的暗火飞地看看。泽瓦洛斯在入口前厅教克索诺斯骑士，死亡法师戈拉特在主厅教死灵法师。', '去暗影裂口下面的暗火飞地看看。泽瓦洛斯在入口前厅教克索诺斯骑士，死亡法师戈拉特在主厅教死灵法师。', 0, 0, 1, 0),
(932158, '屠戮者赞蒂斯在暗影裂口深处训练恶魔猎手，就在尼尔鲁·火刃身旁。', '屠戮者赞蒂斯在暗影裂口深处训练恶魔猎手，就在尼尔鲁·火刃身旁。', 0, 0, 1, 0),
(932159, '罗基亚·洛卡把她的邪教徒聚集在暗影裂口深处，通往怒焰裂谷的通道口。', '罗基亚·洛卡把她的邪教徒聚集在暗影裂口深处，通往怒焰裂谷的通道口。', 0, 0, 1, 0),
(932160, '泽林代在暗影裂口雷库尔的毒药店大锅旁酿制药剂。', '泽林代在暗影裂口雷库尔的毒药店大锅旁酿制药剂。', 0, 0, 1, 0),
(932161, '温祖杰克待在暗影裂口暗影迅捷兄弟会的平台上。从贫民窟沿隧道下去。', '温祖杰克待在暗影裂口暗影迅捷兄弟会的平台上。从贫民窟沿隧道下去。', 0, 0, 1, 0),
(932162, '去智慧谷格罗玛什要塞的入口房间，萨满们在那里守护着火焰。达拉卡·风暴誓约在那里训练风暴使者，萨科·马兹训练仪祭师。', '去智慧谷格罗玛什要塞的入口房间，萨满们在那里守护着火焰。达拉卡·风暴誓约在那里训练风暴使者，萨科·马兹训练仪祭师。', 0, 0, 1, 0),
(932163, '去灵魂谷的暗棘小屋，就在力量谷的上方偏西处。穆尔萨克·克鲁克在一层训练炎术师，苏尔纳图·食心者训练血法师。', '去灵魂谷的暗棘小屋，就在力量谷的上方偏西处。穆尔萨克·克鲁克在一层训练炎术师，苏尔纳图·食心者训练血法师。', 0, 0, 1, 0),
(932164, '瓦舒·泽布金在灵魂谷暗棘小屋楼上研习，就在传送门训练师图尔附近。', '瓦舒·泽布金在灵魂谷暗棘小屋楼上研习，就在传送门训练师图尔附近。', 0, 0, 1, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (
    932104, 932154, 932155, 932156, 932157, 932158, 932159, 932160, 932161, 932162, 932163, 932164);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932104, 932104),
(932154, 932154),
(932155, 932155),
(932156, 932156),
(932157, 932157),
(932158, 932158),
(932159, 932159),
(932160, 932160),
(932161, 932161),
(932162, 932162),
(932163, 932163),
(932164, 932164);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 932104;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932104;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(932104, 0, 0, '野蛮人', 0, 1, 1, 932154, 9321080, 0, 0, '', 0, 0),
(932104, 1, 0, '血法师', 0, 1, 1, 932163, 9321093, 0, 0, '', 0, 0),
(932104, 2, 0, '邪教徒', 0, 1, 1, 932159, 9321087, 0, 0, '', 0, 0),
(932104, 3, 0, '恶魔猎手', 0, 1, 1, 932158, 9321086, 0, 0, '', 0, 0),
(932104, 4, 0, '守护者', 0, 1, 1, 932154, 9321081, 0, 0, '', 0, 0),
(932104, 5, 0, '克索诺斯骑士', 0, 1, 1, 932157, 9321084, 0, 0, '', 0, 0),
(932104, 6, 0, '死灵法师', 0, 1, 1, 932157, 9321085, 0, 0, '', 0, 0),
(932104, 7, 0, '仪祭师', 0, 1, 1, 932162, 9321091, 0, 0, '', 0, 0),
(932104, 8, 0, '炎术师', 0, 1, 1, 932163, 9321092, 0, 0, '', 0, 0),
(932104, 9, 0, '游侠', 0, 1, 1, 932155, 9321082, 0, 0, '', 0, 0),
(932104, 10, 0, '符文大师', 0, 1, 1, 932164, 9321094, 0, 0, '', 0, 0),
(932104, 11, 0, '风暴使者', 0, 1, 1, 932162, 9321090, 0, 0, '', 0, 0),
(932104, 12, 0, '工匠', 0, 1, 1, 932156, 9321083, 0, 0, '', 0, 0),
(932104, 13, 0, '剧毒术士', 0, 1, 1, 932161, 9321089, 0, 0, '', 0, 0),
(932104, 14, 0, '巫医', 0, 1, 1, 932160, 9321088, 0, 0, '', 0, 0);

-- Undercity: submenu 932105 (text copied from stock npc_text 3542), 18 class options, reached from 2849/14
--     (Undercity Guardian 5624), 10769/14 (Kor'kron Overseer 36213).
--   leaf 932165: Felsworn Thimakria Dilanore guid 9004665 POI 9321100, Necromancer Kobidus the Lich guid 9004666
--       POI 9321101; checked at the spawn: Magic Quarter trainers' pit, z -61 (WMO area Magic Quarter; stock POIs
--       331/334 7.7 yd)
--   leaf 932166: Chronomancer Nyrmedormi guid 9004668 POI 9321102, Bloodmage Belinaros Cicero guid 9004669 POI
--       9321103; checked at the spawn: Magic Quarter portal room, z -46 (WMO area Magic Quarter; Lexington Mortaim
--       6.9 yd)
--   leaf 932167: Runemaster Thalen Mackenzie guid 9004667 POI 9321104; checked at the spawn: Anastasia Hartwell's
--       study, Magic Quarter upper level (Anastasia 3.8 yd)
--   leaf 932168: Pyromancer Ridley of Lordaeron guid 9004670 POI 9321105; checked at the spawn: War Quarter forge,
--       inner ring (WMO area War Quarter; Samuel Van Brunt 6.1 yd, stock POI 337 10.3 yd)
--   leaf 932169: Barbarian Ray'chelle Greenhill guid 9004689 POI 9321117, Guardian Deathguard Solor guid 9004671
--       POI 9321106, Knight of Xoroth Galgrimorth guid 9004672 POI 9321107, Templar Benjamin the Sinless guid
--       9004673 POI 9321108, Starcaller Fal'ador Yanille guid 9004674 POI 9321109, Cultist Vytalas the Dreamer
--       guid 9004675 POI 9321110; checked at the spawn: War Quarter round hall, outer ring (WMO area War Quarter)
--       and the island in its middle (same Undercity.wmo floor at z -57.2; Christoph Walker's removed warrior post
--       5.8 yd)
--   leaf 932170: Sun Cleric Lightspeaker Shaylan guid 9004676 POI 9321111; checked at the spawn: War Quarter east
--       corridor at the pit rim (WMO area War Quarter; stock priest POI 332 3.3 yd)
--   leaf 932171: Reaper Sidus the Soul-Collector guid 9004681 POI 9321112; checked at the spawn: training dummies
--       on the ring below the War Quarter (WMO area War Quarter; dummies 5-8 yd)
--   leaf 932172: Ranger Sigi Mikayla guid 9004677 POI 9321113, Witch Hunter Phineas the Fervent guid 9004678 POI
--       9321114, Stormbringer Harold Garett guid 9004679 POI 9321115; checked at the spawn: Rogues' Quarter open
--       floor (WMO area Rogues' Quarter; stock POI 333 13-16 yd)
--   leaf 932173: Tinker Ol' Jimbles guid 9004680 POI 9321116; checked at the spawn: engineers' stalls, Rogues'
--       Quarter outer ring (Franklin Lloyd 10.0 yd, stock POI 340 5.6 yd)
DELETE FROM `points_of_interest_locale` WHERE `ID` IN (
    9321117, 9321103, 9321102, 9321110, 9321100, 9321106, 9321107, 9321101, 9321105, 9321113, 9321112, 9321104,
    9321109, 9321115, 9321111, 9321108, 9321116, 9321114);
DELETE FROM `points_of_interest` WHERE `ID` IN (
    9321117, 9321103, 9321102, 9321110, 9321100, 9321106, 9321107, 9321101, 9321105, 9321113, 9321112, 9321104,
    9321109, 9321115, 9321111, 9321108, 9321116, 9321114);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`)
VALUES
(9321117, 1775.5, 426, 7, 99, 0, '幽暗城野蛮人训练师'),
(9321103, 1770.5, 69.5, 7, 99, 0, '幽暗城血法师训练师'),
(9321102, 1774, 60, 7, 99, 0, '幽暗城时光术士训练师'),
(9321110, 1751.5, 423, 7, 99, 0, '幽暗城邪教徒训练师'),
(9321100, 1788.5, 51, 7, 99, 0, '幽暗城恶魔猎手训练师'),
(9321106, 1797, 428, 7, 99, 0, '幽暗城守护者训练师'),
(9321107, 1796.5, 404, 7, 99, 0, '幽暗城克索诺斯骑士训练师'),
(9321101, 1762.5, 73.5, 7, 99, 0, '幽暗城死灵法师训练师'),
(9321105, 1688, 278.5, 7, 99, 0, '幽暗城炎术师训练师'),
(9321113, 1408, 72, 7, 99, 0, '幽暗城游侠训练师'),
(9321112, 1767, 356, 7, 99, 0, '幽暗城死神训练师'),
(9321104, 1812.5, 60, 7, 99, 0, '幽暗城符文大师训练师'),
(9321109, 1766, 441.5, 7, 99, 0, '幽暗城唤星者训练师'),
(9321115, 1430, 57, 7, 99, 0, '幽暗城风暴使者训练师'),
(9321111, 1761, 403.5, 7, 99, 0, '幽暗城太阳祭司训练师'),
(9321108, 1783, 441, 7, 99, 0, '幽暗城圣殿骑士训练师'),
(9321116, 1414, 142, 7, 99, 0, '幽暗城工匠训练师'),
(9321114, 1403, 64, 7, 99, 0, '幽暗城猎魔人训练师');

DELETE FROM `npc_text_locale` WHERE `ID` IN (
    932105, 932165, 932166, 932167, 932168, 932169, 932170, 932171, 932172, 932173);
DELETE FROM `npc_text` WHERE `ID` IN (
    932105, 932165, 932166, 932167, 932168, 932169, 932170, 932171, 932172, 932173);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(932105, '你在寻找哪位训练师？', '你在寻找哪位训练师？', 6769, 1, 1, 0),
(932165, '魔法区。西马克里亚·迪拉诺在训练师坑里、东侧坡道旁训练恶魔猎手。死灵法师巫妖科比杜斯站在坑边的步道上。', '魔法区。西马克里亚·迪拉诺在训练师坑里、东侧坡道旁训练恶魔猎手。死灵法师巫妖科比杜斯站在坑边的步道上。', 0, 0, 1, 0),
(932166, '魔法区，上层的传送门室。尼尔梅多米在那里教时光术士，贝利纳罗斯·西塞罗教血法师。', '魔法区，上层的传送门室。尼尔梅多米在那里教时光术士，贝利纳罗斯·西塞罗教血法师。', 0, 0, 1, 0),
(932167, '萨伦·麦肯齐在魔法区上层阿纳斯塔西娅·哈特韦尔的书房里。', '萨伦·麦肯齐在魔法区上层阿纳斯塔西娅·哈特韦尔的书房里。', 0, 0, 1, 0),
(932168, '洛丹伦的里德利和范·布朗特一家在战争区的锻炉工作。他在内环上。', '洛丹伦的里德利和范·布朗特一家在战争区的锻炉工作。他在内环上。', 0, 0, 1, 0),
(932169, '战争区的圆形大厅。蕾切尔·绿丘在大厅中央的岛上、跨过一座桥训练野蛮人。在外环，死亡守卫索洛尔在北入口旁训练守护者。克索诺斯骑士的加尔格里莫斯、圣殿骑士的无罪者本杰明、唤星者的法尔阿多·亚尼尔和邪教徒的梦想者维塔拉斯都站在大厅四周。', '战争区的圆形大厅。蕾切尔·绿丘在大厅中央的岛上、跨过一座桥训练野蛮人。在外环，死亡守卫索洛尔在北入口旁训练守护者。克索诺斯骑士的加尔格里莫斯、圣殿骑士的无罪者本杰明、唤星者的法尔阿多·亚尼尔和邪教徒的梦想者维塔拉斯都站在大厅四周。', 0, 0, 1, 0),
(932170, '光语者谢兰在战争区教学，就在坑沿的东走廊，牧师们聚集的地方。', '光语者谢兰在战争区教学，就在坑沿的东走廊，牧师们聚集的地方。', 0, 0, 1, 0),
(932171, '灵魂收集者西杜斯在战争区下方环形训练场的训练假人后方等待。', '灵魂收集者西杜斯在战争区下方环形训练场的训练假人后方等待。', 0, 0, 1, 0),
(932172, '盗贼区。西吉·米凯拉训练游侠，热忱者菲尼亚斯训练猎魔人，哈罗德·加雷特训练风暴使者，都在开阔的区域内。', '盗贼区。西吉·米凯拉训练游侠，热忱者菲尼亚斯训练猎魔人，哈罗德·加雷特训练风暴使者，都在开阔的区域内。', 0, 0, 1, 0),
(932173, '老金布尔斯在盗贼区与工程师们一起捣鼓发明，在外环上，靠近富兰克林·劳埃德。', '老金布尔斯在盗贼区与工程师们一起捣鼓发明，在外环上，靠近富兰克林·劳埃德。', 0, 0, 1, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (
    932105, 932165, 932166, 932167, 932168, 932169, 932170, 932171, 932172, 932173);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932105, 932105),
(932165, 932165),
(932166, 932166),
(932167, 932167),
(932168, 932168),
(932169, 932169),
(932170, 932170),
(932171, 932171),
(932172, 932172),
(932173, 932173);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 932105;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932105;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(932105, 0, 0, '野蛮人', 0, 1, 1, 932169, 9321117, 0, 0, '', 0, 0),
(932105, 1, 0, '血法师', 0, 1, 1, 932166, 9321103, 0, 0, '', 0, 0),
(932105, 2, 0, '时光术士', 0, 1, 1, 932166, 9321102, 0, 0, '', 0, 0),
(932105, 3, 0, '邪教徒', 0, 1, 1, 932169, 9321110, 0, 0, '', 0, 0),
(932105, 4, 0, '恶魔猎手', 0, 1, 1, 932165, 9321100, 0, 0, '', 0, 0),
(932105, 5, 0, '守护者', 0, 1, 1, 932169, 9321106, 0, 0, '', 0, 0),
(932105, 6, 0, '克索诺斯骑士', 0, 1, 1, 932169, 9321107, 0, 0, '', 0, 0),
(932105, 7, 0, '死灵法师', 0, 1, 1, 932165, 9321101, 0, 0, '', 0, 0),
(932105, 8, 0, '炎术师', 0, 1, 1, 932168, 9321105, 0, 0, '', 0, 0),
(932105, 9, 0, '游侠', 0, 1, 1, 932172, 9321113, 0, 0, '', 0, 0),
(932105, 10, 0, '死神', 0, 1, 1, 932171, 9321112, 0, 0, '', 0, 0),
(932105, 11, 0, '符文大师', 0, 1, 1, 932167, 9321104, 0, 0, '', 0, 0),
(932105, 12, 0, '唤星者', 0, 1, 1, 932169, 9321109, 0, 0, '', 0, 0),
(932105, 13, 0, '风暴使者', 0, 1, 1, 932172, 9321115, 0, 0, '', 0, 0),
(932105, 14, 0, '太阳祭司', 0, 1, 1, 932170, 9321111, 0, 0, '', 0, 0),
(932105, 15, 0, '圣殿骑士', 0, 1, 1, 932169, 9321108, 0, 0, '', 0, 0),
(932105, 16, 0, '工匠', 0, 1, 1, 932173, 9321116, 0, 0, '', 0, 0),
(932105, 17, 0, '猎魔人', 0, 1, 1, 932172, 9321114, 0, 0, '', 0, 0);

-- Thunder Bluff: submenu 932106 (text copied from stock npc_text 1300), 7 class options, reached from 721/13
--     (Bluffwatcher 3084).
--   leaf 932174: Barbarian Thokor Galanthoof guid 9004682 POI 9321120, Guardian Gohok Bighoof guid 9004683 POI
--       9321121; checked at the spawn: Hunter's Hall tent, Hunter Rise (AreaTable 1641; Taurenhuntertent.wmo
--       floor)
--   leaf 932175: Primalist Ear-he Stonehoof guid 9004684 POI 9321122, Starcaller Zoona guid 9004685 POI 9321123,
--       Sun Cleric Sunwalker Modae guid 9004686 POI 9321124; checked at the spawn: Elder Rise before the Hall of
--       Elders (AreaTable 1639; stock POI 285 9-17 yd)
--   leaf 932176: Runemaster Kodor the Seer guid 9004687 POI 9321125; checked at the spawn: top of the Spirit Rise
--       (AreaTable 1640; Shamanmesa.wmo floor; stock POI 288 12.3 yd)
--   leaf 932177: Cultist Wuyi Thunderhoof guid 9004688 POI 9321126; checked at the spawn: Pools of Vision under
--       the Spirit Rise (WMO AreaTable 2197 The Pools of Vision)
DELETE FROM `points_of_interest_locale` WHERE `ID` IN (
    9321120, 9321126, 9321121, 9321122, 9321125, 9321123, 9321124);
DELETE FROM `points_of_interest` WHERE `ID` IN (
    9321120, 9321126, 9321121, 9321122, 9321125, 9321123, 9321124);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`)
VALUES
(9321120, -1446.5, -80.5, 7, 99, 0, '雷霆崖野蛮人训练师'),
(9321126, -945.5, 255.5, 7, 99, 0, '雷霆崖邪教徒训练师'),
(9321121, -1463, -97, 7, 99, 0, '雷霆崖守护者训练师'),
(9321122, -1044, -272, 7, 99, 0, '雷霆崖仪祭师训练师'),
(9321125, -993, 266.5, 7, 99, 0, '雷霆崖符文大师训练师'),
(9321123, -1060, -278, 7, 99, 0, '雷霆崖唤星者训练师'),
(9321124, -1060.5, -297, 7, 99, 0, '雷霆崖太阳祭司训练师');

DELETE FROM `npc_text_locale` WHERE `ID` IN (
    932106, 932174, 932175, 932176, 932177);
DELETE FROM `npc_text` WHERE `ID` IN (
    932106, 932174, 932175, 932176, 932177);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(932106, '你在寻找哪位训练师？', '你在寻找哪位训练师？', 6769, 1, 1, 0),
(932174, '前往猎手高地的猎手大厅。索科尔·加兰蹄在那里训练野蛮人，戈霍克·大蹄训练守护者。', '前往猎手高地的猎手大厅。索科尔·加兰蹄在那里训练野蛮人，戈霍克·大蹄训练守护者。', 0, 0, 1, 0),
(932175, '前往长者高地，在长者大厅前。耳石·石蹄在那里教仪祭师，祖娜教唤星者，逐日者莫代教太阳祭司。', '前往长者高地，在长者大厅前。耳石·石蹄在那里教仪祭师，祖娜教唤星者，逐日者莫代教太阳祭司。', 0, 0, 1, 0),
(932176, '先知科多尔站在灵魂高地顶部的图腾之间，就在灵魂大厅附近。', '先知科多尔站在灵魂高地顶部的图腾之间，就在灵魂大厅附近。', 0, 0, 1, 0),
(932177, '吴仪·雷蹄居住在幻象之池，就在灵魂高地下方的洞穴中。', '吴仪·雷蹄居住在幻象之池，就在灵魂高地下方的洞穴中。', 0, 0, 1, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (
    932106, 932174, 932175, 932176, 932177);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932106, 932106),
(932174, 932174),
(932175, 932175),
(932176, 932176),
(932177, 932177);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 932106;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932106;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(932106, 0, 0, '野蛮人', 0, 1, 1, 932174, 9321120, 0, 0, '', 0, 0),
(932106, 1, 0, '邪教徒', 0, 1, 1, 932177, 9321126, 0, 0, '', 0, 0),
(932106, 2, 0, '守护者', 0, 1, 1, 932174, 9321121, 0, 0, '', 0, 0),
(932106, 3, 0, '仪祭师', 0, 1, 1, 932175, 9321122, 0, 0, '', 0, 0),
(932106, 4, 0, '符文大师', 0, 1, 1, 932176, 9321125, 0, 0, '', 0, 0),
(932106, 5, 0, '唤星者', 0, 1, 1, 932175, 9321123, 0, 0, '', 0, 0),
(932106, 6, 0, '太阳祭司', 0, 1, 1, 932175, 9321124, 0, 0, '', 0, 0);

-- Silvermoon City: submenu 932107 (text copied from stock npc_text 9331), 16 class options, reached from 7633/12
--     (Silvermoon City Guardian 16222).
--   leaf 932178: Felsworn Veyrin Felshroud guid 9004914 POI 9321140; checked at the spawn: The Sanctum under
--       Murder Row (stock warlock POI 367 10.0 yd)
--   leaf 932179: Stormbringer Ilythara Skyrender guid 9004916 POI 9321141; checked at the spawn: Royal Exchange
--       garden plaza (WMO area The Royal Exchange)
--   leaf 932180: Knight of Xoroth Tarenar Blackflame guid 9004917 POI 9321142; checked at the spawn: Murder Row
--       upper street (WMO area Murder Row)
--   leaf 932181: Guardian Lorthiel Brightward guid 9004918 POI 9321143; checked at the spawn: Walk of Elders
--       inside the city gate (WMO area Walk of Elders)
--   leaf 932182: Templar Kaeleth Dawnbrand guid 9004919 POI 9321144; checked at the spawn: Blood Knights' hall off
--       Farstriders' Square (stock paladin POI 364 23.2 yd)
--   leaf 932183: Bloodmage Velanna Redthorn guid 9004920 POI 9321145; checked at the spawn: magisters' square in
--       the Bazaar (WMO area The Bazaar)
--   leaf 932184: Ranger Nyssa Swiftbough guid 9004921 POI 9321146; checked at the spawn: archery range of
--       Farstriders' Square (WMO area Farstriders' Square; Silvermoon Ranger 7.4 yd)
--   leaf 932185: Chronomancer Aeduin Hourward guid 9004922 POI 9321147; checked at the spawn: crossroads of the
--       Walk of Elders (WMO area Walk of Elders)
--   leaf 932186: Necromancer Velrith Scarwatch guid 9004923 POI 9321148; checked at the spawn: sealed Dead Scar
--       gate, west end of the Bazaar (WMO area The Bazaar; gate guardians 6.9 yd)
--   leaf 932187: Pyromancer Ilsara Flamecrest guid 9004924 POI 9321149; checked at the spawn: Royal Exchange pool
--       walk (WMO area The Royal Exchange)
--   leaf 932188: Cultist Nerethil Voidwhisper guid 9004925 POI 9321150; checked at the spawn: courtyard below
--       Murder Row by the inn (WMO area Murder Row)
--   leaf 932189: Starcaller Caleste Nightglow guid 9004926 POI 9321151, Runemaster Ithrien Glyphwarden guid
--       9004932 POI 9321152; checked at the spawn: upper plaza of the Court of the Sun (WMO area Court of the Sun)
--   leaf 932190: Sun Cleric Liraen Dawnlight guid 9004927 POI 9321153; checked at the spawn: priests' room of the
--       Sunfury Spire (WMO area Sunfury Spire; stock priest POI 365 9.0 yd)
--   leaf 932191: Tinker Keldan Sparkwright guid 9004928 POI 9321154; checked at the spawn: engineering terrace
--       (stock POI 372 Engineering 5.1 yd; Danwe 13.4 yd)
--   leaf 932192: Reaper Dathren Duskmourn guid 9004930 POI 9321155; checked at the spawn: memorial stones of the
--       Walk of Elders (WMO area Walk of Elders)
DELETE FROM `points_of_interest_locale` WHERE `ID` IN (
    9321145, 9321147, 9321150, 9321140, 9321143, 9321142, 9321148, 9321149, 9321146, 9321155, 9321152, 9321151,
    9321141, 9321153, 9321144, 9321154);
DELETE FROM `points_of_interest` WHERE `ID` IN (
    9321145, 9321147, 9321150, 9321140, 9321143, 9321142, 9321148, 9321149, 9321146, 9321155, 9321152, 9321151,
    9321141, 9321153, 9321144, 9321154);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`)
VALUES
(9321145, 9540, -7102, 7, 99, 0, '银月城血法师训练师'),
(9321147, 9672, -7262, 7, 99, 0, '银月城时光术士训练师'),
(9321150, 9662.5, -7333, 7, 99, 0, '银月城邪教徒训练师'),
(9321140, 9795.5, -7315, 7, 99, 0, '银月城恶魔猎手训练师'),
(9321143, 9473.5, -7285.5, 7, 99, 0, '银月城守护者训练师'),
(9321142, 9769, -7288, 7, 99, 0, '银月城克索诺斯骑士训练师'),
(9321148, 9702, -7061.5, 7, 99, 0, '银月城死灵法师训练师'),
(9321149, 9762.8, -7434, 7, 99, 0, '银月城炎术师训练师'),
(9321146, 9846, -7406.5, 7, 99, 0, '银月城游侠训练师'),
(9321155, 9510, -7397, 7, 99, 0, '银月城死神训练师'),
(9321152, 9950, -7215.5, 7, 99, 0, '银月城符文大师训练师'),
(9321151, 9980, -7190, 7, 99, 0, '银月城唤星者训练师'),
(9321141, 9685, -7463.5, 7, 99, 0, '银月城风暴使者训练师'),
(9321153, 9946, -7058, 7, 99, 0, '银月城太阳祭司训练师'),
(9321144, 9846, -7490, 7, 99, 0, '银月城圣殿骑士训练师'),
(9321154, 9832, -7324, 7, 99, 0, '银月城工匠训练师');

DELETE FROM `npc_text_locale` WHERE `ID` IN (
    932107, 932178, 932179, 932180, 932181, 932182, 932183, 932184, 932185, 932186, 932187, 932188, 932189,
    932190, 932191, 932192);
DELETE FROM `npc_text` WHERE `ID` IN (
    932107, 932178, 932179, 932180, 932181, 932182, 932183, 932184, 932185, 932186, 932187, 932188, 932189,
    932190, 932191, 932192);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(932107, '你想追寻哪条道路？', '你想追寻哪条道路？', 15235, 0, 1, 0),
(932178, '维林·邪幕在谋杀小径下方的圣所中研习，术士们在那里设有召唤法阵。他更喜欢东侧书房的安静。', '维林·邪幕在谋杀小径下方的圣所中研习，术士们在那里设有召唤法阵。他更喜欢东侧书房的安静。', 0, 0, 1, 0),
(932179, '伊莉萨拉·裂空站在皇家交易所的花园广场上，拍卖行前，在那里她能看到天空。', '伊莉萨拉·裂空站在皇家交易所的花园广场上，拍卖行前，在那里她能看到天空。', 0, 0, 1, 0),
(932180, '塔雷纳·黑焰待在谋杀小径，在上层街道那些见不得光的交易之间。', '塔雷纳·黑焰待在谋杀小径，在上层街道那些见不得光的交易之间。', 0, 0, 1, 0),
(932181, '洛西尔·光明守望站在城门内，长老步道上。', '洛西尔·光明守望站在城门内，长老步道上。', 0, 0, 1, 0),
(932182, '凯勒斯·晨烙印在远行者广场的血骑士大厅训练圣殿骑士。如果你珍惜自己的脑袋，在那里要保持恭敬。', '凯勒斯·晨烙印在远行者广场的血骑士大厅训练圣殿骑士。如果你珍惜自己的脑袋，在那里要保持恭敬。', 0, 0, 1, 0),
(932183, '维兰娜·红棘在集市法师广场等待。', '维兰娜·红棘在集市法师广场等待。', 0, 0, 1, 0),
(932184, '妮莎·迅枝在远行者广场的射箭场训练，和银月游侠们在一起。', '妮莎·迅枝在远行者广场的射箭场训练，和银月游侠们在一起。', 0, 0, 1, 0),
(932185, '艾杜因·时之守卫站在长老步道的十字路口，大道与通往集市和谋杀小径的道路交汇处。', '艾杜因·时之守卫站在长老步道的十字路口，大道与通往集市和谋杀小径的道路交汇处。', 0, 0, 1, 0),
(932186, '维尔里斯·伤疤守望站在死亡之痕封印的大门前，集市西端。', '维尔里斯·伤疤守望站在死亡之痕封印的大门前，集市西端。', 0, 0, 1, 0),
(932187, '伊尔萨拉·焰冠站在皇家交易所的池边步道上，角落火盆下方。', '伊尔萨拉·焰冠站在皇家交易所的池边步道上，角落火盆下方。', 0, 0, 1, 0),
(932188, '奈雷希尔·虚空低语潜伏在谋杀小径下方的庭院里，旅店附近。', '奈雷希尔·虚空低语潜伏在谋杀小径下方的庭院里，旅店附近。', 0, 0, 1, 0),
(932189, '上到太阳庭院。卡莱斯特·夜辉在开阔的上层广场教唤星者，伊斯里恩·符文守望者在附魔与铭文店前教符文大师。', '上到太阳庭院。卡莱斯特·夜辉在开阔的上层广场教唤星者，伊斯里恩·符文守望者在附魔与铭文店前教符文大师。', 0, 0, 1, 0),
(932190, '利拉恩·晨光在逐日者王座内、牧师房间中教学。', '利拉恩·晨光在逐日者王座内、牧师房间中教学。', 0, 0, 1, 0),
(932191, '凯尔丹·火花工匠与丹薇在工程露台上工作，靠近太阳庭院、通往远行者广场的路上。', '凯尔丹·火花工匠与丹薇在工程露台上工作，靠近太阳庭院、通往远行者广场的路上。', 0, 0, 1, 0),
(932192, '达斯伦·暮沼在长老步道的纪念石处守夜。', '达斯伦·暮沼在长老步道的纪念石处守夜。', 0, 0, 1, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (
    932107, 932178, 932179, 932180, 932181, 932182, 932183, 932184, 932185, 932186, 932187, 932188, 932189,
    932190, 932191, 932192);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932107, 932107),
(932178, 932178),
(932179, 932179),
(932180, 932180),
(932181, 932181),
(932182, 932182),
(932183, 932183),
(932184, 932184),
(932185, 932185),
(932186, 932186),
(932187, 932187),
(932188, 932188),
(932189, 932189),
(932190, 932190),
(932191, 932191),
(932192, 932192);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 932107;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932107;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(932107, 0, 0, '血法师', 0, 1, 1, 932183, 9321145, 0, 0, '', 0, 0),
(932107, 1, 0, '时光术士', 0, 1, 1, 932185, 9321147, 0, 0, '', 0, 0),
(932107, 2, 0, '邪教徒', 0, 1, 1, 932188, 9321150, 0, 0, '', 0, 0),
(932107, 3, 0, '恶魔猎手', 0, 1, 1, 932178, 9321140, 0, 0, '', 0, 0),
(932107, 4, 0, '守护者', 0, 1, 1, 932181, 9321143, 0, 0, '', 0, 0),
(932107, 5, 0, '克索诺斯骑士', 0, 1, 1, 932180, 9321142, 0, 0, '', 0, 0),
(932107, 6, 0, '死灵法师', 0, 1, 1, 932186, 9321148, 0, 0, '', 0, 0),
(932107, 7, 0, '炎术师', 0, 1, 1, 932187, 9321149, 0, 0, '', 0, 0),
(932107, 8, 0, '游侠', 0, 1, 1, 932184, 9321146, 0, 0, '', 0, 0),
(932107, 9, 0, '死神', 0, 1, 1, 932192, 9321155, 0, 0, '', 0, 0),
(932107, 10, 0, '符文大师', 0, 1, 1, 932189, 9321152, 0, 0, '', 0, 0),
(932107, 11, 0, '唤星者', 0, 1, 1, 932189, 9321151, 0, 0, '', 0, 0),
(932107, 12, 0, '风暴使者', 0, 1, 1, 932179, 9321141, 0, 0, '', 0, 0),
(932107, 13, 0, '太阳祭司', 0, 1, 1, 932190, 9321153, 0, 0, '', 0, 0),
(932107, 14, 0, '圣殿骑士', 0, 1, 1, 932182, 9321144, 0, 0, '', 0, 0),
(932107, 15, 0, '工匠', 0, 1, 1, 932191, 9321154, 0, 0, '', 0, 0);

-- Kharanos: submenu 932108 (text copied from stock npc_text 4292), 1 class options, reached from 3533/7 (Ironforge
--     Mountaineer 727).
--   leaf 932193: Reaper Zipak Cogweight guid 9003314 POI 9321160; checked at the spawn: grave scene on the knoll
--       east of the Thunderbrew Distillery (AreaTable 131 Kharanos; lampposts, candles and dirt mound 6-13 yd; z
--       452 against the inn at 400)
DELETE FROM `points_of_interest_locale` WHERE `ID` IN (
    9321160);
DELETE FROM `points_of_interest` WHERE `ID` IN (
    9321160);
INSERT INTO `points_of_interest` (`ID`, `PositionX`, `PositionY`, `Icon`, `Flags`, `Importance`, `Name`)
VALUES
(9321160, -5597.9, -607.87, 7, 99, 0, '卡拉诺斯死神训练师');

DELETE FROM `npc_text_locale` WHERE `ID` IN (
    932108, 932193);
DELETE FROM `npc_text` WHERE `ID` IN (
    932108, 932193);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `VerifiedBuild`)
VALUES
(932108, '你找的是哪个职业的训练师？', '你找的是哪个职业的训练师？', 7000, 0, 1, 0),
(932193, '齐帕克·齿轮重，是吗？那个小侏儒在雷酒酿酒厂东边的小丘上守着一座新坟。找那些路灯和蜡烛。', '齐帕克·齿轮重，是吗？那个小侏儒在雷酒酿酒厂东边的小丘上守着一座新坟。找那些路灯和蜡烛。', 0, 0, 1, 0);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (
    932108, 932193);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932108, 932108),
(932193, 932193);

DELETE FROM `gossip_menu_option_locale` WHERE `MenuID` = 932108;
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 932108;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(932108, 0, 0, 'Reaper', 0, 1, 1, 932193, 9321160, 0, 0, '', 0, 0);

-- ---------------------------------------------------------------------------
-- 2. Class Trainer options and who sees them
-- ---------------------------------------------------------------------------
-- The CoA option of each root menu, after the stock ones and their locale rows.
DELETE FROM `gossip_menu_option` WHERE (`MenuID`, `OptionID`) IN (
    (435, 16), (2121, 14), (2352, 12), (10265, 12), (7777, 11), (1951, 15), (2849, 14), (10769, 14), (721, 13),
    (7633, 12), (3533, 7));
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES
(435, 16, 0, '职业训练师', 45378, 1, 1, 932100, 0, 0, 0, '', 0, 0),
(2121, 14, 0, '职业训练师', 45378, 1, 1, 932101, 0, 0, 0, '', 0, 0),
(2352, 12, 0, '职业训练师', 45378, 1, 1, 932102, 0, 0, 0, '', 0, 0),
(10265, 12, 0, '职业训练师', 45378, 1, 1, 932102, 0, 0, 0, '', 0, 0),
(7777, 11, 0, '职业训练师', 45378, 1, 1, 932103, 0, 0, 0, '', 0, 0),
(1951, 15, 0, '一位职业训练师', 6792, 1, 1, 932104, 0, 0, 0, '', 0, 0),
(2849, 14, 0, '一位职业训练师', 6792, 1, 1, 932105, 0, 0, 0, '', 0, 0),
(10769, 14, 0, '一位职业训练师', 6792, 1, 1, 932105, 0, 0, 0, '', 0, 0),
(721, 13, 0, '一位职业训练师', 6792, 1, 1, 932106, 0, 0, 0, '', 0, 0),
(7633, 12, 0, '职业训练师', 45378, 1, 1, 932107, 0, 0, 0, '', 0, 0),
(3533, 7, 0, '职业训练师', 45378, 1, 1, 932108, 0, 0, 0, '', 0, 0);

-- Stock root options for the stock classes, CoA root options for the CoA classes.
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `ConditionTypeOrReference` = 15 AND
    (`SourceGroup`, `SourceEntry`) IN (
    (435, 14), (721, 9), (1951, 12), (2121, 11), (2352, 9), (10265, 9), (2849, 12), (10769, 12), (3285, 4),
    (3331, 4), (3356, 4), (3506, 5), (3533, 5), (3580, 5), (7633, 9), (7777, 9), (8129, 5), (8185, 4), (10082, 1),
    (435, 16), (2121, 14), (2352, 12), (10265, 12), (7777, 11), (1951, 15), (2849, 14), (10769, 14), (721, 13),
    (7633, 12), (3533, 7));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(15, 435, 14, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Stormwind - stock class trainer directions for the stock classes'),
(15, 721, 9, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Thunder Bluff - stock class trainer directions for the stock classes'),
(15, 1951, 12, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Orgrimmar - stock class trainer directions for the stock classes'),
(15, 2121, 11, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Ironforge - stock class trainer directions for the stock classes'),
(15, 2352, 9, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Darnassus - stock class trainer directions for the stock classes'),
(15, 10265, 9, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Darnassus - stock class trainer directions for the stock classes'),
(15, 2849, 12, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Undercity - stock class trainer directions for the stock classes'),
(15, 10769, 12, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Undercity - stock class trainer directions for the stock classes'),
(15, 3285, 4, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Razor Hill - stock class trainer directions for the stock classes'),
(15, 3331, 4, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Bloodhoof Village - stock class trainer directions for the stock classes'),
(15, 3356, 4, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Brill - stock class trainer directions for the stock classes'),
(15, 3506, 5, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Goldshire - stock class trainer directions for the stock classes'),
(15, 3533, 5, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Kharanos - stock class trainer directions for the stock classes'),
(15, 3580, 5, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Dolanaar - stock class trainer directions for the stock classes'),
(15, 7633, 9, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Silvermoon City - stock class trainer directions for the stock classes'),
(15, 7777, 9, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'The Exodar - stock class trainer directions for the stock classes'),
(15, 8129, 5, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Azure Watch - stock class trainer directions for the stock classes'),
(15, 8185, 4, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Falconwing Square - stock class trainer directions for the stock classes'),
(15, 10082, 1, 0, 0, 15, 0, 1535, 0, 0, 0, 0, 0, '', 'Dalaran - stock class trainer directions for the stock classes'),
(15, 435, 16, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Stormwind - CoA class trainer directions for the CoA classes'),
(15, 2121, 14, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Ironforge - CoA class trainer directions for the CoA classes'),
(15, 2352, 12, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Darnassus - CoA class trainer directions for the CoA classes'),
(15, 10265, 12, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Darnassus - CoA class trainer directions for the CoA classes'),
(15, 7777, 11, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'The Exodar - CoA class trainer directions for the CoA classes'),
(15, 1951, 15, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Orgrimmar - CoA class trainer directions for the CoA classes'),
(15, 2849, 14, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Undercity - CoA class trainer directions for the CoA classes'),
(15, 10769, 14, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Undercity - CoA class trainer directions for the CoA classes'),
(15, 721, 13, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Thunder Bluff - CoA class trainer directions for the CoA classes'),
(15, 7633, 12, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Silvermoon City - CoA class trainer directions for the CoA classes'),
(15, 3533, 7, 0, 0, 15, 0, 4294965248, 0, 0, 0, 0, 0, '', 'Kharanos - CoA class trainer directions for the CoA classes');
