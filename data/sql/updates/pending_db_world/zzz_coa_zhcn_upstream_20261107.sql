-- ZHCN text for the creatures and interface strings the 2026-11-05/06 upstream updates add.
-- Guarded by the English text they replace, so a re-run changes nothing.

UPDATE `creature_template` SET `name` = CASE `entry`
    WHEN 970000 THEN '瓦斯特拉兹'
    WHEN 970001 THEN '向导武耶'
    WHEN 970002 THEN '泽莱戈萨'
    WHEN 970003 THEN '蝎刺阿里娅'
    WHEN 970004 THEN '阿比迪昂'
    WHEN 970005 THEN '勇斧西姆温蒂'
    WHEN 970006 THEN '凝石塔内拉姆'
    WHEN 970007 THEN '学徒弗蕾达'
    WHEN 970008 THEN '血法师卡利利斯'
    WHEN 970009 THEN '沃尔克玛·维洛尔'
    WHEN 970010 THEN '油栓桑克尔'
    WHEN 970011 THEN '马科维'
    WHEN 970012 THEN '索利丹'
    WHEN 970013 THEN '纳希奥西'
    WHEN 970014 THEN '杰瓦克斯尔'
    WHEN 970015 THEN '慵懒的塞特林'
    WHEN 970016 THEN '狡诈的莱昂努斯'
    WHEN 970017 THEN '林地守望者维瑟斯'
    WHEN 970018 THEN '达齐'
    WHEN 970019 THEN '弹簧机奇尔凯克'
    WHEN 970020 THEN '拉杰什'
    WHEN 970021 THEN '库伊夏'
    WHEN 970022 THEN '齐多尔米'
    WHEN 970023 THEN '霜风莱德里斯'
    WHEN 970024 THEN '沙尔穆'
    WHEN 970025 THEN '尼什基克斯'
    WHEN 970026 THEN '菲莱茜娅'
    WHEN 970027 THEN '石纹欧莫恩'
    WHEN 970028 THEN '侍从蕾拉妮'
    WHEN 970029 THEN '弗莱特'
    WHEN 970030 THEN '里克斯卡'
    WHEN 970031 THEN '土爪楚玛尼'
    WHEN 970032 THEN '船员塞夫利'
    WHEN 970033 THEN '米塔利亚斯'
    WHEN 970034 THEN '维维尔胆小的爪牙'
    WHEN 970035 THEN '锐矿妮尔达特'
    WHEN 970036 THEN '助手露莉特'
    WHEN 970037 THEN '胫骨挖掘者卡甘'
    WHEN 970038 THEN '肖拉'
    WHEN 970039 THEN '艾尔森德拉'
    WHEN 970040 THEN '克雷尼克'
    WHEN 970041 THEN '卡琳'
    WHEN 970042 THEN '梅维齐乌斯'
    ELSE `name` END
