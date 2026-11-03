-- One indexed pass replaces 223 single-row UPDATEs on `item_template`.`description`.
UPDATE `item_template` AS `a`
JOIN (
    SELECT 'Teaches you how to make a Warbot.' AS `src`, '教你制作战斗机器人。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Wildclaw.' AS `src`, '教你制作野爪。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather.' AS `src`, '教你制作煞皮革。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Magic Lamp.' AS `src`, '教你制作魔法灯。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Acid Bomb.' AS `src`, '教你制作酸性炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Lifestealer.' AS `src`, '教你制作噬命者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cloak of War.' AS `src`, '教你制作战争披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Mirror Scope.' AS `src`, '教你制作反射瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Savage Cloak.' AS `src`, '教你制作野蛮披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Sniper Scope.' AS `src`, '教你制作狙击瞄准镜。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Spirit Stick.' AS `src`, '教你制作灵魂短棍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Tsunami Belt.' AS `src`, '教你制作海啸腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Tsunami Helm.' AS `src`, '教你制作海啸头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a G91 Landshark.' AS `src`, '教你制作G91陆行鲨。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Redsteel Belt.' AS `src`, '教你制作赤钢腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Redsteel Helm.' AS `src`, '教你制作赤钢头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Thermal Anvil.' AS `src`, '教你制作热流铁砧。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Royal Satchel.' AS `src`, '教你制作皇家背包。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Sha Armor Kit.' AS `src`, '教你制作煞能护甲套件。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Windwool Belt.' AS `src`, '教你制作风绒腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Windwool Hood.' AS `src`, '教你制作风绒兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Four Senses Brew.' AS `src`, '教你制作四感之酿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Darkbrand Belt.' AS `src`, '教你制作暗痕腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Darkbrand Helm.' AS `src`, '教你制作暗痕头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Handmade Chest.' AS `src`, '教你制作手工胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Lightning Lash.' AS `src`, '教你制作闪电鞭笞。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Potency Potion.' AS `src`, '教你制作能量药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Warding Potion.' AS `src`, '教你制作防护药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Windbound Belt.' AS `src`, '教你制作风缚腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Windbound Helm.' AS `src`, '教你制作风缚头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Dreamless Belt.' AS `src`, '教你制作无梦腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Nightfire Robe.' AS `src`, '教你制作夜火长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Wildblood Vest.' AS `src`, '教你制作蛮血外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Windwool Tunic.' AS `src`, '教你制作风绒外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Watergliding Jets.' AS `src`, '教你制作滑水喷射器。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Big Game Hunter.' AS `src`, '教你制作狩猎大师。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Bloodroot Lance.' AS `src`, '教你制作血根长枪。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cloak of Beasts.' AS `src`, '教你制作野兽披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Elderwood Charm.' AS `src`, '教你制作古木护符。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Razorshell Belt.' AS `src`, '教你制作锋壳腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Razorshell Helm.' AS `src`, '教你制作锋壳头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Sizzling Potion.' AS `src`, '教你制作滋滋魔药。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Windbound Chest.' AS `src`, '教你制作风缚胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Rod.' AS `src`, '教你制作源质棒。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Boots.' AS `src`, '教你制作煞皮靴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormscale Belt.' AS `src`, '教你制作雷鳞腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormscale Helm.' AS `src`, '教你制作雷鳞头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Blackwood Shield.' AS `src`, '教你制作黑木盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Decursive Potion.' AS `src`, '教你制作驱散药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Lifeforce Hammer.' AS `src`, '教你制作生命之力战锤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Pyrium Spellward.' AS `src`, '教你制作源质法术护盾。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Razorshell Chest.' AS `src`, '教你制作锋壳胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Redbind Crossbow.' AS `src`, '教你制作红缚弩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Shellscale Cloak.' AS `src`, '教你制作甲鳞斗篷。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormforged Belt.' AS `src`, '教你制作雷铸腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormforged Helm.' AS `src`, '教你制作雷铸头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Wuju Tiki Shield.' AS `src`, '教你制作乌菊提基盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Arcanite Reaper.' AS `src`, '教你制作奥金斧。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Gloves.' AS `src`, '教你制作煞皮手套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Sha Leather Belt.' AS `src`, '教你制作煞皮腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Sha Leather Helm.' AS `src`, '教你制作煞皮头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormscale Drape.' AS `src`, '教你制作雷鳞披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an Illusionary Bag.' AS `src`, '教你制作幻象背包。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Basilisk Liverdog.' AS `src`, '教你制作蜥蜴肝肠。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cold-Forged Shank.' AS `src`, '教你制作冷铸短匕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Corded Viper Belt.' AS `src`, '教你制作毒蛇束带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Fishing Stool Kit.' AS `src`, '教你制作钓鱼凳工具包。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Razor-Edged Cloak.' AS `src`, '教你制作锋刃披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormleather Sash.' AS `src`, '教你制作风暴皮腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Shank.' AS `src`, '教你制作源质短刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Bracers.' AS `src`, '教你制作煞皮护腕。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Lifekeeper\'s Robe.' AS `src`, '教你制作生命守护者长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cauldron of Battle.' AS `src`, '教你制作战斗大锅。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Celestial Firework.' AS `src`, '教你制作天界烟花。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Dragonkiller Tunic.' AS `src`, '教你制作屠龙者外套。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Fire-Etched Dagger.' AS `src`, '教你制作火蚀匕首。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Splintering Staff .' AS `src`, '教你制作碎裂法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormforged Shield.' AS `src`, '教你制作雷铸盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Tsunami Chestguard.' AS `src`, '教你制作海啸胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Hammer.' AS `src`, '教你制作源质锤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Enchanted Lantern.' AS `src`, '教你制作附魔灯笼。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Leggings.' AS `src`, '教你制作煞皮护腿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Belt of the Depths.' AS `src`, '教你制作深渊腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Cloak of the Mists.' AS `src`, '教你制作迷雾斗篷。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Quick Strike Cloak.' AS `src`, '教你制作速击披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Tough Scorpid Helm.' AS `src`, '教你制作硬化蝎壳头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Decapitator\'s Razor.' AS `src`, '教你制作斩首者的剃刀。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Pyrium Shield Spike.' AS `src`, '教你制作燃钢盾刺。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Pyrium Weapon Chain.' AS `src`, '教你制作燃钢武器链。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Pyrium Belt.' AS `src`, '教你制作凶残源质腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Pyrium Helm.' AS `src`, '教你制作凶残源质头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Poleaxe.' AS `src`, '教你制作源质长戟。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make the Vial of the Sands.' AS `src`, '教你制作沙之瓶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha Leather Shoulders.' AS `src`, '教你制作煞皮护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Darkbrand Chestguard.' AS `src`, '教你制作暗痕胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Redsteel Breastplate.' AS `src`, '教你制作赤钢胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Spirit Communion Rod.' AS `src`, '教你制作通灵法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Steam-Filled Balloon.' AS `src`, '教你制作蒸汽充气气球。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Leather Belt.' AS `src`, '教你制作凶残皮甲腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Leather Helm.' AS `src`, '教你制作凶残皮甲头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Adept Angler\'s Pole.' AS `src`, '教你制作娴熟钓竿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Invisibility Potion.' AS `src`, '教你制作隐形药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Obsidium Bladespear.' AS `src`, '教你制作黑曜石刃矛。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Sha-Infested Leg Armor.' AS `src`, '教你制作煞侵腿甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Robe of Eternal Rule.' AS `src`, '教你制作永恒统治法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Assassin\'s Chestplate.' AS `src`, '教你制作刺客胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Effigy of Overgrowth .' AS `src`, '教你制作繁茂雕像。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Fiery Elementium Bomb.' AS `src`, '教你制作炽热元素炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Ghost Iron Dragonling.' AS `src`, '教你制作幽冥铁幼龙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Jade Blossom Firework.' AS `src`, '教你制作翡翠烟花。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Light Elementium Belt.' AS `src`, '教你制作轻型源质腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Locksmith\'s Powderkeg.' AS `src`, '教你制作锁匠的火药桶。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Runefletched Greatbow.' AS `src`, '教你制作符文羽饰巨弓。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Leather Chest.' AS `src`, '教你制作凶残皮甲胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Wyrmhide Belt.' AS `src`, '教你制作凶残龙皮腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Wyrmhide Helm.' AS `src`, '教你制作凶残龙皮头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Gutslicer.' AS `src`, '教你制作源质切肠者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Ironbark Battlestaff.' AS `src`, '教你制作铁皮战斗法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Obsidium Executioner.' AS `src`, '教你制作黑曜石处决者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Unbreakable Guardian.' AS `src`, '教你制作不破守护者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft Uncommon Yeti Gamberson.' AS `src`, '教你制作稀有雪人战袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Chestguard of Nemeses.' AS `src`, '教你制作宿敌胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Silk Belt.' AS `src`, '教你制作斗士的丝绸腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Silk Cowl.' AS `src`, '教你制作斗士的丝绸兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Greyshadow Chestguard.' AS `src`, '教你制作灰影护胸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormscale Chestguard.' AS `src`, '教你制作雷鳞胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Big Cauldron of Battle.' AS `src`, '教你制作大型战斗大锅。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Frozen Elementium Bomb.' AS `src`, '教你制作冰冻元素炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Obsidium Belt.' AS `src`, '教你制作硬化黑曜石腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Obsidium Helm.' AS `src`, '教你制作硬化黑曜头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Heavy Savage Armor Kit.' AS `src`, '教你制作厚重蛮皮护甲片。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Potion of Lesser Haste.' AS `src`, '教你制作次级急速药水。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Royal Scribe\'s Satchel.' AS `src`, '教你制作皇家书记官的背包。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Charscale Belt.' AS `src`, '教你制作凶残焦鳞腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Charscale Helm.' AS `src`, '教你制作凶残焦鳞头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Wyrmhide Chest.' AS `src`, '教你制作凶残龙皮胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Ebonsteel Belt Buckle.' AS `src`, '教你制作暗钢腰带扣环。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Earthguard.' AS `src`, '教你制作源质大地守卫。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Spellblade.' AS `src`, '教你制作源质法术之刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Obsidium Skeleton Key.' AS `src`, '教你制作黑曜石骷髅钥匙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Bolt of Windwool Cloth.' AS `src`, '教你制作风绒布卷。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Satin Belt.' AS `src`, '教你制作斗士的缎面腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Satin Cowl.' AS `src`, '教你制作斗士的缎面兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Scale Belt.' AS `src`, '教你制作竞争者之鳞甲腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Scale Helm.' AS `src`, '教你制作竞争者之鳞甲头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Silk Amice.' AS `src`, '教你制作斗士的丝绸护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Luxurious Silk Gem Bag.' AS `src`, '教你制作奢华丝绸宝石袋。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Sha Leather Chestguard.' AS `src`, '教你制作煞皮胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Vicious Embersilk Cowl.' AS `src`, '教你制作恶毒烬丝兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Vicious Embersilk Robe.' AS `src`, '教你制作凶残烬丝法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Vicious Fireweave Cowl.' AS `src`, '教你制作恶毒焰纹兜帽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Vicious Fireweave Robe.' AS `src`, '教你制作凶残焰纹法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Stormforged Breastplate.' AS `src`, '教你制作雷铸胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Tome of Forceful Nature.' AS `src`, '教你制作自然之力典籍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Charscale Chest.' AS `src`, '教你制作凶残焦鳞胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Acidic Elementium Bomb.' AS `src`, '教你制作酸性元素炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Arcane Elementium Bomb.' AS `src`, '教你制作奥术元素炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Autumn Flower Firework.' AS `src`, '教你制作秋花烟火。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Stormshield.' AS `src`, '教你制作源质风暴之盾。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Satin Amice.' AS `src`, '教你制作斗士的缎面护肩。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Stormbreaker Chestguard.' AS `src`, '教你制作破雷胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Depleted-Kyparium Rocket.' AS `src`, '教你制作耗尽的基帕瑞克火箭。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Obsidium Shield.' AS `src`, '教你制作硬化黑曜盾牌。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Interwoven Infused Staff.' AS `src`, '教你制作交织注能法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Serpent\'s Heart Firework.' AS `src`, '教你制作蛇心烟火。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Dragonscale Belt.' AS `src`, '教你制作凶残龙鳞腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Dragonscale Helm.' AS `src`, '教你制作凶残龙鳞头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Witch-Hunter\'s Harvester.' AS `src`, '教你制作猎巫收割者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Bonesplitter.' AS `src`, '教你制作源质碎骨者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Shield Spike.' AS `src`, '教你制作源质盾刺。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Leather Belt.' AS `src`, '教你制作挑战者的皮甲腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Leather Helm.' AS `src`, '教你制作竞争者之皮甲头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Silk Raiment.' AS `src`, '教你制作斗士的丝绸法衣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an Ironfeather Breastplate.' AS `src`, '教你制作铁羽胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Twilight Scale Chestguard.' AS `src`, '教你制作暮光鳞片胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Dragonscale Chest.' AS `src`, '教你制作凶残龙鳞胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Aquamarine Augur\'s Staff.' AS `src`, '教你制作海蓝占卜法杖。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium-Edged Scalper.' AS `src`, '教你制作源质锋刃刮骨刀。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Satin Raiment.' AS `src`, '教你制作斗士的缎面法衣。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Wyrmhide Belt.' AS `src`, '教你制作竞争者之龙皮腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Wyrmhide Helm.' AS `src`, '教你制作竞争者之龙皮头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Raiment of Blood and Bone.' AS `src`, '教你制作血骨法袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Spelltwister\'s Grand Robe.' AS `src`, '教你制作法术扭转者的大长袍。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Tough Scorpid Breastplate.' AS `src`, '教你制作硬化蝎壳胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Belt of Nefarious Whispers.' AS `src`, '教你制作邪语腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Cleric\'s Philosopher Stone.' AS `src`, '教你制作牧师的贤者之石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Grand Celebration Firework.' AS `src`, '教你制作盛大庆典烟花。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Elementium Girdle.' AS `src`, '教你制作硬化源质束腰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Long-Range Trillium Sniper.' AS `src`, '教你制作远程延极狙击枪。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Twilight Dragonscale Cloak.' AS `src`, '教你制作暮光龙鳞披风。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Ornate Pyrium Belt.' AS `src`, '教你制作凶残精制源质腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Ornate Pyrium Helm.' AS `src`, '教你制作凶残精制源质头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Pyrium Breastplate.' AS `src`, '教你制作凶残源质胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Wizard\'s Philosopher Stone.' AS `src`, '教你制作巫师的贤者之石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Girdle of Pain.' AS `src`, '教你制作源质痛苦束腰。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Chestguard of Nature\'s Fury.' AS `src`, '教你制作自然之怒胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Elementium Hauberk.' AS `src`, '教你制作硬化源质锁甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Light Elementium Chestguard.' AS `src`, '教你制作轻型源质胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Slayer\'s Philosopher Stone.' AS `src`, '教你制作杀手的贤者之石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Defender\'s Philosopher Stone.' AS `src`, '教你制作防御者的贤者之石。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Geosynchronous World Spinner.' AS `src`, '教你制作对地同步世界旋转器。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Shadowforged Elementium Bomb.' AS `src`, '教你制作暗影铸造源质炸弹。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Triple-Reinforced Mining Bag.' AS `src`, '教你制作三重加固采矿袋。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Wormhole Generator: Pandaria.' AS `src`, '教你制作虫洞生成器：潘达利亚。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Extreme-Impact Hole Puncher.' AS `src`, '教你制作极限冲击打孔器。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Blue Dragonscale Breastplate.' AS `src`, '教你制作蓝龙鳞片胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Dragonscale Belt.' AS `src`, '教你制作挑战者的龙鳞腰带。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Dragonscale Helm.' AS `src`, '教你制作挑战者的龙鳞头盔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Scale Chestguard.' AS `src`, '教你制作竞争者之鳞甲护胸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Forged Elementium Mindcrusher.' AS `src`, '教你制作锻铸源质碎心者。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Goblin Flame Thrower, Mark II.' AS `src`, '教你制作地精火焰喷射器 Mark II。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Hardened Obsidium Breastplate.' AS `src`, '教你制作硬化黑曜胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Lightforged Elementium Hammer.' AS `src`, '教你制作光铸源质锤。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Chestguard of Earthen Harmony.' AS `src`, '教你制作大地和谐胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Green Dragonscale Breastplate.' AS `src`, '教你制作绿龙鳞片胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Mechanical Pandaren Dragonling.' AS `src`, '教你制作机械熊猫人幼龙。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Leather Chestguard.' AS `src`, '教你制作竞争者之皮甲护胸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Wyrmhide Chestguard.' AS `src`, '教你制作竞争者之龙皮护胸。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Masterwork Elementium Deathblade.' AS `src`, '教你制作精制源质死亡之刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Masterwork Elementium Spellblade.' AS `src`, '教你制作精制源质法术之刃。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Vicious Ornate Pyrium Breastplate.' AS `src`, '教你制作凶残精制源质胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Contender\'s Dragonscale Chestguard.' AS `src`, '教你制作挑战者的龙鳞胸甲。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make an Elementium Reinforced Shield Spike.' AS `src`, '教你制作源质强化盾刺。' AS `dst`
) AS `m` ON `m`.`src` = `a`.`description`
SET `a`.`description` = `m`.`dst`;
