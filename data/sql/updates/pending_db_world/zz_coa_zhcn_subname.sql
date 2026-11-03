-- 补充汉化：生物头衔（subname）。幂等：仅当当前仍是英文原文时更新。

-- One indexed pass replaces 117 single-row UPDATEs on `creature_template`.`subname`.
UPDATE `creature_template` AS `a`
JOIN (
    SELECT 'Priest' AS `src`, '牧师' AS `dst`
    UNION ALL SELECT 'Bounty Hunter' AS `src`, '赏金猎人' AS `dst`
    UNION ALL SELECT 'Paladin' AS `src`, '圣骑士' AS `dst`
    UNION ALL SELECT 'Druid' AS `src`, '德鲁伊' AS `dst`
    UNION ALL SELECT 'Shaman' AS `src`, '萨满祭司' AS `dst`
    UNION ALL SELECT 'Stable Master' AS `src`, '驯兽师' AS `dst`
    UNION ALL SELECT 'Blacksmithing Supplies' AS `src`, '锻造供应商' AS `dst`
    UNION ALL SELECT 'General Goods' AS `src`, '杂货商' AS `dst`
    UNION ALL SELECT 'Trade Goods' AS `src`, '贸易货物' AS `dst`
    UNION ALL SELECT 'The San\'layn' AS `src`, '萨莱因' AS `dst`
    UNION ALL SELECT 'Warrior' AS `src`, '战士' AS `dst`
    UNION ALL SELECT 'Food & Drink' AS `src`, '食物与饮料' AS `dst`
    UNION ALL SELECT 'Reagents & Poison Supplies' AS `src`, '材料与毒药供应商' AS `dst`
    UNION ALL SELECT 'Stormpike Supply Officer' AS `src`, '雷矛补给官' AS `dst`
    UNION ALL SELECT 'Frostwolf Supply Officer' AS `src`, '霜狼补给官' AS `dst`
    UNION ALL SELECT 'Battle Master' AS `src`, '战场指挥官' AS `dst`
    UNION ALL SELECT 'Battlemaster' AS `src`, '战场指挥官' AS `dst`
    UNION ALL SELECT 'Emporium of AWESOME' AS `src`, '超赞集市' AS `dst`
    UNION ALL SELECT 'Hunter' AS `src`, '猎人' AS `dst`
    UNION ALL SELECT 'Mage' AS `src`, '法师' AS `dst`
    UNION ALL SELECT 'Death Knight' AS `src`, '死亡骑士' AS `dst`
    UNION ALL SELECT 'Warlock' AS `src`, '术士' AS `dst`
    UNION ALL SELECT 'Rogue' AS `src`, '盗贼' AS `dst`
    UNION ALL SELECT 'Cult of the Damned' AS `src`, '诅咒教派' AS `dst`
    UNION ALL SELECT 'The Twilight Destroyer' AS `src`, '暮光毁灭者' AS `dst`
    UNION ALL SELECT 'Banshee Queen' AS `src`, '女妖之王' AS `dst`
    UNION ALL SELECT 'Talent Master' AS `src`, '天赋大师' AS `dst`
    UNION ALL SELECT 'Stormpike Captain' AS `src`, '雷矛上尉' AS `dst`
    UNION ALL SELECT 'Frostwolf Captain' AS `src`, '霜狼上尉' AS `dst`
    UNION ALL SELECT 'Winterax Hero' AS `src`, '冬斧英雄' AS `dst`
    UNION ALL SELECT 'Frostwolf General' AS `src`, '霜狼将军' AS `dst`
    UNION ALL SELECT 'Stormpike General' AS `src`, '雷矛将军' AS `dst`
    UNION ALL SELECT 'Banker' AS `src`, '银行家' AS `dst`
    UNION ALL SELECT 'Winterskorn Chieftain' AS `src`, '冬蹄酋长' AS `dst`
    UNION ALL SELECT 'Horde' AS `src`, '部落' AS `dst`
    UNION ALL SELECT 'Host of Suffering' AS `src`, '苦难之宿主' AS `dst`
    UNION ALL SELECT 'Kirin Tor' AS `src`, '肯瑞托' AS `dst`
    UNION ALL SELECT 'Master of Death' AS `src`, '死亡大师' AS `dst`
    UNION ALL SELECT 'Questgiver' AS `src`, '任务给予者' AS `dst`
    UNION ALL SELECT 'Boat Operator' AS `src`, '船夫' AS `dst`
    UNION ALL SELECT 'Primalist' AS `src`, '原始主义者' AS `dst`
    UNION ALL SELECT 'Innkeeper' AS `src`, '旅店老板' AS `dst`
    UNION ALL SELECT 'Robe Merchant' AS `src`, '长袍商人' AS `dst`
    UNION ALL SELECT 'Herald\'s Sentry' AS `src`, '传令官的哨卫' AS `dst`
    UNION ALL SELECT 'Watchkeeper\'s Subordinate' AS `src`, '看守者的下属' AS `dst`
    UNION ALL SELECT 'Warsong Gulch Battlemaster' AS `src`, '战歌峡谷战场指挥官' AS `dst`
    UNION ALL SELECT 'Silverwing Supply Officer (Neutral)' AS `src`, '银翼补给官（中立）' AS `dst`
    UNION ALL SELECT 'Silverwing Supply Officer (Friendly)' AS `src`, '银翼补给官（友善）' AS `dst`
    UNION ALL SELECT 'Silverwing Supply Officer (Honored)' AS `src`, '银翼补给官（尊敬）' AS `dst`
    UNION ALL SELECT 'Silverwing Supply Officer (Revered)' AS `src`, '银翼补给官（崇敬）' AS `dst`
    UNION ALL SELECT 'Silverwing Supply Officer (Exalted)' AS `src`, '银翼补给官（崇拜）' AS `dst`
    UNION ALL SELECT 'Warsong Supply Officer (Honored)' AS `src`, '战歌补给官（尊敬）' AS `dst`
    UNION ALL SELECT 'Swamplord Musel\'ek\'s Pet' AS `src`, '沼泽领主穆塞雷克的宠物' AS `dst`
    UNION ALL SELECT 'Murkblood Foreman\'s Flunky' AS `src`, '暗血工头的跟班' AS `dst`
    UNION ALL SELECT 'Lord of Stuff' AS `src`, '杂物之王' AS `dst`
    UNION ALL SELECT 'Temporary Karazhan Key Vendor' AS `src`, '临时卡拉赞钥匙商人' AS `dst`
    UNION ALL SELECT 'Observer\'s Pet' AS `src`, '观察者的宠物' AS `dst`
    UNION ALL SELECT 'Apprentice Witch Doctor' AS `src`, '见习巫医' AS `dst`
    UNION ALL SELECT 'Lord of the Blood Elves' AS `src`, '血精灵之王' AS `dst`
    UNION ALL SELECT 'Inscription Trainer' AS `src`, '铭文训练师' AS `dst`
    UNION ALL SELECT 'Garaxxas\' Pet' AS `src`, '加拉克斯的宠物' AS `dst`
    UNION ALL SELECT 'The Frost Lord' AS `src`, '冰霜之王' AS `dst`
    UNION ALL SELECT 'Wind Rider Master' AS `src`, '驭风者大师' AS `dst`
    UNION ALL SELECT 'Expedition Leader' AS `src`, '探险队队长' AS `dst`
    UNION ALL SELECT 'Medic' AS `src`, '医师' AS `dst`
    UNION ALL SELECT 'Leatherworking Trainer' AS `src`, '制皮训练师' AS `dst`
    UNION ALL SELECT 'Blademaster' AS `src`, '剑圣' AS `dst`
    UNION ALL SELECT 'High Prophet of Man\'toth' AS `src`, '曼托斯的高阶先知' AS `dst`
    UNION ALL SELECT 'Flight Master' AS `src`, '飞行管理员' AS `dst`
    UNION ALL SELECT 'Servant of Loken' AS `src`, '洛肯的仆从' AS `dst`
    UNION ALL SELECT 'High Prophet of Mam\'toth' AS `src`, '玛姆托斯的高阶先知' AS `dst`
    UNION ALL SELECT 'Reagents' AS `src`, '材料商' AS `dst`
    UNION ALL SELECT 'Goddess of the Depths' AS `src`, '深渊女神' AS `dst`
    UNION ALL SELECT 'Drink Vendor' AS `src`, '饮料商' AS `dst`
    UNION ALL SELECT 'Prince of Lordaeron' AS `src`, '洛丹伦王子' AS `dst`
    UNION ALL SELECT 'The Onyx Guardian' AS `src`, '玛瑙守护者' AS `dst`
    UNION ALL SELECT 'High Prophet of Akali' AS `src`, '阿卡里的高阶先知' AS `dst`
    UNION ALL SELECT 'High Prophet of Sseratus' AS `src`, '斯塞拉图斯的高阶先知' AS `dst`
    UNION ALL SELECT 'Azure-Lord of the Blue Dragonflight' AS `src`, '蓝龙军团的蔚蓝领主' AS `dst`
    UNION ALL SELECT 'Shirt of Uber Vendor' AS `src`, '超赞衬衫商人' AS `dst`
    UNION ALL SELECT 'Anti-personnel Assault Cannon' AS `src`, '杀伤性突击炮' AS `dst`
    UNION ALL SELECT 'The Flaming Falcon' AS `src`, '烈焰猎鹰' AS `dst`
    UNION ALL SELECT '7th Legion' AS `src`, '第七军团' AS `dst`
    UNION ALL SELECT 'Grand Champion of the Argent Crusade' AS `src`, '银色北伐军的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of Gnomeregan' AS `src`, '诺莫瑞根的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of the Exodar' AS `src`, '埃索达的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of Undercity' AS `src`, '幽暗城的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of Silvermoon' AS `src`, '银月城的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of Darnassus' AS `src`, '达纳苏斯的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of Ironforge' AS `src`, '铁炉堡的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of Stormwind' AS `src`, '暴风城的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of Orgrimmar' AS `src`, '奥格瑞玛的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of the Thunder Bluff' AS `src`, '雷霆崖的大冠军' AS `dst`
    UNION ALL SELECT 'Grand Champion of Sen\'jin' AS `src`, '森金的大冠军' AS `dst`
    UNION ALL SELECT 'Godfather of Souls' AS `src`, '灵魂教父' AS `dst`
    UNION ALL SELECT 'Krick\'s Minion' AS `src`, '克里克的仆从' AS `dst`
    UNION ALL SELECT 'Argent Crusade Quartermaster' AS `src`, '银色北伐军军需官' AS `dst`
    UNION ALL SELECT 'Grand Champion of the Ebon Blade' AS `src`, '黑锋骑士团的大冠军' AS `dst`
    UNION ALL SELECT 'Onyxia' AS `src`, '奥妮克希亚' AS `dst`
    UNION ALL SELECT 'Queen of the Frostbrood' AS `src`, '霜巢女王' AS `dst`
    UNION ALL SELECT 'Black Knight\'s Minion' AS `src`, '黑骑士的仆从' AS `dst`
    UNION ALL SELECT 'Minion of Muffinus' AS `src`, '穆菲努斯的仆从' AS `dst`
    UNION ALL SELECT 'Minion of Alex' AS `src`, '亚历克斯的仆从' AS `dst`
    UNION ALL SELECT 'Vazruden\'s Mount' AS `src`, '瓦兹鲁登的坐骑' AS `dst`
    UNION ALL SELECT 'Horse Pet Trainer' AS `src`, '马匹训练师' AS `dst`
    UNION ALL SELECT 'Designer Extraordinaire' AS `src`, '卓越设计师' AS `dst`
    UNION ALL SELECT 'Software Engineer' AS `src`, '软件工程师' AS `dst`
    UNION ALL SELECT 'Hit Me!' AS `src`, '打我！' AS `dst`
    UNION ALL SELECT 'Far Watch Sparrer' AS `src`, '远望搏击者' AS `dst`
    UNION ALL SELECT 'Pissed Vendor' AS `src`, '愤怒的商贩' AS `dst`
    UNION ALL SELECT 'Monster Slayer Trainer' AS `src`, '怪物杀手训练师' AS `dst`
    UNION ALL SELECT 'Portal: Darnassus Trainer' AS `src`, '传送门：达纳苏斯训练师' AS `dst`
    UNION ALL SELECT 'Portal: Ironforge Trainer' AS `src`, '传送门：铁炉堡训练师' AS `dst`
    UNION ALL SELECT 'Portal: Orgrimmar Trainer' AS `src`, '传送门：奥格瑞玛训练师' AS `dst`
    UNION ALL SELECT 'Portal: Stormwind Trainer' AS `src`, '传送门：暴风城训练师' AS `dst`
    UNION ALL SELECT 'Portal: Thunder Bluff Trainer' AS `src`, '传送门：雷霆崖训练师' AS `dst`
    UNION ALL SELECT 'Portal: Undercity Trainer' AS `src`, '传送门：幽暗城训练师' AS `dst`
) AS `m` ON `m`.`src` = `a`.`subname`
SET `a`.`subname` = `m`.`dst`;
