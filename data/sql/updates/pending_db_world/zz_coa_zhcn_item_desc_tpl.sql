-- One indexed pass replaces 651 single-row UPDATEs on `item_template`.`description`.
UPDATE `item_template` AS `a`
JOIN (
    SELECT 'Teaches you how to brew Highland Spirits.' AS `src`, '教你如何制作高地之灵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Azerothian Schmorgus Board.' AS `src`, '教你如何制作艾泽拉斯杂烩拼盘。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Chilled Lava Eel.' AS `src`, '教你如何制作冰镇熔火鳗鱼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Chillwind Flank Steak.' AS `src`, '教你如何制作寒风里脊排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Crispy Pterrordax Wing.' AS `src`, '教你如何制作酥脆翼手龙翅膀。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Dirge\'s Nevermelt Ice Cream.' AS `src`, '教你如何制作迪尔格的永冻冰淇淋。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Fairbreeze Feast.' AS `src`, '教你如何制作清风盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Ghostly Goulash.' AS `src`, '教你如何制作幽灵杂烩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Hearty Stegodon Stew.' AS `src`, '教你如何制作丰盛剑龙炖肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Hippogryph Steak.' AS `src`, '教你如何制作角鹰兽排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Hydra Scale Soup.' AS `src`, '教你如何制作九头蛇鳞片汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Nightfin Soup.' AS `src`, '教你如何制作夜鳞鱼汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Seared Cunning Carp.' AS `src`, '教你如何制作炙烤狡诈鲤鱼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Silithid Snack.' AS `src`, '教你如何制作其拉虫点心。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Spicy Dino Jerky.' AS `src`, '教你如何制作香辣恐龙肉干。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Spicy Salmon.' AS `src`, '教你如何制作香辣三文鱼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cook Steamed Makrinni Claw.' AS `src`, '教你如何制作清蒸玛克林尼之爪。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Absorptive Cloak Lining' AS `src`, '教你如何制作吸收披风衬料。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Agile Belt Buckle' AS `src`, '教你如何制作敏捷腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Angerhide Leg Armor.' AS `src`, '教你如何制作怒皮腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Armored Cloak Lining' AS `src`, '教你如何制作護甲披風內襯。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Azureflame Twisted Pendant' AS `src`, '教你如何制作蓝焰旋绕吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Battle Scarred Leather Straps' AS `src`, '教你如何制作战痕累累的皮带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Black Dragonscale Shoulders.' AS `src`, '教你如何制作黑色龙鳞护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Blade Master\'s Belt Buckle' AS `src`, '教你如何制作剑刃大师腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Bloodflame Dread Pendant' AS `src`, '教你如何制作血焰恐惧项链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Bloodshadow Twisted Pendant' AS `src`, '教你如何制作血影旋绕吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Boots of the Black Flame.' AS `src`, '教你如何制作黑焰之靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Bracers of Unconquered Power.' AS `src`, '教你如何制作不败之力护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Breeches of Mended Nightmares.' AS `src`, '教你如何制作噩梦弥合马裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Brutal Leg Armor.' AS `src`, '教你如何制作凶暴腿部护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Cerulean Spellthread.' AS `src`, '教你如何制作天蓝法术线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Chain Cloak Lining' AS `src`, '教你如何制作锁链披风衬料。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Champion\'s Belt Buckle' AS `src`, '教你如何制作冠军腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Chaneller\'s Cloak Lining' AS `src`, '教你如何制作引导者的斗篷内衬。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Air Fried Chops' AS `src`, '教你如何制作充能气炸排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Blackened Roast' AS `src`, '教你如何制作充能焦黑烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Blazing Stew' AS `src`, '教你如何制作充能烈焰炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Bold Duck Stew' AS `src`, '教你如何制作充能浓味鸭肉炖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Bold Simmered Stew' AS `src`, '教你如何制作充能浓味慢炖肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Bold Stew' AS `src`, '教你如何制作充能浓味炖肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Charred Steak' AS `src`, '教你如何制作充能炭烤牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Chunky Stew' AS `src`, '教你如何制作充能厚块炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Clear-Cut Chops' AS `src`, '教你如何制作充能利刃排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Clear-Cut Steak' AS `src`, '教你如何制作充能利刃牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Clear-Cut Wontons' AS `src`, '教你如何制作充能利刃馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Duck Stew' AS `src`, '教你如何制作充能鸭肉炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Hearty Air Fried Chops' AS `src`, '教你如何制作充能丰盛空气炸排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Hearty Charred Steak' AS `src`, '教你如何制作充能丰盛焦香牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Hearty Living Soup' AS `src`, '教你如何制作充能丰盛活力汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Hearty Steamed Wontons' AS `src`, '教你如何制作充能丰盛蒸馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Heightened Wontons' AS `src`, '教你如何制作充能强化馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Infused Red-Hot Stew' AS `src`, '教你如何制作充能注能红辣炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Living Soup' AS `src`, '教你如何制作充能活力汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Mana Charged Roast' AS `src`, '教你如何制作充能法力充能烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Piercing Chops' AS `src`, '教你如何制作充能穿刺排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Piercing Steak' AS `src`, '教你如何制作充能穿刺牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Rock\'s Stew' AS `src`, '教你如何制作充能岩石炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Savory Chops' AS `src`, '教你如何制作充能美味排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Savory Steak' AS `src`, '教你如何制作充能美味牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Savory Stew' AS `src`, '教你如何制作充能美味炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Savory Wontons' AS `src`, '教你如何制作充能美味馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Seared Chops' AS `src`, '教你如何制作充能炙烤排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Seared Wontons' AS `src`, '教你如何制作充能炙烤馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Simmered Stew' AS `src`, '教你如何制作充能慢炖炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Sizzling Roast' AS `src`, '教你如何制作充能滋滋烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Steamed Wontons' AS `src`, '教你如何制作充能清蒸馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Subtle Chops' AS `src`, '教你如何制作充能精切肉块。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Subtle Soup' AS `src`, '教你如何制作充能精切汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Subtle Steak' AS `src`, '教你如何制作充能精切牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Subtle Wontons' AS `src`, '教你如何制作充能精切馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Vibrant Chops' AS `src`, '教你如何制作充能活力炸排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Wild Roast' AS `src`, '教你如何制作充能野味烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Winter Roast' AS `src`, '教你如何制作充能冬味烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Wizard Soup' AS `src`, '教你如何制作充能巫师汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Charged Wizard Wontons' AS `src`, '教你如何制作充能巫师馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Clefthoof Gambeson' AS `src`, '教你如何制作裂蹄牛皮长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Cobra Strike Gambeson' AS `src`, '教你如何制作眼镜蛇打击软甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Dragonscale Boots.' AS `src`, '教你如何制作挑战者的龙鳞长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Dragonscale Bracers.' AS `src`, '教你如何制作挑战者的龙鳞护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Dragonscale Gloves.' AS `src`, '教你如何制作挑战者的龙鳞手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Dragonscale Leggings.' AS `src`, '教你如何制作挑战者的龙鳞护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Dragonscale Shoulders.' AS `src`, '教你如何制作挑战者的龙鳞肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Leather Boots.' AS `src`, '教你如何制作挑战者的皮甲长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Leather Bracers.' AS `src`, '教你如何制作挑战者的皮甲护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Leather Gloves.' AS `src`, '教你如何制作竞争者之皮甲手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Leather Leggings.' AS `src`, '教你如何制作竞争者之皮甲护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Leather Shoulders.' AS `src`, '教你如何制作竞争者之皮甲肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Satin Cuffs.' AS `src`, '教你如何制作斗士的缎面腕甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Satin Footwraps.' AS `src`, '教你如何制作斗士的缎面裹足。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Satin Handwraps.' AS `src`, '教你如何制作斗士的缎面裹手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Satin Pants.' AS `src`, '教你如何制作斗士的缎面长裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Scale Boots.' AS `src`, '教你如何制作竞争者之鳞甲长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Scale Bracers.' AS `src`, '教你如何制作竞争者之鳞甲护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Scale Gloves.' AS `src`, '教你如何制作竞争者之鳞甲手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Scale Leggings.' AS `src`, '教你如何制作竞争者之鳞甲护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Scale Shoulders.' AS `src`, '教你如何制作竞争者之鳞甲肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Silk Cuffs.' AS `src`, '教你如何制作斗士的丝绸腕甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Silk Footwraps.' AS `src`, '教你如何制作斗士的丝绸裹足。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Silk Handwraps.' AS `src`, '教你如何制作斗士的丝绸裹手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Silk Pants.' AS `src`, '教你如何制作斗士的丝绸长裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Wyrmhide Boots.' AS `src`, '教你如何制作竞争者之龙皮长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Wyrmhide Bracers.' AS `src`, '教你如何制作竞争者之龙皮护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Wyrmhide Gloves.' AS `src`, '教你如何制作竞争者之龙皮手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Wyrmhide Leggings.' AS `src`, '教你如何制作竞争者之龙皮护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Contender\'s Wyrmhide Shoulders.' AS `src`, '教你如何制作竞争者之龙皮肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Dawnstar Void Pendant' AS `src`, '教你如何制作晨星虚空吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Deep Azure Dread Pendant' AS `src`, '教你如何制作深蓝恐惧项链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Deep Gold Twisted Pendant' AS `src`, '教你如何制作深金旋绕吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Don Tayo\'s Inferno Mittens.' AS `src`, '教你如何制作唐·塔约的炼狱护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Dreamwraps of the Light.' AS `src`, '教你如何制作光明之梦魇裹腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Eluding Belt Buckle' AS `src`, '教你如何制作闪避腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Endless Dream Walkers.' AS `src`, '教你如何制作无尽梦行者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Energizing Cloak Lining' AS `src`, '教你如何制作能量披风衬里。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Engraved Azureflame Twisted Pendant' AS `src`, '教你如何制作雕饰蓝焰旋绕吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Engraved Bloodflame Dread Pendant' AS `src`, '教你如何制作雕刻的血焰恐惧吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Engraved Bloodshadow Twisted Pendant' AS `src`, '教你如何制作雕饰血影旋绕吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Engraved Dawnstar Void Pendant' AS `src`, '教你如何制作雕饰晨星虚空吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Engraved Deep Azure Dread Pendant' AS `src`, '教你如何制作雕刻的深邃蓝色恐惧吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Engraved Deep Gold Twisted Pendant' AS `src`, '教你如何制作雕饰深金旋绕吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Engraved Living Night Void Pendant' AS `src`, '教你如何制作雕饰永夜虚空吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Engraved Noble Talasite Void Pendant' AS `src`, '教你如何制作雕饰尊贵泰拉宝石虚空吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Engraved Shadowgold Dread Pendant' AS `src`, '教你如何制作雕刻的暗金恐惧项链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fel Strike Gambeson' AS `src`, '教你如何制作邪能打击软甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Felfire Scope' AS `src`, '教你如何制作邪能火枪瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fine Gnomish Magnification Polish' AS `src`, '教你如何制作精良侏儒放大抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fine Gnomish Prismatic Polish' AS `src`, '教你如何制作精良侏儒棱彩抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fine Gnomish Sharpening Polish' AS `src`, '教你如何制作精良侏儒磨刀抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fists of Lightning.' AS `src`, '教你如何制作闪电之拳。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fitted Armored Cloak Lining' AS `src`, '教你如何制作合身的护甲披风内衬。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fitted Chaneller\'s Cloak Lining' AS `src`, '教你如何制作合身的引导者斗篷内衬。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fitted Energizing Cloak Lining' AS `src`, '教你如何制作合身的充能斗篷内衬。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fitted Rager\'s Cloak Lining' AS `src`, '教你如何制作合身的狂怒者斗篷内衬。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fitted Shifting Cloak Lining' AS `src`, '教你如何制作优质的轻盈披风衬垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Fitted Steadfast Cloak Lining' AS `src`, '教你如何制作合身的坚定斗篷内衬。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Flame-Ascended Pantaloons.' AS `src`, '教你如何制作烈焰晋升马裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Flameweave Armor Patch.' AS `src`, '教你如何制作焰织护甲补丁。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Flowing Cloak Lining' AS `src`, '教你如何制作流动披风衬料。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Focused Felfire Scope' AS `src`, '教你如何制作聚焦邪能火枪瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Focused Quickshot Scope' AS `src`, '教你如何制作聚焦速射瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Focused Sighted Scope' AS `src`, '教你如何制作聚焦精准瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Gloves of Creation.' AS `src`, '教你如何制作创造手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Gloves of Earthen Harmony.' AS `src`, '教你如何制作大地和谐手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Gnomish Magnification Polish' AS `src`, '教你如何制作侏儒放大抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Gnomish Prismatic Polish' AS `src`, '教你如何制作侏儒棱彩抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Gnomish Sharpening Polish' AS `src`, '教你如何制作侏儒磨刀抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Greater Cerulean Spellthread.' AS `src`, '教你如何制作高级蔚蓝法术线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Greater Pearlescent Spellthread.' AS `src`, '教你如何制作高级珠光法术线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Green Dragonscale Leggings.' AS `src`, '教你如何制作绿龙鳞片护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Greyshadow Gloves.' AS `src`, '教你如何制作灰影手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Grips of Altered Reality.' AS `src`, '教你如何制作扭曲现实之握。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Guarded Belt Buckle' AS `src`, '教你如何制作防护腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Hulking Belt Buckle' AS `src`, '教你如何制作魁梧腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Imperial Silk Gloves.' AS `src`, '教你如何制作皇锦手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Imperial Silk.' AS `src`, '教你如何制作帝王丝绸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of Adept Striking' AS `src`, '教你如何制作不纯的精妙打击精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of Butchery' AS `src`, '教你如何制作不纯的屠戮精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of Deep Meditation' AS `src`, '教你如何制作不纯的深度冥想精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of Manifesting Power' AS `src`, '教你如何制作不纯的显能精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of Savage Assault' AS `src`, '教你如何制作不纯的野蛮突袭精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of Shattering Thunder' AS `src`, '教你如何制作不纯的碎裂雷霆精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of Unrelenting Power' AS `src`, '教你如何制作不纯的强效力量精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of the Executioner' AS `src`, '教你如何制作不纯的处刑者精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of the Kirin Tor' AS `src`, '教你如何制作不纯的肯瑞托精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of the Unyielding' AS `src`, '教你如何制作不纯的不屈精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Impure Flask of the Warsong' AS `src`, '教你如何制作不纯的战歌精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Air Fried Chops' AS `src`, '教你如何制作注能气炸排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Blackened Roast' AS `src`, '教你如何制作注能焦黑烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Blazing Stew' AS `src`, '教你如何制作注能烈焰炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Bold Duck Stew' AS `src`, '教你如何制作注能浓味鸭肉炖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Bold Simmered Stew' AS `src`, '教你如何制作注能浓味慢炖肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Bold Stew' AS `src`, '教你如何制作注能浓味炖肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Charred Steak' AS `src`, '教你如何制作注能炭烤牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Chunky Stew' AS `src`, '教你如何制作注能厚块炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Clear-Cut Chops' AS `src`, '教你如何制作注能利刃排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Clear-Cut Steak' AS `src`, '教你如何制作注能利刃牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Clear-Cut Wontons' AS `src`, '教你如何制作注能利刃馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Duck Stew' AS `src`, '教你如何制作注能鸭肉炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Hearty Air Fried Chops' AS `src`, '教你如何制作注能丰盛空气炸排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Hearty Charred Steak' AS `src`, '教你如何制作注能丰盛焦香牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Hearty Living Soup' AS `src`, '教你如何制作注能丰盛活力汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Hearty Steamed Wontons' AS `src`, '教你如何制作注能丰盛蒸馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Heightened Wontons' AS `src`, '教你如何制作注能强化馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Infused Red-Hot Stew' AS `src`, '教你如何制作注能注能红辣炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Living Soup' AS `src`, '教你如何制作注能活力汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Mana Charged Roast' AS `src`, '教你如何制作注能法力充能烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Piercing Chops' AS `src`, '教你如何制作注能穿刺排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Piercing Steak' AS `src`, '教你如何制作注能穿刺牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Rock\'s Stew' AS `src`, '教你如何制作注能岩石炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Savory Chops' AS `src`, '教你如何制作注能美味排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Savory Steak' AS `src`, '教你如何制作注能美味牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Savory Stew' AS `src`, '教你如何制作注能美味炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Savory Wontons' AS `src`, '教你如何制作注能美味馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Seared Chops' AS `src`, '教你如何制作注能炙烤排骨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Seared Wontons' AS `src`, '教你如何制作注能炙烤馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Simmered Stew' AS `src`, '教你如何制作注能慢炖炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Sizzling Roast' AS `src`, '教你如何制作注能滋滋烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Steamed Wontons' AS `src`, '教你如何制作注能清蒸馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Subtle Chops' AS `src`, '教你如何制作注能精制炸排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Subtle Soup' AS `src`, '教你如何制作注能精切汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Subtle Steak' AS `src`, '教你如何制作注能精切牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Subtle Wontons' AS `src`, '教你如何制作注能精切馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Vibrant Chops' AS `src`, '教你如何制作注能活力炸排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Wild Roast' AS `src`, '教你如何制作注能野味烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Winter Roast' AS `src`, '教你如何制作注能冬味烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Wizard Soup' AS `src`, '教你如何制作注能巫师汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Infused Wizard Wontons' AS `src`, '教你如何制作注能巫师馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Ironscale Leg Armor.' AS `src`, '教你如何制作铁鳞腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Lavaquake Legwraps.' AS `src`, '教你如何制作熔震护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Legacy of the Emperor.' AS `src`, '教你如何制作帝王传承。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Lifekeeper\'s Gloves.' AS `src`, '教你如何制作生命守护者手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Liferuned Leather Gloves.' AS `src`, '教你如何制作生命符文皮甲手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Living Night Void Pendant' AS `src`, '教你如何制作永夜虚空吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Agile Belt Buckle' AS `src`, '教你如何制作宗师级敏捷腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Blade Master\'s Belt Buckle' AS `src`, '教你如何制作宗师级剑刃大师腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Champion\'s Belt Buckle' AS `src`, '教你如何制作宗师级冠军腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Clefthoof Gambeson' AS `src`, '教你如何制作宗师级裂蹄牛皮长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Cobra Strike Gambeson' AS `src`, '教你如何制作大师级眼镜蛇打击软甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Eluding Belt Buckle' AS `src`, '教你如何制作宗师级闪避腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Fel Strike Gambeson' AS `src`, '教你如何制作魔能打击长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Guarded Belt Buckle' AS `src`, '教你如何制作宗师级防护腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Hulking Belt Buckle' AS `src`, '教你如何制作宗师级魁梧腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Priestly Belt Buckle' AS `src`, '教你如何制作宗师级祭司腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Scholar\'s Belt Buckle' AS `src`, '教你如何制作宗师级学者腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Subtle Gambeson' AS `src`, '教你如何制作宗师级灵巧长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft True Strike Gambeson' AS `src`, '教你如何制作宗师级精准打击长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Mastercraft Wind Gambeson' AS `src`, '教你如何制作宗师级疾风长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Murderer\'s Gloves.' AS `src`, '教你如何制作谋杀者手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Nimble Cloak Lining' AS `src`, '教你如何制作灵巧披风衬料。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Noble Talasite Void Pendant' AS `src`, '教你如何制作尊贵泰拉宝石虚空吊坠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pearlescent Spellthread.' AS `src`, '教你如何制作珠光法术线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Powerful Enchanted Spellthread.' AS `src`, '教你如何制作强力附魔法术线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Powerful Ghostly Spellthread.' AS `src`, '教你如何制作强力幽灵法术线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Priestly Belt Buckle' AS `src`, '教你如何制作祭司腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of Adept Striking' AS `src`, '教你如何制作纯净精准打击药瓶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of Butchery' AS `src`, '教你如何制作纯净的屠戮精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of Deep Meditation' AS `src`, '教你如何制作纯净的深度冥想精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of Manifesting Power' AS `src`, '教你如何制作纯净的显能精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of Savage Assault' AS `src`, '教你如何制作纯净的野蛮突袭精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of Shattering Thunder' AS `src`, '教你如何制作纯净的碎裂雷霆精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of Unrelenting Power' AS `src`, '教你如何制作纯净的强效力量精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of the Executioner' AS `src`, '教你如何制作纯净的处刑者精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of the Kirin Tor' AS `src`, '教你如何制作纯净的肯瑞托精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of the Unyielding' AS `src`, '教你如何制作纯净的不屈精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Pure Flask of the Warsong' AS `src`, '教你如何制作纯净的战歌精炼合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Quickshot Scope' AS `src`, '教你如何制作速射瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Rager\'s Cloak Lining' AS `src`, '教你如何制作狂暴者的斗篷衬里。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Rampager\'s Cloak Lining' AS `src`, '教你如何制作暴怒者披风衬料。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Raven Lord\'s Gloves.' AS `src`, '教你如何制作鸦王手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Robes of Creation.' AS `src`, '教你如何制作创造长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Arcanist Belt' AS `src`, '教你如何制作血法师腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Arcanist Bindings' AS `src`, '教你如何制作血法师护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Arcanist Boots' AS `src`, '教你如何制作血法师长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Arcanist Crown' AS `src`, '教你如何制作血怒秘术师之冠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Arcanist Gloves' AS `src`, '教你如何制作血法师手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Arcanist Leggings' AS `src`, '教你如何制作血怒秘术师护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Arcanist Mantle' AS `src`, '教你如何制作血怒秘术师衬肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Arcanist Robes' AS `src`, '教你如何制作血怒秘术师长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Avenger\'s Breastplate' AS `src`, '教你如何制作血色复仇者胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Avenger\'s Crown' AS `src`, '教你如何制作血色复仇者之冠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Avenger\'s Greaves' AS `src`, '教你如何制作血色复仇者胫甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Avenger\'s Legguards' AS `src`, '教你如何制作血色复仇者腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Avenger\'s Pauldrons' AS `src`, '教你如何制作血色复仇者肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Belt of Faith' AS `src`, '教你如何制作腥红信仰腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Belt of Might' AS `src`, '教你如何制作血怒力量腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bindings of Faith' AS `src`, '教你如何制作腥红信仰裹手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bonescythe Bracers' AS `src`, '教你如何制作猩红骨镰护臂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bonescythe Breastplate' AS `src`, '教你如何制作猩红骨镰胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bonescythe Gauntlets' AS `src`, '教你如何制作猩红骨镰手甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bonescythe Helmet' AS `src`, '教你如何制作猩红骨镰头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bonescythe Legplates' AS `src`, '教你如何制作猩红骨镰腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bonescythe Pauldrons' AS `src`, '教你如何制作猩红骨镰肩铠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bonescythe Ring' AS `src`, '教你如何制作腥红骨镰之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bonescythe Sabatons' AS `src`, '教你如何制作猩红骨镰马靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bonescythe Waistguard' AS `src`, '教你如何制作猩红骨镰腰甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Boots of Prophecy' AS `src`, '教你如何制作预言之血红长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Bracers of Might' AS `src`, '教你如何制作血怒力量护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Breastplate of Might' AS `src`, '教你如何制作血怒力量胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cenarion Belt' AS `src`, '教你如何制作塞纳里奥之血红腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cenarion Boots' AS `src`, '教你如何制作血怒塞纳里奥长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cenarion Bracers' AS `src`, '教你如何制作血怒塞纳里奥护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cenarion Gloves' AS `src`, '教你如何制作血怒塞纳里奥手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cenarion Helm' AS `src`, '教你如何制作血怒塞纳里奥头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cenarion Leggings' AS `src`, '教你如何制作血怒塞纳里奥护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cenarion Spaulders' AS `src`, '教你如何制作血怒塞纳里奥肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cenarion Vestments' AS `src`, '教你如何制作血怒塞纳里奥法衣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Chestplate of Might' AS `src`, '教你如何制作力量之血怒胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Circlet of Faith' AS `src`, '教你如何制作腥红信仰头环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Circlet of Prophecy' AS `src`, '教你如何制作预言之血红头环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s Breastplate' AS `src`, '教你如何制作血红征服者的胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s Chestplate' AS `src`, '教你如何制作血色征服者板甲胸铠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s Crown' AS `src`, '教你如何制作血红征服者的王冠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s Greaves' AS `src`, '教你如何制作血红征服者的胫甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s Headguard' AS `src`, '教你如何制作血色征服者头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s Legguards' AS `src`, '教你如何制作血红征服者的腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s Platelegs' AS `src`, '教你如何制作血色征服者腿铠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s Shoulderpads' AS `src`, '教你如何制作血色征服者肩垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s Spaulders' AS `src`, '教你如何制作血红征服者的肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Conqueror\'s War Stompers' AS `src`, '教你如何制作血色征服者战争践踏者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cryptstalker Boots' AS `src`, '教你如何制作血色地穴追猎者长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cryptstalker Girdle' AS `src`, '教你如何制作血色地穴追猎者束带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cryptstalker Handguards' AS `src`, '教你如何制作血色地穴追猎者护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cryptstalker Headpiece' AS `src`, '教你如何制作血色地穴追猎者头饰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cryptstalker Legguards' AS `src`, '教你如何制作血色地穴追猎者腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cryptstalker Spaulders' AS `src`, '教你如何制作血色地穴追猎者肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cryptstalker Tunic' AS `src`, '教你如何制作血色地穴追猎者外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Cryptstalker Wristguards' AS `src`, '教你如何制作血色地穴追猎者腕甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Deathdealer\'s Boots' AS `src`, '教你如何制作血杀者之靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Deathdealer\'s Helm' AS `src`, '教你如何制作血杀者之盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Deathdealer\'s Leggings' AS `src`, '教你如何制作血杀者护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Deathdealer\'s Spaulders' AS `src`, '教你如何制作血杀者护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Deathdealer\'s Vest' AS `src`, '教你如何制作血杀者外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Doomcaller\'s Circlet' AS `src`, '教你如何制作血红末日召唤者的头环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Doomcaller\'s Footwraps' AS `src`, '教你如何制作血红末日召唤者的裹足。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Doomcaller\'s Mantle' AS `src`, '教你如何制作血红末日召唤者的肩垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Doomcaller\'s Robes' AS `src`, '教你如何制作血红末日召唤者的法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Doomcaller\'s Trousers' AS `src`, '教你如何制作血红末日召唤者的长裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreadnaught Bracers' AS `src`, '教你如何制作血色无畏护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreadnaught Breastplate' AS `src`, '教你如何制作血色无畏胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreadnaught Gauntlets' AS `src`, '教你如何制作血色无畏护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreadnaught Helmet' AS `src`, '教你如何制作血色无畏头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreadnaught Legplates' AS `src`, '教你如何制作血色无畏腿铠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreadnaught Pauldrons' AS `src`, '教你如何制作血色无畏肩铠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreadnaught Sabatons' AS `src`, '教你如何制作血色无畏马靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreadnaught Waistguard' AS `src`, '教你如何制作血色无畏腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreamwalker Boots' AS `src`, '教你如何制作猩红梦行者战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreamwalker Girdle' AS `src`, '教你如何制作猩红梦行者腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreamwalker Handguards' AS `src`, '教你如何制作猩红梦行者护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreamwalker Headpiece' AS `src`, '教你如何制作猩红梦行者头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreamwalker Legguards' AS `src`, '教你如何制作猩红梦行者腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreamwalker Spaulders' AS `src`, '教你如何制作猩红梦行者肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreamwalker Tunic' AS `src`, '教你如何制作猩红梦行者外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Dreamwalker Wristguards' AS `src`, '教你如何制作猩红梦行者护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthfury Belt' AS `src`, '教你如何制作血怒大地之怒腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthfury Boots' AS `src`, '教你如何制作血怒大地之怒长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthfury Bracers' AS `src`, '教你如何制作血怒大地之怒护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthfury Epaulets' AS `src`, '教你如何制作血怒大地之怒肩饰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthfury Gauntlets' AS `src`, '教你如何制作血怒大地之怒手甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthfury Helmet' AS `src`, '教你如何制作血怒大地之怒头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthfury Legguards' AS `src`, '教你如何制作血怒大地之怒腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthfury Vestments' AS `src`, '教你如何制作血怒大地之怒法衣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthshatter Boots' AS `src`, '教你如何制作猩红裂地战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthshatter Girdle' AS `src`, '教你如何制作猩红裂地腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthshatter Handguards' AS `src`, '教你如何制作猩红裂地护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthshatter Headpiece' AS `src`, '教你如何制作猩红裂地头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthshatter Legguards' AS `src`, '教你如何制作猩红裂地腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthshatter Spaulders' AS `src`, '教你如何制作猩红裂地肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthshatter Tunic' AS `src`, '教你如何制作血色碎地者外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Earthshatter Wristguards' AS `src`, '教你如何制作猩红裂地护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Enigma Boots' AS `src`, '教你如何制作血谜之靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Enigma Circlet' AS `src`, '教你如何制作血谜头环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Enigma Leggings' AS `src`, '教你如何制作血谜护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Enigma Robes' AS `src`, '教你如何制作血谜法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Enigma Shoulderpads' AS `src`, '教你如何制作血谜肩垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Faceguard of Might' AS `src`, '教你如何制作力量之血怒面甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Footwraps of the Oracle' AS `src`, '教你如何制作预言者血谜裹足。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Frostfire Belt' AS `src`, '教你如何制作猩红霜火腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Frostfire Bindings' AS `src`, '教你如何制作腥红霜火裹手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Frostfire Circlet' AS `src`, '教你如何制作猩红霜火头环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Frostfire Gloves' AS `src`, '教你如何制作猩红霜火手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Frostfire Leggings' AS `src`, '教你如何制作猩红霜火护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Frostfire Ring' AS `src`, '教你如何制作腥红霜火之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Frostfire Robe' AS `src`, '教你如何制作猩红霜火长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Frostfire Sandals' AS `src`, '教你如何制作猩红霜火便鞋。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Frostfire Shoulderpads' AS `src`, '教你如何制作猩红霜火肩垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Gauntlets of Might' AS `src`, '教你如何制作血怒力量护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Genesis Boots' AS `src`, '教你如何制作血创之靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Genesis Helm' AS `src`, '教你如何制作血创之盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Genesis Shoulderpads' AS `src`, '教你如何制作血创肩垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Genesis Trousers' AS `src`, '教你如何制作血创长裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Genesis Vest' AS `src`, '教你如何制作血创外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Giantstalker\'s Belt' AS `src`, '教你如何制作血怒巨兽之王腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Giantstalker\'s Boots' AS `src`, '教你如何制作血怒巨兽之王长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Giantstalker\'s Bracers' AS `src`, '教你如何制作血怒巨兽之王护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Giantstalker\'s Breastplate' AS `src`, '教你如何制作血怒巨兽之王胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Giantstalker\'s Epaulets' AS `src`, '教你如何制作血怒巨兽之王肩饰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Giantstalker\'s Gloves' AS `src`, '教你如何制作血怒巨兽之王手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Giantstalker\'s Helmet' AS `src`, '教你如何制作血怒巨兽之王头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Giantstalker\'s Leggings' AS `src`, '教你如何制作血怒巨兽之王护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Girdle of Might' AS `src`, '教你如何制作力量之血怒腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Girdle of Prophecy' AS `src`, '教你如何制作预言之血红束带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Gloves of Faith' AS `src`, '教你如何制作腥红信仰手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Gloves of Prophecy' AS `src`, '教你如何制作预言之血红手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Handguards of Might' AS `src`, '教你如何制作力量之血怒护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Helm of Might' AS `src`, '教你如何制作血怒力量头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Lawbringer Belt' AS `src`, '教你如何制作血怒秩序之源腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Lawbringer Boots' AS `src`, '教你如何制作血怒律令之靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Lawbringer Bracers' AS `src`, '教你如何制作血怒秩序之源护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Lawbringer Chestguard' AS `src`, '教你如何制作血怒秩序之源胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Lawbringer Gauntlets' AS `src`, '教你如何制作血怒律令之护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Lawbringer Helm' AS `src`, '教你如何制作血怒秩序之源头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Lawbringer Legplates' AS `src`, '教你如何制作血怒秩序之源腿铠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Lawbringer Spaulders' AS `src`, '教你如何制作血怒秩序之源肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Leggings of Faith' AS `src`, '教你如何制作腥红信仰护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Legguards of Might' AS `src`, '教你如何制作力量之血怒腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Legplates of Might' AS `src`, '教你如何制作血怒力量腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Mantle of Prophecy' AS `src`, '教你如何制作预言之血腥肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Mantle of the Oracle' AS `src`, '教你如何制作预言者血谜披肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Nightslayer Belt' AS `src`, '教你如何制作夜幕杀手之血红腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Nightslayer Boots' AS `src`, '教你如何制作夜幕杀手之血红长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Nightslayer Bracelets' AS `src`, '教你如何制作夜幕杀手之血红腕环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Nightslayer Chestpiece' AS `src`, '教你如何制作夜幕杀手之血红胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Nightslayer Cover' AS `src`, '教你如何制作夜幕杀手之血红头罩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Nightslayer Gloves' AS `src`, '教你如何制作夜幕杀手之血红手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Nightslayer Pants' AS `src`, '教你如何制作夜幕杀手之血红护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Nightslayer Shoulder Pads' AS `src`, '教你如何制作夜幕杀手之血红肩垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Pants of Prophecy' AS `src`, '教你如何制作预言之血红护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Pauldrons of Might' AS `src`, '教你如何制作血怒力量肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Plagueheart Belt' AS `src`, '教你如何制作腥红瘟疫之心腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Plagueheart Bindings' AS `src`, '教你如何制作腥红瘟疫之心裹手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Plagueheart Circlet' AS `src`, '教你如何制作腥红瘟疫之心头环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Plagueheart Gloves' AS `src`, '教你如何制作腥红瘟疫之心手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Plagueheart Leggings' AS `src`, '教你如何制作腥红瘟疫之心护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Plagueheart Ring' AS `src`, '教你如何制作腥红瘟疫之心之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Plagueheart Robe' AS `src`, '教你如何制作腥红瘟疫之心长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Plagueheart Sandals' AS `src`, '教你如何制作腥红瘟疫之心便鞋。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Plagueheart Shoulderpads' AS `src`, '教你如何制作腥红瘟疫之心肩垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Redemption Boots' AS `src`, '教你如何制作血色救赎长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Redemption Girdle' AS `src`, '教你如何制作血色救赎束带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Redemption Handguards' AS `src`, '教你如何制作血色救赎护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Redemption Headpiece' AS `src`, '教你如何制作血色救赎头饰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Redemption Legguards' AS `src`, '教你如何制作血色救赎腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Redemption Spaulders' AS `src`, '教你如何制作血色救赎肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Redemption Tunic' AS `src`, '教你如何制作血色救赎外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Redemption Wristguards' AS `src`, '教你如何制作血色救赎腕甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Reinforced Bandage' AS `src`, '教你如何制作血红强化绷带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Ring of Faith' AS `src`, '教你如何制作腥红信仰之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Ring of the Cryptstalker' AS `src`, '教你如何制作腥红地穴追猎者之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Ring of the Dreadnaught' AS `src`, '教你如何制作腥红无畏之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Ring of the Dreamwalker' AS `src`, '教你如何制作腥红梦游者之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Ring of the Earthshatterer' AS `src`, '教你如何制作腥红碎地者之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Robe of Faith' AS `src`, '教你如何制作腥红信仰长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Robes of Prophecy' AS `src`, '教你如何制作预言之血红法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Sabatons of Might' AS `src`, '教你如何制作血怒力量马靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Sandals of Faith' AS `src`, '教你如何制作腥红信仰便鞋。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Shoulderpads of Faith' AS `src`, '教你如何制作腥红信仰肩垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Shoulderpads of Might' AS `src`, '教你如何制作力量之血怒肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Stompers of Might' AS `src`, '教你如何制作力量之血怒战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Stormcaller\'s Diadem' AS `src`, '教你如何制作血唤者头冠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Stormcaller\'s Footguards' AS `src`, '教你如何制作血唤者足甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Stormcaller\'s Hauberk' AS `src`, '教你如何制作血唤者链甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Stormcaller\'s Leggings' AS `src`, '教你如何制作血唤者护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Stormcaller\'s Pauldrons' AS `src`, '教你如何制作血唤者肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Striker\'s Diadem' AS `src`, '教你如何制作血击者头冠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Striker\'s Footguards' AS `src`, '教你如何制作血击者足甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Striker\'s Hauberk' AS `src`, '教你如何制作血击者链甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Striker\'s Leggings' AS `src`, '教你如何制作血击者护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Striker\'s Pauldrons' AS `src`, '教你如何制作血击者肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Tiara of the Oracle' AS `src`, '教你如何制作预言者血谜头冠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Trousers of the Oracle' AS `src`, '教你如何制作预言者血谜长裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Vambraces of Prophecy' AS `src`, '教你如何制作预言之血红护臂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Vestments of the Oracle' AS `src`, '教你如何制作预言者血谜法衣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Weaved Bandage' AS `src`, '教你如何制作血红编织绷带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sanguine Wristguards of Might' AS `src`, '教你如何制作力量之血怒护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Scholar\'s Belt Buckle' AS `src`, '教你如何制作学者腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Shadowgold Dread Pendant' AS `src`, '教你如何制作暗影黄金恐惧项链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Shadowleather Leg Armor.' AS `src`, '教你如何制作影皮腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Shifting Cloak Lining' AS `src`, '教你如何制作移形披风衬里。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sighted Scope' AS `src`, '教你如何制作精准瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Spelltwister\'s Gloves.' AS `src`, '教你如何制作法术扭转者的手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Steadfast Cloak Lining' AS `src`, '教你如何制作坚定的斗篷衬里。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Stormscale Boots.' AS `src`, '教你如何制作雷鳞长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Stormscale Bracers.' AS `src`, '教你如何制作雷鳞护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Stormscale Gloves.' AS `src`, '教你如何制作雷鳞手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Stormscale Leggings.' AS `src`, '教你如何制作雷鳞护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Stormscale Shoulders.' AS `src`, '教你如何制作雷鳞肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Subtle Gambeson' AS `src`, '教你如何制作灵巧长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sustaining Cloak Lining' AS `src`, '教你如何制作持久披风衬料。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Touch of the Light.' AS `src`, '教你如何制作光明之触。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Tough Scorpid Boots.' AS `src`, '教你如何制作硬化蝎壳战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Tough Scorpid Bracers.' AS `src`, '教你如何制作硬化蝎壳护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Tough Scorpid Gloves.' AS `src`, '教你如何制作硬化蝎壳手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Tough Scorpid Leggings.' AS `src`, '教你如何制作硬化蝎壳护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Tough Scorpid Shoulders.' AS `src`, '教你如何制作硬化蝎壳护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Toughened Leg Armor.' AS `src`, '教你如何制作硬化腿部护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft True Strike Gambeson' AS `src`, '教你如何制作精准打击长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Vicious Embersilk Pants.' AS `src`, '教你如何制作恶毒烬丝长裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Vicious Fireweave Pants.' AS `src`, '教你如何制作凶残焰纹布裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Wicked Leather Gauntlets.' AS `src`, '教你如何制作邪恶皮甲护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Wildblood Gloves.' AS `src`, '教你如何制作蛮血手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Wind Gambeson' AS `src`, '教你如何制作疾风长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Windwool Boots.' AS `src`, '教你如何制作风绒长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Windwool Bracers.' AS `src`, '教你如何制作风绒护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Windwool Gloves.' AS `src`, '教你如何制作风绒手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Windwool Pants.' AS `src`, '教你如何制作风绒长裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Windwool Shoulders.' AS `src`, '教你如何制作风绒肩垫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft World Mender\'s Pants.' AS `src`, '教你如何制作世界修补者长裤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create Rhinestone Sunglasses.' AS `src`, '教你如何制作莱茵石太阳镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Agile Retinal Armor.' AS `src`, '教你如何制作灵巧视网膜护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Antivenom Serum.' AS `src`, '教你如何制作抗毒血清。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Basalt Slammer.' AS `src`, '教你如何制作玄武岩重锤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Bladeshadow Leggings.' AS `src`, '教你如何制作刃影护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Bladeshadow Wristguards.' AS `src`, '教你如何制作刃影护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Blingtron 4000.' AS `src`, '教你如何制作布林顿4000。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Bracers of Destructive Strength.' AS `src`, '教你如何制作毁灭之力护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Bracers of Flowing Serenity.' AS `src`, '教你如何制作流溢宁静护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Bracers of the Hunter-Killer.' AS `src`, '教你如何制作猎杀者护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Brainsplinter.' AS `src`, '教你如何制作碎脑者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Brilliant Alchemist Oil.' AS `src`, '教你如何制作精炼炼金师之油。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Camouflage Retinal Armor.' AS `src`, '教你如何制作迷彩视网膜护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Charscale Leg Armor.' AS `src`, '教你如何制作焦鳞腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Clutches of Evil.' AS `src`, '教你如何制作邪恶之握。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Dark Mojo Goggles.' AS `src`, '教你如何制作黑暗巫毒护目镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Dark Steel Belt.' AS `src`, '教你如何制作暗钢腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Dark Steel Stompers.' AS `src`, '教你如何制作暗钢重靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Dark Steel Wristguards.' AS `src`, '教你如何制作暗钢腕甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Darkbrand Boots.' AS `src`, '教你如何制作暗痕长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Darkbrand Bracers.' AS `src`, '教你如何制作暗痕护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Darkbrand Gloves.' AS `src`, '教你如何制作暗痕手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Darkbrand Leggings.' AS `src`, '教你如何制作暗痕护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Darkbrand Shoulders.' AS `src`, '教你如何制作暗痕肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Deadly Retinal Armor.' AS `src`, '教你如何制作致命视网膜护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Deathscale Leggings.' AS `src`, '教你如何制作死鳞护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Dragonfire Gloves.' AS `src`, '教你如何制作龙火手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Dragonscale Leg Armor.' AS `src`, '教你如何制作龙鳞腿甲片。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Drakeforged Belt.' AS `src`, '教你如何制作龙铸腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Drakeforged Boots.' AS `src`, '教你如何制作龙铸战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Drakeforged Bracers.' AS `src`, '教你如何制作龙铸护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Drakehide Leg Armor.' AS `src`, '教你如何制作龙皮腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Duskhide Belt.' AS `src`, '教你如何制作暮色腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Duskhide Boots.' AS `src`, '教你如何制作暮色之靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Duskhide Bracers.' AS `src`, '教你如何制作暮色皮护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Earthen Scale Sabatons.' AS `src`, '教你如何制作大地鳞片胫甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Elementium Arrows.' AS `src`, '教你如何制作源质箭矢。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Elementium Bullets.' AS `src`, '教你如何制作源质子弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Elementium Deathplate.' AS `src`, '教你如何制作源质死亡板甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Elementium Dragonfire.' AS `src`, '教你如何制作源质龙焰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Emberforged Elementium Boots.' AS `src`, '教你如何制作余烬锻造源质战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Energized Retinal Armor.' AS `src`, '教你如何制作充能视网膜护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Eternal Elementium Handguards.' AS `src`, '教你如何制作永恒源质护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Ethereal Footfalls.' AS `src`, '教你如何制作虚空步履。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Felfire Boots.' AS `src`, '教你如何制作魔焰长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Felfire Bracers.' AS `src`, '教你如何制作魔焰护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Felfire Cord.' AS `src`, '教你如何制作魔焰腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Fists of Fury.' AS `src`, '教你如何制作怒意狂拳。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Flintlocke\'s Woodchucker.' AS `src`, '教你如何制作火枪手的投木器。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Footwraps of Quenched Fire.' AS `src`, '教你如何制作熄焰裹足。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Foundations of Courage.' AS `src`, '教你如何制作勇气根基。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Gleamscale Belt.' AS `src`, '教你如何制作微光鳞片腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Gleamscale Boots.' AS `src`, '教你如何制作辉鳞长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Gleamscale Bracers.' AS `src`, '教你如何制作辉鳞护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Gloves of Unforgiving Flame.' AS `src`, '教你如何制作无情烈焰手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Goblin Rocket Boots.' AS `src`, '教你如何制作地精火箭靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Hardened Obsidium Boots.' AS `src`, '教你如何制作硬化黑曜石长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Hardened Obsidium Bracers.' AS `src`, '教你如何制作硬化黑曜石护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Hardened Obsidium Gauntlets.' AS `src`, '教你如何制作硬化黑曜石手甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Hardened Obsidium Legguards.' AS `src`, '教你如何制作硬化黑曜护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Hardened Obsidium Shoulders.' AS `src`, '教你如何制作硬化黑曜石肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Heavenly Gloves of the Moon.' AS `src`, '教你如何制作月华天界手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Heavy Savage Leather.' AS `src`, '教你如何制作厚重蛮皮。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Holy Flame Gauntlets.' AS `src`, '教你如何制作圣焰手甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Incarnadine Ink.' AS `src`, '教你如何制作朱红墨水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Kixxle\'s Experimental Potion.' AS `src`, '教你如何制作基克斯的实验药剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Leggings of Nature\'s Champion.' AS `src`, '教你如何制作自然卫士护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Lightweight Retinal Armor.' AS `src`, '教你如何制作轻型视网膜护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Lord Blastington\'s Scope of Doom.' AS `src`, '教你如何制作布拉斯顿领主的毁灭瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Luminous Flame Dagger.' AS `src`, '教你如何制作光焰匕首。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Lunaris Boots.' AS `src`, '教你如何制作月影长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Lunaris Bracers.' AS `src`, '教你如何制作月影护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Lunaris Cord.' AS `src`, '教你如何制作月影腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Magma Windblade.' AS `src`, '教你如何制作熔岩风刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Mirrored Boots.' AS `src`, '教你如何制作镜像之靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Miru Berry Wine.' AS `src`, '教你如何制作米鲁浆果酒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Mist-Piercing Goggles.' AS `src`, '教你如何制作破雾护目镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Moon Spirit Goggles.' AS `src`, '教你如何制作月灵护目镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Pyrium Legplates of Purified Evil.' AS `src`, '教你如何制作净化邪恶的源质腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Rattle Chain Boots.' AS `src`, '教你如何制作响链战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Rattle Chain Cord.' AS `src`, '教你如何制作响骨链索腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Rattle Chain Guards.' AS `src`, '教你如何制作响链护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Razorshell Boots.' AS `src`, '教你如何制作锋壳长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Razorshell Bracers.' AS `src`, '教你如何制作锋壳护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Razorshell Gloves.' AS `src`, '教你如何制作锋壳手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Razorshell Leggings.' AS `src`, '教你如何制作锋壳护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Razorshell Shoulders.' AS `src`, '教你如何制作锋壳肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Redsteel Boots.' AS `src`, '教你如何制作赤钢长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Redsteel Bracers.' AS `src`, '教你如何制作赤钢护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Redsteel Gauntlets.' AS `src`, '教你如何制作赤钢手甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Redsteel Legguards.' AS `src`, '教你如何制作赤钢腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Redsteel Shoulders.' AS `src`, '教你如何制作赤钢肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Reinforced Retinal Armor.' AS `src`, '教你如何制作强化视网膜护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Rended Earth Leggings.' AS `src`, '教你如何制作裂地护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Runed Slag Axe.' AS `src`, '教你如何制作符文熔渣战斧。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Scorched Leg Armor.' AS `src`, '教你如何制作灼热腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Shadowforged Elementium Goggles.' AS `src`, '教你如何制作暗影锻铸源质护目镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Shimmering Soul Goggles.' AS `src`, '教你如何制作微光灵魂护目镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Soul Redeemer Bracers.' AS `src`, '教你如何制作灵魂救赎者护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Soulforged Belt.' AS `src`, '教你如何制作魂铸腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Soulforged Boots.' AS `src`, '教你如何制作魂铸战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Soulforged Bracers.' AS `src`, '教你如何制作灵魂铸就护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Specialized Retinal Armor.' AS `src`, '教你如何制作专用视网膜护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Stormforged Boots.' AS `src`, '教你如何制作雷铸长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Stormforged Bracers.' AS `src`, '教你如何制作雷铸护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Stormforged Gauntlets.' AS `src`, '教你如何制作雷铸手甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Stormforged Legguards.' AS `src`, '教你如何制作雷铸腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Stormforged Shoulders.' AS `src`, '教你如何制作雷铸护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Swirling Molten Goggles.' AS `src`, '教你如何制作旋流熔岩护目镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Thundering Deathscale Wristguards.' AS `src`, '教你如何制作雷鸣死鳞护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Tigersblood Tincture.' AS `src`, '教你如何制作虎血药剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Titanguard Wristplates.' AS `src`, '教你如何制作泰坦守卫腕甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Treads of the Craft.' AS `src`, '教你如何制作工艺之履。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Tsunami Boots.' AS `src`, '教你如何制作海啸长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Tsunami Bracers.' AS `src`, '教你如何制作海啸护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Tsunami Gloves.' AS `src`, '教你如何制作海啸手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Tsunami Leggings.' AS `src`, '教你如何制作海啸护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Tsunami Shoulders.' AS `src`, '教你如何制作海啸肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Twilight Leg Armor.' AS `src`, '教你如何制作暮光腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Unstoppable Destroyer\'s Legplates.' AS `src`, '教你如何制作无敌毁灭者腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Verdant Scale Belt.' AS `src`, '教你如何制作翠绿鳞片腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Verdant Scale Boots.' AS `src`, '教你如何制作翠鳞长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Verdant Scale Bracers.' AS `src`, '教你如何制作翠鳞护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Charscale Boots.' AS `src`, '教你如何制作凶残焦鳞长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Charscale Bracers.' AS `src`, '教你如何制作凶残焦鳞护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Charscale Gloves.' AS `src`, '教你如何制作凶残焦鳞手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Charscale Legs.' AS `src`, '教你如何制作凶残焦鳞腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Charscale Shoulders.' AS `src`, '教你如何制作恶毒焦鳞护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Dragonscale Boots.' AS `src`, '教你如何制作凶残龙鳞长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Dragonscale Bracers.' AS `src`, '教你如何制作凶残龙鳞护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Dragonscale Gloves.' AS `src`, '教你如何制作恶毒龙鳞手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Dragonscale Legs.' AS `src`, '教你如何制作凶残龙鳞腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Dragonscale Shoulders.' AS `src`, '教你如何制作凶残龙鳞护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Leather Boots.' AS `src`, '教你如何制作凶残皮甲长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Leather Bracers.' AS `src`, '教你如何制作凶残皮甲护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Leather Gloves.' AS `src`, '教你如何制作凶残皮甲手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Leather Legs.' AS `src`, '教你如何制作凶残皮甲护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Leather Shoulders.' AS `src`, '教你如何制作凶残皮甲护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Ornate Pyrium Boots.' AS `src`, '教你如何制作凶残精制源质长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Ornate Pyrium Bracers.' AS `src`, '教你如何制作凶残精制源质护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Ornate Pyrium Gauntlets.' AS `src`, '教你如何制作凶残精制源质护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Ornate Pyrium Legguards.' AS `src`, '教你如何制作凶残精制源质腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Ornate Pyrium Shoulders.' AS `src`, '教你如何制作凶残精制源质护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Pyrium Boots.' AS `src`, '教你如何制作凶残源质长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Pyrium Bracers.' AS `src`, '教你如何制作凶残源质护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Pyrium Gauntlets.' AS `src`, '教你如何制作凶残源质护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Pyrium Legguards.' AS `src`, '教你如何制作凶残源质腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Pyrium Shoulders.' AS `src`, '教你如何制作凶残源质护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Wyrmhide Boots.' AS `src`, '教你如何制作凶残龙皮长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Wyrmhide Bracers.' AS `src`, '教你如何制作凶残龙皮护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Wyrmhide Gloves.' AS `src`, '教你如何制作凶残龙皮手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Wyrmhide Legs.' AS `src`, '教你如何制作恶毒龙鳞护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vicious Wyrmhide Shoulders.' AS `src`, '教你如何制作凶残龙皮肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Vol\'karo, the Soul Forged.' AS `src`, '教你如何制作沃卡洛，铸魂者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Warboots of Mighty Lords.' AS `src`, '教你如何制作霸主战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Wildweave Belt.' AS `src`, '教你如何制作蛮荒腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Wildweave Boots.' AS `src`, '教你如何制作蛮荒之靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Wildweave Bracers.' AS `src`, '教你如何制作蛮荒护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Windbound Boots.' AS `src`, '教你如何制作风缚长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Windbound Bracers.' AS `src`, '教你如何制作风缚护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Windbound Gloves.' AS `src`, '教你如何制作风缚手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Windbound Leggings.' AS `src`, '教你如何制作风缚护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Windbound Shoulders.' AS `src`, '教你如何制作风缚肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon Mr. Bigglesworth.' AS `src`, '教你如何召唤比格沃斯先生。' AS `dst`
) AS `m` ON `m`.`src` = `a`.`description`
SET `a`.`description` = `m`.`dst`;
