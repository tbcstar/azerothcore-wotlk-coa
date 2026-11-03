-- One indexed pass replaces 1066 single-row UPDATEs on `item_template`.`description`.
UPDATE `item_template` AS `a`
JOIN (
    SELECT 'Teaches you how to make a Warbot.' AS `src`, '教你如何制作战斗机器人。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon Grinder.' AS `src`, '教你如何召唤格林德。' AS `dst`
    UNION ALL SELECT 'Teaches you how to bake a Rockfish.' AS `src`, '教你如何烘烤岩鱼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Wildclaw.' AS `src`, '教你如何制作野爪。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon Murkablo.' AS `src`, '教你如何召唤暗影布洛。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Zen Jasper.' AS `src`, '教你如何切割禅悟的碧玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather.' AS `src`, '教你如何制作煞皮革。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Jade Owl.' AS `src`, '教你如何制作翡翠猫头鹰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Magic Lamp.' AS `src`, '教你如何制作魔法灯。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Acid Bomb.' AS `src`, '教你如何制作酸性炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix Virmen\'s Bite.' AS `src`, '教你如何调配鼠咬之痛。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon Chrominius.' AS `src`, '教你如何召唤克罗米纽斯。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount!' AS `src`, '教你如何召唤此坐骑。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Regal Jasper.' AS `src`, '教你如何切割帝王的碧玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Lifestealer.' AS `src`, '教你如何制作噬命者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix Desecrated Oil.' AS `src`, '教你如何调配亵渎之油。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Fish Fry.' AS `src`, '教你如何准备炸鱼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Vulture' AS `src`, '教你如何制作秃鹫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Nimble Jasper.' AS `src`, '教你如何切割灵巧的碧玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Steady Jasper.' AS `src`, '教你如何切割稳固的碧玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Zen Wild Jade.' AS `src`, '教你如何切割禅意野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Ghost Shard.' AS `src`, '教你如何锻造鬼灵碎片。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cloak of War.' AS `src`, '教你如何制作战争披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Mirror Scope.' AS `src`, '教你如何制作反射瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Savage Cloak.' AS `src`, '教你如何制作野蛮披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Sniper Scope.' AS `src`, '教你如何制作狙击瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Spirit Stick.' AS `src`, '教你如何制作灵魂短棍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Tsunami Belt.' AS `src`, '教你如何制作海啸腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Tsunami Helm.' AS `src`, '教你如何制作海啸头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Mantid Elixir.' AS `src`, '教你如何调配螳螂妖药剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Monk\'s Elixir.' AS `src`, '教你如何调配武僧灵药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Nether Seed' AS `src`, '教你如何转化虚空种子。' AS `dst`
    UNION ALL SELECT 'Teaches you how to bake a Pickled Guppy.' AS `src`, '教你如何烘烤腌孔雀鱼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to boil a Seasoned Crab.' AS `src`, '教你如何烹煮香辣蟹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Vulture' AS `src`, '教你如何制作秃鹫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Widow Chain.' AS `src`, '教你如何制作寡妇锁链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deft Hessonite.' AS `src`, '教你如何切割灵巧赫索尼特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fine Hessonite.' AS `src`, '教你如何切割精良的希斯克利特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Keen Hessonite.' AS `src`, '教你如何切割敏锐的希斯克利特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Quick Sunstone.' AS `src`, '教你如何切割迅捷日曜石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Subtle Alicite.' AS `src`, '教你如何切割微妙艾利希特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to fold an Origami Rock.' AS `src`, '教你如何折出折纸岩石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a G91 Landshark.' AS `src`, '教你如何制作G91陆行鲨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Redsteel Belt.' AS `src`, '教你如何制作赤钢腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Redsteel Helm.' AS `src`, '教你如何制作赤钢头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Thermal Anvil.' AS `src`, '教你如何制作热流铁砧。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Potion of Luck.' AS `src`, '教你如何调配幸运药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Royal Satchel.' AS `src`, '教你如何制作皇家背包。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Sha Armor Kit.' AS `src`, '教你如何制作煞能护甲套件。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Windwool Belt.' AS `src`, '教你如何制作风绒腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Windwool Hood.' AS `src`, '教你如何制作风绒兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Bold Stew' AS `src`, '教你如何制作浓郁炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Duck Stew' AS `src`, '教你如何制作炖鸭。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Lurker Lunch.' AS `src`, '教你如何制作潜伏者午餐。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Ruby Panther.' AS `src`, '教你如何制作红宝石猎豹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Sapphire Cub.' AS `src`, '教你如何制作蓝宝石幼崽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deft Lava Coral.' AS `src`, '教你如何切割灵巧熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deft Tiger Opal.' AS `src`, '教你如何切割灵巧的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fine Lava Coral.' AS `src`, '教你如何切割精致熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fine Tiger Opal.' AS `src`, '教你如何切割精良的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Forceful Jasper.' AS `src`, '教你如何切割强力的碧玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Keen Lava Coral.' AS `src`, '教你如何切割敏锐熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Keen Tiger Opal.' AS `src`, '教你如何切割敏锐的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Misty Wild Jade.' AS `src`, '教你如何切割迷雾野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Mystic Sunstone.' AS `src`, '教你如何切割神秘日曜石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Piercing Jasper.' AS `src`, '教你如何切割穿刺的碧玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Quick Dawnstone.' AS `src`, '教你如何切割迅捷黎明石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Regal Wild Jade.' AS `src`, '教你如何切割帝王野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Smooth Sunstone.' AS `src`, '教你如何切割光滑日曜石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Subtle Sunstone.' AS `src`, '教你如何切割微妙日曜石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Vivid Wild Jade.' AS `src`, '教你如何切割鲜艳野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Zen Alexandrite.' AS `src`, '教你如何切割禅悟翠榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to fold an Origami Slime.' AS `src`, '教你如何折出折纸软泥怪。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Forgewire Axe.' AS `src`, '教你如何锻造锻线斧。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Phantom Blade.' AS `src`, '教你如何锻造幻影之刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Four Senses Brew.' AS `src`, '教你如何制作四感之酿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Darkbrand Belt.' AS `src`, '教你如何制作暗痕腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Darkbrand Helm.' AS `src`, '教你如何制作暗痕头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Handmade Chest.' AS `src`, '教你如何制作手工胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Lightning Lash.' AS `src`, '教你如何制作闪电鞭笞。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Potency Potion.' AS `src`, '教你如何制作能量药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Warding Potion.' AS `src`, '教你如何制作防护药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Windbound Belt.' AS `src`, '教你如何制作风缚腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Windbound Helm.' AS `src`, '教你如何制作风缚头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Potion of Focus.' AS `src`, '教你如何调配专注药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Viseclaw Soup.' AS `src`, '教你如何准备钳爪蟹汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to refine Elementium Ore.' AS `src`, '教你如何精炼源质矿石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Corefire Imp.' AS `src`, '教你如何召唤核火小鬼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Stitched Pup.' AS `src`, '教你如何召唤缝合幼犬。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Wild Jade.' AS `src`, '教你如何转化野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to bake Chocolate Cookies.' AS `src`, '教你如何烘烤巧克力曲奇。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Dreamless Belt.' AS `src`, '教你如何制作无梦腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Nightfire Robe.' AS `src`, '教你如何制作夜火长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Wildblood Vest.' AS `src`, '教你如何制作蛮血外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Windwool Tunic.' AS `src`, '教你如何制作风绒外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a batch Void Bait' AS `src`, '教你如何制作虚空鱼饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Wild Roast' AS `src`, '教你如何制作野味烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an Profane Thread' AS `src`, '教你如何制作亵渎之线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Bold Stew' AS `src`, '教你如何制作浓郁炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Duck Stew' AS `src`, '教你如何制作炖鸭。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Band of Blood.' AS `src`, '教你如何制作鲜血之环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Lord\'s Signet.' AS `src`, '教你如何制作领主玺戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create an Jade Panther.' AS `src`, '教你如何制作翡翠猎豹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deadly Hessonite.' AS `src`, '教你如何切割致命赫索尼特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deft Ember Topaz.' AS `src`, '教你如何切割灵巧余烬黄玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fierce Hessonite.' AS `src`, '教你如何切割凶猛赫索尼特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fine Ember Topaz.' AS `src`, '教你如何切割优良烬石黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Jagged Wild Jade.' AS `src`, '教你如何切割锯齿野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Keen Ember Topaz.' AS `src`, '教你如何切割锐利烬石黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Lightning Jasper.' AS `src`, '教你如何切割闪电的碧玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Nimble Wild Jade.' AS `src`, '教你如何切割灵巧野性翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Potent Hessonite.' AS `src`, '教你如何切割强力赫索尼特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Quick Amberjewel.' AS `src`, '教你如何切割迅捷琥珀宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Quick Lightstone.' AS `src`, '教你如何切割迅捷光玉髓。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Steady Wild Jade.' AS `src`, '教你如何切割稳固野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Stormy Zephyrite.' AS `src`, '教你如何切割风暴泽菲莱特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Turbid Wild Jade.' AS `src`, '教你如何切割浑浊野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Veiled Demonseye.' AS `src`, '教你如何切割隐秘恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to fold an Origami Beetle.' AS `src`, '教你如何折出折纸甲虫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Lightsteel Boots.' AS `src`, '教你如何锻造光钢战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Watergliding Jets.' AS `src`, '教你如何制作滑水喷射器。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Big Game Hunter.' AS `src`, '教你如何制作狩猎大师。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Bloodroot Lance.' AS `src`, '教你如何制作血根长枪。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cloak of Beasts.' AS `src`, '教你如何制作野兽披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Elderwood Charm.' AS `src`, '教你如何制作古木护符。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Razorshell Belt.' AS `src`, '教你如何制作锋壳腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Razorshell Helm.' AS `src`, '教你如何制作锋壳头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Sizzling Potion.' AS `src`, '教你如何制作滋滋魔药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Windbound Chest.' AS `src`, '教你如何制作风缚胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Rod.' AS `src`, '教你如何制作源质棒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Darkwater Potion.' AS `src`, '教你如何调配暗水药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Mad Hozen Elixir.' AS `src`, '教你如何调配疯狂猴人灵药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix an Elixir of Peace.' AS `src`, '教你如何调配平和灵药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Braised Turtle.' AS `src`, '教你如何准备炖甲鱼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Mogu Fish Stew.' AS `src`, '教你如何准备魔古鱼汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Wildfowl Roast.' AS `src`, '教你如何准备烤野禽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Fetish Shaman.' AS `src`, '教你如何召唤图腾萨满。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon an Aqua Strider.' AS `src`, '教你如何召唤水行者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Living Steel.' AS `src`, '教你如何转化活钢。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Lava Coral.' AS `src`, '教你如何转化熔岩珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Lightstone.' AS `src`, '教你如何转化轻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Boots.' AS `src`, '教你如何制作煞皮靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormscale Belt.' AS `src`, '教你如何制作雷鳞腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormscale Helm.' AS `src`, '教你如何制作雷鳞头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Chunky Stew' AS `src`, '教你如何制作浓块炖肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Living Soup' AS `src`, '教你如何制作活体浓汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Rock\'s Stew' AS `src`, '教你如何制作岩石炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Savory Stew' AS `src`, '教你如何制作香浓炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Subtle Soup' AS `src`, '教你如何制作微妙浓汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Wizard Soup' AS `src`, '教你如何制作法师浓汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Wild Roast' AS `src`, '教你如何制作野味烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Band of Blades.' AS `src`, '教你如何制作利刃之环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Feathered Lure.' AS `src`, '教你如何制作羽饰诱饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Fortune Cookie.' AS `src`, '教你如何制作幸运饼干。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Lionsfall Ring.' AS `src`, '教你如何制作雄狮陨落之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Primal Diamond.' AS `src`, '教你如何制作原始钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Skymage Circle.' AS `src`, '教你如何制作天象之环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Bold Inferno Ruby.' AS `src`, '教你如何切割锐利地狱火红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Crafty Lava Coral.' AS `src`, '教你如何切割狡诈熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Crafty Tiger Opal.' AS `src`, '教你如何切割灵巧的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deadly Lava Coral.' AS `src`, '教你如何切割致命熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deadly Tiger Opal.' AS `src`, '教你如何切割致命的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fierce Lava Coral.' AS `src`, '教你如何切割凶猛熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fierce Tiger Opal.' AS `src`, '教你如何切割凶猛的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Forceful Talasite.' AS `src`, '教你如何切割坚强水玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Lucent Lava Coral.' AS `src`, '教你如何切割明亮熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Lucent Tiger Opal.' AS `src`, '教你如何切割明亮的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Misty Alexandrite.' AS `src`, '教你如何切割迷雾翠榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Mystic Amberjewel.' AS `src`, '教你如何切割神秘琥珀宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Mystic Lightstone.' AS `src`, '教你如何切割神秘光玉髓。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Potent Lava Coral.' AS `src`, '教你如何切割强力熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Potent Tiger Opal.' AS `src`, '教你如何切割强效的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Radiant Wild Jade.' AS `src`, '教你如何切割辐光野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Regal Alexandrite.' AS `src`, '教你如何切割帝王的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Smooth Amberjewel.' AS `src`, '教你如何切割光滑琥珀宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Smooth Lightstone.' AS `src`, '教你如何切割光滑光玉髓。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Subtle Amberjewel.' AS `src`, '教你如何切割精致琥珀宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Subtle Lightstone.' AS `src`, '教你如何切割精巧光玉髓。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Veiled Roguestone.' AS `src`, '教你如何切割隐秘贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Vivid Alexandrite.' AS `src`, '教你如何切割鲜艳的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Wicked Lava Coral.' AS `src`, '教你如何切割邪恶熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Wicked Tiger Opal.' AS `src`, '教你如何切割邪恶的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Zen Dream Emerald.' AS `src`, '教你如何切割禅意梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Zen Elven Peridot.' AS `src`, '教你如何切割禅悟精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Adept Lava Coral.' AS `src`, '教你如何切割熟练熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Adept Tiger Opal.' AS `src`, '教你如何切割熟练的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Etched Demonseye.' AS `src`, '教你如何切割蚀刻恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Spiritguard Boots.' AS `src`, '教你如何锻造灵魂守卫战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Lightsteel Belt.' AS `src`, '教你如何锻造光钢腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Lightsteel Helm.' AS `src`, '教你如何锻造光钢头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Blackwood Shield.' AS `src`, '教你如何制作黑木盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Decursive Potion.' AS `src`, '教你如何制作驱散药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Lifeforce Hammer.' AS `src`, '教你如何制作生命之力战锤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Pyrium Spellward.' AS `src`, '教你如何制作源质法术护盾。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Razorshell Chest.' AS `src`, '教你如何制作锋壳胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Redbind Crossbow.' AS `src`, '教你如何制作红缚弩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Shellscale Cloak.' AS `src`, '教你如何制作甲鳞斗篷。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormforged Belt.' AS `src`, '教你如何制作雷铸腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormforged Helm.' AS `src`, '教你如何制作雷铸头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Wuju Tiki Shield.' AS `src`, '教你如何制作乌菊提基盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Arcanite Reaper.' AS `src`, '教你如何制作奥金斧。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Sauteed Carrots.' AS `src`, '教你如何准备炒胡萝卜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Valley Stir Fry.' AS `src`, '教你如何准备山谷炒菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Pure Void Metal' AS `src`, '教你如何转化纯净虚空金属。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Gloves.' AS `src`, '教你如何制作煞皮手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Sha Leather Belt.' AS `src`, '教你如何制作煞皮腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Sha Leather Helm.' AS `src`, '教你如何制作煞皮头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormscale Drape.' AS `src`, '教你如何制作雷鳞披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Blazing Stew' AS `src`, '教你如何制作炽热炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Red-Hot Stew' AS `src`, '教你如何制作赤热炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Reflex Scope' AS `src`, '教你如何制作反射瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Savory Steak' AS `src`, '教你如何制作香煎牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Seared Chops' AS `src`, '教你如何制作炙烤肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Subtle Chops' AS `src`, '教你如何制作微妙肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Subtle Steak' AS `src`, '教你如何制作微妙肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Winter Roast' AS `src`, '教你如何制作冬季烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an Illusionary Bag.' AS `src`, '教你如何制作幻象背包。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Chunky Stew' AS `src`, '教你如何制作浓块炖肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Living Soup' AS `src`, '教你如何制作活体浓汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Rock\'s Stew' AS `src`, '教你如何制作岩石炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Savory Stew' AS `src`, '教你如何制作香浓炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Subtle Soup' AS `src`, '教你如何制作微妙浓汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Wizard Soup' AS `src`, '教你如何制作法师浓汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Vulture' AS `src`, '教你如何制作秃鹫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Punisher\'s Band.' AS `src`, '教你如何制作惩罚者之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Balanced Wild Jade.' AS `src`, '教你如何切割平衡野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Bold Chimera\'s Eye.' AS `src`, '教你如何切割锐利奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Bold Serpent\'s Eye.' AS `src`, '教你如何切割勇猛之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deadly Ember Topaz.' AS `src`, '教你如何切割致命余烬黄玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fierce Ember Topaz.' AS `src`, '教你如何切割凶猛烬石黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Flashing Carnelian.' AS `src`, '教你如何切割闪光红玉髓。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Forceful Wild Jade.' AS `src`, '教你如何切割强力野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fractured Sunstone.' AS `src`, '教你如何切割碎裂日曜石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Glinting Demonseye.' AS `src`, '教你如何切割辉光恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Jagged Alexandrite.' AS `src`, '教你如何切割锯齿的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Lucent Ember Topaz.' AS `src`, '教你如何切割明亮炽热黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Nimble Alexandrite.' AS `src`, '教你如何切割灵巧翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Piercing Wild Jade.' AS `src`, '教你如何切割穿刺野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Polished Hessonite.' AS `src`, '教你如何切割抛光赫索尼特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Potent Ember Topaz.' AS `src`, '教你如何切割强效烬石黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Puissant Wild Jade.' AS `src`, '教你如何切割威猛野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Purified Demonseye.' AS `src`, '教你如何切割净化恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Reckless Hessonite.' AS `src`, '教你如何切割鲁莽赫索尼特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Rigid Lapis Lazuli.' AS `src`, '教你如何切割坚固的青金石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sensei\'s Wild Jade.' AS `src`, '教你如何切割导师野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Shifting Demonseye.' AS `src`, '教你如何切割变幻恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Solid Lapis Lazuli.' AS `src`, '教你如何切割致密青金石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Steady Alexandrite.' AS `src`, '教你如何切割稳定的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Tenuous Lava Coral.' AS `src`, '教你如何切割脆弱熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Tenuous Tiger Opal.' AS `src`, '教你如何切割脆弱的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Timeless Demonseye.' AS `src`, '教你如何切割永恒恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Turbid Alexandrite.' AS `src`, '教你如何切割浑浊的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Willful Lava Coral.' AS `src`, '教你如何切割执意熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Willful Tiger Opal.' AS `src`, '教你如何切割刚硬虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Adept Ember Topaz.' AS `src`, '教你如何切割熟练余烬黄玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Artful Lava Coral.' AS `src`, '教你如何切割精巧熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Artful Tiger Opal.' AS `src`, '教你如何切割精巧的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Etched Roguestone.' AS `src`, '教你如何切割蚀刻贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Ghost-Forged Boots.' AS `src`, '教你如何锻造鬼钢战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Lightsteel Bracers.' AS `src`, '教你如何锻造光钢护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Spiritguard Belt.' AS `src`, '教你如何锻造灵卫腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Spiritguard Helm.' AS `src`, '教你如何锻造灵卫头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Basilisk Liverdog.' AS `src`, '教你如何制作蜥蜴肝肠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cold-Forged Shank.' AS `src`, '教你如何制作冷铸短匕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Corded Viper Belt.' AS `src`, '教你如何制作毒蛇束带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Fishing Stool Kit.' AS `src`, '教你如何制作钓鱼凳工具包。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Razor-Edged Cloak.' AS `src`, '教你如何制作锋刃披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormleather Sash.' AS `src`, '教你如何制作风暴皮腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Shank.' AS `src`, '教你如何制作源质短刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Flask of the Earth.' AS `src`, '教你如何调配大地合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Master Mana Potion.' AS `src`, '教你如何调配大师法力药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix an Alchemist\'s Flask.' AS `src`, '教你如何调配炼金师之瓶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix an Elixir of Mirrors.' AS `src`, '教你如何调配镜影灵药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Blackbelly Sushi.' AS `src`, '教你如何准备黑腹寿司。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Shrimp Dumplings.' AS `src`, '教你如何准备虾饺。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Grilled Dragon.' AS `src`, '教你如何准备烤龙肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Mini Mindslayer.' AS `src`, '教你如何召唤迷你噬心者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Trillium Bar.' AS `src`, '教你如何转化延极锭。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Pure Dread Metal' AS `src`, '教你如何转化纯净恐惧金属。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Pure Nether Lode' AS `src`, '教你如何转化纯净虚空矿脉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Bracers.' AS `src`, '教你如何制作煞皮护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Lifekeeper\'s Robe.' AS `src`, '教你如何制作生命守护者长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Charred Steak' AS `src`, '教你如何制作焦烤牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Simmered Stew' AS `src`, '教你如何制作慢炖炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Vibrant Chops' AS `src`, '教你如何制作鲜亮肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Blazing Stew' AS `src`, '教你如何制作炽热炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Red-Hot Stew' AS `src`, '教你如何制作赤热炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Reflex Scope' AS `src`, '教你如何制作反射瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Savory Steak' AS `src`, '教你如何制作香煎牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Seared Chops' AS `src`, '教你如何制作炙烤肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Subtle Chops' AS `src`, '教你如何制作微妙肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Subtle Steak' AS `src`, '教你如何制作微妙肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Winter Roast' AS `src`, '教你如何制作冬季烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Sapphire Panther.' AS `src`, '教你如何制作蓝宝石猎豹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Sunstone Panther.' AS `src`, '教你如何制作日曜石猎豹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Bold Queen\'s Garnet.' AS `src`, '教你如何切割鲜艳女王石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deft Vermilion Onyx.' AS `src`, '教你如何切割灵巧朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fine Vermilion Onyx.' AS `src`, '教你如何切割精致朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Glinting Roguestone.' AS `src`, '教你如何切割闪光贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Keen Vermilion Onyx.' AS `src`, '教你如何切割敏锐朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Lightning Wild Jade.' AS `src`, '教你如何切割闪电野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Misty Elven Peridot.' AS `src`, '教你如何切割迷雾精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Polished Lava Coral.' AS `src`, '教你如何切割抛光熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Polished Tiger Opal.' AS `src`, '教你如何切割抛光的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Purified Nightstone.' AS `src`, '教你如何切割净化夜石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Purified Roguestone.' AS `src`, '教你如何切割纯净贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Quick Chimera\'s Eye.' AS `src`, '教你如何切割迅捷奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Quick Serpent\'s Eye.' AS `src`, '教你如何切割迅捷之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Radiant Alexandrite.' AS `src`, '教你如何切割辐光的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Reckless Lava Coral.' AS `src`, '教你如何切割鲁莽熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Reckless Tiger Opal.' AS `src`, '教你如何切割鲁莽的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Regal Dream Emerald.' AS `src`, '教你如何切割华丽梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Regal Elven Peridot.' AS `src`, '教你如何切割华丽精灵翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Resolute Lava Coral.' AS `src`, '教你如何切割坚定熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Resolute Tiger Opal.' AS `src`, '教你如何切割坚定的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Rigid Chimera\'s Eye.' AS `src`, '教你如何切割刚硬奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Rigid River\'s Heart.' AS `src`, '教你如何切割刚硬河心石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Rigid Serpent\'s Eye.' AS `src`, '教你如何切割刚硬之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Shattered Wild Jade.' AS `src`, '教你如何切割碎裂野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Shifting Roguestone.' AS `src`, '教你如何切割变换贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Skillful Lava Coral.' AS `src`, '教你如何切割技艺熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Skillful Tiger Opal.' AS `src`, '教你如何切割技艺的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Solid Chimera\'s Eye.' AS `src`, '教你如何切割稳固奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Solid River\'s Heart.' AS `src`, '教你如何切割坚固河心石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Solid Serpent\'s Eye.' AS `src`, '教你如何切割坚固之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sovereign Demonseye.' AS `src`, '教你如何切割至高恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Splendid Lava Coral.' AS `src`, '教你如何切割华丽熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Splendid Tiger Opal.' AS `src`, '教你如何切割华丽虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Stalwart Lava Coral.' AS `src`, '教你如何切割坚韧熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Stalwart Tiger Opal.' AS `src`, '教你如何切割顽强的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Stormy Lapis Lazuli.' AS `src`, '教你如何切割风暴青金石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Timeless Roguestone.' AS `src`, '教你如何切割永恒贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Vivid Dream Emerald.' AS `src`, '教你如何切割鲜活梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Vivid Elven Peridot.' AS `src`, '教你如何切割鲜艳精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Willful Ember Topaz.' AS `src`, '教你如何切割意志炽热黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Accurate Demonseye.' AS `src`, '教你如何切割精准恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Artful Ember Topaz.' AS `src`, '教你如何切割精巧余烬黄玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Spiritguard Bracers.' AS `src`, '教你如何锻造灵魂守卫护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Ghost-Forged Belt.' AS `src`, '教你如何锻造鬼钢腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Ghost-Forged Helm.' AS `src`, '教你如何锻造鬼钢头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Lightsteel Shield.' AS `src`, '教你如何锻造轻钢盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Phantasmal Hammer.' AS `src`, '教你如何锻造幻影之锤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cauldron of Battle.' AS `src`, '教你如何制作战斗大锅。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Celestial Firework.' AS `src`, '教你如何制作天界烟花。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Dragonkiller Tunic.' AS `src`, '教你如何制作屠龙者外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Fire-Etched Dagger.' AS `src`, '教你如何制作火蚀匕首。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Splintering Staff .' AS `src`, '教你如何制作碎裂法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormforged Shield.' AS `src`, '教你如何制作雷铸盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Tsunami Chestguard.' AS `src`, '教你如何制作海啸胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Hammer.' AS `src`, '教你如何制作源质锤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Enchanted Lantern.' AS `src`, '教你如何制作附魔灯笼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix an Elixir of Weaponry.' AS `src`, '教你如何调配武器灵药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Twin Fish Platter.' AS `src`, '教你如何准备双鱼拼盘。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Lucky Quilen Cub.' AS `src`, '教你如何召唤幸运麒麟幼崽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Viscidus Globule.' AS `src`, '教你如何召唤维希度斯水滴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a River\'s Heart.' AS `src`, '教你如何转化河心之石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Shadow Spinel.' AS `src`, '教你如何转化暗影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Perfect Void Hide' AS `src`, '教你如何转化完美的虚空之皮。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Leggings.' AS `src`, '教你如何制作煞皮护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Belt of the Depths.' AS `src`, '教你如何制作深渊腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Cloak of the Mists.' AS `src`, '教你如何制作迷雾斗篷。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Quick Strike Cloak.' AS `src`, '教你如何制作速击披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Tough Scorpid Helm.' AS `src`, '教你如何制作硬化蝎壳头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Bold Duck Stew' AS `src`, '教你如何制作浓郁鸭肉炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Piercing Chops' AS `src`, '教你如何制作穿刺肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Piercing Steak' AS `src`, '教你如何制作穿刺牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Savory Wontons' AS `src`, '教你如何制作香浓馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Seared Wontons' AS `src`, '教你如何制作炙烤馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Sizzling Roast' AS `src`, '教你如何制作滋滋烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Subtle Wontons' AS `src`, '教你如何制作微妙馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Wizard Wontons' AS `src`, '教你如何制作法师云吞。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Charred Steak' AS `src`, '教你如何制作焦烤牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Simmered Stew' AS `src`, '教你如何制作慢炖炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Vibrant Chops' AS `src`, '教你如何制作鲜亮肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Duck Stew' AS `src`, '教你如何制作炖鸭。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Lapis Lazuli Band.' AS `src`, '教你如何制作青金石指环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create the Serpent\'s Heart.' AS `src`, '教你如何制作蛇心。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Balanced Alexandrite.' AS `src`, '教你如何切割平衡翠榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Bold Primordial Ruby.' AS `src`, '教你如何切割刚毅的原始红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Defender\'s Demonseye.' AS `src`, '教你如何切割防御者恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Etched Shadow Spinel.' AS `src`, '教你如何切割蚀刻影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fleet Primal Diamond.' AS `src`, '教你如何切割疾速之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Forceful Alexandrite.' AS `src`, '教你如何切割强力的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fractured Amberjewel.' AS `src`, '教你如何切割裂痕琥珀宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fractured Lightstone.' AS `src`, '教你如何切割碎裂光玉髓。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Guardian\'s Demonseye.' AS `src`, '教你如何切割守护者恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Jagged Dream Emerald.' AS `src`, '教你如何切割锯齿梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Jagged Elven Peridot.' AS `src`, '教你如何切割锯齿精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Mystic Chimera\'s Eye.' AS `src`, '教你如何切割神秘奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Nimble Dream Emerald.' AS `src`, '教你如何切割灵巧梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Nimble Elven Peridot.' AS `src`, '教你如何切割灵巧精灵翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Piercing Alexandrite.' AS `src`, '教你如何切割穿刺翠榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Polished Ember Topaz.' AS `src`, '教你如何切割抛光烬石黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Precise Inferno Ruby.' AS `src`, '教你如何切割精准地狱火红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Puissant Alexandrite.' AS `src`, '教你如何切割强大的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Quick Sun\'s Radiance.' AS `src`, '教你如何切割迅捷的太阳光辉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Reckless Ember Topaz.' AS `src`, '教你如何切割鲁莽余烬黄玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Reckless Noble Topaz.' AS `src`, '教你如何切割鲁莽黄晶玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Resolute Ember Topaz.' AS `src`, '教你如何切割刚毅烬火黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Rigid Ocean Sapphire.' AS `src`, '教你如何切割刚硬海洋蓝宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sensei\'s Alexandrite.' AS `src`, '教你如何切割导师的翠榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Skillful Ember Topaz.' AS `src`, '教你如何切割技艺烬石黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Smooth Chimera\'s Eye.' AS `src`, '教你如何切割光滑奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Smooth Serpent\'s Eye.' AS `src`, '教你如何切割光滑之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Solid Ocean Sapphire.' AS `src`, '教你如何切割致密海洋青玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sovereign Roguestone.' AS `src`, '教你如何切割君王贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Steady Dream Emerald.' AS `src`, '教你如何切割坚定梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Steady Elven Peridot.' AS `src`, '教你如何切割稳固精灵翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Stormy Chimera\'s Eye.' AS `src`, '教你如何切割风暴奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Stormy River\'s Heart.' AS `src`, '教你如何切割风暴河心石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Subtle Chimera\'s Eye.' AS `src`, '教你如何切割精致奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Subtle Serpent\'s Eye.' AS `src`, '教你如何切割精巧之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Turbid Elven Peridot.' AS `src`, '教你如何切割浑浊精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Veiled Shadow Spinel.' AS `src`, '教你如何切割隐秘暗影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Accurate Roguestone.' AS `src`, '教你如何切割精准贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Effulgent Wild Jade.' AS `src`, '教你如何切割辉煌野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Energized Wild Jade.' AS `src`, '教你如何切割充能野玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Inscribed Hessonite.' AS `src`, '教你如何切割铭文赫索尼特。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Bloodforged Warfists.' AS `src`, '教你如何锻造血铸战拳。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Ghost-Forged Bracers.' AS `src`, '教你如何锻造鬼钢护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Lightsteel Gauntlets.' AS `src`, '教你如何锻造光钢护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Lightsteel Legplates.' AS `src`, '教你如何锻造光钢腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Lightsteel Shoulders.' AS `src`, '教你如何锻造光钢肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Ghost-Forged Blade.' AS `src`, '教你如何锻造鬼铸之刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Spiritguard Shield.' AS `src`, '教你如何锻造灵卫盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Decapitator\'s Razor.' AS `src`, '教你如何制作斩首者的剃刀。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Pyrium Shield Spike.' AS `src`, '教你如何制作燃钢盾刺。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Pyrium Weapon Chain.' AS `src`, '教你如何制作燃钢武器链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Pyrium Belt.' AS `src`, '教你如何制作凶残源质腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Pyrium Helm.' AS `src`, '教你如何制作凶残源质头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Poleaxe.' AS `src`, '教你如何制作源质长戟。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make the Vial of the Sands.' AS `src`, '教你如何制作沙之瓶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Potion of Mogu Power.' AS `src`, '教你如何调配魔古之力药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Black Pepper Steak.' AS `src`, '教你如何准备黑椒牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Fire Spirit Salmon.' AS `src`, '教你如何准备火灵鲑鱼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Krasarang Fritters.' AS `src`, '教你如何准备卡桑琅煎饼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Swirling Mist Soup.' AS `src`, '教你如何准备旋雾汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Pandaren Banquet.' AS `src`, '教你如何准备熊猫人盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Giant Bone Spider.' AS `src`, '教你如何召唤巨型骨蜘蛛。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Primal Diamond.' AS `src`, '教你如何转化原始钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Queen\'s Garnet.' AS `src`, '教你如何转化女王的石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Sun\'s Radiance.' AS `src`, '教你如何转化烈日光辉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Vermilion Onyx.' AS `src`, '教你如何转化朱红玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute an Elven Peridot.' AS `src`, '教你如何转化精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Perfect Dread Hide' AS `src`, '教你如何转化完美的恐惧之皮。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Pure Twisted Metal' AS `src`, '教你如何转化纯净扭曲金属。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Void Charged Steak' AS `src`, '教你如何转化虚空充能肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Shoulders.' AS `src`, '教你如何制作煞皮护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Air Fried Chops' AS `src`, '教你如何制作空气炸肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Blackened Roast' AS `src`, '教你如何制作烟熏烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Clear-Cut Chops' AS `src`, '教你如何制作清切肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Clear-Cut Steak' AS `src`, '教你如何制作清切牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Precision Scope' AS `src`, '教你如何制作精准瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Steamed Wontons' AS `src`, '教你如何制作蒸馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Bold Duck Stew' AS `src`, '教你如何制作浓郁鸭肉炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Piercing Chops' AS `src`, '教你如何制作穿刺肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Piercing Steak' AS `src`, '教你如何制作穿刺牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Savory Wontons' AS `src`, '教你如何制作香浓馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Seared Wontons' AS `src`, '教你如何制作炙烤馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Sizzling Roast' AS `src`, '教你如何制作滋滋烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Subtle Wontons' AS `src`, '教你如何制作微妙馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Wizard Wontons' AS `src`, '教你如何制作法师云吞。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Heart of the Earth.' AS `src`, '教你如何制作大地之心。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Scrying Roguestone.' AS `src`, '教你如何制作占卜盗贼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Tiger Opal Pendant.' AS `src`, '教你如何制作虎眼石坠饰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Bold Pandarian Garnet.' AS `src`, '教你如何切割厚重潘达利亚石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Champion\'s Lava Coral.' AS `src`, '教你如何切割勇者熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Champion\'s Tiger Opal.' AS `src`, '教你如何切割冠军的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Crafty Vermilion Onyx.' AS `src`, '教你如何切割狡诈朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Deadly Vermilion Onyx.' AS `src`, '教你如何切割致命朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Defender\'s Nightstone.' AS `src`, '教你如何切割防御者夜石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Defender\'s Roguestone.' AS `src`, '教你如何切割防御者贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Delicate Inferno Ruby.' AS `src`, '教你如何切割精致地狱火红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fierce Vermilion Onyx.' AS `src`, '教你如何切割凶猛朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Flashing Inferno Ruby.' AS `src`, '教你如何切割闪耀地狱火红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fractured Living Ruby.' AS `src`, '教你如何切割碎裂的活体红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Guardian\'s Nightstone.' AS `src`, '教你如何切割守护者夜石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Guardian\'s Roguestone.' AS `src`, '教你如何切割守护者贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Lightning Alexandrite.' AS `src`, '教你如何切割闪电翠榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Lucent Vermilion Onyx.' AS `src`, '教你如何切割明亮朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Mysterious Roguestone.' AS `src`, '教你如何切割神秘贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Mystic Sun\'s Radiance.' AS `src`, '教你如何切割神秘的太阳光辉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Potent Vermilion Onyx.' AS `src`, '教你如何切割强效朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Precise Chimera\'s Eye.' AS `src`, '教你如何切割精准奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Precise Serpent\'s Eye.' AS `src`, '教你如何切割精准之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Radiant Elven Peridot.' AS `src`, '教你如何切割辐光精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Retaliating Demonseye.' AS `src`, '教你如何切割反击恶魔之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Rigid Deepholm Iolite.' AS `src`, '教你如何切割刚硬深岩之洲堇青石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Shattered Alexandrite.' AS `src`, '教你如何切割碎裂的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Smooth Sun\'s Radiance.' AS `src`, '教你如何切割光滑的太阳光辉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Solid Deepholm Iolite.' AS `src`, '教你如何切割坚固深岩之洲堇青石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Stormy Ocean Sapphire.' AS `src`, '教你如何切割风暴海洋蓝宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Subtle Sun\'s Radiance.' AS `src`, '教你如何切割精致的太阳光辉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Wicked Vermilion Onyx.' AS `src`, '教你如何切割邪恶朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Adept Vermilion Onyx.' AS `src`, '教你如何切割熟练朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Agile Primal Diamond.' AS `src`, '教你如何切割灵巧原始钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Ember Primal Diamond.' AS `src`, '教你如何切割余烬原始钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Inscribed Lava Coral.' AS `src`, '教你如何切割符文熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Inscribed Tiger Opal.' AS `src`, '教你如何切割铭文的虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Spiritguard Gauntlets.' AS `src`, '教你如何锻造灵魂守卫护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Spiritguard Legplates.' AS `src`, '教你如何锻造灵魂守卫腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Spiritguard Shoulders.' AS `src`, '教你如何锻造灵魂守卫护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Unyielding Bloodplate.' AS `src`, '教你如何锻造不屈血甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Living Steel Buckle.' AS `src`, '教你如何锻造活钢扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Darkbrand Chestguard.' AS `src`, '教你如何制作暗痕胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Flask of Mighty Power' AS `src`, '教你如何制作强效能量合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Potion of Spell Power' AS `src`, '教你如何制作法术能量药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Redsteel Breastplate.' AS `src`, '教你如何制作赤钢胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Spirit Communion Rod.' AS `src`, '教你如何制作通灵法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Steam-Filled Balloon.' AS `src`, '教你如何制作蒸汽充气气球。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vampiric Blood Potion' AS `src`, '教你如何制作吸血鬼血药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Leather Belt.' AS `src`, '教你如何制作凶残皮甲腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Leather Helm.' AS `src`, '教你如何制作凶残皮甲头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Adept Angler\'s Pole.' AS `src`, '教你如何制作娴熟钓竿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Invisibility Potion.' AS `src`, '教你如何制作隐形药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Obsidium Bladespear.' AS `src`, '教你如何制作黑曜石刃矛。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Flask of the Warm Sun.' AS `src`, '教你如何调配暖阳合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Master Healing Potion.' AS `src`, '教你如何调配大师治疗药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix an Elixir of Perfection.' AS `src`, '教你如何调配完美灵药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix an Elixir of the Rapids.' AS `src`, '教你如何调配激流灵药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Fungal Abomination.' AS `src`, '教你如何召唤真菌憎恶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Harbinger of Flame.' AS `src`, '教你如何召唤烈焰预兆。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon an Untamed Hatchling.' AS `src`, '教你如何召唤未驯服的幼龙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Deepholm Iolite.' AS `src`, '教你如何转化深岩之洲堇青石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute a Primordial Ruby.' AS `src`, '教你如何转化原始红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Dread Charged Steak' AS `src`, '教你如何转化恐惧充能肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha-Infested Leg Armor.' AS `src`, '教你如何制作煞侵腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Robe of Eternal Rule.' AS `src`, '教你如何制作永恒统治法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Air Fried Chops' AS `src`, '教你如何制作空气炸肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Blackened Roast' AS `src`, '教你如何制作烟熏烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Clear-Cut Chops' AS `src`, '教你如何制作清切肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Clear-Cut Steak' AS `src`, '教你如何制作清切牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Precision Scope' AS `src`, '教你如何制作精准瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Steamed Wontons' AS `src`, '教你如何制作蒸馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Lively Stew' AS `src`, '教你如何制作生机炖肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Storm Steak' AS `src`, '教你如何制作暴风肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Golembreaker Amulet.' AS `src`, '教你如何制作破石者护符。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create an Eye of Many Deaths.' AS `src`, '教你如何制作万亡之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Balanced Elven Peridot.' AS `src`, '教你如何切割平衡精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Brilliant Inferno Ruby.' AS `src`, '教你如何切割闪耀地狱火红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Burning Primal Diamond.' AS `src`, '教你如何切割燃烧之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Delicate Chimera\'s Eye.' AS `src`, '教你如何切割精致奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Delicate Serpent\'s Eye.' AS `src`, '教你如何切割精致之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Flashing Chimera\'s Eye.' AS `src`, '教你如何切割闪光奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Flashing Serpent\'s Eye.' AS `src`, '教你如何切割闪光之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Forceful Dream Emerald.' AS `src`, '教你如何切割强能梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Forceful Elven Peridot.' AS `src`, '教你如何切割刚毅精灵翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Forlorn Primal Diamond.' AS `src`, '教你如何切割孤寂之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Glinting Shadow Spinel.' AS `src`, '教你如何切割闪耀暗影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Piercing Dream Emerald.' AS `src`, '教你如何切割穿刺梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Piercing Elven Peridot.' AS `src`, '教你如何切割穿刺精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Precise Queen\'s Garnet.' AS `src`, '教你如何切割精准女王石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Puissant Dream Emerald.' AS `src`, '教你如何切割强力梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Puissant Elven Peridot.' AS `src`, '教你如何切割强能精灵翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Purified Shadow Spinel.' AS `src`, '教你如何切割净化影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Resplendent Lava Coral.' AS `src`, '教你如何切割璀璨熔火珊瑚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Resplendent Tiger Opal.' AS `src`, '教你如何切割璀璨虎眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Retaliating Nightstone.' AS `src`, '教你如何切割反击夜石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Retaliating Roguestone.' AS `src`, '教你如何切割反击贼眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sensei\'s Dream Emerald.' AS `src`, '教你如何切割大师梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sensei\'s Elven Peridot.' AS `src`, '教你如何切割导师的精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Shifting Shadow Spinel.' AS `src`, '教你如何切割变幻影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sparkling Lapis Lazuli.' AS `src`, '教你如何切割闪耀青金石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Stormy Deepholm Iolite.' AS `src`, '教你如何切割风暴深岩之洲堇青石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Tenuous Vermilion Onyx.' AS `src`, '教你如何切割脆弱朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Timeless Shadow Spinel.' AS `src`, '教你如何切割永恒影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Willful Vermilion Onyx.' AS `src`, '教你如何切割任性朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Artful Vermilion Onyx.' AS `src`, '教你如何切割精巧朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Effulgent Alexandrite.' AS `src`, '教你如何切割辉光翠榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Energized Alexandrite.' AS `src`, '教你如何切割充能的翠绿宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Infused Elven Peridot.' AS `src`, '教你如何切割灌注精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Inscribed Ember Topaz.' AS `src`, '教你如何切割铭文烬石黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Ghost-Forged Gauntlets.' AS `src`, '教你如何锻造鬼钢护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Ghost-Forged Legplates.' AS `src`, '教你如何锻造鬼钢腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Ghost-Forged Shoulders.' AS `src`, '教你如何锻造鬼钢肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Living Steel Gauntlets.' AS `src`, '教你如何锻造活钢护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Ghostly Skeleton Key.' AS `src`, '教你如何锻造幽灵钥匙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Assassin\'s Chestplate.' AS `src`, '教你如何制作刺客胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Effigy of Overgrowth .' AS `src`, '教你如何制作繁茂雕像。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Fiery Elementium Bomb.' AS `src`, '教你如何制作炽热元素炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Ghost Iron Dragonling.' AS `src`, '教你如何制作幽冥铁幼龙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Jade Blossom Firework.' AS `src`, '教你如何制作翡翠烟花。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Light Elementium Belt.' AS `src`, '教你如何制作轻型源质腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Locksmith\'s Powderkeg.' AS `src`, '教你如何制作锁匠的火药桶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Runefletched Greatbow.' AS `src`, '教你如何制作符文羽饰巨弓。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Leather Chest.' AS `src`, '教你如何制作凶残皮甲胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Wyrmhide Belt.' AS `src`, '教你如何制作凶残龙皮腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Wyrmhide Helm.' AS `src`, '教你如何制作凶残龙皮头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Gutslicer.' AS `src`, '教你如何制作源质切肠者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Ironbark Battlestaff.' AS `src`, '教你如何制作铁皮战斗法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Obsidium Executioner.' AS `src`, '教你如何制作黑曜石处决者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Unbreakable Guardian.' AS `src`, '教你如何制作不破守护者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Flask of Winter\'s Bite.' AS `src`, '教你如何调配凛冬之噬合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Eternal Blossom Fish.' AS `src`, '教你如何准备永恒花鱼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Banquet of the Pot.' AS `src`, '教你如何准备炖锅盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Banquet of the Wok.' AS `src`, '教你如何准备炒锅盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Forbidding Void Dust' AS `src`, '教你如何转化禁忌虚空之尘。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Nether Charged Steak' AS `src`, '教你如何转化虚空充能肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Perfect Twisted Hide' AS `src`, '教你如何转化完美的扭曲之皮。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Uncommon Yeti Gamberson.' AS `src`, '教你如何制作雪人战袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Chestguard of Nemeses.' AS `src`, '教你如何制作宿敌胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Silk Belt.' AS `src`, '教你如何制作斗士的丝绸腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Silk Cowl.' AS `src`, '教你如何制作斗士的丝绸兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Greyshadow Chestguard.' AS `src`, '教你如何制作灰影护胸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Mossflayer Armor Patch' AS `src`, '教你如何制作苔藓剥皮者护甲补丁。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormscale Chestguard.' AS `src`, '教你如何制作雷鳞胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a batch of Twisted Baits' AS `src`, '教你如何制作扭曲诱饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Clear-Cut Wontons' AS `src`, '教你如何制作清切馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of Butchery' AS `src`, '教你如何制作屠杀合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Iron Sights Scope' AS `src`, '教你如何制作铁质准星瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Magus Belt Buckle' AS `src`, '教你如何制作贤者腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Mana Imbued Roast' AS `src`, '教你如何制作灌注法力的烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Dino Delight' AS `src`, '教你如何制作恐龙小吃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Reflex Scope' AS `src`, '教你如何制作反射瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Subtle Steak' AS `src`, '教你如何制作微妙肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Winter Roast' AS `src`, '教你如何制作冬季烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Figurine - Dream Owl.' AS `src`, '教你如何制作雕像 - 梦境猫头鹰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Jeweled Onyx Panther.' AS `src`, '教你如何制作宝石玛瑙猎豹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create an Elementium Guardian.' AS `src`, '教你如何制作源质守护者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Brilliant Chimera\'s Eye.' AS `src`, '教你如何切割明亮奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Brilliant Serpent\'s Eye.' AS `src`, '教你如何切割璀璨之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Delicate Queen\'s Garnet.' AS `src`, '教你如何切割精致女王石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Flashing Queen\'s Garnet.' AS `src`, '教你如何切割闪光女王石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fractured Chimera\'s Eye.' AS `src`, '教你如何切割碎裂奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fractured Serpent\'s Eye.' AS `src`, '教你如何切割裂纹之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Lightning Dream Emerald.' AS `src`, '教你如何切割闪电梦境翡翠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Lightning Elven Peridot.' AS `src`, '教你如何切割闪电精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Polished Vermilion Onyx.' AS `src`, '教你如何切割抛光朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Powerful Primal Diamond.' AS `src`, '教你如何切割强能之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Precise Primordial Ruby.' AS `src`, '教你如何切割精确原始红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Reckless Vermilion Onyx.' AS `src`, '教你如何切割鲁莽朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Resolute Vermilion Onyx.' AS `src`, '教你如何切割坚定朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Resplendent Ember Topaz.' AS `src`, '教你如何切割华丽炽热黄晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Shattered Elven Peridot.' AS `src`, '教你如何切割碎裂精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Skillful Vermilion Onyx.' AS `src`, '教你如何切割技艺朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sovereign Shadow Spinel.' AS `src`, '教你如何切割君王影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sparkling Chimera\'s Eye.' AS `src`, '教你如何切割闪耀奇美拉之眼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sparkling River\'s Heart.' AS `src`, '教你如何切割闪耀河心石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sparkling Serpent\'s Eye.' AS `src`, '教你如何切割闪耀之蛇眼石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Splendid Vermilion Onyx.' AS `src`, '教你如何切割华丽朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Stalwart Vermilion Onyx.' AS `src`, '教你如何切割刚毅朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Accurate Shadow Spinel.' AS `src`, '教你如何切割精准暗影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Austere Primal Diamond.' AS `src`, '教你如何切割朴素之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Eternal Primal Diamond.' AS `src`, '教你如何切割永恒之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Spiritblade Decimator.' AS `src`, '教你如何锻造灵刃屠戮者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Big Cauldron of Battle.' AS `src`, '教你如何制作大型战斗大锅。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Frozen Elementium Bomb.' AS `src`, '教你如何制作冰冻元素炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Obsidium Belt.' AS `src`, '教你如何制作硬化黑曜石腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Obsidium Helm.' AS `src`, '教你如何制作硬化黑曜头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Heavy Savage Armor Kit.' AS `src`, '教你如何制作厚重蛮皮护甲片。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Potion of Lesser Haste.' AS `src`, '教你如何制作次级急速药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Royal Scribe\'s Satchel.' AS `src`, '教你如何制作皇家书记官的背包。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Charscale Belt.' AS `src`, '教你如何制作凶残焦鳞腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Charscale Helm.' AS `src`, '教你如何制作凶残焦鳞头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Wyrmhide Chest.' AS `src`, '教你如何制作凶残龙皮胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Ebonsteel Belt Buckle.' AS `src`, '教你如何制作暗钢腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Earthguard.' AS `src`, '教你如何制作源质大地守卫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Spellblade.' AS `src`, '教你如何制作源质法术之刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Obsidium Skeleton Key.' AS `src`, '教你如何制作黑曜石骷髅钥匙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Flask of Falling Leaves.' AS `src`, '教你如何调配落叶合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Potion of the Mountains.' AS `src`, '教你如何调配山岳药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Sea Mist Rice Noodles.' AS `src`, '教你如何准备海雾米粉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Spicy Vegetable Chips.' AS `src`, '教你如何准备香辣蔬菜片。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Steamed Crab Surprise.' AS `src`, '教你如何准备惊喜蒸蟹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Banquet of the Brew.' AS `src`, '教你如何准备酿造盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Banquet of the Oven.' AS `src`, '教你如何准备烤箱盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Tender Baked Turtle.' AS `src`, '教你如何准备嫩烤海龟。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Forbidding Core Dust' AS `src`, '教你如何转化禁忌核心粉尘。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Forbidding Dread Dust' AS `src`, '教你如何转化禁忌恐惧之尘。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Interlaced Void Weave' AS `src`, '教你如何转化交错虚空织网。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Twisted Charged Steak' AS `src`, '教你如何转化扭曲充能肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Bolt of Windwool Cloth.' AS `src`, '教你如何制作风绒布卷。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Satin Belt.' AS `src`, '教你如何制作斗士的缎面腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Satin Cowl.' AS `src`, '教你如何制作斗士的缎面兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Scale Belt.' AS `src`, '教你如何制作竞争者之鳞甲腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Scale Helm.' AS `src`, '教你如何制作竞争者之鳞甲头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Silk Amice.' AS `src`, '教你如何制作斗士的丝绸护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Luxurious Silk Gem Bag.' AS `src`, '教你如何制作奢华丝绸宝石袋。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Sha Leather Chestguard.' AS `src`, '教你如何制作煞皮胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Vicious Embersilk Cowl.' AS `src`, '教你如何制作恶毒烬丝兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Vicious Embersilk Robe.' AS `src`, '教你如何制作凶残烬丝法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Vicious Fireweave Cowl.' AS `src`, '教你如何制作恶毒焰纹兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Vicious Fireweave Robe.' AS `src`, '教你如何制作凶残焰纹法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Bold Simmered Stew' AS `src`, '教你如何制作浓郁慢炖炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Devilsaur Gambeson' AS `src`, '教你如何制作魔暴龙护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Fused Savory Chops' AS `src`, '教你如何制作融合美味肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Hearty Living Soup' AS `src`, '教你如何制作丰盛活体浓汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Heightened Wontons' AS `src`, '教你如何制作大馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Magescale Gambeson' AS `src`, '教你如何制作魔鳞护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Mountainous Buckle' AS `src`, '教你如何制作巍峨腰扣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Clear-Cut Wontons' AS `src`, '教你如何制作清切馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of Butchery' AS `src`, '教你如何制作屠杀合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Iron Sights Scope' AS `src`, '教你如何制作铁质准星瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Magus Belt Buckle' AS `src`, '教你如何制作贤者腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Mana Imbued Roast' AS `src`, '教你如何制作灌注法力的烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Hipfire Scope' AS `src`, '教你如何制作船火瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Jurassic Soup' AS `src`, '教你如何制作侏罗纪浓汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Scorched Stew' AS `src`, '教你如何制作灼烧炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Reflection of the Sea.' AS `src`, '教你如何制作海洋之映。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Roguestone Shadowband.' AS `src`, '教你如何制作盗贼石影环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create an Alexandrite Necklace.' AS `src`, '教你如何制作亚历山大石项链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Brilliant Queen\'s Garnet.' AS `src`, '教你如何切割闪耀女王石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Defender\'s Shadow Spinel.' AS `src`, '教你如何切割防御影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Delicate Primordial Ruby.' AS `src`, '教你如何切割精致原始红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Flashing Primordial Ruby.' AS `src`, '教你如何切割闪烁的原始红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fractured Sun\'s Radiance.' AS `src`, '教你如何切割碎裂的太阳光辉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Guardian\'s Shadow Spinel.' AS `src`, '教你如何切割守护影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Mysterious Shadow Spinel.' AS `src`, '教你如何切割神秘影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Precise Pandarian Garnet.' AS `src`, '教你如何切割精确潘达利亚石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sparkling Ocean Sapphire.' AS `src`, '教你如何切割闪耀海洋蓝宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Veiled Imperial Amethyst.' AS `src`, '教你如何切割隐秘帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Energized Elven Peridot.' AS `src`, '教你如何切割充能精灵橄榄石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Spirit Boots.' AS `src`, '教你如何锻造斗士的英灵长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Ghost Reaver\'s Gauntlets.' AS `src`, '教你如何锻造鬼灵掠夺者护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Lightsteel Breastplate.' AS `src`, '教你如何锻造光钢胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Ghost Shard.' AS `src`, '教你如何锻造精工鬼灵碎片。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormforged Breastplate.' AS `src`, '教你如何制作雷铸胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Tome of Forceful Nature.' AS `src`, '教你如何制作自然之力典籍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Charscale Chest.' AS `src`, '教你如何制作凶残焦鳞胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Acidic Elementium Bomb.' AS `src`, '教你如何制作酸性元素炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Arcane Elementium Bomb.' AS `src`, '教你如何制作奥术元素炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Autumn Flower Firework.' AS `src`, '教你如何制作秋花烟火。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Stormshield.' AS `src`, '教你如何制作源质风暴之盾。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Flask of Spring Blossoms.' AS `src`, '教你如何调配春华合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Chun Tian Spring Rolls.' AS `src`, '教你如何准备春天春卷。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Banquet of the Grill.' AS `src`, '教你如何准备烧烤盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Scalding Murglesnout.' AS `src`, '教你如何准备灼热鱼人鼻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a living Anubisath Idol.' AS `src`, '教你如何召唤活体阿努比萨斯神像。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Flourishing Core Root' AS `src`, '教你如何转化繁盛核心根。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Forbidding Demon Dust' AS `src`, '教你如何转化禁忌恶魔粉尘。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute an Imperial Amethyst.' AS `src`, '教你如何转化帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Flourishing Dread Rose' AS `src`, '教你如何转化繁茂恐惧玫瑰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Flourishing Void Bloom' AS `src`, '教你如何转化繁茂的虚空花朵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Interlaced Dread Weave' AS `src`, '教你如何转化交错恐惧织网。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Perfect Nether Leather' AS `src`, '教你如何转化完美虚空皮革。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Satin Amice.' AS `src`, '教你如何制作斗士的缎面护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormbreaker Chestguard.' AS `src`, '教你如何制作破雷胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Dancing Belt Buckle' AS `src`, '教你如何制作舞动腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Riverscale Gambeson' AS `src`, '教你如何制作河鳞护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Roguish Belt Buckle' AS `src`, '教你如何制作狡诈腰带扣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Bold Simmered Stew' AS `src`, '教你如何制作浓郁慢炖炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Devilsaur Gambeson' AS `src`, '教你如何制作魔暴龙护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Fused Savory Chops' AS `src`, '教你如何制作融合美味肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Hearty Living Soup' AS `src`, '教你如何制作丰盛活体浓汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Heightened Wontons' AS `src`, '教你如何制作大馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Magescale Gambeson' AS `src`, '教你如何制作魔鳞护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Mountainous Buckle' AS `src`, '教你如何制作巍峨腰扣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Crawling Steak' AS `src`, '教你如何制作爬行的牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Jurassic Steak' AS `src`, '教你如何制作侏罗纪肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Master Wontons' AS `src`, '教你如何制作云吞大师。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Strongman Stew' AS `src`, '教你如何制作强壮者炖汤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Subtle Wontons' AS `src`, '教你如何制作微妙馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Vulcan Wontons' AS `src`, '教你如何制作火焰云吞。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Winter Wontons' AS `src`, '教你如何制作冬季饺子。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Wizard Wontons' AS `src`, '教你如何制作法师云吞。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Jeweler\'s Ruby Monocle.' AS `src`, '教你如何制作珠宝师的赤红单片镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Brilliant Primordial Ruby.' AS `src`, '教你如何切割闪耀原始红宝石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Champion\'s Vermilion Onyx.' AS `src`, '教你如何切割冠军朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Delicate Pandarian Garnet.' AS `src`, '教你如何切割精致潘达利亚石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Flashing Pandarian Garnet.' AS `src`, '教你如何切割闪光潘达利亚石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Retaliating Shadow Spinel.' AS `src`, '教你如何切割复仇影尖晶石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sparkling Deepholm Iolite.' AS `src`, '教你如何切割闪耀深岩之洲堇青石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Effulgent Primal Diamond.' AS `src`, '教你如何切割辉煌之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Enigmatic Primal Diamond.' AS `src`, '教你如何切割神秘之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Etched Imperial Amethyst.' AS `src`, '教你如何切割蚀刻帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Impassive Primal Diamond.' AS `src`, '教你如何切割坚毅之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Inscribed Vermilion Onyx.' AS `src`, '教你如何切割铭文朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Contender\'s Spirit Belt.' AS `src`, '教你如何锻造斗士的英灵腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Contender\'s Spirit Helm.' AS `src`, '教你如何锻造斗士的英灵头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Ghost Iron Shield Spike.' AS `src`, '教你如何锻造幽冥铁盾刺。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Spiritguard Breastplate.' AS `src`, '教你如何锻造灵魂守卫胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Depleted-Kyparium Rocket.' AS `src`, '教你如何制作耗尽的基帕瑞克火箭。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Obsidium Shield.' AS `src`, '教你如何制作硬化黑曜盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Interwoven Infused Staff.' AS `src`, '教你如何制作交织注能法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Serpent\'s Heart Firework.' AS `src`, '教你如何制作蛇心烟火。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Dragonscale Belt.' AS `src`, '教你如何制作凶残龙鳞腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Dragonscale Helm.' AS `src`, '教你如何制作凶残龙鳞头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Witch-Hunter\'s Harvester.' AS `src`, '教你如何制作猎巫收割者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Bonesplitter.' AS `src`, '教你如何制作源质碎骨者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Shield Spike.' AS `src`, '教你如何制作源质盾刺。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix an Alchemist\'s Rejuvenation.' AS `src`, '教你如何调配炼金师的回春剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare Charbroiled Tiger Steak.' AS `src`, '教你如何准备炭烤虎排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Death Talon Whelpguard.' AS `src`, '教你如何召唤死亡之爪幼龙卫士。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Reinforced Core Thread' AS `src`, '教你如何转化强化核心线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Forbidding Nether Shard' AS `src`, '教你如何转化禁忌虚空碎片。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Forbidding Twisted Dust' AS `src`, '教你如何转化禁忌扭曲之尘。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Interlaced Nether Weave' AS `src`, '教你如何转化交错虚空织网。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Leather Belt.' AS `src`, '教你如何制作挑战者的皮甲腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Leather Helm.' AS `src`, '教你如何制作竞争者之皮甲头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Silk Raiment.' AS `src`, '教你如何制作斗士的丝绸法衣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Cleric\'s Belt Buckle' AS `src`, '教你如何制作牧师腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flamescale Gamberson' AS `src`, '教你如何制作焰鳞战袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of the Warsong' AS `src`, '教你如何制作战歌合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Hearty Charred Steak' AS `src`, '教你如何制作丰盛焦烤牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an Ironfeather Breastplate.' AS `src`, '教你如何制作铁羽胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Dancing Belt Buckle' AS `src`, '教你如何制作舞动腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Master Homicite Key' AS `src`, '教你如何制作大师凶杀之钥。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Riverscale Gambeson' AS `src`, '教你如何制作河鳞护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Roguish Belt Buckle' AS `src`, '教你如何制作狡诈腰带扣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Blackened Roast' AS `src`, '教你如何制作烟熏烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Jurassic Burger' AS `src`, '教你如何制作侏罗纪汉堡。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Precision Scope' AS `src`, '教你如何制作精准瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Rough-alo wings' AS `src`, '教你如何制作鲁法洛的烤翅。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Subtle Sandwich' AS `src`, '教你如何制作微妙三明治。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Warding Wontons' AS `src`, '教你如何制作护卫云吞。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Warping Wontons' AS `src`, '教你如何制作扭曲的云吞。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Jeweler\'s Amber Monocle.' AS `src`, '教你如何制作珠宝师的琥珀单片镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Brilliant Pandarian Garnet.' AS `src`, '教你如何切割明亮潘达利亚石榴石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Destructive Primal Diamond.' AS `src`, '教你如何切割毁灭之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fleet Shadowspirit Diamond.' AS `src`, '教你如何切割舰队影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Glinting Imperial Amethyst.' AS `src`, '教你如何切割闪耀帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Purified Imperial Amethyst.' AS `src`, '教你如何切割净化帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Resplendent Vermilion Onyx.' AS `src`, '教你如何切割璀璨朱砂玛瑙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Shifting Imperial Amethyst.' AS `src`, '教你如何切割变幻帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Timeless Imperial Amethyst.' AS `src`, '教你如何切割永恒帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Revenant Boots.' AS `src`, '教你如何锻造斗士的亡魂长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Spirit Bracers.' AS `src`, '教你如何锻造斗士的英灵护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Gauntlets of Ancient Steel.' AS `src`, '教你如何锻造远古钢铸护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Ghost-Forged Breastplate.' AS `src`, '教你如何锻造鬼钢胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Living Steel Breastplate.' AS `src`, '教你如何锻造活钢胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Forgewire Axe.' AS `src`, '教你如何锻造精工锻线斧。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Twilight Scale Chestguard.' AS `src`, '教你如何制作暮光鳞片胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Dragonscale Chest.' AS `src`, '教你如何制作凶残龙鳞胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Aquamarine Augur\'s Staff.' AS `src`, '教你如何制作海蓝占卜法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium-Edged Scalper.' AS `src`, '教你如何制作源质锋刃刮骨刀。' AS `dst`
    UNION ALL SELECT 'Teaches you how to mix a Potion of the Jade Serpent.' AS `src`, '教你如何调配玉蛇药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Banquet of the Steamer.' AS `src`, '教你如何准备蒸锅盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Great Pandaren Banquet.' AS `src`, '教你如何准备丰盛熊猫人盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Cured Core Imbued Steak' AS `src`, '教你如何转化熟化核心注能牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Flourishing Demon Bloom' AS `src`, '教你如何转化繁茂恶魔之花。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Forbidding Scourge Dust' AS `src`, '教你如何转化禁忌天灾粉尘。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Full Grain Core Leather' AS `src`, '教你如何转化全粒面核心皮革。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Reinforced Demon Thread' AS `src`, '教你如何转化强化恶魔线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Flourishing Twisted Root' AS `src`, '教你如何转化繁茂的扭曲根须。' AS `dst`
    UNION ALL SELECT 'Teaches you how to Transmute Interlaced Twisted Weave' AS `src`, '教你如何转化交错扭曲织网。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Satin Raiment.' AS `src`, '教你如何制作斗士的缎面法衣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Wyrmhide Belt.' AS `src`, '教你如何制作竞争者之龙皮腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Wyrmhide Helm.' AS `src`, '教你如何制作竞争者之龙皮头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Raiment of Blood and Bone.' AS `src`, '教你如何制作血骨法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Spelltwister\'s Grand Robe.' AS `src`, '教你如何制作法术扭转者的大长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Tough Scorpid Breastplate.' AS `src`, '教你如何制作硬化蝎壳胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Earth Warden Gambeson' AS `src`, '教你如何制作大地守卫战袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Warlord\'s Belt Buckle' AS `src`, '教你如何制作督军腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Cleric\'s Belt Buckle' AS `src`, '教你如何制作牧师腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flamescale Gamberson' AS `src`, '教你如何制作焰鳞战袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of the Warsong' AS `src`, '教你如何制作战歌合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Hearty Charred Steak' AS `src`, '教你如何制作丰盛焦烤牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Mountainman Stew' AS `src`, '教你如何制作山人炖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Figurine - Demon Panther.' AS `src`, '教你如何制作雕像 - 恶魔猎豹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Figurine - King of Boars.' AS `src`, '教你如何制作雕像 - 野猪之王。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Ring of Warring Elements.' AS `src`, '教你如何制作元素纷争之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create an Elementium Moebius Band.' AS `src`, '教你如何制作源质莫比乌斯之环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Revitalizing Primal Diamond.' AS `src`, '教你如何切割复苏之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Sovereign Imperial Amethyst.' AS `src`, '教你如何切割君主帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Accurate Imperial Amethyst.' AS `src`, '教你如何切割精准帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Agile Shadowspirit Diamond.' AS `src`, '教你如何切割灵巧影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Ember Shadowspirit Diamond.' AS `src`, '教你如何切割余烬影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Gauntlets of Battle Command.' AS `src`, '教你如何锻造战斗指挥护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Lightsteel Boots.' AS `src`, '教你如何锻造精工轻钢长靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Contender\'s Revenant Belt.' AS `src`, '教你如何锻造斗士的亡魂腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Contender\'s Revenant Helm.' AS `src`, '教你如何锻造斗士的亡魂头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Living Steel Weapon Chain.' AS `src`, '教你如何锻造活钢武器链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Belt of Nefarious Whispers.' AS `src`, '教你如何制作邪语腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cleric\'s Philosopher Stone.' AS `src`, '教你如何制作牧师的贤者之石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Grand Celebration Firework.' AS `src`, '教你如何制作盛大庆典烟花。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Elementium Girdle.' AS `src`, '教你如何制作硬化源质束腰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Long-Range Trillium Sniper.' AS `src`, '教你如何制作远程延极狙击枪。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Twilight Dragonscale Cloak.' AS `src`, '教你如何制作暮光龙鳞披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Ornate Pyrium Belt.' AS `src`, '教你如何制作凶残精制源质腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Ornate Pyrium Helm.' AS `src`, '教你如何制作凶残精制源质头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Pyrium Breastplate.' AS `src`, '教你如何制作凶残源质胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Wizard\'s Philosopher Stone.' AS `src`, '教你如何制作巫师的贤者之石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Girdle of Pain.' AS `src`, '教你如何制作源质痛苦束腰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon a Volatile Reactive Throne.' AS `src`, '教你如何召唤易爆反应王座。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Cured Demon Imbued Steak' AS `src`, '教你如何转化熟化恶魔注能牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Full Grain Demon Leather' AS `src`, '教你如何转化全粒面恶魔皮革。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Animated Alluring Bait' AS `src`, '教你如何制作活化诱人鱼饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Deflecting Belt Buckle' AS `src`, '教你如何制作偏斜腰带扣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of the Kirin Tor' AS `src`, '教你如何制作肯瑞托合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Guardman\'s Belt Buckle' AS `src`, '教你如何制作卫兵腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Hearty Air Fried Chops' AS `src`, '教你如何制作丰盛空气炸肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Hearty Steamed Wontons' AS `src`, '教你如何制作丰盛蒸馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Jurassic Alluring Bait' AS `src`, '教你如何制作侏罗诱人鱼饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Scorched Alluring Bait' AS `src`, '教你如何制作灼烧诱人鱼饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Earth Warden Gambeson' AS `src`, '教你如何制作大地守卫战袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Warlord\'s Belt Buckle' AS `src`, '教你如何制作督军腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of Butchery' AS `src`, '教你如何制作屠杀合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Magus Belt Buckle' AS `src`, '教你如何制作贤者腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Rolling Meatballs' AS `src`, '教你如何制作滚动肉丸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Sandworm Gambeson' AS `src`, '教你如何制作沙虫软甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Storm Fried Roast' AS `src`, '教你如何制作风暴油煎烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Void Touched Stew' AS `src`, '教你如何制作虚空触碰炖菜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Volcanic Sandwich' AS `src`, '教你如何制作火山三明治。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Vulture a la King' AS `src`, '教你如何制作国王秃鹫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Bracing Shadowspirit Diamond.' AS `src`, '教你如何切割坚韧影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Burning Shadowspirit Diamond.' AS `src`, '教你如何切割燃烧影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Chaotic Shadowspirit Diamond.' AS `src`, '教你如何切割混乱影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Defender\'s Imperial Amethyst.' AS `src`, '教你如何切割防御者帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Forlorn Shadowspirit Diamond.' AS `src`, '教你如何切割孤寂影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Guardian\'s Imperial Amethyst.' AS `src`, '教你如何切割守护者帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Mysterious Imperial Amethyst.' AS `src`, '教你如何切割神秘帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Purified Shadowsong Amethyst.' AS `src`, '教你如何切割纯净影歌紫玉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Reverberating Primal Diamond.' AS `src`, '教你如何切割回响之源钻。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Revenant Bracers.' AS `src`, '教你如何锻造斗士的亡魂护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Spirit Gauntlets.' AS `src`, '教你如何锻造斗士的英灵护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Spirit Legplates.' AS `src`, '教你如何锻造斗士的英灵腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Spirit Shoulders.' AS `src`, '教你如何锻造斗士的英灵肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Spiritguard Boots.' AS `src`, '教你如何锻造宗师灵卫战靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Ghost Reaver\'s Breastplate.' AS `src`, '教你如何锻造鬼灵掠夺者胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Lightsteel Belt.' AS `src`, '教你如何锻造精工轻钢腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Lightsteel Helm.' AS `src`, '教你如何锻造宗师光钢头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Chestguard of Nature\'s Fury.' AS `src`, '教你如何制作自然之怒胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Elementium Hauberk.' AS `src`, '教你如何制作硬化源质锁甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Light Elementium Chestguard.' AS `src`, '教你如何制作轻型源质胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Potion of Lightning Reflexes' AS `src`, '教你如何制作迅捷反应药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Slayer\'s Philosopher Stone.' AS `src`, '教你如何制作杀手的贤者之石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Great Banquet of the Pot.' AS `src`, '教你如何准备丰盛炖锅盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Great Banquet of the Wok.' AS `src`, '教你如何准备丰盛炒锅盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Flourishing Sanguine Vine' AS `src`, '教你如何转化繁盛猩红藤蔓。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Flourishing Scourge Lotus' AS `src`, '教你如何转化繁盛天灾莲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Forbidding Sanguine Shard' AS `src`, '教你如何转化禁忌血红碎片。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Reinforced Scourge Thread' AS `src`, '教你如何转化强化天灾线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Corrupted Alluring Bait' AS `src`, '教你如何制作腐化诱人鱼饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of Adept Striking' AS `src`, '教你如何制作精准打击合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of Savage Assault' AS `src`, '教你如何制作野蛮突袭合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of the Unyielding' AS `src`, '教你如何制作不屈合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Sulfurous Alluring Bait' AS `src`, '教你如何制作硫磺诱人鱼饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Deflecting Belt Buckle' AS `src`, '教你如何制作偏斜腰带扣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of the Kirin Tor' AS `src`, '教你如何制作肯瑞托合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Guardman\'s Belt Buckle' AS `src`, '教你如何制作卫兵腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Hearty Air Fried Chops' AS `src`, '教你如何制作丰盛空气炸肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Hearty Steamed Wontons' AS `src`, '教你如何制作丰盛蒸馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Big Whack Sandwich' AS `src`, '教你如何制作巨无霸三明治。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Fire Charred Roast' AS `src`, '教你如何制作烈焰炙烤肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Hearty Spirit Soup' AS `src`, '教你如何制作精神浓汤大餐。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Heightened Wontons' AS `src`, '教你如何制作大馄饨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Living Belt Buckle' AS `src`, '教你如何制作活力腰带扣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Plaguebat Gambeson' AS `src`, '教你如何制作全属性软甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Stormwich Sandwich' AS `src`, '教你如何制作风暴三明治。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Figurine - Jeweled Serpent.' AS `src`, '教你如何制作雕像 - 宝石蛇。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Powerful Shadowspirit Diamond.' AS `src`, '教你如何切割强能影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Retaliating Imperial Amethyst.' AS `src`, '教你如何切割反击帝王紫晶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Austere Shadowspirit Diamond.' AS `src`, '教你如何切割朴素影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Eternal Shadowspirit Diamond.' AS `src`, '教你如何切割永恒影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Gauntlets of Unbound Devotion.' AS `src`, '教你如何锻造无束虔诚护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Lightsteel Bracers.' AS `src`, '教你如何锻造精工轻钢护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Spiritguard Belt.' AS `src`, '教你如何锻造宗师灵卫腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Spiritguard Helm.' AS `src`, '教你如何锻造宗师灵卫头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Defender\'s Philosopher Stone.' AS `src`, '教你如何制作防御者的贤者之石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Geosynchronous World Spinner.' AS `src`, '教你如何制作对地同步世界旋转器。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Shadowforged Elementium Bomb.' AS `src`, '教你如何制作暗影铸造源质炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Triple-Reinforced Mining Bag.' AS `src`, '教你如何制作三重加固采矿袋。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Wormhole Generator: Pandaria.' AS `src`, '教你如何制作虫洞生成器：潘达利亚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Extreme-Impact Hole Puncher.' AS `src`, '教你如何制作极限冲击打孔器。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Great Banquet of the Brew.' AS `src`, '教你如何准备丰盛酿造盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Great Banquet of the Oven.' AS `src`, '教你如何准备丰盛烤箱盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Full Grain Scourge Leather' AS `src`, '教你如何转化全粒面天灾皮革。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Reinforced Sanguine Thread' AS `src`, '教你如何转化强化猩红线。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Blue Dragonscale Breastplate.' AS `src`, '教你如何制作蓝龙鳞片胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Dragonscale Belt.' AS `src`, '教你如何制作挑战者的龙鳞腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Dragonscale Helm.' AS `src`, '教你如何制作挑战者的龙鳞头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Scale Chestguard.' AS `src`, '教你如何制作竞争者之鳞甲护胸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of Deep Meditation' AS `src`, '教你如何制作深度冥想合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of the Executioner' AS `src`, '教你如何制作刽子手合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Gnomish Prismatic Polish' AS `src`, '教你如何制作侏儒棱彩抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Scorpion Strike Gambeson' AS `src`, '教你如何制作蝎击护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of Adept Striking' AS `src`, '教你如何制作精准打击合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of Savage Assault' AS `src`, '教你如何制作野蛮突袭合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of the Unyielding' AS `src`, '教你如何制作不屈合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Blue Scale Gambeson' AS `src`, '教你如何制作蓝鳞软甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Dancing Belt Buckle' AS `src`, '教你如何制作舞动腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Roguish Belt Buckle' AS `src`, '教你如何制作狡诈腰带扣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Scorching Hot Steak' AS `src`, '教你如何制作炙热牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Spicy Vulture Steak' AS `src`, '教你如何制作香辣秃鹫肉排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Brazen Elementium Medallion.' AS `src`, '教你如何制作黄铜源质徽记。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Figurine - Earthen Guardian.' AS `src`, '教你如何制作雕像 - 大地守护者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create an Entwined Elementium Choker.' AS `src`, '教你如何制作缠绕源质项链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Revenant Gauntlets.' AS `src`, '教你如何锻造斗士的亡魂护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Revenant Legplates.' AS `src`, '教你如何锻造斗士的亡魂腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Contender\'s Revenant Shoulders.' AS `src`, '教你如何锻造斗士的亡魂肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Spiritguard Bracers.' AS `src`, '教你如何锻造宗师灵卫护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Breastplate of Ancient Steel.' AS `src`, '教你如何锻造远古钢铸胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Phantasmal Hammer.' AS `src`, '教你如何锻造精工幻影之锤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Forged Elementium Mindcrusher.' AS `src`, '教你如何制作锻铸源质碎心者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Goblin Flame Thrower, Mark II.' AS `src`, '教你如何制作地精火焰喷射器 Mark II。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Obsidium Breastplate.' AS `src`, '教你如何制作硬化黑曜胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Lightforged Elementium Hammer.' AS `src`, '教你如何制作光铸源质锤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Great Banquet of the Grill.' AS `src`, '教你如何准备丰盛烧烤盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Cured Sanguine Imbued Steak' AS `src`, '教你如何转化熟化猩红注能牛排。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Full Grain Sanguine Leather' AS `src`, '教你如何转化全粒面猩红皮革。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Chestguard of Earthen Harmony.' AS `src`, '教你如何制作大地和谐胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Green Dragonscale Breastplate.' AS `src`, '教你如何制作绿龙鳞片胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Gnomish Magnifying Polish' AS `src`, '教你如何制作侏儒放大镜抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Gnomish Sharpening Polish' AS `src`, '教你如何制作侏儒磨刀抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of Deep Meditation' AS `src`, '教你如何制作深度冥想合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of the Executioner' AS `src`, '教你如何制作刽子手合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Gnomish Prismatic Polish' AS `src`, '教你如何制作侏儒棱彩抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Scorpion Strike Gambeson' AS `src`, '教你如何制作蝎击护甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Black Scale Gambeson' AS `src`, '教你如何制作黑鳞软甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Breakonator Sandwich' AS `src`, '教你如何制作烟肉终结者三明治。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Cleric\'s Belt Buckle' AS `src`, '教你如何制作牧师腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of the Warsong' AS `src`, '教你如何制作战歌合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to create an Elementium Destroyer\'s Ring.' AS `src`, '教你如何制作源质毁灭者之戒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Effulgent Shadowspirit Diamond.' AS `src`, '教你如何切割辉煌影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Enigmatic Shadowspirit Diamond.' AS `src`, '教你如何切割神秘影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut an Impassive Shadowspirit Diamond.' AS `src`, '教你如何切割无情影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Lightsteel Gauntlets.' AS `src`, '教你如何锻造宗师光钢护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Lightsteel Legplates.' AS `src`, '教你如何锻造宗师光钢腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Lightsteel Shoulders.' AS `src`, '教你如何锻造宗师光钢肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Chestplate of Limitless Faith.' AS `src`, '教你如何锻造无限信仰胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Ghost-Forged Blade.' AS `src`, '教你如何锻造精工鬼铸之刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Spiritguard Shield.' AS `src`, '教你如何锻造精工灵卫盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Mechanical Pandaren Dragonling.' AS `src`, '教你如何制作机械熊猫人幼龙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Leather Chestguard.' AS `src`, '教你如何制作竞争者之皮甲护胸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of Manifesting Power' AS `src`, '教你如何制作显现之力合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of Unrelenting Power' AS `src`, '教你如何制作无情威能合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Gnomish Magnifying Polish' AS `src`, '教你如何制作侏儒放大镜抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Gnomish Sharpening Polish' AS `src`, '教你如何制作侏儒磨刀抛光剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Mysterious Void Roast' AS `src`, '教你如何制作神秘虚空烤肉。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Slippery Cloak Lining' AS `src`, '教你如何制作滑腻的斗篷内衬。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Warlord\'s Belt Buckle' AS `src`, '教你如何制作督军腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Destructive Shadowspirit Diamond.' AS `src`, '教你如何切割毁灭影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Spiritguard Gauntlets.' AS `src`, '教你如何锻造宗师灵卫护手。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Spiritguard Legplates.' AS `src`, '教你如何锻造宗师灵卫腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge Masterwork Spiritguard Shoulders.' AS `src`, '教你如何锻造宗师灵卫肩甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Contender\'s Spirit Breastplate.' AS `src`, '教你如何锻造斗士的英灵胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to prepare a Great Banquet of the Steamer.' AS `src`, '教你如何准备丰盛蒸锅盛宴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Wyrmhide Chestguard.' AS `src`, '教你如何制作竞争者之龙皮护胸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a rare Flask of Shattering Thunder' AS `src`, '教你如何制作裂雷合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Animated Irresistible Bait' AS `src`, '教你如何制作活化极具诱惑力的诱饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of Manifesting Power' AS `src`, '教你如何制作显现之力合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of Unrelenting Power' AS `src`, '教你如何制作无情威能合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Jurassic Irresistible Bait' AS `src`, '教你如何制作侏罗极具诱惑力的诱饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Scorched Irresistible Bait' AS `src`, '教你如何制作灼烧极具诱惑力的诱饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Animated Tempting Bait' AS `src`, '教你如何制作活化诱惑的饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Deflecting Belt Buckle' AS `src`, '教你如何制作偏斜腰带扣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of the Kirin Tor' AS `src`, '教你如何制作肯瑞托合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Guardman\'s Belt Buckle' AS `src`, '教你如何制作卫兵腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Jurassic Tempting Bait' AS `src`, '教你如何制作侏罗诱惑的饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Scorched Tempting Bait' AS `src`, '教你如何制作灼烧诱惑的饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Revitalizing Shadowspirit Diamond.' AS `src`, '教你如何切割复苏影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Masterwork Elementium Deathblade.' AS `src`, '教你如何制作精制源质死亡之刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Masterwork Elementium Spellblade.' AS `src`, '教你如何制作精制源质法术之刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Corrupted Irresistible Bait' AS `src`, '教你如何制作腐化极具诱惑力的诱饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Flask of Shattering Thunder' AS `src`, '教你如何制作裂雷合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an epic Sulfurous Irresistible Bait' AS `src`, '教你如何制作硫磺极具诱惑力的诱饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Corrupted Tempting Bait' AS `src`, '教你如何制作腐化诱惑的饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of Adept Striking' AS `src`, '教你如何制作精准打击合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of Savage Assault' AS `src`, '教你如何制作野蛮突袭合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of the Unyielding' AS `src`, '教你如何制作不屈合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Rampager\'s Cloak Lining' AS `src`, '教你如何制作暴怒者披风衬料。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Sulfurous Tempting Bait' AS `src`, '教你如何制作硫磺诱惑的饵。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Reverberating Shadowspirit Diamond.' AS `src`, '教你如何切割回响影魂钻石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Contender\'s Revenant Breastplate.' AS `src`, '教你如何锻造斗士的亡魂胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Spiritblade Decimator.' AS `src`, '教你如何锻造精工灵刃屠戮者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Ornate Pyrium Breastplate.' AS `src`, '教你如何制作凶残精制源质胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of Deep Meditation' AS `src`, '教你如何制作深度冥想合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of the Executioner' AS `src`, '教你如何制作刽子手合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Lightsteel Breastplate.' AS `src`, '教你如何锻造宗师光钢胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge an Ornate Battleplate of the Master.' AS `src`, '教你如何锻造大师的华丽战甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Dragonscale Chestguard.' AS `src`, '教你如何制作挑战者的龙鳞胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to forge a Masterwork Spiritguard Breastplate.' AS `src`, '教你如何锻造宗师灵卫胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Reinforced Shield Spike.' AS `src`, '教你如何制作源质强化盾刺。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of Manifesting Power' AS `src`, '教你如何制作显现之力合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of Unrelenting Power' AS `src`, '教你如何制作无情威能合剂。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an uncommon Flask of Shattering Thunder' AS `src`, '教你如何制作裂雷合剂。' AS `dst`
) AS `m` ON `m`.`src` = `a`.`description`
SET `a`.`description` = `m`.`dst`;
