-- Rebranding: item names and descriptions, Ascension -> Descension
--
-- Only names where "Ascension" means the server. Blizzard's own
-- ("Seal of Ascension", "Garb of Royal Ascension") are left alone, and
-- so are the ability names ("Holy Ascension", "Accelerated Ascension") -
-- renaming those would leave a card no longer matching its spell.
--
-- Every row is named by its id instead of matched with LIKE, so nothing
-- outside this list can be caught by accident.

UPDATE `item_template` SET `name` = '陨落外观 46522' WHERE `entry` = 46522;   -- 飞升外观 46522
UPDATE `item_template` SET `name` = '陨落外观 46523' WHERE `entry` = 46523;   -- 飞升外观 46523
UPDATE `item_template` SET `name` = '陨落外观 46524' WHERE `entry` = 46524;   -- 飞升外观 46524
UPDATE `item_template` SET `name` = '陨落外观 46525' WHERE `entry` = 46525;   -- 飞升外观 46525
UPDATE `item_template` SET `name` = '陨落外观 46526' WHERE `entry` = 46526;   -- 飞升外观 46526
UPDATE `item_template` SET `name` = '陨落外观 46527' WHERE `entry` = 46527;   -- 飞升外观 46527
UPDATE `item_template` SET `name` = '无情陨落之书' WHERE `entry` = 91461;   -- 无情飞升之书
UPDATE `item_template` SET `name` = '陨落战铠' WHERE `entry` = 97274;   -- 飞升战铠
UPDATE `item_template` SET `name` = '陨落护手' WHERE `entry` = 97275;   -- 飞升护手
UPDATE `item_template` SET `name` = '陨落面甲' WHERE `entry` = 97276;   -- 飞升面甲
UPDATE `item_template` SET `name` = '陨落护胫' WHERE `entry` = 97277;   -- 飞升护胫
UPDATE `item_template` SET `name` = '陨落披肩' WHERE `entry` = 97278;   -- 飞升披肩
UPDATE `item_template` SET `name` = '陨落护腕' WHERE `entry` = 97289;   -- 飞升护腕
UPDATE `item_template` SET `name` = '陨落腰带' WHERE `entry` = 97290;   -- 飞升腰带
UPDATE `item_template` SET `name` = '陨落之靴' WHERE `entry` = 97291;   -- 飞升之靴
UPDATE `item_template` SET `name` = '陨落之焰' WHERE `entry` = 97300;   -- 飞升之焰
UPDATE `item_template` SET `name` = '陨落宝箱' WHERE `entry` = 97314;   -- 飞升宝箱
UPDATE `item_template` SET `name` = '陨落法衣' WHERE `entry` = 97317;   -- 飞升法衣
UPDATE `item_template` SET `name` = '挑战者的陨落之书' WHERE `entry` = 97765;   -- 挑战者的飞升之书
UPDATE `item_template` SET `name` = '陨落宝箱' WHERE `entry` = 98006;   -- 飞升宝箱
UPDATE `item_template` SET `name` = '陨落宝箱' WHERE `entry` = 98007;   -- 飞升宝箱
UPDATE `item_template` SET `name` = '梦魇陨落之书' WHERE `entry` = 98450;   -- 梦魇飞升之书
UPDATE `item_template` SET `name` = '陨落之书' WHERE `entry` = 98457;   -- 飞升之书
UPDATE `item_template` SET `name` = '天赋陨落之书' WHERE `entry` = 98458;   -- 天赋飞升之书
UPDATE `item_template` SET `name` = '娴熟陨落之书' WHERE `entry` = 98459;   -- 娴熟飞升之书
UPDATE `item_template` SET `name` = '翠绿陨落之书' WHERE `entry` = 98461;   -- 翠绿飞升之书
UPDATE `item_template` SET `name` = '征召陨落之书' WHERE `entry` = 99386;   -- 征召飞升之书
UPDATE `item_template` SET `name` = '无情陨落战旗' WHERE `entry` = 99984;   -- 无情飞升战旗
UPDATE `item_template` SET `name` = '狂野陨落之书' WHERE `entry` = 102133;   -- 狂野飞升之书
UPDATE `item_template` SET `name` = '陨落印记' WHERE `entry` = 111381;   -- 飞升印记
UPDATE `item_template` SET `name` = '陨落外观 132707' WHERE `entry` = 132707;   -- 飞升外观 132707
UPDATE `item_template` SET `name` = '陨落外观 132719' WHERE `entry` = 132719;   -- 飞升外观 132719
UPDATE `item_template` SET `name` = '丑角的陨落之书' WHERE `entry` = 229980;   -- 丑角的飞升之书
UPDATE `item_template` SET `name` = '天命陨落之书' WHERE `entry` = 253331;   -- 天命飞升之书
UPDATE `item_template` SET `name` = '陨落音乐盒' WHERE `entry` = 332190;   -- 飞升音乐盒
UPDATE `item_template` SET `name` = '陨落符文' WHERE `entry` = 375250;   -- 飞升符文
UPDATE `item_template` SET `name` = '魔兽重生陨落之书' WHERE `entry` = 393610;   -- 魔兽重生飞升之书
UPDATE `item_template` SET `name` = '挑战奖励：陨落印记' WHERE `entry` = 414045;   -- 挑战奖励：飞升印记
UPDATE `item_template` SET `name` = '初学者陨落之书' WHERE `entry` = 414200;   -- 初学者飞升之书
UPDATE `item_template` SET `name` = '血铸陨落之书' WHERE `entry` = 499920;   -- 血铸飞升之书
UPDATE `item_template` SET `name` = '陨落之书' WHERE `entry` = 499992;   -- 飞升之书
UPDATE `item_template` SET `name` = '陨落符文袋 (12,500)' WHERE `entry` = 509872;   -- 飞升符文袋 (12,500)
UPDATE `item_template` SET `name` = '陨落符文袋 (15,000)' WHERE `entry` = 509873;   -- 飞升符文袋 (15,000)
UPDATE `item_template` SET `name` = '陨落符文袋 (20,000)' WHERE `entry` = 509874;   -- 飞升符文袋 (20,000)
UPDATE `item_template` SET `name` = '陨落符文袋 (25,000)' WHERE `entry` = 509875;   -- 飞升符文袋 (25,000)
UPDATE `item_template` SET `name` = '陨落符文袋 (30,000)' WHERE `entry` = 509876;   -- 飞升符文袋 (30,000)
UPDATE `item_template` SET `name` = '陨落符文袋 (17,500)' WHERE `entry` = 509886;   -- 飞升符文袋 (17,500)
UPDATE `item_template` SET `name` = '陨落符文袋 (32,500)' WHERE `entry` = 509893;   -- 飞升符文袋 (32,500)
UPDATE `item_template` SET `name` = '陨落符文袋 (39,000)' WHERE `entry` = 509894;   -- 飞升符文袋 (39,000)
UPDATE `item_template` SET `name` = '陨落符文袋 (45,500)' WHERE `entry` = 509895;   -- 飞升符文袋 (45,500)
UPDATE `item_template` SET `name` = '陨落符文袋 (52,000)' WHERE `entry` = 509896;   -- 飞升符文袋 (52,000)
UPDATE `item_template` SET `name` = '陨落符文袋 (65,000)' WHERE `entry` = 509897;   -- 飞升符文袋 (65,000)
UPDATE `item_template` SET `name` = '陨落符文袋 (35,000)' WHERE `entry` = 518448;   -- 飞升符文袋 (35,000)
UPDATE `item_template` SET `name` = '陨落符文袋 (40,000)' WHERE `entry` = 518449;   -- 飞升符文袋 (40,000)
UPDATE `item_template` SET `name` = '陨落符文袋 (50,000)' WHERE `entry` = 518450;   -- 飞升符文袋 (50,000)
UPDATE `item_template` SET `name` = '陨落战旗' WHERE `entry` = 597600;   -- 飞升战旗
UPDATE `item_template` SET `name` = '邪能灌注陨落战旗' WHERE `entry` = 597602;   -- 邪能灌注飞升战旗
UPDATE `item_template` SET `name` = '冰缚陨落战旗' WHERE `entry` = 597603;   -- 冰缚飞升战旗
UPDATE `item_template` SET `name` = '祝福陨落战旗' WHERE `entry` = 597800;   -- 祝福飞升战旗
UPDATE `item_template` SET `name` = '重生陨落之书' WHERE `entry` = 637848;   -- 重生飞升之书
UPDATE `item_template` SET `name` = '陨落生存指南' WHERE `entry` = 777991;   -- 飞升生存指南
UPDATE `item_template` SET `name` = '首领闪击陨落符文袋 (200,000)' WHERE `entry` = 800902;   -- 首领闪击飞升符文袋 (200,000)
UPDATE `item_template` SET `name` = '征服者陨落战旗' WHERE `entry` = 1175624;   -- 征服者飞升战旗
UPDATE `item_template` SET `name` = '释放元素陨落之书' WHERE `entry` = 1777357;   -- 释放元素飞升之书
UPDATE `item_template` SET `name` = '释放陨落之书' WHERE `entry` = 1777359;   -- 释放飞升之书
UPDATE `item_template` SET `name` = '狂热陨落战旗' WHERE `entry` = 2073850;   -- 狂热飞升战旗
UPDATE `item_template` SET `name` = '陨落符文袋 (500,000)' WHERE `entry` = 2509893;   -- 飞升符文袋 (500,000)
UPDATE `item_template` SET `name` = '死灵陨落之书' WHERE `entry` = 6300095;   -- 死灵飞升之书

-- 68 items

-- The shop line in item descriptions, 974 rows carry it:
-- "...from other players, the auctionhouse, or the Ascension shop."
UPDATE `item_template` SET `description` = REPLACE(`description`, '飞升商店', '失落商店') WHERE `description` LIKE '%飞升商店%';

-- Three travel guides sent players to ascension.gg for an alpha
-- realm Discord invite. Neither the realm nor the invite still exists.
UPDATE `item_template` SET `description` = '这一切都只是一场梦……' WHERE `entry` = 97318;
UPDATE `item_template` SET `description` = '这一切都只是一场梦……' WHERE `entry` = 101171;
UPDATE `item_template` SET `description` = '这一切都只是一场梦……' WHERE `entry` = 101493;