WHERE `entry` IN (970000, 970001, 970002, 970003, 970004, 970005, 970006, 970007, 970008, 970009, 970010, 970011, 970012, 970013, 970014, 970015, 970016, 970017, 970018, 970019, 970020, 970021, 970022, 970023, 970024, 970025, 970026, 970027, 970028, 970029, 970030, 970031, 970032, 970033, 970034, 970035, 970036, 970037, 970038, 970039, 970040, 970041, 970042)
    AND `name` = CASE `entry`
    WHEN 970000 THEN 'Vastrasz'
    WHEN 970001 THEN 'Vuye Pathfinder'
    WHEN 970002 THEN 'Zelegosa'
    WHEN 970003 THEN 'Ariyya Scorpidsting'
    WHEN 970004 THEN 'Abydion'
    WHEN 970005 THEN 'Simwenthi Boldaxe'
    WHEN 970006 THEN 'Thanelam Fullstone'
    WHEN 970007 THEN 'Apprentice Frieda'
    WHEN 970008 THEN 'Bloodmage Kalilis'
    WHEN 970009 THEN 'Volkmar Velor'
    WHEN 970010 THEN 'Sankle Greasebolt'
    WHEN 970011 THEN 'Makovei'
    WHEN 970012 THEN 'Solidan'
    WHEN 970013 THEN 'Nahiossi'
    WHEN 970014 THEN 'Jevaxle'
    WHEN 970015 THEN 'Seterin the Slothful'
    WHEN 970016 THEN 'Lionus the Sly'
    WHEN 970017 THEN 'Grovewarden Wetheas'
    WHEN 970018 THEN 'Dazi'
    WHEN 970019 THEN 'Cilkeck Gadgetspring'
    WHEN 970020 THEN 'Rraj''esh'
    WHEN 970021 THEN 'Kuixa'
    WHEN 970022 THEN 'Zidormi'
    WHEN 970023 THEN 'Lydries Frostwind'
    WHEN 970024 THEN 'Xaarmu'
    WHEN 970025 THEN 'Nishkix'
    WHEN 970026 THEN 'Fylaesia'
    WHEN 970027 THEN 'Oumorn Marbletale'
    WHEN 970028 THEN 'Squire Leilani'
    WHEN 970029 THEN 'Flette'
    WHEN 970030 THEN 'Rixka'
    WHEN 970031 THEN 'Chumani Earthtalon'
    WHEN 970032 THEN 'Crewman Sevly'
    WHEN 970033 THEN 'Mytaliath'
    WHEN 970034 THEN 'Cowardly Minion of Weavil'
    WHEN 970035 THEN 'Nildat Sharpmine'
    WHEN 970036 THEN 'Assistant Lulitte'
    WHEN 970037 THEN 'Kargam Shindigger'
    WHEN 970038 THEN 'Shola'
    WHEN 970039 THEN 'Aelsendra'
    WHEN 970040 THEN 'Krenic'
    WHEN 970041 THEN 'Kalyn'
    WHEN 970042 THEN 'Mevezius'
    ELSE `name` END;

UPDATE `creature_template` SET `subname` = '黑市工匠补给' WHERE `entry` BETWEEN 970000 AND 970042 AND `subname` = 'Blackmarket Artisan Supplies';

UPDATE `creature_template` SET `name` = '后座佳人' WHERE `entry` = 110522 AND `name` = 'Backseat Beauty';
UPDATE `creature_template` SET `name` = '后座俏佳人' WHERE `entry` = 110523 AND `name` = 'Backseat Babe';

UPDATE `npc_text` SET
    `text0_0` = '从下方三个最近的飞行管理员中选择一个，即可传送至该地点。',
    `text0_1` = '从下方三个最近的飞行管理员中选择一个，即可传送至该地点。'
WHERE `ID` = 9990158
    AND `text0_0` = 'Choose between the 3 closest Flightmasters below to teleport to that location.';

UPDATE `command` SET `help` = '用法：.leash point [#编号]\n把你的当前位置添加为首领拴绳区域的下一个角点。首领由 #编号 指定，否则取你选中的生物，再否则取你上次编辑的首领。从第 3 个点起，首领在英雄与史诗难度下离开该区域就会闪避脱战。' WHERE `name` = 'leash point' AND `help` = 'Syntax: .leash point [#entry]\nAdds your position as the next corner of the boss''s leash area. The boss is #entry, else your selected creature, else the boss you edited last. From 3 points on, the boss evades on Heroic and Mythic when it leaves the area.';
UPDATE `command` SET `help` = '用法：.leash undo [#编号]\n删除首领拴绳区域的最后一个角点。' WHERE `name` = 'leash undo' AND `help` = 'Syntax: .leash undo [#entry]\nRemoves the last corner of the boss''s leash area.';
UPDATE `command` SET `help` = '用法：.leash radius #码数 [#编号]\n以首领出生点为中心设置 #码数 码的拴绳半径，在角点少于 3 个时生效。0 表示关闭。' WHERE `name` = 'leash radius' AND `help` = 'Syntax: .leash radius #yards [#entry]\nSets a leash circle of #yards around the boss''s spawn point, used while it has fewer than 3 corners. 0 turns it off.';
UPDATE `command` SET `help` = '用法：.leash clear [#编号]\n删除首领的拴绳。' WHERE `name` = 'leash clear' AND `help` = 'Syntax: .leash clear [#entry]\nRemoves the boss''s leash.';
UPDATE `command` SET `help` = '用法：.leash show [#编号]\n列出首领的拴绳，把它的角点标记一分钟，并显示你当前是否在区域之内。' WHERE `name` = 'leash show' AND `help` = 'Syntax: .leash show [#entry]\nLists the boss''s leash, marks its corners for a minute and says whether you stand inside.';
