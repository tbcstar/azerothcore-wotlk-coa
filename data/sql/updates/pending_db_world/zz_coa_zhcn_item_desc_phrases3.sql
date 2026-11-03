-- Fill the next tier of English item flavor texts in item_template.
-- Each statement is guarded by the exact English source text, so it is
-- idempotent and only touches rows that still carry the English value.

-- One indexed pass replaces 1032 single-row UPDATEs on `item_template`.`description`.
UPDATE `item_template` AS `a`
JOIN (
    SELECT 'Awarded for the services in the name of The Scale of the Sands.' AS `src`, '为表彰在流沙之鳞名义下所作的贡献而授予。' AS `dst`
    UNION ALL SELECT 'Awarded for the services in the name of The Violet Eye.' AS `src`, '为表彰在紫罗兰之眼名义下所作的贡献而授予。' AS `dst`
    UNION ALL SELECT 'Property of the Darkmoon Faire.' AS `src`, '暗月马戏团的财产。' AS `dst`
    UNION ALL SELECT 'A rare tome describing the Twilight\'s Hammer cult\'s ritual for opening elemental portals.' AS `src`, '一本描述暮光之锤教派开启元素传送门仪式的稀有典籍。' AS `dst`
    UNION ALL SELECT 'Soldiers arise, stand and fight!' AS `src`, '士兵们，起来，站稳，战斗！' AS `dst`
    UNION ALL SELECT 'Make your own race' AS `src`, '创建你自己的种族' AS `dst`
    UNION ALL SELECT 'Pandaren spirits have been known to hide in these sacred bags.' AS `src`, '据说熊猫人的灵魂会藏在这些神圣的袋子里。' AS `dst`
    UNION ALL SELECT 'Wrathion\'s \'Crown of Heaven\' fits into a meta gem slot.' AS `src`, '拉希奥的“天堂之冠”可镶入一枚多彩宝石插槽。' AS `dst`
    UNION ALL SELECT 'Blade of the Scarlet Highlord' AS `src`, '血色大领主之刃' AS `dst`
    UNION ALL SELECT 'Have you ever wanted to bonk someone on the head with a loaf of bread? Now\'s your chance.' AS `src`, '你想过用一条面包敲别人的脑袋吗？现在机会来了。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transform into this creature.' AS `src`, '教你如何变形为这种生物。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to specialization VII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换到第七专精的机会，并解锁一个额外的秘法附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'The weapon has been infused with Strange Energy.' AS `src`, '武器已被奇异能量灌注。' AS `dst`
    UNION ALL SELECT 'Return to Daniel!' AS `src`, '回到丹尼尔那里！' AS `dst`
    UNION ALL SELECT 'A Cosmetic Weapon set meant to be used with Transmogrification. You can see what they look like in the Vanity Collection.' AS `src`, '一套用于幻化的装饰性武器。你可以在时装收藏中查看它们的外观。' AS `dst`
    UNION ALL SELECT 'Summon your Great Eagle, and let its vigilant gaze reveal your path. Adorned in feathers that shimmer like the dawn, this loyal companion silently observes your adventures, embodying the spirit of loyalty and strength.' AS `src`, '召唤你的巨鹰，让它的警觉目光为你揭示前路。这只忠诚的伙伴身披如黎明般闪耀的羽毛，默默注视你的冒险，象征着忠诚与力量。' AS `dst`
    UNION ALL SELECT 'Because every chicken deserves a front-row seat to adventure.' AS `src`, '因为每只小鸡都该有前排观赏冒险的座位。' AS `dst`
    UNION ALL SELECT 'Activate Frosty Balls.' AS `src`, '激活霜寒球。' AS `dst`
    UNION ALL SELECT 'A Cosmetic Weapon set meant to be used with Transmogrification. You can see what Cosmetic Sets look like in the Vanity Collection. Contains a Bow and 1 Arrow Incarnation. These can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '一套用于幻化的装饰性武器。你可以在时装收藏中查看装饰套装的外观。内含一张弓和 1 个箭矢化身。这些可以从其他玩家、拍卖行或 Ascension 商城获得。' AS `dst`
    UNION ALL SELECT 'Call forth your raven, and let it perch upon your shoulder, ever watchful and bound to your will.' AS `src`, '召唤你的渡鸦，让它栖在你肩上，时刻警觉，忠于你的意志。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this unfathomably cute companion.\n\nThis is a non-combat companion.' AS `src`, '教你如何召唤这个可爱得难以想象的伙伴。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'A piece of an ancient furbolg relic. Without the other pieces, it is nothing but a useless curiosity...' AS `src`, '一件古老熊怪圣物的碎片。没有其他碎片，它不过是无用的奇物……' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this companion. This companion is an exclusive and rare item.\n\nThis is a non-combat companion.' AS `src`, '教你如何召唤这个伙伴。该伙伴是一件独有且稀有的物品。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Wear a dragon\'s tail costume.' AS `src`, '穿上龙的尾部伪装。' AS `dst`
    UNION ALL SELECT 'Wear a dragon\'s body costume.' AS `src`, '穿上龙的身躯伪装。' AS `dst`
    UNION ALL SELECT 'Wear a dragon\'s head costume.' AS `src`, '穿上龙的头部伪装。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this Goblin Clockwork Watch. Displays on your back.' AS `src`, '教你如何召唤这个地精发条手表。显示在背部。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this Ornamental Bow. Displays on your back.' AS `src`, '教你如何召唤这张装饰弓。显示在背部。' AS `dst`
    UNION ALL SELECT 'Alter reality to become a simulated subject of A.B.Y.S.S.' AS `src`, '改变现实，成为 A.B.Y.S.S. 的模拟对象。' AS `dst`
    UNION ALL SELECT 'Delicious.' AS `src`, '美味。' AS `dst`
    UNION ALL SELECT 'A Long time ago, these keys were used to unlock something.. Now, they are pretty much useless..' AS `src`, '很久以前，这些钥匙曾用来开启某物。如今它们几乎毫无用处。' AS `dst`
    UNION ALL SELECT 'The preorder Supporter Chests were updated. Because you preordered before the update, you are receiving the original pack and the new one! Thank you for supporting us.' AS `src`, '预购支持者宝箱已更新。由于你在更新前预购，你将同时获得原始版本和新版本！感谢你的支持。' AS `dst`
    UNION ALL SELECT 'Does not drop on death in High-Risk.\n\nOpens Demon Bound Hidden Caches found in High-Risk Silithus and Winterspring. Opening a cache will trigger the No-Retreat debuff on you, preventing escape spells from taking you to safety.' AS `src`, '在高风险模式下死亡时不会掉落。\n\n开启在高风险希利苏斯和冬泉谷中发现的恶魔束缚隐秘宝箱。开启宝箱会对你施加“无路可退”减益，使逃脱法术无法将你带离险境。' AS `dst`
    UNION ALL SELECT 'A Commendation for Reaching the 9th Prestige.' AS `src`, '达到第 9 级威望的嘉奖。' AS `dst`
    UNION ALL SELECT 'Places the Hunter\'s Mark on the target, increasing the ranged attack power of all attackers against that target by   In addition, the target of this ability can always be seen by the hunter whether it stealths or turns invisible.  The target also appears on the mini-map.  Lasts for' AS `src`, '一件来自诺兹多姆的强大神器，用升华印记换取。' AS `dst`
    UNION ALL SELECT 'You fire an explosive charge into the enemy target, dealing  Fire damage. The charge will blast the target every second for an additional' AS `src`, '这个悬赏板宝箱会根据你的物品等级给予奖励。' AS `dst`
    UNION ALL SELECT 'Attack the enemy for  damage.' AS `src`, '使你的双手近战武器伤害提高 。' AS `dst`
    UNION ALL SELECT 'Allows one-hand and off-hand weapons to be equipped in the off-hand.' AS `src`, '每  点护甲值使你的攻击强度提高 。' AS `dst`
    UNION ALL SELECT 'Finishing move that consumes your Deadly Poison doses on the target and deals instant poison damage.  Following the Envenom attack you have an additional  chance to apply Deadly Poison and a  increased frequency of applying Instant Poison for 1 sec plus an additional 1 sec per combo point.  One dose is consumed for each combo point:\n  1 dose:   damage\n  2 doses:  damage\n  3 doses:  damage\n  4 doses:  damage\n  5 doses:  damage' AS `src`, '使你的法术强度提高，数值相当于你总智力的 。' AS `dst`
    UNION ALL SELECT 'An instant strike that deals  weapon damage ( if a dagger is equipped) and causes the target to hemorrhage, increasing any Physical damage dealt to the target by up to   Lasts  charges or   Awards 1 combo point.' AS `src`, '使你的宠物的爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'A word of dark binding that inflicts  Shadow damage to the target.  If the target is not killed by Shadow Word: Death, the caster takes damage equal to the damage inflicted upon the target.' AS `src`, '内含五枚暗月游戏代币。' AS `dst`
    UNION ALL SELECT 'Boils the blood of all enemies within  yards, dealing  Shadow damage.  Deals additional damage to targets infected with Blood Plague or Frost Fever.' AS `src`, '内含二十枚暗月游戏代币。' AS `dst`
    UNION ALL SELECT 'A brutal instant attack that deals  weapon damage plus }, total damage increased  per each of your diseases on the target, but consumes the diseases.' AS `src`, '可在幻化师处用来改变你的生命分流技能的外观。' AS `dst`
    UNION ALL SELECT 'Corrupts the ground targeted by the Death Knight, causing  Shadow damage every sec that targets remain in the area for   This ability produces a high amount of threat.' AS `src`, '可在幻化师处用来改变你的风剪技能的外观。' AS `dst`
    UNION ALL SELECT 'Imbue the Shaman\'s weapon, increasing its damage per second by   Lasts 30 minutes.' AS `src`, '内含五张暗月乘骑票。' AS `dst`
    UNION ALL SELECT 'Blasts the target with energy, dealing  Arcane damage.  Each time you cast Arcane Blast, the damage of all Arcane spells is increased by  and mana cost of Arcane Blast is increased by   Effect stacks up to  times and lasts  or until any Arcane damage spell except Arcane Blast is cast.' AS `src`, '可用金币从恶魔之泪的比尔泽布处购买。' AS `dst`
    UNION ALL SELECT 'Infuses all  party and raid members with brilliance, increasing their Intellect by  for' AS `src`, '一套幻化武器套装，内含 1 张弓和 1 个箭矢幻象。 \n\n它用于幻化。你可以在藏品柜中查看幻化套装的样子。这些可从其他玩家、拍卖行或升华商城获得。' AS `dst`
    UNION ALL SELECT 'Curses the target for d, reducing Arcane, Fire, Frost, Nature, and Shadow resistances by  and increasing magic damage taken by   Only one Curse per Warlock can be active on any one target.' AS `src`, '联盟法师起始套装' AS `dst`
    UNION ALL SELECT 'Surrounds the caster with fel energy, increasing spell power by  plus additional spell power equal to  of your Spirit. In addition, you regain  of your maximum health every 5 sec. Only one type of Armor spell can be active on the Warlock at any time.  Lasts' AS `src`, '联盟术士起始套装' AS `dst`
    UNION ALL SELECT 'Absorbs  shadow damage.  Lasts' AS `src`, '一套幻化武器套装，内含 2 张弓和 1 个箭矢幻象。 \n\n它用于幻化。你可以在藏品柜中查看幻化套装的样子。这些可从其他玩家、拍卖行或升华商城获得。' AS `dst`
    UNION ALL SELECT 'Ignites the area surrounding the caster, causing  Fire damage to mself:herself' AS `src`, '使用我！' AS `dst`
    UNION ALL SELECT 'Deals  Fire damage to your target and an additional' AS `src`, '一只黏人的树懒趴在你背上。需要不断的关爱！' AS `dst`
    UNION ALL SELECT 'Cower, causing no damage but lowering your threat a large amount, making the enemy less likely to attack you.' AS `src`, '教你如何召唤这个气球。背在背上显示。' AS `dst`
    UNION ALL SELECT 'Pounce, stunning the target for  and causing  damage over   Must be prowling.  Awards  combo int:points' AS `src`, '教你如何召唤这个地精爆裂法器。背在背上显示。' AS `dst`
    UNION ALL SELECT 'Gives the Gift of the Wild to all party and raid members, increasing armor by 1, all attributes by  and all resistances by  for' AS `src`, '随机教授一个机动技能。' AS `dst`
    UNION ALL SELECT 'Launches a volley of holy light at the target, causing  Holy damage to an enemy, or  healing to an ally instantly and every  sec for 58d.' AS `src`, '猎人获得雄鹰守护，使远程攻击强度提高  同一时间只能激活一个守护。' AS `dst`
    UNION ALL SELECT 'Gives all members of the raid or group that share the same class with the target the Greater Blessing of Wisdom, restoring  mana every 5 seconds for   Players may only have one Blessing on them per Paladin at any one time.' AS `src`, '放置一个火焰陷阱，灼烧第一个靠近的敌人，在  内造成  点火焰伤害。陷阱持续  同一时间只能激活一个陷阱。' AS `dst`
    UNION ALL SELECT 'Sends bolts of holy power in all directions, causing  to  Holy damage and stunning all Undead and Demon targets within  yds for' AS `src`, '立即用两把武器攻击，造成  点武器伤害，每把武器额外造成  。对中毒目标伤害提高 20%。  获得 2 个连击点。' AS `dst`
    UNION ALL SELECT 'Gives  additional Fire resistance to all party and raid members within  yards.  Players may only have one Aura on them per Paladin at any one time.' AS `src`, '为你的目标恢复' AS `dst`
    UNION ALL SELECT 'Gives  additional Frost resistance to all party and raid members within  yards.  Players may only have one Aura on them per Paladin at any one time.' AS `src`, '向敌人投出一道闪电箭，造成  点自然伤害，然后跳向附近的额外敌人。  每次跳跃使伤害降低 30%。  影响  个目标。' AS `dst`
    UNION ALL SELECT 'Gives  additional Shadow resistance to all party and raid members within  yards.  Players may only have one Aura on them per Paladin at any one time.' AS `src`, '使范围内所有队伍和团队成员获得额外的暗影抗性。每名圣骑士一次只能让玩家身上保持一种光环。' AS `dst`
    UNION ALL SELECT 'Gives all members of the raid or group that share the same class with the target the Greater Blessing of Might, increasing attack power by  for   Players may only have one Blessing on them per Paladin at any one time.' AS `src`, '使团队或队伍中与目标职业相同的所有成员获得强效力量祝福，使攻击强度提高，持续一段时间。每名圣骑士一次只能让玩家身上保持一种祝福。' AS `dst`
    UNION ALL SELECT 'While applied to target weapon it increases damage dealt by direct spells by 1% and spell critical strike rating by   Lasts for 1 hour.' AS `src`, '施加于目标武器后，使直接法术造成的伤害提高 1%，并使法术暴击等级提高。持续 1 小时。' AS `dst`
    UNION ALL SELECT 'This seems to be radiating with power, perhaps someone may want it.' AS `src`, '它似乎在散发着力量，也许有人会想要它。' AS `dst`
    UNION ALL SELECT 'Conjures  af:loaves' AS `src`, '制造若干条面包。' AS `dst`
    UNION ALL SELECT 'Performs a feint, causing no damage but lowering your threat by a large amount, making the enemy less likely to attack you.' AS `src`, '做一次佯攻，不造成伤害，但大幅降低你的威胁值，使敌人不太可能攻击你。' AS `dst`
    UNION ALL SELECT 'This item can not be used in tandem with other challenges. You can not start challenges then use this item. You can not use this item then start challenges.' AS `src`, '该物品不能与其他挑战同时使用。你不能在开始挑战后使用它，也不能在使用它后开始挑战。' AS `dst`
    UNION ALL SELECT 'A strong attack that increases melee damage by  and causes a high amount of threat.  Causes  additional damage against Dazed targets.' AS `src`, '一次强力攻击，使近战伤害提高并产生大量威胁值。对处于眩晕状态的目标造成额外伤害。' AS `dst`
    UNION ALL SELECT 'Creates a Holy Lightwell.  Friendly players can click the Lightwell to restore  health over   Attacks done to you equal to 30% of your total health will cancel the effect. Lightwell lasts for  or 10 charges.' AS `src`, '制造一座圣光之泉。友方玩家可以点击光之泉，在一段时间内恢复生命值。对你造成的、相当于你总生命值 30% 的攻击会取消该效果。光之泉持续一段时间或 10 次使用次数。' AS `dst`
    UNION ALL SELECT 'Sends a bolt of chaotic fire at the enemy, dealing  Fire damage. Chaos Bolt cannot be resisted, and pierces through all absorption effects.' AS `src`, '向敌人射出一道混乱火焰，造成火焰伤害。混乱之箭无法被抵抗，并能穿透所有吸收效果。' AS `dst`
    UNION ALL SELECT 'You call down a bolt of lightning, energizing you and damaging nearby enemies within  yards. Restores  mana to you and deals  Nature damage to all nearby enemies, knocking them back 20 yards. This spell is usable while stunned.' AS `src`, '你召唤一道闪电，为自己充能并伤害附近范围内的敌人。为你恢复法力值，并对附近所有敌人造成自然伤害，将其击退 20 码。该法术可在昏迷时使用。' AS `dst`
    UNION ALL SELECT 'Cultivated by an Alchemist at a Sanguine Workbench to create ingredients.\n\nObtained from High-Risk Herb areas.' AS `src`, '由炼金师在血之工作台上培育，用于制作材料。\n\n产自高风险草药区域。' AS `dst`
    UNION ALL SELECT 'Cultivated by an Alchemist at a Sanguine Workbench to create ingredients.' AS `src`, '由炼金师在血之工作台上培育，用于制作材料。' AS `dst`
    UNION ALL SELECT 'Smelted by a Miner at a Sanguine Workbench to create metal.\n\nObtained from High-Risk Metals areas.' AS `src`, '由矿工在血之工作台上熔炼，用于制作金属。\n\n产自高风险矿石区域。' AS `dst`
    UNION ALL SELECT 'Smelted by a Miner at a Sanguine Workbench to create metal.' AS `src`, '由矿工在血之工作台上熔炼，用于制作金属。' AS `dst`
    UNION ALL SELECT 'Cured by a Leatherworker at a Sanguine Workbench to create workable leather.\n\nObtained from skinning beasts in High-Risk Meat and Leather areas.' AS `src`, '由制皮师在血之工作台上硝制，用于制作可加工的皮革。\n\n产自高风险肉类与皮革区域的野兽剥皮。' AS `dst`
    UNION ALL SELECT 'Cured by a Leatherworker at a Sanguine Workbench to create workable leather.' AS `src`, '由制皮师在血之工作台上硝制，用于制作可加工的皮革。' AS `dst`
    UNION ALL SELECT 'Shattered by an Enchanter at a Sanguine Workbench to create Dust.\n\nObtained from High-Risk Enchanting Dust areas.' AS `src`, '由附魔师在血之工作台上粉碎，用于制作粉尘。\n\n产自高风险附魔粉尘区域。' AS `dst`
    UNION ALL SELECT 'Shattered by an Enchanter at a Sanguine Workbench to create Dust.' AS `src`, '由附魔师在血之工作台上粉碎，用于制作粉尘。' AS `dst`
    UNION ALL SELECT 'Weaved by a Tailor at a Sanguine Workbench to create Thread.\n\nObtained from High-Risk Cloth areas.' AS `src`, '由裁缝在血之工作台上编织，用于制作丝线。\n\n产自高风险布匹区域。' AS `dst`
    UNION ALL SELECT 'Weaved by a Tailor at a Sanguine Workbench to create Thread.' AS `src`, '由裁缝在血之工作台上编织，用于制作丝线。' AS `dst`
    UNION ALL SELECT 'Cured by an Cook at a Sanguine Workbench to create Cured Meat.\n\nObtained from skinning beasts in High-Risk Meat and Leather areas.' AS `src`, '由厨师在血之工作台上腌制，用于制作腌制肉类。\n\n产自高风险肉类与皮革区域的野兽剥皮。' AS `dst`
    UNION ALL SELECT 'Cured by an Cook at a Sanguine Workbench to create Cured Meat.' AS `src`, '由厨师在血之工作台上腌制，用于制作腌制肉类。' AS `dst`
    UNION ALL SELECT 'Obtained from slaying Beasts in Tier 1, 2 and 3 High-Risk zones.' AS `src`, '在 1、2、3 级高风险区域击杀野兽获得。' AS `dst`
    UNION ALL SELECT 'Obtained from gathering Herbs Nodes in Tier 1, 2 and 3 High-Risk zones.' AS `src`, '在 1、2、3 级高风险区域采集草药节点获得。' AS `dst`
    UNION ALL SELECT 'Obtained from Mining Nodes in Tier 1, 2 and 3 High-Risk zones.' AS `src`, '在 1、2、3 级高风险区域开采矿脉获得。' AS `dst`
    UNION ALL SELECT 'Obtained from Skinning Beasts in Tier 1, 2 and 3 High-Risk zones.' AS `src`, '在 1、2、3 级高风险区域对野兽剥皮获得。' AS `dst`
    UNION ALL SELECT 'Obtained from slaying Humanoids in Tier 1, 2 and 3 High-Risk zones.' AS `src`, '在 1、2、3 级高风险区域击杀人形生物获得。' AS `dst`
    UNION ALL SELECT 'An unholy strike that deals  of weapon damage as Physical damage plus   In addition, for each of your diseases on your target, you deal an additional  of the Physical damage done as Shadow damage.' AS `src`, '一次邪恶打击，造成相当于武器伤害的物理伤害，另加若干。此外，目标身上每有一种你施加的疾病，你便额外造成相当于该物理伤害一部分的暗影伤害。' AS `dst`
    UNION ALL SELECT 'Blast the target with a frigid wind dealing  Frost damage to all enemies within 10 yards.' AS `src`, '以刺骨寒风冲击目标，对 10 码内所有敌人造成冰霜伤害。' AS `dst`
    UNION ALL SELECT 'Heals up to  friendly party or raid members within  yards of the target for  over  The amount healed is applied quickly at first, and slows down as the Wild Growth reaches its full duration.' AS `src`, '为目标范围内一定范围内的队伍或团队成员恢复生命值，持续一段时间。治疗量最初生效较快，随着野性成长接近持续时间结束而减慢。' AS `dst`
    UNION ALL SELECT 'You summon a flurry of stars from the sky on all targets within  yards of the caster, each dealing  Arcane damage. Also causes  Arcane damage to all other enemies within  yards of the enemy target. Maximum 20 stars. Lasts   Shapeshifting into an animal form or mounting cancels the effect. Any effect which causes you to lose control of your character will suppress the starfall effect.' AS `src`, '你从天空召唤一阵流星雨，落在施法者周围范围内的所有目标身上，每颗造成奥术伤害。同时对敌方目标周围范围内的其他所有敌人造成奥术伤害。最多 20 颗。持续一段时间。变形为动物形态或骑乘会取消该效果。任何使你失去角色控制的效果都会抑制星辰坠落效果。' AS `dst`
    UNION ALL SELECT 'Drains  of your summoned demon\'s Mana, returning 100% to you.' AS `src`, '吸取你召唤的恶魔的法力值，并将其 100% 返还给你。' AS `dst`
    UNION ALL SELECT 'Uncommon High-Risk Materials are not lost on death!\n\nObtained from Tier 2 & Tier 3 High-Risk zones.' AS `src`, '精良品质的高风险材料不会在死亡时丢失！\n\n产自 2 级与 3 级高风险区域。' AS `dst`
    UNION ALL SELECT 'The target becomes a Living Bomb, taking  Fire damage over   After  or when the spell is dispelled, the target explodes dealing  Fire damage to all enemies within  yards.' AS `src`, '目标变成活体炸弹，在一段时间内受到火焰伤害。持续时间结束后或法术被驱散时，目标会爆炸，对范围内所有敌人造成火焰伤害。' AS `dst`
    UNION ALL SELECT 'Launches several missiles at the enemy target, causing  Arcane damage.' AS `src`, '向敌方目标发射数枚飞弹，造成奥术伤害。' AS `dst`
    UNION ALL SELECT 'Increases the effect of all healing spells by .' AS `src`, '使所有治疗法术的效果提高。' AS `dst`
    UNION ALL SELECT 'Gives you a  chance after being hit by any damaging attack that the next  weapon swings within  will generate an additional attack.' AS `src`, '在受到任何伤害性攻击后，你有一定几率使接下来一定时间内的下几次武器挥击额外产生一次攻击。' AS `dst`
    UNION ALL SELECT 'Your weapon hits have a  chance to cause the target to spawn 2-4 Bloodworms.  Bloodworms attack your enemies, healing you as they do damage for 20 sec or until killed.' AS `src`, '你的武器命中时有一定几率使目标身上生成 2-4 条血虫。血虫会攻击你的敌人，在造成伤害时为你治疗，持续 20 秒或直到被杀死。' AS `dst`
    UNION ALL SELECT 'Reduces the chance your pet will be critically hit by melee attacks by .' AS `src`, '使你的宠物被近战攻击造成暴击的几率降低。' AS `dst`
    UNION ALL SELECT 'Increases your pet\'s movement speed by  for' AS `src`, '使你的宠物的移动速度提高，持续' AS `dst`
    UNION ALL SELECT 'Your Shadow Bolt and Haunt spells apply the Shadow Embrace effect, increasing all shadow periodic damage dealt to the target by you by %, and reduces all periodic healing done to the target by  Lasts for  Stacks up to  times.' AS `src`, '你的暗影箭和鬼影缠身法术会施加暗影之拥效果，使你对该目标造成的所有暗影持续伤害提高 %，并使对该目标进行的所有持续治疗降低。持续一段时间。最多叠加数次。' AS `dst`
    UNION ALL SELECT 'Increases the damage of Curse of Agony, Corruption and Seed of Corruption by  and reduces the chance your helpful Affliction spells and damage over time effects  will be dispelled by an additional .' AS `src`, '使痛苦诅咒、腐蚀术和腐蚀之种造成的伤害提高，并使你的有益痛苦系法术和持续伤害效果被驱散的几率额外降低。' AS `dst`
    UNION ALL SELECT 'This item is added to your vanity collection and is usable on all of your Felforged characters.' AS `src`, '该物品会加入你的时装收藏，并可在你所有邪铸角色上使用。' AS `dst`
    UNION ALL SELECT 'The fire that gave this axe its fury has turned to ash. Now it waits, cold and patient, for the one who seeks the elemental\'s power.' AS `src`, '赋予这把斧头怒火的那团火已化为灰烬。如今它冰冷而耐心地等待着，等待追寻元素之力的人。' AS `dst`
    UNION ALL SELECT 'For Brian to Test things' AS `src`, '供布莱恩测试用' AS `dst`
    UNION ALL SELECT 'A feat of mechanimagicological engineering.' AS `src`, '一项机械魔法工程的杰作。' AS `dst`
    UNION ALL SELECT 'You didn\'t know that fish eggs came in this size.' AS `src`, '你不知道鱼卵还能有这么大。' AS `dst`
    UNION ALL SELECT 'It has your name on it!' AS `src`, '上面写着你的名字！' AS `dst`
    UNION ALL SELECT 'Useable at level 1 only.' AS `src`, '仅可在 1 级时使用。' AS `dst`
    UNION ALL SELECT 'Freshly milked from happy cows!' AS `src`, '从快乐奶牛身上现挤的！' AS `dst`
    UNION ALL SELECT 'This vellum is added to your collection and usable on all characters with the Dominate Undead ability.' AS `src`, '该羊皮纸会加入你的收藏，并可在所有拥有控制亡灵能力的角色上使用。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount.  This is a flying mount. Requires Cloud Serpent Riding from the Order of the Cloud Serpent.' AS `src`, '教你如何召唤该坐骑。这是一只飞行坐骑。需要云端翔龙骑士团的云端翔龙骑术。' AS `dst`
    UNION ALL SELECT 'A small additional sum of gold, in appreciation of your actions.' AS `src`, '一小笔额外金币，以感谢你的行动。' AS `dst`
    UNION ALL SELECT 'Worth a few coins...' AS `src`, '值几个钱……' AS `dst`
    UNION ALL SELECT 'Contains 10 Scrolls of Wisdom.' AS `src`, '内含 10 张智慧卷轴。' AS `dst`
    UNION ALL SELECT 'Contains a random Mythic Keystone' AS `src`, '内含一枚随机秘境钥石' AS `dst`
    UNION ALL SELECT 'Can be used to transform your Blessing of Might ability at a transmogrifier.' AS `src`, '可在幻化师处用于改变你的力量祝福技能。' AS `dst`
    UNION ALL SELECT 'The head of Nefarian: Brood of Deathwing.' AS `src`, '奈法利安的头颅——死亡之翼的子嗣。' AS `dst`
    UNION ALL SELECT 'Nozdormu no longer has a use for this damaged trinket, perhaps a hero like you will? It seems it can still be used to harness powerful mystic enchantments.' AS `src`, '诺兹多姆不再需要这件破损的饰品，也许像你这样的英雄会需要？它似乎仍可用来驾驭强大的秘法附魔。' AS `dst`
    UNION ALL SELECT 'This cosmetic item is added to your vanity collection and is usable on all of your characters.\n\nThis is a non-combat companion.' AS `src`, '该装饰性物品会加入你的时装收藏，并可在你所有角色上使用。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'The contents inside of this specific cache ARE TRADEABLE. \nShift Right click to open!' AS `src`, '这个特定宝箱内的物品可以交易。\n按住 Shift 并右键点击以打开！' AS `dst`
    UNION ALL SELECT 'Opening this will give you Scrolls of Fortune For your current Specialization. These allow you to unlearn abilities or talents.\n\nYou can obtain scrolls from The Manastorm, Quests, Dungeons, Raids, Callboard Caches, Battlegrounds, High-Risk Open-World, and a Questchain on Silas Darkmoon in Capitals using Marks of Ascension.\n\n|cFFCC0000THIS ITEM IS DESTROYED UPON PRESTIGE|r' AS `src`, '开启后将为你的当前专精提供幸运卷轴。它们可以让你遗忘技能或天赋。\n\n你可以从 Manastorm、任务、地下城、团队副本、召唤板宝箱、战场、高风险开放世界，以及在主城用升华印记向赛拉斯·暗月换取卷轴。\n\n|cFFCC0000此物品在转生时会被摧毁|r' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this companion.\n\nThe Book of Ascension allows you train all of your abilities from any class.\n\nIt can be obtained from the Auction House or with DP.\n\nThis is a non-combat companion.' AS `src`, '教你如何召唤该伙伴。\n\n《升华之书》让你可以训练任意职业的所有技能。\n\n可以从拍卖行或使用 DP 获得。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Ornated with purple runes that radiate a magic aura this artifact is quite valuable to buyers - or maybe you could find a way to harness its power for yourself?' AS `src`, '这件神器装饰着散发魔法灵光的紫色符文，对买家来说相当值钱——又或者，你能找到办法为自己驾驭它的力量？' AS `dst`
    UNION ALL SELECT 'The High Blade' AS `src`, '高位之刃' AS `dst`
    UNION ALL SELECT 'Counts as an Air, Earth, Fire, and Water totem.' AS `src`, '视为空气、大地、火焰和水之图腾。' AS `dst`
    UNION ALL SELECT 'This Transmogrification item is found on the Ethereal Bazaar!' AS `src`, '这件幻化物品可在虚灵市集找到！' AS `dst`
    UNION ALL SELECT 'Take the reins or take the form- the choice is yours.' AS `src`, '握起缰绳，或化作其形——选择权在你。' AS `dst`
    UNION ALL SELECT 'When you need to deliver flowers, fast.' AS `src`, '当你需要快速送花的时候。' AS `dst`
    UNION ALL SELECT 'Within this scepter, many souls still cry for vengeance.' AS `src`, '在这根权杖之中，仍有许多灵魂在呼喊着复仇。' AS `dst`
    UNION ALL SELECT 'Just as Elune may conceal the light of the sun, so too has a dark star been eclipsed by the dream.\nYet even the longest eclipse is but a brief moment to the history of the cosmos...' AS `src`, '正如艾露恩能遮住太阳的光芒，一颗暗星也已被梦境所掩。\n然而即便最长的蚀，在宇宙的历史中也不过是短暂一瞬……' AS `dst`
    UNION ALL SELECT 'I screamed but no one answered\nI wept but no tears came\nI reached out to take your hand\nAnd finally I realized what I\'d become' AS `src`, '我呼喊，却无人应答\n我哭泣，却无泪落下\n我伸手想要握住你的手\n终于，我明白自己变成了什么' AS `dst`
    UNION ALL SELECT 'Once proudly worn by a knight from the Brotherhood of the Horse, this cloak\'s power has been twisted by the soul that claimed its owner\'s corpse.' AS `src`, '这件披风曾由马匹兄弟会的一位骑士骄傲地披挂，如今它的力量已被占据其主人尸体的灵魂所扭曲。' AS `dst`
    UNION ALL SELECT 'When Cynfael tore out his heart and became immortal, his blood concealed into orbs of power.\nWithout the heart sustaining it, that blood has begun to slowly decay, and yet the power within it remains.' AS `src`, '当辛菲尔撕出自己的心脏并获得不朽时，他的血液凝聚成了力量宝珠。\n失去心脏的维系，那些血液开始缓慢衰败，但其中的力量仍在。' AS `dst`
    UNION ALL SELECT 'No matter what, as long as you have this, I\'m sure I\'ll be able to find you. So there\'s no need to cry, okay Miel?' AS `src`, '无论如何，只要你有这个，我相信我一定能找到你。所以别哭了，好吗，米尔？' AS `dst`
    UNION ALL SELECT 'A rare flower, the petals of which droop around the stem to give an appearance of sorrow. A child who once lived in Deadwind Pass wished to make it happy, yet this preserved blossom appears more sorrowful still.' AS `src`, '一种稀有花朵，花瓣低垂在茎旁，显得满怀忧伤。曾有一个住在逆风小径的孩子想让它快乐起来，但这朵被保存下来的花看起来却更加悲伤。' AS `dst`
    UNION ALL SELECT 'Equip the Harvest Golem\'s Post and channel the haunting spirit of the harvest. Let your form strike fear, as if woven from the very shadows of the fields...' AS `src`, '装备收割魔像的立柱，引导收割的萦绕之魂。让你的身形令人畏惧，仿佛是田野阴影编织而成……' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon and dismiss this companion.This is a non-combat companion.' AS `src`, '教你如何召唤和收回该伙伴。这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'A piece of an ancient seal' AS `src`, '一枚古老封印的碎片' AS `dst`
    UNION ALL SELECT 'One of Konym\'s prized blades, carved from a dragon\'s bones and coated in iron.' AS `src`, '科尼姆珍视的刀刃之一，由龙骨雕成，覆以铁层。' AS `dst`
    UNION ALL SELECT 'Equip your Pathfinder\'s Backpack' AS `src`, '装备你的探路者背包' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Flask of the North.' AS `src`, '教你如何制作北方合剂。' AS `dst`
    UNION ALL SELECT 'Become someone else. Lasts 1 hour.' AS `src`, '变成另一个人。持续 1 小时。' AS `dst`
    UNION ALL SELECT 'Research Notes of the Patriarchal Illuminated, who set out to find a cure for undeath, even against the will of their unwilling patients.' AS `src`, '宗长光照会的研究笔记，他们出发寻找治愈不死的方法，甚至违背那些不情愿的病人的意愿。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this Troll Idol. Displays on your back.' AS `src`, '教你如何召唤这个巨魔神像。显示在背部。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this Troll Mask. Displays on your back.' AS `src`, '教你如何召唤这个巨魔面具。显示在背部。' AS `dst`
    UNION ALL SELECT 'Turn in this reward token to Mega at the Azzar Faire.' AS `src`, '在阿扎尔集市将这份奖励凭证交给梅加。' AS `dst`
    UNION ALL SELECT 'Turn in this reward token to Otto Wonka at the Azzar Faire.' AS `src`, '在阿扎尔集市将这份奖励凭证交给奥托·旺卡。' AS `dst`
    UNION ALL SELECT 'Turn in this reward token to Brumm at the Azzar Faire.' AS `src`, '在阿扎尔集市将这份奖励凭证交给布鲁姆。' AS `dst`
    UNION ALL SELECT 'Turn in this reward token to Rikky at the Azzar Faire.' AS `src`, '在阿扎尔集市将这份奖励凭证交给里基。' AS `dst`
    UNION ALL SELECT 'Turn in this reward token to Mizzle at the Azzar Faire.' AS `src`, '在阿扎尔集市将这份奖励凭证交给米兹尔。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this companion.\n\nThe Book of Ascension allows you train all of your abilities from any class.\n\nThis is a non-combat companion.' AS `src`, '教你如何召唤该伙伴。\n\n《升华之书》让你可以训练任意职业的所有技能。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'It burns with fel energy.' AS `src`, '它燃烧着邪能。' AS `dst`
    UNION ALL SELECT 'Etched on this runestone is a riddle.' AS `src`, '这块符文石上刻着一道谜题。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount. This is a Ground mount.\n\nThis mount is obtained by being in the top 10 of the 1v1 or top 10 of the 2v2 leaderboard when a PvP Progression (Vanilla) comes to an end.' AS `src`, '教你如何召唤该坐骑。这是一只地面坐骑。\n\n在 PvP 进度（经典旧世）结束时，处于 1v1 排行榜前十或 2v2 排行榜前十即可获得该坐骑。' AS `dst`
    UNION ALL SELECT 'Burning with fel energy.' AS `src`, '燃烧着邪能。' AS `dst`
    UNION ALL SELECT 'Turn autoloot on. Do not open without at least 10 Bag Slots free.' AS `src`, '请开启自动拾取。在至少留有 10 个空背包格之前不要打开。' AS `dst`
    UNION ALL SELECT 'Obtained from Deadwind Ogres in High-Risk.' AS `src`, '在高风险逆风小径食人魔身上获得。' AS `dst`
    UNION ALL SELECT 'Obtained from Wyrmkin in High-Risk.' AS `src`, '在高风险龙人身上获得。' AS `dst`
    UNION ALL SELECT 'Obtained from the Cult of the Damned in High-Risk.' AS `src`, '在高风险天灾教徒身上获得。' AS `dst`
    UNION ALL SELECT 'Obtained from Winterfall Furbolgs in High-Risk.' AS `src`, '在高风险冬泉熊怪身上获得。' AS `dst`
    UNION ALL SELECT 'Skinned from Sandworms in High-Risk.' AS `src`, '在高风险沙虫身上剥皮获得。' AS `dst`
    UNION ALL SELECT 'Skinned from Plaguebats in High-Risk.' AS `src`, '在高风险瘟疫蝠身上剥皮获得。' AS `dst`
    UNION ALL SELECT 'Skinned from Black Dragonspawn in High-Risk.' AS `src`, '在高风险黑龙人身上剥皮获得。' AS `dst`
    UNION ALL SELECT 'Skinned from Cobalt Dragonspawn in High-Risk.' AS `src`, '在高风险钴蓝龙人身上剥皮获得。' AS `dst`
    UNION ALL SELECT 'Skinned from Devilsaurs in High-Risk.' AS `src`, '在高风险魔暴龙身上剥皮获得。' AS `dst`
    UNION ALL SELECT 'Old scraps prized by vendors for making compostable trash bags.' AS `src`, '商人们珍视的旧碎布，可用来制作可堆肥的垃圾袋。' AS `dst`
    UNION ALL SELECT 'Refined at Void Forges in High-Risk.' AS `src`, '在高风险虚空熔炉处精炼。' AS `dst`
    UNION ALL SELECT 'Refined at Scourge Forges in High-Risk.' AS `src`, '在高风险天灾熔炉处精炼。' AS `dst`
    UNION ALL SELECT 'Refined at Volcanic Forges in High-Risk.' AS `src`, '在高风险火山熔炉处精炼。' AS `dst`
    UNION ALL SELECT 'Refined at Corrupt Forges in High-Risk.' AS `src`, '在高风险腐化熔炉处精炼。' AS `dst`
    UNION ALL SELECT 'Refined at Jurassic Forges in High-Risk.' AS `src`, '在高风险侏罗熔炉处精炼。' AS `dst`
    UNION ALL SELECT 'Refined at Arctic Forges in High-Risk.' AS `src`, '在高风险极地熔炉处精炼。' AS `dst`
    UNION ALL SELECT 'Used by Expert Miners to smelt Chiten Alloy at Void Forges in High-Risk.' AS `src`, '供专家级矿工在高风险虚空熔炉处熔炼甲壳合金。' AS `dst`
    UNION ALL SELECT 'Used by Expert Miners to smelt Plague Iron at Scourge Forges in High-Risk.' AS `src`, '供专家级矿工在高风险天灾熔炉处熔炼瘟疫铁。' AS `dst`
    UNION ALL SELECT 'Used by Expert Miners to smelt Dragonsteel at Volcanic Forges in High-Risk.' AS `src`, '供专家级矿工在高风险火山熔炉处熔炼龙钢。' AS `dst`
    UNION ALL SELECT 'Used by Expert Miners to smelt Living Iron at Corrupt Forges in High-Risk.' AS `src`, '供专家级矿工在高风险腐化熔炉处熔炼活性铁。' AS `dst`
    UNION ALL SELECT 'Used by Expert Miners to smelt Star Metal at Jurassic Forges in High-Risk.' AS `src`, '供专家级矿工在高风险侏罗熔炉处熔炼星界金属。' AS `dst`
    UNION ALL SELECT 'Used by Expert Miners to smelt Wintersteel at Arctic Forges in High-Risk.' AS `src`, '供专家级矿工在高风险极地熔炉处熔炼寒冬钢。' AS `dst`
    UNION ALL SELECT 'Harvested from Flesh Eating Tubers in High-Risk.' AS `src`, '在高风险食肉块茎上采集获得。' AS `dst`
    UNION ALL SELECT 'Harvested from Venus Flesh Trap in High-Risk.' AS `src`, '在高风险维纳斯捕肉草上采集获得。' AS `dst`
    UNION ALL SELECT 'Harvested from Corruptshroom in High-Risk.' AS `src`, '在高风险腐化蘑菇上采集获得。' AS `dst`
    UNION ALL SELECT 'Harvested from Jurassic Snarewort in High-Risk.' AS `src`, '在高风险侏罗捕陷草上采集获得。' AS `dst`
    UNION ALL SELECT 'Harvested from Stormbloom in High-Risk.' AS `src`, '在高风险风暴花上采集获得。' AS `dst`
    UNION ALL SELECT 'Harvested from Winter\'s Death in High-Risk.' AS `src`, '在高风险寒冬之死上采集获得。' AS `dst`
    UNION ALL SELECT 'Used by Expert Herbalists to feed Flesh Eating Tubers and harvest Deep Desert Roots in High-Risk.' AS `src`, '供专家级草药师在高风险区域喂养食肉块茎并采集深沙根。' AS `dst`
    UNION ALL SELECT 'Used by Expert Herbalists to feed Venus Flesh Traps and harvest Necrotic Lotus in High-Risk.' AS `src`, '供专家级草药师在高风险区域喂养维纳斯捕肉草并采集坏死莲。' AS `dst`
    UNION ALL SELECT 'Used by Expert Herbalists to feed Corruptshrooms and harvest Corruption Caps in High-Risk.' AS `src`, '供专家级草药师在高风险区域喂养腐化蘑菇并采集腐化菌盖。' AS `dst`
    UNION ALL SELECT 'Used by Expert Herbalists to feed Jurassic Snarewort and harvest Jurassic Bulbs in High-Risk.' AS `src`, '供专家级草药师在高风险区域喂养侏罗捕陷草并采集侏罗鳞茎。' AS `dst`
    UNION ALL SELECT 'Used by Expert Herbalists to feed Stormbloom and harvest Storm Fronds in High-Risk.' AS `src`, '供专家级草药师在高风险区域喂养风暴花并采集风暴叶。' AS `dst`
    UNION ALL SELECT 'Used by Expert Herbalists to feed Winter\'s Death and harvest Winterbloom in High-Risk.' AS `src`, '供专家级草药师在高风险区域喂养寒冬之死并采集冬花。' AS `dst`
    UNION ALL SELECT 'Obtained from Warded Cultist Tablets in High-Risk.' AS `src`, '在高风险结界教徒石板中获得。' AS `dst`
    UNION ALL SELECT 'Obtained from Warded Scourge Tablets in High-Risk.' AS `src`, '在高风险结界天灾石板中获得。' AS `dst`
    UNION ALL SELECT 'Obtained from Warded Volcanic Tablets in High-Risk.' AS `src`, '在高风险结界火山石板中获得。' AS `dst`
    UNION ALL SELECT 'Obtained from Warded Storm Tablets in High-Risk.' AS `src`, '在高风险结界风暴石板中获得。' AS `dst`
    UNION ALL SELECT 'Obtained from Warded Arctic Tablets in High-Risk.' AS `src`, '在高风险结界极地石板中获得。' AS `dst`
    UNION ALL SELECT 'Used by Expert Enchanters to shatter Warded Cultist Tablets into Midnight Dust in High-Risk.' AS `src`, '供专家级附魔师在高风险区域将结界教徒石板粉碎为午夜之尘。' AS `dst`
    UNION ALL SELECT 'Used by Expert Enchanters to shatter Warded Scourge Tablets into Animated Corpse Dust in High-Risk.' AS `src`, '供专家级附魔师在高风险区域将结界天灾石板粉碎为活化尸尘。' AS `dst`
    UNION ALL SELECT 'Used by Expert Enchanters to shatter Warded Volcanic Tablets into Volcanic Dust in High-Risk.' AS `src`, '供专家级附魔师在高风险区域将结界火山石板粉碎为火山之尘。' AS `dst`
    UNION ALL SELECT 'Used by Expert Enchanters to shatter Warded Storm Tablets into Storm Dust in High-Risk.' AS `src`, '供专家级附魔师在高风险区域将结界风暴石板粉碎为风暴之尘。' AS `dst`
    UNION ALL SELECT 'Used by Expert Enchanters to shatter Warded Arctic Tablets into Arctic Dust in High-Risk.' AS `src`, '供专家级附魔师在高风险区域将结界极地石板粉碎为极地之尘。' AS `dst`
    UNION ALL SELECT 'Old unusable scraps. Vendors buy these to make compostable sacks for their trash.' AS `src`, '无法再用的旧碎布。商人会收购它们来做可堆肥的垃圾袋。' AS `dst`
    UNION ALL SELECT 'Mined from Mining Nodes in High-Risk.' AS `src`, '在高风险区域的矿脉中开采获得。' AS `dst`
    UNION ALL SELECT 'Obtained by Disenchanting Bloodforged Items.' AS `src`, '通过分解血铸物品获得。' AS `dst`
    UNION ALL SELECT 'Obtained from Humanoids in High-Risk.' AS `src`, '在高风险区域的人形生物身上获得。' AS `dst`
    UNION ALL SELECT 'Not the Bird. The Verb.' AS `src`, '不是那只鸟，而是那个动词。' AS `dst`
    UNION ALL SELECT 'Obtained from Deadwind Pass Vultures in High-Risk' AS `src`, '在高风险区域的逆风小径秃鹫身上获得' AS `dst`
    UNION ALL SELECT 'Obtained from Plaguelands Beasts in High-Risk' AS `src`, '在高风险区域的瘟疫之地野兽身上获得' AS `dst`
    UNION ALL SELECT 'Obtained from Burning Steppes Beasts in High-Risk' AS `src`, '在高风险区域的燃烧平原野兽身上获得' AS `dst`
    UNION ALL SELECT 'Obtained from Winterspring Beasts in High-Risk' AS `src`, '在高风险区域的冬泉谷野兽身上获得' AS `dst`
    UNION ALL SELECT 'Obtained from Un\'Goro Beasts in High-Risk' AS `src`, '在高风险区域的安戈洛野兽身上获得' AS `dst`
    UNION ALL SELECT 'Obtained from Blasted Lands Beasts in High-Risk' AS `src`, '在高风险区域的诅咒之地野兽身上获得' AS `dst`
    UNION ALL SELECT 'Obtained from Azshara Beasts in High-Risk' AS `src`, '在高风险区域的艾萨拉野兽身上获得' AS `dst`
    UNION ALL SELECT 'Obtained from Silithus Beasts in High-Risk' AS `src`, '在高风险区域的希利苏斯野兽身上获得' AS `dst`
    UNION ALL SELECT 'Obtained from Felwood Beasts in High-Risk' AS `src`, '在高风险区域的费伍德野兽身上获得' AS `dst`
    UNION ALL SELECT 'Obtained from Gathering Herbs in High-Risk' AS `src`, '在高风险区域采集草药获得' AS `dst`
    UNION ALL SELECT 'A skilled miner can smelt these at a Void Forge.' AS `src`, '熟练的矿工可以在虚空熔炉处熔炼它。' AS `dst`
    UNION ALL SELECT 'A skilled miner can smelt these at a Scourge Forge.' AS `src`, '熟练的矿工可以在天灾熔炉处熔炼它。' AS `dst`
    UNION ALL SELECT 'A skilled miner can smelt these at a Volcanic Forge.' AS `src`, '熟练的矿工可以在火山熔炉处熔炼它。' AS `dst`
    UNION ALL SELECT 'A skilled miner can smelt these at a Corrupt Forge.' AS `src`, '熟练的矿工可以在腐化熔炉处熔炼它。' AS `dst`
    UNION ALL SELECT 'A skilled miner can smelt these at a Jurassic Forge.' AS `src`, '熟练的矿工可以在侏罗熔炉处熔炼它。' AS `dst`
    UNION ALL SELECT 'A skilled miner can smelt these at an Arctic Forge.' AS `src`, '熟练的矿工可以在极地熔炉处熔炼它。' AS `dst`
    UNION ALL SELECT 'A strange key bound to the life of its master\'s. It is already disintegrating.' AS `src`, '一把奇异的钥匙，与其主人的生命相连。它已在逐渐消散。' AS `dst`
    UNION ALL SELECT 'Seek out a Commendation Officer to exchange signets for recognition.' AS `src`, '寻找嘉奖官，用徽记换取认可。' AS `dst`
    UNION ALL SELECT 'The Spoils of an immense battle!' AS `src`, '一场旷世之战的战利品！' AS `dst`
    UNION ALL SELECT 'Treasures of Azeroth have a chance at containg gear from any released World Boss and will contain atleast Dungeon Quality gear!' AS `src`, '艾泽拉斯的宝藏有一定几率包含任意已开放世界首领的装备，并且至少包含地下城品质的装备！' AS `dst`
    UNION ALL SELECT 'Whenever you are struck by a Stun or Immobilize effect you will generate' AS `src`, '每当你受到昏迷或定身效果影响时，你将产生' AS `dst`
    UNION ALL SELECT 'The hunter, group and raid members within  yards take on the aspect of the wild, increasing Nature resistance by   Only one Aspect can be active at a time.' AS `src`, '使猎人以及范围内的小队和团队成员获得野性守护，自然抗性提高。一次只能激活一种守护。' AS `dst`
    UNION ALL SELECT 'Scares a beast, causing it to run in fear for up to   Damage caused may interrupt the effect.  Only one beast can be feared at a time.' AS `src`, '恐吓一只野兽，使其恐惧逃跑，最长持续一段时间。造成的伤害可能中断该效果。一次只能恐惧一只野兽。' AS `dst`
    UNION ALL SELECT 'You attempt to finish the wounded target off, firing a long range attack dealing  weapon damage plus  Kill Shot can only be used on enemies that have 20% or less health.' AS `src`, '你试图终结受伤的目标，发动一次远程攻击，造成相当于武器伤害加若干的伤害。杀戮射击只能对生命值不高于 20% 的敌人使用。' AS `dst`
    UNION ALL SELECT 'Place a frost trap that freezes the first enemy that approaches, preventing all action for up to   Any damage caused will break the ice.  Trap will exist for   Only one trap can be active at a time.' AS `src`, '放置一个冰冻陷阱，冻住第一个靠近的敌人，使其最多在一段时间内无法行动。造成的任何伤害都会打破冰层。陷阱存在一段时间。一次只能激活一个陷阱。' AS `dst`
    UNION ALL SELECT 'Finishing move that reduces the movement of the target by  for  and causes increased thrown weapon damage:\n   1 point  :  -  damage\n   2 points:  -  damage\n   3 points:  -  damage\n   4 points:  -  damage\n   5 points:  -  damage' AS `src`, '终结技，使目标的移动速度降低，持续一段时间，并提高投掷武器的伤害：\n   1 点： 伤害\n   2 点： 伤害\n   3 点： 伤害\n   4 点： 伤害\n   5 点： 伤害' AS `dst`
    UNION ALL SELECT 'Garrote the enemy, silencing them for  causing  damage over d, increased by attack power.  Must be stealthed and behind the target.  Awards  combo int:points' AS `src`, '勒住敌人，使其沉默，并在一段时间内造成伤害，伤害受攻击强度加成。必须在潜行状态下并从目标背后发动。奖励连击点数。' AS `dst`
    UNION ALL SELECT 'Power infuses all party and raid members, increasing their Stamina by  for' AS `src`, '力量灌注所有小队和团队成员，使其耐力提高，持续' AS `dst`
    UNION ALL SELECT 'Power infuses the target\'s party and raid members, increasing their Spirit by  for' AS `src`, '力量灌注目标的小队和团队成员，使其精神提高，持续' AS `dst`
    UNION ALL SELECT 'Shackles the target undead enemy for up to   The shackled unit is unable to move, attack or cast spells.  Any damage caused will release the target.  Only one target can be shackled at a time.' AS `src`, '束缚目标亡灵敌人，最多持续一段时间。被束缚的单位无法移动、攻击或施法。造成的任何伤害都会解除目标。一次只能束缚一个目标。' AS `dst`
    UNION ALL SELECT 'Heals a friendly target and the caster for   Low threat.' AS `src`, '为友方目标和施法者恢复生命值。威胁值较低。' AS `dst`
    UNION ALL SELECT 'Places a spell on the target that heals them for  the next time they take damage.  When the heal occurs, Prayer of Mending jumps to a party or raid member within  yards.  Jumps up to  times and lasts  after each jump.  This spell can only be placed on one target at a time.' AS `src`, '对目标施加一个法术，使其下次受到伤害时为其恢复生命值。治疗生效时，愈合祷言会跳跃到范围内的一名小队或团队成员身上。最多跳跃数次，每次跳跃后持续一段时间。该法术一次只能施加在一个目标上。' AS `dst`
    UNION ALL SELECT 'Power infuses the target\'s party and raid members, increasing their Shadow resistance by  for' AS `src`, '力量灌注目标的小队和团队成员，使其暗影抗性提高，持续' AS `dst`
    UNION ALL SELECT 'Increases Armor by   If an enemy strikes the caster, they may have their movement slowed by  and the time between their attacks increased by  for   Only one type of Armor spell can be active on the Mage at any time.  Lasts' AS `src`, '使护甲提高。若敌人击中施法者，其移动速度可能被降低，且攻击间隔延长，持续一段时间。法师一次只能激活一种护甲法术。持续' AS `dst`
    UNION ALL SELECT 'Curses the target with impending doom, causing  Shadow damage after   If the target yields experience or honor when it dies from this damage, a Doomguard will be summoned.  Cannot be cast on players.' AS `src`, '以末日诅咒目标，在一段时间后造成暗影伤害。若目标因此伤害死亡并能提供经验或荣誉，将召唤一个末日守卫。不能对玩家施放。' AS `dst`
    UNION ALL SELECT 'Imbeds a demon seed in the enemy target, causing  Shadow damage over   When the target takes  total damage or dies, the seed will inflict  Shadow damage to all enemies within  yards of the target.  Only one Corruption spell per Warlock can be active on any one target.' AS `src`, '在敌方目标体内植入恶魔之种，在一段时间内造成暗影伤害。当目标累计受到一定伤害或死亡时，种子会对目标范围内所有敌人造成暗影伤害。每名术士对同一目标只能激活一种腐蚀法术。' AS `dst`
    UNION ALL SELECT 'Enslaves the target demon, up to level 1, forcing it to do your bidding.  While enslaved, the time between the demon\'s attacks is increased by  and its casting speed is slowed by   Lasts up to' AS `src`, '奴役目标恶魔（最高 1 级），迫使其听命于你。被奴役期间，恶魔的攻击间隔延长，施法速度降低。最多持续' AS `dst`
    UNION ALL SELECT 'Creates a violent storm in the target area causing  Nature damage to enemies every  sec, reducing movement speed by %, ][ ]and increasing the time between attacks by   Lasts   Druid must channel to maintain the spell.' AS `src`, '在目标区域制造一场猛烈风暴，每数秒对敌人造成自然伤害，使移动速度降低 %，并使攻击间隔延长。持续一段时间。德鲁伊必须引导法术以维持效果。' AS `dst`
    UNION ALL SELECT 'Increases movement speed by  while in Cat Form for   Does not break prowling.' AS `src`, '在猎豹形态下使移动速度提高，持续一段时间。不会打破潜行。' AS `dst`
    UNION ALL SELECT 'Lacerates the enemy target, dealing  damage and making them bleed for  damage over  and causing a high amount of threat.  Damage increased by attack power.  This effect stacks up to  times on the same target.' AS `src`, '撕裂敌方目标，造成伤害并使其在一段时间内流血，同时产生大量威胁值。伤害受攻击强度加成。该效果在同一目标上最多叠加数次。' AS `dst`
    UNION ALL SELECT 'Shred the target, causing  damage plus  to the target.  Must be behind the target.  Awards  combo int:points' AS `src`, '撕碎目标，对其造成伤害并追加若干。必须在目标背后发动。奖励连击点数。' AS `dst`
    UNION ALL SELECT 'Heals the target for  over   When Lifebloom completes its duration or is dispelled, the target instantly heals themself for  and the Druid regains half the cost of the spell.  This effect can stack up to  times on the same target.' AS `src`, '在一段时间内为目标恢复生命值。当生命绽放持续时间结束或被驱散时，目标立即为自己恢复生命值，德鲁伊回复该法术一半的消耗。该效果在同一目标上最多叠加数次。' AS `dst`
    UNION ALL SELECT 'Charge an enemy, generate' AS `src`, '冲向敌人，产生' AS `dst`
    UNION ALL SELECT 'Increases maximum health of all party and raid members within  yards by   Lasts' AS `src`, '使范围内所有小队和团队成员的最大生命值提高。持续' AS `dst`
    UNION ALL SELECT 'A targeted party or raid member is protected from all physical attacks for d, but during that time they cannot attack or use physical abilities.  Players may only have one Hand on them per Paladin at any one time.  Once protected, the target cannot be targeted by Divine Shield, Divine Protection, or Hand of Protection again for   Cannot be targeted on players who have used Avenging Wrath within the last 87d.' AS `src`, '使一名小队或团队成员免受所有物理攻击，持续一段时间，但在此期间该目标无法攻击或使用物理技能。每名圣骑士一次只能让玩家身上保持一种圣手。受到保护后，该目标在一段时间内无法再次成为圣盾术、保护祝福或保护之手的目标。在最近使用过复仇之怒的玩家身上无法施放。' AS `dst`
    UNION ALL SELECT 'The caster lets out a psychic scream, causing  enemies within  yards to flee for   Damage caused may interrupt the effect.' AS `src`, '施法者发出心灵尖啸，使范围内一定数量的敌人逃跑，持续一段时间。造成的伤害可能中断该效果。' AS `dst`
    UNION ALL SELECT 'Increases your resistance to all magic by  and allows  of your mana regeneration to continue while casting.  Only one type of Armor spell can be active on the Mage at any time.  Lasts' AS `src`, '使你对所有魔法的抗性提高，并允许你的法力回复在施法时继续生效一部分。法师一次只能激活一种护甲法术。持续' AS `dst`
    UNION ALL SELECT 'Transforms the enemy into a sheep, forcing it to wander around for up to   While wandering, the sheep cannot attack or cast spells but will regenerate very quickly.  Any damage will transform the target back into its normal form.  Only one target can be polymorphed at a time.  Only works on Beasts, Humanoids and Critters.' AS `src`, '将敌人变成一只羊，迫使其游荡，最多持续一段时间。游荡期间，羊无法攻击或施法，但会快速恢复。受到任何伤害都会使目标恢复原形。一次只能变形一个目标。仅对野兽、人形生物和小动物有效。' AS `dst`
    UNION ALL SELECT 'Heals a friendly target for an amount equal to the Paladin\'s maximum health and restores  of their mana.  If used on self, the Paladin cannot be targeted by Divine Shield, Divine Protection, Hand of Protection, or self-targeted Lay on Hands again for   Also cannot be used on self within  of using Avenging Wrath.' AS `src`, '为一个友方目标恢复相当于圣骑士最大生命值的生命，并恢复其一部分法力。若对自己使用，圣骑士在一段时间内无法再次成为圣盾术、保护祝福、保护之手或自我施放的圣疗术的目标。在最近使用复仇之怒后的一段时间内也不能对自己使用。' AS `dst`
    UNION ALL SELECT 'Can be used to transform your Water Shield ability at a Transmogrifier.' AS `src`, '可在幻化师处用于改变你的水之护盾技能。' AS `dst`
    UNION ALL SELECT 'Allows you to ride any flying mount (should your skill permit it) at 310% speed.' AS `src`, '使你可以 310% 的速度骑乘任何飞行坐骑（前提是你的骑术允许）。' AS `dst`
    UNION ALL SELECT 'You are awarded 50 Mythic Coins for every Mythic+ completion. You can claim 1550 coins per week.\n\nThis cap increases by 1550 coins for all Heroes weekly.\n\nMythic Coins are counted separately from Mythic Caches.' AS `src`, '你每完成一次秘境+（Mythic+）可获得 50 枚神话硬币。每周最多可领取 1550 枚。\n\n所有英雄每周的上限增加 1550 枚。\n\n神话硬币与神话宝箱分开计算。' AS `dst`
    UNION ALL SELECT 'Partial instructions for a powerful enchantment.' AS `src`, '一份强大附魔的部分说明。' AS `dst`
    UNION ALL SELECT 'The words of prophecy are rapidly fading.' AS `src`, '预言之语正迅速消退。' AS `dst`
    UNION ALL SELECT 'The bloodline must be restored.' AS `src`, '血脉必须恢复。' AS `dst`
    UNION ALL SELECT '|cFF2EF50EThis item is not useable near main callboard locations.|r' AS `src`, '|cFF2EF50E该物品无法在主召唤板附近使用。|r' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Fire Blast, Scorch, Arcane Blast and Cone of Cold spells by .' AS `src`, '使你的火焰冲击、灼烧、奥术冲击和冰锥术的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Flamestrike, Pyroblast, Blast Wave, Dragon\'s Breath, Living Bomb, Blizzard and Arcane Explosion spells by .' AS `src`, '使你的烈焰风暴、炎爆术、冲击波、龙息术、活体炸弹、暴风雪和魔爆术的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Gives your damaging spells a  chance to cause the next Fire Blast you cast to stun the target for 55d.' AS `src`, '使你的伤害性法术有一定几率使你施放的下一个火焰冲击眩晕目标，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Increases your chance to critically hit with Scorch, Fireball and Frostfire Bolt by an additional  and your damaging Scorch spells have a  chance to cause your target to be vulnerable to spell damage, increasing spell critical strike chance against that target by  and lasts 59d.' AS `src`, '使你的灼烧、火球术和霜火之箭的暴击几率额外提高，并使你的伤害性灼烧法术有一定几率使目标易受法术伤害，使对该目标的法术暴击几率提高，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Your spell criticals will refund  of their base mana cost.' AS `src`, '你的法术暴击将返还其基础法力消耗的一部分。' AS `dst`
    UNION ALL SELECT 'Increases all spell damage caused by  and all spell damage taken by .' AS `src`, '使你造成的所有法术伤害提高，并使你受到的所有法术伤害提高。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Fire spells by .' AS `src`, '使你的火焰法术的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases chance to critically hit by  and allows  of your mana regeneration to continue while casting.' AS `src`, '使暴击几率提高，并允许你的法力回复在施法时继续生效一部分。' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Fireball, Frostfire Bolt and Pyroblast spells by an amount equal to  of your spell power.  In addition, each time your Ignite talent causes damage, you have a  chance to regain  of your base mana.' AS `src`, '使你的火球术、霜火之箭和炎爆术的伤害提高，数值相当于你的法术强度的一部分。此外，每次你的点燃天赋造成伤害时，你有一定几率回复相当于基础法力一部分的法力。' AS `dst`
    UNION ALL SELECT 'Any time you score 2 non-periodic spell criticals in a row using Fireball, Fire Blast, Scorch, Living Bomb, or Frostfire Bolt, you have a  chance the next Pyroblast spell cast within  will be instant cast.' AS `src`, '当你使用火球术、火焰冲击、灼烧、活体炸弹或霜火之箭连续造成 2 次非周期性法术暴击时，你有一定几率使接下来一定时间内施放的炎爆术变为瞬发。' AS `dst`
    UNION ALL SELECT 'Gives your Chill effects a  chance to freeze the target for 94d.' AS `src`, '使你的冰霜减速效果有一定几率冻结目标，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Frost Nova, Cone of Cold, Ice Block and Icy Veins spells by .' AS `src`, '使你的冰霜新星、冰锥术、寒冰屏障和冰冷血脉法术的冷却时间缩短。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your Frost spells by .' AS `src`, '使你的冰霜法术的暴击伤害加成提高。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost and increases your chance to hit with spells by .' AS `src`, '使你的法术法力消耗降低，并提高你的法术命中几率。' AS `dst`
    UNION ALL SELECT 'Increases the duration of your Chill effects by 00' AS `src`, '使你的冰霜减速效果的持续时间延长。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Frost spells by .' AS `src`, '使你的冰霜法术造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of all spells by  and reduces the threat caused by your Frost spells by .' AS `src`, '使所有法术的法力消耗降低，并使你的冰霜法术产生的威胁值降低。' AS `dst`
    UNION ALL SELECT 'Increases the damage dealt by your Cone of Cold spell by .' AS `src`, '使你的冰锥术造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Reduces the damage taken from all spells by .' AS `src`, '使你所受到的所有法术伤害降低。' AS `dst`
    UNION ALL SELECT 'Increases your chance to critically hit with Frostbolt by an additional  and gives your Frost damage spells a  chance to apply the Winter\'s Chill effect, which increases the chance spells will critically hit the target by  for   Stacks up to  times.' AS `src`, '使你的寒冰箭暴击几率额外提高，并使你的冰霜伤害法术有一定几率施加“严冬之寒”效果，使法术对该目标的暴击几率提高，持续一段时间。最多叠加数次。' AS `dst`
    UNION ALL SELECT 'Your Frost damage spells with chilling effects have a  chance to cause your next Fireball or Frostfire Bolt spell to be instant cast and cost no mana.' AS `src`, '你的带有减速效果的冰霜伤害法术有一定几率使你的下一个火球术或霜火之箭变为瞬发且不消耗法力。' AS `dst`
    UNION ALL SELECT 'Increases the duration of your Summon Water Elemental spell by 00' AS `src`, '使你的召唤水元素法术的持续时间延长。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit and reduces the mana cost of your Arcane spells by .' AS `src`, '提高你的命中几率，并使你的奥术法术的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Increases your armor by an amount equal to  of your Intellect.' AS `src`, '使你的护甲提高，数值相当于你的智力的一部分。' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Arcane Explosion, Arcane Blast, Blast Wave, Fire Blast, Scorch, Fireball, Ice Lance and Cone of Cold spells by an additional .' AS `src`, '使你的魔爆术、奥术冲击、冲击波、火焰冲击、灼烧、火球术、冰枪术和冰锥术的伤害额外提高。' AS `dst`
    UNION ALL SELECT 'Your Frostbolt, Fireball, Frostfire Bolt, Pyroblast, Arcane Missiles, Arcane Blast, and Arcane Barrage abilities deal  more damage to snared or slowed targets.' AS `src`, '你的寒冰箭、火球术、霜火之箭、炎爆术、奥术飞弹、奥术冲击和奥术弹幕对处于定身或减速状态的目标造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Reduces all damage taken by  and reduces the fade time of your Invisibility spell by  sec.' AS `src`, '使你所受到的所有伤害降低，并使你的隐身术的渐隐时间缩短 秒。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your spells and your critical strike chance by .' AS `src`, '使你的法术造成的伤害和暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Arcane Missiles spell by an amount equal to' AS `src`, '使你的奥术飞弹法术的伤害提高，数值相当于' AS `dst`
    UNION ALL SELECT 'When your Mana Shield, Frost Ward, Fire Ward, or Ice Barrier absorbs damage your spell damage is increased by  of the amount absorbed for 13d.' AS `src`, '当你的法力护盾、寒冰防护、火焰防护或冰霜屏障吸收伤害时，你的法术伤害提高，数值相当于吸收量的一部分，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Increases your spell haste by .' AS `src`, '使你的法术急速提高。' AS `dst`
    UNION ALL SELECT 'Reduces the cost of your Heroic Strike ability by' AS `src`, '使你的英勇打击技能消耗降低' AS `dst`
    UNION ALL SELECT 'Reduces the duration of all Stun and Charm effects used against you by .' AS `src`, '使所有对你施加的昏迷和魅惑效果的持续时间缩短。' AS `dst`
    UNION ALL SELECT 'Whenever your Rend ability causes damage, you have a  chance of allowing the use of your Overpower ability for   1 charge.  This effect will not occur more than once every 6 sec.' AS `src`, '每当你的撕裂技能造成伤害时，你有一定几率使你可以在接下来的时间内使用压制技能，1 次充能。该效果每 6 秒最多触发一次。' AS `dst`
    UNION ALL SELECT 'Gives your Hamstring ability a  chance to immobilize the target for 94d.' AS `src`, '使你的断筋技能有一定几率定身目标，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Increases the damage caused by your Mortal Strike ability by  and reduces the cooldown by 00' AS `src`, '使你的致死打击造成的伤害提高，并使冷却时间缩短。' AS `dst`
    UNION ALL SELECT 'Your melee hits have a  chance of allowing the use of Execute regardless of the target\'s health state.  In addition, you keep at least  rage after using Execute.' AS `src`, '你的近战命中有一定几率使你无视目标生命值状态使用斩杀。此外，使用斩杀后你至少保留一定怒气。' AS `dst`
    UNION ALL SELECT 'Reduces the cost of your Thunder Clap ability by' AS `src`, '使你的雷霆一击技能的消耗降低' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Heroic Strike, Thunder Clap and Cleave abilities by .' AS `src`, '使你的英勇打击、雷霆一击和顺劈斩的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Reduces the rage cost of your Sunder Armor and Devastate abilities by' AS `src`, '使你的破甲和毁灭打击技能的怒气消耗降低' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Shield Wall, Retaliation and Recklessness abilities by 00' AS `src`, '使你的盾墙、反击风暴和鲁莽技能的冷却时间缩短。' AS `dst`
    UNION ALL SELECT 'Reduces the rage cost of your offensive abilities by' AS `src`, '使你的进攻技能的怒气消耗降低' AS `dst`
    UNION ALL SELECT 'Increases your total Strength by %, Stamina by  and your Expertise by' AS `src`, '使你的总力量提高 %、耐力提高，并使你的精准提高' AS `dst`
    UNION ALL SELECT 'Your successful blocks have a  chance to block double the normal amount and increases your chance to critically hit with your Shield Slam ability by an additional .' AS `src`, '你成功格挡时有一定几率格挡双倍伤害，并使你的盾牌猛击的暴击几率额外提高。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Devastate ability by  and when your Devastate or Revenge ability deals damage it has a  chance of refreshing the cooldown of your Shield Slam ability and reducing its cost by  for 27d.' AS `src`, '使你的毁灭打击的暴击几率提高；当你的毁灭打击或复仇造成伤害时，有一定几率刷新你的盾牌猛击的冷却时间并使其消耗降低，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Increases the bonus damage done by your Cleave ability by .' AS `src`, '使你的顺劈斩技能的额外伤害提高。' AS `dst`
    UNION ALL SELECT 'Regenerates  of your total Health over  after being the victim of a critical strike.' AS `src`, '在受到暴击后，在一段时间内回复你总生命值的一部分。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit with melee weapons by .' AS `src`, '使你的近战武器命中几率提高。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Bloodrage, Berserker Rage, Recklessness and Death Wish abilities by .' AS `src`, '使你的血性狂暴、狂暴之怒、鲁莽和死亡之愿技能的冷却时间缩短。' AS `dst`
    UNION ALL SELECT 'Your Heroic Strike, Bloodthirst, and Whirlwind hits have a  chance of making your next Slam instant for 16d.' AS `src`, '你的英勇打击、嗜血和旋风斩命中时有一定几率使你的下一个猛击瞬发，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Increases the effect duration of your Gouge ability by 00' AS `src`, '使你的凿击技能的效果持续时间延长。' AS `dst`
    UNION ALL SELECT 'Increases your Dodge chance by  and gives you  melee haste.' AS `src`, '使你的躲闪几率提高，并为你提供近战急速。' AS `dst`
    UNION ALL SELECT 'Increases your Energy regeneration rate by .' AS `src`, '使你的能量回复速度提高。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Eviscerate ability by .' AS `src`, '使你的剔骨技能造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Gives your melee finishing moves a  chance to add a combo point to your target.' AS `src`, '使你的近战终结技有一定几率为你的目标增加一个连击点数。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Backstab ability by %, and the critical strike chance of your Mutilate ability by .' AS `src`, '使你的背刺技能的暴击几率提高 %，并使你的毁伤技能的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases the damage dealt by your poisons and Envenom ability by  and gives your damage over time poisons an additional  chance to resist dispel effects.' AS `src`, '使你的毒药和毒伤技能造成的伤害提高，并使你的持续伤害毒药额外获得抵抗驱散效果的几率。' AS `dst`
    UNION ALL SELECT 'While affected by your Kidney Shot ability, the target receives an additional  damage from all sources.' AS `src`, '受到你的肾击技能影响时，目标受到的所有来源伤害额外提高。' AS `dst`
    UNION ALL SELECT 'Your melee critical strikes have a  chance to give you  energy.' AS `src`, '你的近战暴击有一定几率为你提供能量。' AS `dst`
    UNION ALL SELECT 'Offensive ability damage increased by .' AS `src`, '进攻技能伤害提高。' AS `dst`
    UNION ALL SELECT 'Increases the critical hit chance of all attacks made against any target you have poisoned by %, reduces the duration of all Poison effects applied to you by %, and gives Envenom a  chance not to consume Deadly Poison.' AS `src`, '使所有针对你已施加毒药的目标的攻击暴击几率提高 %，使施加于你的所有毒药效果持续时间缩短 %，并使毒伤有一定几率不消耗致命毒药。' AS `dst`
    UNION ALL SELECT 'Increases your speed while stealthed by  and reduces the cooldown of your Stealth ability by 00' AS `src`, '使你在潜行状态下的移动速度提高，并使你的潜行技能的冷却时间缩短。' AS `dst`
    UNION ALL SELECT 'Causes your attacks to ignore up to  of your target\'s Armor and increases the damage dealt by your Rupture ability by .' AS `src`, '使你的攻击可无视目标最多一部分护甲，并使你的割裂技能造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Gives you a  chance to add a combo point to your target after dodging their attack or fully resisting one of their spells.  This cannot happen more than once per second.' AS `src`, '在你躲闪敌人的攻击或完全抵抗其法术后，你有一定几率为你的目标增加一个连击点数。该效果每秒最多触发一次。' AS `dst`
    UNION ALL SELECT 'Gives you a  chance to add an additional combo point to your target when using your Ambush, Garrote, or Cheap Shot ability.' AS `src`, '当你使用伏击、锁喉或偷袭技能时，你有一定几率为你的目标额外增加一个连击点数。' AS `dst`
    UNION ALL SELECT 'Attacks made while stealthed and for 6 seconds after breaking stealth cause an additional  damage.' AS `src`, '在潜行状态下以及脱离潜行后 6 秒内的攻击会造成额外伤害。' AS `dst`
    UNION ALL SELECT 'Reduces the damage taken by area of effect attacks by .' AS `src`, '使你受到的群体攻击伤害降低。' AS `dst`
    UNION ALL SELECT 'You have a  chance that an attack which would otherwise kill you will instead reduce you to 10% of your maximum health. In addition, all damage taken will be reduced by up to 90% for  (modified by resilience).  This effect cannot occur more than once per minute.' AS `src`, '你有一定几率使原本会杀死你的攻击改为将你降至最大生命值的 10%。此外，在一段时间内你受到的所有伤害最多降低 90%（受韧性影响）。该效果每分钟最多触发一次。' AS `dst`
    UNION ALL SELECT 'When anyone in your group critically hits with a damage or healing spell or ability, you have a  chance to gain a combo point on your current target.  This effect cannot occur more than once every second.' AS `src`, '当你队伍中任何人用伤害或治疗法术、技能造成暴击时，你有一定几率在当前目标身上获得一个连击点数。该效果每秒最多触发一次。' AS `dst`
    UNION ALL SELECT 'Reduces the threat generated by your Holy and Discipline spells by  and reduces the chance your helpful spells and damage over time effects will be dispelled by .' AS `src`, '使你的神圣和戒律法术产生的威胁值降低，并使你的有益法术和持续伤害效果被驱散的几率降低。' AS `dst`
    UNION ALL SELECT 'Increases the effect of your Inner Fire spell by %, and increases the total number of charges by' AS `src`, '使你的心灵之火法术的效果提高 %，并使总充能次数增加' AS `dst`
    UNION ALL SELECT 'Increases the damage absorbed by your Power Word: Shield by .' AS `src`, '使你的真言术：盾吸收的伤害提高。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your Dispel Magic, Cure Disease, Abolish Disease and Mass Dispel spells by .' AS `src`, '使你的驱散魔法、驱除疾病、废除疾病和群体驱散法术的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your instant cast spells by .' AS `src`, '使你的瞬发法术的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Increases your total Spirit by  and increases your spell haste by .' AS `src`, '使你的总精神提高，并使你的法术急速提高。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your Flash Heal by %, and increases the critical effect chance of your Flash Heal by  on friendly targets at or below 50% health.' AS `src`, '使你的快速治疗的法力消耗降低 %，并使你对生命值不高于 50% 的友方目标使用快速治疗时的暴击效果几率提高。' AS `dst`
    UNION ALL SELECT 'Critical heals create a protective shield on the target, absorbing  of the amount healed. Lasts 53d.' AS `src`, '暴击治疗会在目标身上生成一个保护护盾，吸收相当于治疗量一部分的伤害。持续一段时间。' AS `dst`
    UNION ALL SELECT 'Increases the amount healed by your Renew spell by .' AS `src`, '拉希奥的“天堂之冠”可镶嵌于多彩宝石插槽。' AS `dst`
    UNION ALL SELECT 'After being struck by a melee or ranged critical hit, Blessed Recovery heals you for  of the damage taken over   Additional critical hits taken during the effect increase the healing received.' AS `src`, '血色大领主之刃' AS `dst`
    UNION ALL SELECT 'Reduces your target\'s physical damage taken by  for  after getting a critical effect from your Flash Heal, Heal, Greater Heal, Binding Heal, Penance, Prayer of Mending, Prayer of Healing, or Circle of Healing spell.' AS `src`, '你有没有想过用一整条面包敲别人的脑袋？机会来了。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your Lesser Heal, Heal, Greater Heal, Divine Hymn and Penance spells by .' AS `src`, '教你如何变成这种生物。' AS `dst`
    UNION ALL SELECT 'Your mana regeneration from spirit is increased by  for  after you critically heal with Flash Heal, Greater Heal, Binding Heal or Empowered Renew.' AS `src`, '解锁切换到专精 VII 的机会，并解锁一个额外的神秘附魔专精。仅对使用它的角色有效。' AS `dst`
    UNION ALL SELECT 'Increases the effectiveness of your healing spells by %, and critical hits made against you have a  chance to prevent you from being critically hit again for 43d.' AS `src`, '这把武器已被注入奇异能量。' AS `dst`
    UNION ALL SELECT 'Your Renew spell gains an additional  of your bonus healing effects, and your Renew will instantly heal the target for  of the total periodic effect.' AS `src`, '回到丹尼尔身边！' AS `dst`
    UNION ALL SELECT 'Increases healing by  on friendly targets at or below 50% health.' AS `src`, '一套用于幻化的装饰性武器。你可以在幻化收藏中查看它们的外观。' AS `dst`
    UNION ALL SELECT 'Gives you a  chance to gain a  bonus to your Spirit after killing a target that yields experience or honor.  For the duration, your mana will regenerate at a  rate while casting.  Lasts 71d.' AS `src`, '召唤你的巨鹰，让它警觉的目光为你指明道路。身着如黎明般闪烁的羽毛，这位忠诚的伙伴默默注视着你的冒险，象征着忠诚与力量的精神。' AS `dst`
    UNION ALL SELECT 'Reduces the threat generated by your Shadow spells by %, and you receive  of your base mana when your Shadow Word: Pain or Vampiric Touch spells are dispelled.' AS `src`, '因为每只鸡都值得坐上前排观看冒险。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit with your Shadow spells by %, and reduces the mana cost of your Shadow spells by .' AS `src`, '激活霜球。' AS `dst`
    UNION ALL SELECT 'Your Shadow damage spells have a  chance to increase the Shadow damage you deal by  for   Stacks up to  times.' AS `src`, '一套用于幻化的装饰性武器。你可以在幻化收藏中查看装饰套装的样貌。包含一把弓和 1 个箭矢化身。这些可以从其他玩家、拍卖行或 Ascension 商店获得。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your Mind Blast, Mind Control, Mind Flay and Mind Sear spells by .' AS `src`, '唤出你的渡鸦，让它栖息在你的肩头，永远警觉，听命于你。' AS `dst`
    UNION ALL SELECT 'Increases the periodic damage done by your Devouring Plague by %, and when you cast Devouring Plague you instantly deal damage equal to  of its total periodic effect.' AS `src`, '教你如何召唤这个可爱得难以言喻的伙伴。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Your Shadow Word: Pain, Mind Flay and Vampiric Touch spells also increase the chance for harmful spells to hit by  lasting d, and increases the benefit from spell power gained by your Mind Blast, Mind Flay and Mind Sear spells by .' AS `src`, '一件古老熊怪遗物的一部分。缺少其他部件，它不过是个无用的稀奇玩意儿……' AS `dst`
    UNION ALL SELECT 'Your Mind Flay has a  chance to refresh the duration of your Shadow Word: Pain on the target, and reduces the damage you take from your own Shadow Word: Death by .' AS `src`, '教你如何召唤这个伙伴。该伙伴是稀有专属物品。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Fire Totems and Fire Nova by %, and damage done by your Lava Burst spell by .' AS `src`, '穿上龙尾装束。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Shock spells and Wind Shear by 00' AS `src`, '穿上龙身装束。' AS `dst`
    UNION ALL SELECT 'Reduces the pushback suffered from damaging attacks while casting Lightning Bolt, Chain Lightning, Lava Burst and Hex spells by .' AS `src`, '穿上龙头装束。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit with Fire, Frost and Nature spells by  and reduces the threat caused by Fire, Frost and Nature spells by .' AS `src`, '教你如何召唤这个地精发条怀表。显示在背上。' AS `dst`
    UNION ALL SELECT 'Gives your Lightning Bolt and Chain Lightning spells a  chance to cast a second, similar spell on the same target at no additional cost that causes half damage and no threat.' AS `src`, '教你如何召唤这把装饰弓。显示在背上。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your Lava Burst spell by an additional %, and when your Flame Shock is dispelled your spell casting speed is increased by  for 94d.' AS `src`, '改写现实，成为 A.B.Y.S.S. 的模拟实验对象。' AS `dst`
    UNION ALL SELECT 'Reduces the threat generated by your healing spells by  and reduces the chance your helpful spells and damage over time effects will be dispelled by .' AS `src`, '美味。' AS `dst`
    UNION ALL SELECT 'You have a  chance to instantly gain mana as if you consumed a Water Shield Orb when you gain a critical effect from your Healing Wave or Riptide spells, a  chance when you gain a critical effect from your Lesser Healing Wave spell, and a  chance when you gain a critical effect from your Chain Heal spell.' AS `src`, '很久以前，这些钥匙用来开启某样东西……如今，它们几乎毫无用处……' AS `dst`
    UNION ALL SELECT 'Reduces the pushback suffered from damaging attacks while casting any Shaman healing spell by .' AS `src`, '预购支持者宝箱已更新。因为你在此次更新前预购，所以你同时获得原版礼包与新版礼包！感谢你的支持。' AS `dst`
    UNION ALL SELECT 'Reduces your target\'s physical damage taken by  for  after getting a critical effect from one of your healing spells.' AS `src`, '在高风险模式下死亡不会掉落。\n\n可开启高风险希利苏斯与冬泉谷中发现的恶魔束缚隐秘宝箱。开启宝箱会对你施加“不退”减益，阻止逃脱法术将你带离险境。' AS `dst`
    UNION ALL SELECT 'Increases the effect of your Mana Spring Totem by %, and increases the amount healed by your Healing Stream Totem by .' AS `src`, '达到第 9 级声望的嘉奖。' AS `dst`
    UNION ALL SELECT 'Increases the amount healed by your Healing Wave spell by .' AS `src`, '对目标施加猎人印记，使所有攻击者对该目标的远程攻击强度提高。此外，无论目标潜行还是隐形，猎人始终能看见该目标。目标也会出现在小地图上。持续' AS `dst`
    UNION ALL SELECT 'Reduces the duration of any Silence or Interrupt effects used against the Shaman by  This effect does not stack with other similar effects.' AS `src`, '向敌方目标发射爆炸性弹药，造成 点火焰伤害。弹药每秒再次炸击目标，额外造成' AS `dst`
    UNION ALL SELECT 'Increases your healing by an amount equal to  of your Intellect.' AS `src`, '攻击敌人，造成 点伤害。' AS `dst`
    UNION ALL SELECT 'When you critically heal with your Healing Wave, Lesser Healing Wave or Riptide you summon an Ancestral spirit to aid you, instantly healing the lowest percentage health friendly party or raid target within 40 yards for  of the amount healed.' AS `src`, '允许将单手武器和副手武器装备于副手。' AS `dst`
    UNION ALL SELECT 'Increases the effect of your Strength of Earth and Flametongue Totems by .' AS `src`, '终结技：消耗目标身上的致命药膏层数，并造成瞬发的毒性伤害。在毒伤攻击之后，你的致命药膏施加速度额外提高，瞬发药膏施加速度提高，持续 1 秒，每点连击点数额外增加 1 秒。每点连击点数消耗一层：\n  1 层：伤害\n  2 层：伤害\n  3 层：伤害\n  4 层：伤害\n  5 层：伤害' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Lightning Shield orbs by %, increases the amount of mana gained from your Water Shield orbs by  and increases the amount of healing done by your Earth Shield orbs by .' AS `src`, '一次瞬发的打击，造成 点武器伤害（若装备匕首则为），使目标流血，使目标受到的所有物理伤害最多提高。持续 次充能或。获得 1 点连击点数。' AS `dst`
    UNION ALL SELECT 'Increases the damage caused by your Windfury Weapon effect by   increases the spell damage on your Flametongue Weapon by  and increases the bonus healing on your Earthliving Weapon by .' AS `src`, '一句黑暗的束缚之言，对目标造成 点暗影伤害。若目标未被“暗言术：灭”击杀，施法者将承受等同于对目标造成的伤害。' AS `dst`
    UNION ALL SELECT 'Increases your chance to dodge by an additional %, and reduces the duration of all Disarm effects used against you by  This does not stack with other Disarm duration reducing effects.' AS `src`, '使 码内所有敌人的血液沸腾，造成 点暗影伤害。对感染了血疫或冰霜疫病的目标造成额外伤害。' AS `dst`
    UNION ALL SELECT 'Increases your Attack Power by  of your Intellect.' AS `src`, '一次凶猛的瞬发攻击，造成 点武器伤害外加，总伤害因目标身上的每个疾病而提高，但会消耗疾病。' AS `dst`
    UNION ALL SELECT 'Increases your expertise by 1, and increases all party and raid members\' attack power by  while within  yards of the Shaman.' AS `src`, '腐蚀死亡骑士指定的地面，使区域内的目标每秒受到 点暗影伤害，持续一段时间。该技能产生大量威胁。' AS `dst`
    UNION ALL SELECT 'Increases the damage you deal with all weapons by .' AS `src`, '为萨满的武器附魔，使其每秒伤害提高。持续 30 分钟。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit while dual wielding by an additional .' AS `src`, '以能量冲击目标，造成 点奥术伤害。每次施放奥术冲击，所有奥术法术的伤害提高，奥术冲击的法力消耗提高。效果最多叠加 次，持续一段时间，或直到施放除奥术冲击外的任何奥术伤害法术。' AS `dst`
    UNION ALL SELECT 'You have a  chance to hit your target with a Lightning Shield orb charge when you deal damage with melee attacks and abilities, and your Lightning Shield gains  additional charges.' AS `src`, '为所有队伍和团队成员注入光辉，使其智力提高，持续' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your instant cast Shaman spells by  and increases your spell power by an amount equal to  of your attack power.' AS `src`, '诅咒目标，使其奥术、火焰、冰霜、自然和暗影抗性降低，并使受到的法术伤害提高。同一目标身上只能有一个术士诅咒生效。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Swipe ability by  and reduces the chance enemies have to detect you while Prowling.' AS `src`, '以邪能环绕施法者，使法术强度提高，并额外提高等同于你精神一部分的法术强度。此外，你每 5 秒回复最大生命值的一部分。术士身上同时只能有一个护甲法术生效。持续' AS `dst`
    UNION ALL SELECT 'Increases your Armor contribution from cloth and leather items by .' AS `src`, '吸收 点暗影伤害。持续' AS `dst`
    UNION ALL SELECT 'Increases your critical strike chance while in Bear, Dire Bear or Cat Form by .' AS `src`, '点燃施法者周围的区域，对自身造成 点火焰伤害' AS `dst`
    UNION ALL SELECT 'Increases your melee attack power in Cat, Bear and Dire Bear Forms by  of your level and  of any attack power on your equipped weapon.  In addition, your finishing moves have a  chance per combo point to make your next Nature spell with a base casting time less than 10 sec. become an instant cast spell.' AS `src`, '对你的目标造成 点火焰伤害，并额外造成' AS `dst`
    UNION ALL SELECT 'Increases your dodge while in Bear Form or Dire Bear Form by %, and you regenerate  rage every time you dodge while in Bear Form or Dire Bear Form.' AS `src`, '畏缩，不造成伤害，但大幅降低你的威胁值，使敌人更不愿攻击你。' AS `dst`
    UNION ALL SELECT 'Increases all attributes by %, reduces the chance you\'ll be critically hit by melee attacks by %, and increases your armor contribution from cloth and leather items in Bear Form and Dire Bear Form by .' AS `src`, '扑击，眩晕目标一段时间，并在一定时间内造成 点伤害。必须在潜行状态下使用。获得 点连击点数' AS `dst`
    UNION ALL SELECT 'Reduces the duration of fear effects by %, reduces all damage taken while stunned by  while in Cat Form.' AS `src`, '为所有队伍和团队成员施予野性印记，使护甲提高 1 点、所有属性提高，所有抗性提高，持续' AS `dst`
    UNION ALL SELECT 'Increases your attack power by  and reduces the damage you take by %, while in Bear or Dire Bear Form.' AS `src`, '向目标发射一束神圣之光，对敌人造成 点神圣伤害，或立即为盟友恢复 点生命值，并每 秒恢复一次，持续一段时间。' AS `dst`
    UNION ALL SELECT 'While in Cat Form increases your damage from melee critical strikes by  and reduces the damage taken from area of effect attacks by .' AS `src`, '为团队或队伍中与目标同一职业的所有成员施予强效智慧祝福，每 5 秒恢复 点法力，持续一段时间。每名圣骑士同一时间只能给玩家施加一个祝福。' AS `dst`
    UNION ALL SELECT 'While using your Enrage ability in Bear Form or Dire Bear Form, your damage is increased by %, and your Tiger\'s Fury ability also instantly restores  energy.  In addition, the mana cost of Bear Form, Cat Form, and Dire Bear Form is reduced by .' AS `src`, '向四面八方释放神圣能量弹，造成 至 点神圣伤害，并眩晕 码内所有亡灵和恶魔目标，持续' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Mangle (Bear) ability by  sec., and reduces the energy cost of your Mangle (Cat) ability by' AS `src`, '为 码内所有队伍和团队成员提供额外 点火焰抗性。每名圣骑士同一时间只能给玩家施加一个光环。' AS `dst`
    UNION ALL SELECT 'Reduces the pushback suffered from damaging attacks  while casting Healing Touch, Wrath, Entangling Roots, Cyclone, Nourish, Regrowth and Tranquility by .' AS `src`, '为 码内所有队伍和团队成员提供额外 点冰霜抗性。每名圣骑士同一时间只能给玩家施加一个光环。' AS `dst`
    UNION ALL SELECT 'Reduces the threat generated by your restoration spells by  and reduces the chance your helpful spells, Moonfire, and Insect Swarm will be dispelled by .' AS `src`, '为 码内所有队伍和团队成员提供额外 点暗影抗性。每名圣骑士同一时间只能给玩家施加一个光环。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of all shapeshifting by .' AS `src`, '为团队或队伍中与目标同一职业的所有成员施予强效力量祝福，使攻击强度提高，持续一段时间。每名圣骑士同一时间只能给玩家施加一个祝福。' AS `dst`
    UNION ALL SELECT 'Allows  of your Mana regeneration to continue while casting and causes your Enrage ability to instantly generate' AS `src`, '施加于目标武器时，使直接法术伤害提高 1%，且法术暴击等级提高。持续 1 小时。' AS `dst`
    UNION ALL SELECT 'Increases the effect of your Rejuvenation spell by .' AS `src`, '它似乎散发着力量，也许有人会想要它。' AS `dst`
    UNION ALL SELECT 'When you critically heal your target with Swiftmend, Regrowth, Nourish or Healing Touch spell you have a  chance to plant a Living Seed on the target for  of the amount healed. The Living Seed will bloom when the target is next attacked. Lasts 04d.' AS `src`, '制造 条面包' AS `dst`
    UNION ALL SELECT 'Your Rejuvenation and Wild Growth spells have a  chance to restore  Energy,' AS `src`, '佯攻，不造成伤害，但大幅降低你的威胁值，使敌人更不愿攻击你。' AS `dst`
    UNION ALL SELECT 'Increases your armor contribution from items while in Tree of Life Form by %, and increases your healing spell power by  of your spirit while in Tree of Life Form.' AS `src`, '该物品不能与其他挑战同时使用。你不能在开始挑战后使用它，也不能先使用它再开始挑战。' AS `dst`
    UNION ALL SELECT 'Reduces the Mana cost of your Moonfire, Starfire, Starfall, Wrath, Healing Touch, Nourish, Regrowth and Rejuvenation spells by .' AS `src`, '一次强力的攻击，使近战伤害提高，并产生大量威胁。对眩晕目标造成额外伤害。' AS `dst`
    UNION ALL SELECT 'Damage from your Thorns and Entangling Roots increased by  and damage done by your Treants increased by  In addition, damage from your Treants and attacks done to you while you have Barkskin active have a  chance to daze the target for 3 sec.' AS `src`, '创造一个圣光之井。友方玩家可点击圣光之井，在一段时间内恢复 点生命值。若你受到等同于总生命值 30% 的攻击伤害，效果将被取消。圣光之井持续一段时间或 10 次充能。' AS `dst`
    UNION ALL SELECT 'All non-periodic spell criticals have a  chance to grace you with a blessing of nature, increasing your spell casting speed by  for 86d.' AS `src`, '向敌人发射一道混乱火焰，造成 点火焰伤害。混乱之箭无法被抵抗，并可穿透一切吸收效果。' AS `dst`
    UNION ALL SELECT 'Reduces the pushback suffered from damaging attacks while casting Starfire, Hibernate and Hurricane by  and increases your total spell haste by .' AS `src`, '你召唤一道闪电，为自己注入能量并伤害 码内的敌人。为你恢复 点法力，并对附近所有敌人造成 点自然伤害，将其击退 20 码。该法术可在被眩晕时使用。' AS `dst`
    UNION ALL SELECT 'Increases your damage done by your Wrath spell to targets afflicted by your Insect Swarm by %, and increases the critical strike chance of your Starfire spell by  on targets afflicted by your Moonfire spell.' AS `src`, '由炼金师在血色工作台上培育以制作材料。\n\n可从高风险草药区域获得。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Starfire, Moonfire and Wrath spells by .' AS `src`, '由炼金师在血色工作台上培育以制作材料。' AS `dst`
    UNION ALL SELECT 'Your Moonkin Aura also causes affected targets to gain  haste and you to gain  of your spirit as additional spell damage.' AS `src`, '由矿工在血色工作台上熔炼以制作金属。\n\n可从高风险矿石区域获得。' AS `dst`
    UNION ALL SELECT 'Your Faerie Fire spell also increases the chance the target will be hit by spell attacks by %, and increases the critical strike chance of your damage spells by  on targets afflicted by Faerie Fire.' AS `src`, '由矿工在血色工作台上熔炼以制作金属。' AS `dst`
    UNION ALL SELECT 'Attacks done to you while in Moonkin form have a  chance to cause you to go into a Frenzy, increasing your damage by %, cause you to be immune to pushback while casting Balance spells and restore  base mana every  sec. Lasts 91d.' AS `src`, '由制皮师在血色工作台上鞣制以制作可加工的皮革。\n\n可从高风险肉类与皮革区域剥取野兽获得。' AS `dst`
    UNION ALL SELECT 'When you critically hit with Starfire, you have a  chance of increasing damage done by Wrath by  When you critically hit with Wrath, you have a  chance of increasing your critical strike chance with Starfire by  Each effect lasts  and each has a separate  sec cooldown.  Both effects cannot occur simultaneously.' AS `src`, '由制皮师在血色工作台上鞣制以制作可加工的皮革。' AS `dst`
    UNION ALL SELECT 'Reduces the Mana cost of your Destruction spells by .' AS `src`, '由附魔师在血色工作台上粉碎以制作尘。\n\n可从高风险附魔尘区域获得。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Searing Pain spell by .' AS `src`, '由附魔师在血色工作台上粉碎以制作尘。' AS `dst`
    UNION ALL SELECT 'Increases your critical strike chance with spells by an additional  and gives you a  chance when hit by a physical attack to reduce the cast time of your next Shadow Bolt or Incinerate spell by   This effect lasts  and will not occur more than once every 8 seconds.' AS `src`, '由裁缝在血色工作台上织造以制作线。\n\n可从高风险布料区域获得。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Immolate spell by .' AS `src`, '由裁缝在血色工作台上织造以制作线。' AS `dst`
    UNION ALL SELECT 'After being hit with a spell, you have a  chance to gain Nether Protection, reducing all damage by that spell school by  for 70d.' AS `src`, '由厨师在血色工作台上腌制以制作腌肉。\n\n可从高风险肉类与皮革区域剥取野兽获得。' AS `dst`
    UNION ALL SELECT 'Gives your Shadow Bolt, Shadowburn, Chaos Bolt, Soul Fire, Incinerate, Searing Pain and Conflagrate spells a  chance to return health equal to  of the damage caused.' AS `src`, '由厨师在血色工作台上腌制以制作腌肉。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Imp by %, and all critical hits done by your Imp have a  chance to increase your spell critical hit chance for your next spell by  This effect lasts 83d.' AS `src`, '从 1、2、3 级高风险区域击杀野兽获得。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit with spells by %, and reduces the mana cost of your Affliction spells by .' AS `src`, '从 1、2、3 级高风险区域采集草药节点获得。' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Corruption spell by an amount equal to' AS `src`, '从 1、2、3 级高风险区域开采矿脉获得。' AS `dst`
    UNION ALL SELECT 'Increases your spell damage by %, and increases the periodic critical strike chance of your Corruption and Unstable Affliction spells by .' AS `src`, '从 1、2、3 级高风险区域剥取野兽获得。' AS `dst`
    UNION ALL SELECT 'Increases the amount drained by your Drain Life by  while your health is at or below 20% health, and increases the damage done by your Shadow spells by  when your target is at or below 35% health.' AS `src`, '从 1、2、3 级高风险区域击杀人型生物获得。' AS `dst`
    UNION ALL SELECT 'Increases the effect of your Imp\'s Firebolt, Fire Shield, and Blood Pact spells by .' AS `src`, '一次邪恶的打击，造成 点武器伤害作为物理伤害，外加。此外，目标身上的每个疾病都会使你额外造成等于所造成物理伤害一部分的暗影伤害。' AS `dst`
    UNION ALL SELECT 'Increases your total Stamina by .' AS `src`, '以彻骨寒风冲击目标，对 10 码内所有敌人造成 点冰霜伤害。' AS `dst`
    UNION ALL SELECT 'Increases the effectiveness of your Voidwalker\'s Torment, Consume Shadows, Sacrifice and Suffering spells by %, and increases the attack power bonus on your Felguard\'s Demonic Frenzy effect by .' AS `src`, '为 码内至多 名友方队伍或团队成员恢复 点生命值，持续一段时间。治疗量在开始时会立即生效，随后随着野性成长达到完整持续时间而逐渐减缓。' AS `dst`
    UNION ALL SELECT 'Increases the Stamina and Intellect of your Imp, Voidwalker, Succubus, Felhunter and Felguard by  and increases your maximum health and mana by .' AS `src`, '你从天上召唤一阵流星群，砸向施法者 码内的所有目标，每个目标受到 点奥术伤害。同时对敌方目标 码内的其他敌人造成 点奥术伤害。最多 20 颗流星。持续一段时间。变形为动物形态或骑乘会取消该效果。任何使你失去角色控制的效果都会压制流星雨效果。' AS `dst`
    UNION ALL SELECT 'Reduces the cast time of your Succubus\' Seduction by %, and increases the duration of your Succubus\' Seduction and Lesser Invisibility spells by .' AS `src`, '吸取你召唤的恶魔的法力，并将 100% 返还给你。' AS `dst`
    UNION ALL SELECT 'Increases the effectiveness of your Demon Armor and Fel Armor spells by .' AS `src`, '非普通高风险材料死亡不会掉落！\n\n可从 2 级和 3 级高风险区域获得。' AS `dst`
    UNION ALL SELECT 'Increases the duration of your Immolate by 00' AS `src`, '目标变成一颗活体炸弹，在一段时间内受到 点火焰伤害。在持续时间结束或法术被驱散后，目标会爆炸，对 码内所有敌人造成 点火焰伤害。' AS `dst`
    UNION ALL SELECT 'Reduces the chance you\'ll be critically hit by melee and spells by  and reduces all damage your summoned demon takes by .' AS `src`, '向敌方目标发射数枚飞弹，造成 点奥术伤害。' AS `dst`
    UNION ALL SELECT 'Increases your spell damage by an amount equal to  of the total of your active demon\'s Stamina plus Intellect.' AS `src`, '使所有治疗法术的效果提高。' AS `dst`
    UNION ALL SELECT 'Increases your summoned demon\'s critical strike chance equal to  of your critical strike chance.' AS `src`, '在受到任何伤害性攻击命中后，你有一定几率使接下来的 次武器挥击在持续时间内产生一次额外攻击。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Demonic Empowerment, Metamorphosis, and Fel Domination spells by .' AS `src`, '你的武器命中有一定几率使目标产生 2-4 只血虫。血虫会攻击你的敌人，在 20 秒内或直到被击杀前为你回复生命。' AS `dst`
    UNION ALL SELECT 'Increases the Dodge bonus of your Aspect of the Monkey and Aspect of the Dragonhawk by .' AS `src`, '使你的宠物被近战攻击暴击的几率降低。' AS `dst`
    UNION ALL SELECT 'Increases the armor rating of your pets by  and your armor contribution from items by .' AS `src`, '使你的宠物的移动速度提高，持续' AS `dst`
    UNION ALL SELECT 'All party and raid members have all damage increased by  within  yards of your pet. In addition, increases the damage dealt by Arcane Shot and Steady Shot by .' AS `src`, '你的暗影箭和鬼影缠身法术会施加“暗影之拥”效果，使你对该目标造成的所有暗影周期性伤害提高 %，并使对该目标的所有周期性治疗降低。持续 秒，最多叠加 次。' AS `dst`
    UNION ALL SELECT 'Increases your chance to dodge by  and your pet\'s chance to dodge by an additional  In addition, reduces the cooldown of your Kill Command ability by 00' AS `src`, '使痛苦诅咒、腐蚀术和腐蚀之种的伤害提高，并使你的有益痛苦系法术和持续伤害效果被驱散的几率额外降低。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Bestial Wrath, Intimidation and Pet Special Abilities by .' AS `src`, '该物品会加入你的幻化收藏，并可在你所有的邪铸角色上使用。' AS `dst`
    UNION ALL SELECT 'You have a  chance when you critically hit with Arcane Shot, Steady Shot or Kill Shot to cause your pet\'s next 2 special attacks to critically hit.' AS `src`, '赋予这把斧头狂暴的火焰如今已化为灰烬。现在它静候于此，冰冷而耐心，等待着追寻元素之力的人。' AS `dst`
    UNION ALL SELECT 'Increases the range of your ranged weapons by  yards.' AS `src`, '供布莱恩测试用' AS `dst`
    UNION ALL SELECT 'Reduces the duration of movement impairing effects by .' AS `src`, '机械魔法学工程的一项壮举。' AS `dst`
    UNION ALL SELECT 'Frost Trap and Freezing Trap - Increases the duration by  Trap, Explosive Trap and Black Arrow - Increases the periodic damage done by  Trap - Increases the number of snakes summoned by' AS `src`, '你没想到鱼卵能有这么大。' AS `dst`
    UNION ALL SELECT 'Increases your chance to parry by %, and reduces the duration of all Disarm effects used against you by   This does not stack with other Disarm duration reducing effects.' AS `src`, '上面刻着你的名字！' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Explosive Shot,  Explosive Trap, Black Arrow and Immolation Trap by .' AS `src`, '仅在 1 级时可用。' AS `dst`
    UNION ALL SELECT 'You have a  chance when you trap a target with Freezing Trap, Freezing Arrow or Frost Trap and a  chance when you deal periodic damage with your Immolation Trap, Explosive Trap or Black Arrow to cause your next 2 Arcane Shot or Explosive Shot spells to trigger no cooldown, cost no mana and consume no ammo. This effect has a  sec cooldown.' AS `src`, '新鲜挤自快乐的奶牛！' AS `dst`
    UNION ALL SELECT 'Increases you and your pet\'s attack power and ranged attack power equal to  of your total Stamina.' AS `src`, '该羊皮纸会加入你的收藏，并可在所有具备“支配亡灵”能力的角色上使用。' AS `dst`
    UNION ALL SELECT 'Increases your critical strike chance with all attacks by .' AS `src`, '教你如何召唤这个坐骑。这是一个飞行坐骑。需要云端翔龙骑士团的云端翔龙骑术。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of all traps, melee abilities and Black Arrow by  and reduces the cooldown of all traps and Black Arrow by 00' AS `src`, '一笔额外的金币，酬谢你的所作所为。' AS `dst`
    UNION ALL SELECT 'Your ranged criticals have a  chance to grant you Expose Weakness. Expose Weakness increases your attack power by  of your Agility for 01d.' AS `src`, '值几个铜板……' AS `dst`
    UNION ALL SELECT 'Gives you a  chance to regain 40% of the mana cost of any shot when it critically hits.' AS `src`, '包含 10 张智慧卷轴。' AS `dst`
    UNION ALL SELECT 'If Wyvern Sting is dispelled, the dispeller is also afflicted by Wyvern Sting lasting  of the duration remaining, and increases all damage done by you on targets afflicted by your Serpent Sting by .' AS `src`, '包含一把随机的神话钥石' AS `dst`
    UNION ALL SELECT 'Increases your total Agility by an additional %, and your Arcane Shot, Explosive Shot and Steady Shot critical strikes have a  chance to grant up to 10 party or raid members mana regeneration equal to 1% of the maximum mana per 5 sec. Lasts for 69d.' AS `src`, '可在幻化师处用来改变你的力量祝福能力的外观。' AS `dst`
    UNION ALL SELECT 'Reduces the pushback suffered from damaging attacks while casting Steady Shot by %, and increases your chance to hit by .' AS `src`, '奈法利安的头颅：死亡之翼的子嗣。' AS `dst`
    UNION ALL SELECT 'Increases your ranged attack power by an amount equal to  of your total Intellect.' AS `src`, '诺兹多姆不再需要这件损坏的饰品，也许像你这样的英雄会需要它？它似乎仍可用于驾驭强大的神秘附魔。' AS `dst`
    UNION ALL SELECT 'Increases the bonus attack power granted by your Hunter\'s Mark ability by %, and reduces the mana cost of your Hunter\'s Mark ability by .' AS `src`, '该装饰物品会加入你的幻化收藏，并可在你所有的角色上使用。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Arcane Shot by .' AS `src`, '这个特定宝箱中的物品可以交易。\n按住 Shift 右键点击以打开！' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Serpent Sting and Wyvern Sting by  and the mana drained by your Viper Sting by   In addition, reduces the chance your Sting damage over time effects will be dispelled by .' AS `src`, '打开后可获得适合你当前专精的命运卷轴，可用来遗忘技能或天赋。\n\n你可以从风暴熔炉、任务、地下城、团队副本、公告板宝箱、战场、高风险开放世界，以及主城中西拉斯·暗月处的任务链获得卷轴，所需货币为晋升印记。\n\n|cFFCC0000该物品在声望升级时会被摧毁|r' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Multi-Shot, Aimed Shot, and Volley spells by .' AS `src`, '教你如何召唤这个伙伴。\n\n晋升之书可让你学习所有职业的全部技能。\n\n可从拍卖行或使用 DP 获得。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Increases the damage you deal with ranged weapons by .' AS `src`, '这件神器装饰着散发魔法光环的紫色符文，对买家而言价值不菲——也许你能找到办法为自己驾驭它的力量？' AS `dst`
    UNION ALL SELECT 'Your critical Aimed, Steady and Chimera Shots cause the target to bleed for  of the damage dealt over 68d.' AS `src`, '高阶之刃' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Multi-Shot and Aimed Shot abilities by  and reduces the pushback suffered from damaging attacks while channeling Volley by .' AS `src`, '可同时视为空气、大地、火焰和水之图腾。' AS `dst`
    UNION ALL SELECT 'You have a  chance to shoot an additional shot when doing damage with your auto shot, dealing  weapon nature damage. Wild Quiver consumes no ammo.' AS `src`, '这件幻化物品可在虚灵集市获得！' AS `dst`
    UNION ALL SELECT 'Your Steady Shot hits have a  chance to increase the damage done by your next Aimed Shot, Arcane Shot or Chimera Shot by %, and reduce the mana cost of your next Aimed Shot, Arcane Shot or Chimera Shot by 20s2%.' AS `src`, '握紧缰绳，或是化身其形——由你选择。' AS `dst`
    UNION ALL SELECT 'In addition to the normal effect, your Judgement spells will also increase the critical strike chance of all attacks made against that target by an additional .' AS `src`, '当你需要快速送花时。' AS `dst`
    UNION ALL SELECT 'Increases your chance to critically hit with all spells and attacks by  and increases the damage caused by Exorcism and Crusader Strike by .' AS `src`, '这柄权杖之中，仍有无数灵魂在哭喊复仇。' AS `dst`
    UNION ALL SELECT 'Increases all damage caused by  and all damage caused against Humanoids, Demons, Undead and Elementals by an additional .' AS `src`, '正如艾露恩可能遮掩太阳之光，一颗暗星也同样被梦境遮蔽。\n然而再长的日食，在宇宙的历史长河中也只是短暂一瞬……' AS `dst`
    UNION ALL SELECT 'Gives you a  bonus to Physical and Holy damage you deal for  after dealing a critical strike from a weapon swing, spell, or ability.  This effect stacks up to  times.' AS `src`, '我尖叫，却无人回应\n我哭泣，却流不出泪\n我伸手想要握住你的手\n最终我才明白自己变成了什么' AS `dst`
    UNION ALL SELECT 'Your damaging Judgement spells have a  chance to grant the Replenishment effect to up to 10 party or raid members mana regeneration equal to 1% of their maximum mana per 5 sec for d, and to immediately grant you  of your base mana.' AS `src`, '这件斗篷曾由马术兄弟会的一位骑士骄傲地穿着，如今它的力量已被占据其主人尸体的灵魂所扭曲。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of all Judgements capable of a critical hit by  and reduces threat caused by all actions by  except when under the effects of Righteous Fury.' AS `src`, '当辛菲尔挖出自己的心脏而成为不朽时，他的血液凝聚成一颗颗力量之球。\n失去心脏的维系后，那些血液开始缓慢衰败，但其中的力量依然存在。' AS `dst`
    UNION ALL SELECT 'Your auras also increase casting, ranged and melee attack speeds by .' AS `src`, '无论如何，只要你有这个，我相信我一定能找到你。所以不必哭了，好吗，米埃尔？' AS `dst`
    UNION ALL SELECT 'Increases your spell power by an amount equal to  of your attack power and your critical healing spells heal the target for  of the healed amount over 12 seconds.' AS `src`, '一种罕见的花，花瓣低垂在花茎周围，显得哀伤。曾住在逆风小径的一个孩子希望能让它快乐，但这朵被保存下来的花看上去更加悲伤。' AS `dst`
    UNION ALL SELECT 'When your Judgement, Crusader Strike and Divine Storm spells deal a critical strike, your target will take  additional damage over 40d.' AS `src`, '装备收获傀儡的支柱，引导收获的幽魂。让你的形态令人心生恐惧，仿佛由田野的暗影编织而成……' AS `dst`
    UNION ALL SELECT 'Increases the amount healed by your Holy Light, Flash of Light and the effectiveness of Holy Shock spells by .' AS `src`, '教你如何召唤和解散这个伙伴。这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Increases the effect of your Concentration Aura by an additional  and while any Aura is active reduces the duration of any Silence or Interrupt effect used against an affected group member by   The duration reduction does not stack with any other effects.' AS `src`, '一枚古老封印的碎片' AS `dst`
    UNION ALL SELECT 'Increases the critical effect chance of your Holy Light and Holy Shock spells by .' AS `src`, '科尼姆珍藏的刀刃之一，由龙骨雕成，外覆铁质。' AS `dst`
    UNION ALL SELECT 'Gives your Holy Light spell a  chance to reduce the cast time of your next Holy Light spell by 00' AS `src`, '装备你的寻路者背包' AS `dst`
    UNION ALL SELECT 'All attacks against you have a  chance to cause half damage.' AS `src`, '教你如何制作一瓶北方合剂。' AS `dst`
    UNION ALL SELECT 'Your Cleanse spell has a  chance to increase the target\'s resistance to Disease, Magic and Poison by  for 59d.' AS `src`, '变成另一个人。持续 1 小时。' AS `dst`
    UNION ALL SELECT 'Reduces the duration of all Stun effects by an additional  and reduces the chance your helpful spells and damage over time effects will be dispelled by an additional .' AS `src`, '父权启明者们的研究笔记。他们为寻找治愈亡灵化的方法而出行，甚至不惜违背那些不情愿的病人的意愿。' AS `dst`
    UNION ALL SELECT 'While Righteous Fury is active, all damage taken is reduced by .' AS `src`, '教你如何召唤这个巨魔神像。显示在背上。' AS `dst`
    UNION ALL SELECT 'Increases the armor bonus of your Devotion Aura by  and increases the amount healed on any target affected by any of your Auras by .' AS `src`, '教你如何召唤这个巨魔面具。显示在背上。' AS `dst`
    UNION ALL SELECT 'Increases all damage you deal when a one-handed melee weapon is equipped by .' AS `src`, '把这份奖励凭证交给阿扎尔集市的梅加。' AS `dst`
    UNION ALL SELECT 'Damage that takes you below 35% health is reduced by   In addition, attacks which would otherwise kill you cause you to be healed by up to  of your maximum health (amount healed based on defense).  This healing effect cannot occur more often than once every 33d.' AS `src`, '把这份奖励凭证交给阿扎尔集市的奥托·旺卡。' AS `dst`
    UNION ALL SELECT 'Increases your block value by  and damaging melee and ranged attacks against you have a  chance to increase your chance to block by   Lasts  or  blocks.' AS `src`, '把这份奖励凭证交给阿扎尔集市的布伦。' AS `dst`
    UNION ALL SELECT 'Increases your expertise by 1, total Stamina and chance to critically hit by .' AS `src`, '把这份奖励凭证交给阿扎尔集市的里基。' AS `dst`
    UNION ALL SELECT 'Increases your spell power by an amount equal to  of your Strength and increases the amount healed by your critical heals by .' AS `src`, '把这份奖励凭证交给阿扎尔集市的米兹尔。' AS `dst`
    UNION ALL SELECT 'Reduces all damage taken by  and grants your Avenger\'s Shield a  chance to silence your targets for 29d.' AS `src`, '教你如何召唤这个伙伴。\n\n晋升之书可让你学习所有职业的全部技能。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of Blood Strike, Scourge Strike, Heart Strike and Obliterate by %, and reduces threat generated while in Blood or Unholy Presence by .' AS `src`, '它燃烧着邪能。' AS `dst`
    UNION ALL SELECT 'Whenever you hit with Death Strike or Obliterate there is a  chance that the Frost and Unholy Runes will become Death Runes when they activate.  Death Runes count as a Blood, Frost or Unholy Rune.' AS `src`, '这块符文石上刻着一则谜语。' AS `dst`
    UNION ALL SELECT 'Increases the health provided by Rune Tap by  and lowers its cooldown by 00' AS `src`, '教你如何召唤这个坐骑。这是一个地面坐骑。\n\n当 PvP 赛季（经典旧世）结束时，处于 1v1 前 10 或 2v2 前 10 的玩家可获得此坐骑。' AS `dst`
    UNION ALL SELECT 'You have a chance equal to your Parry chance of taking  less damage from a direct damage spell.' AS `src`, '燃烧着邪能。' AS `dst`
    UNION ALL SELECT 'Heals you for up to  of your maximum health whenever you kill a target that yields experience or honor.' AS `src`, '开启自动拾取。至少留出 10 个空背包栏位再打开。' AS `dst`
    UNION ALL SELECT 'Increases the damage of Blood Strike by  and Heart Strike by %, and increases the damage of Blood Boil by .' AS `src`, '在高风险模式下从逆风食人魔处获得。' AS `dst`
    UNION ALL SELECT 'Increases your total Strength by %, your Stamina by %, and your expertise by' AS `src`, '在高风险模式下从龙人处获得。' AS `dst`
    UNION ALL SELECT 'Gives you a  bonus to physical damage you deal for  after dealing a critical strike from a weapon swing, spell, or ability.  This effect stacks up to  times.' AS `src`, '在高风险模式下从天灾教徒处获得。' AS `dst`
    UNION ALL SELECT 'Your Blood Strikes and Heart Strikes have a  chance to launch a free Death Coil at your target.' AS `src`, '在高风险模式下从寒爪熊怪处获得。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your Blood Boil, Blood Strike, Death Strike, and Heart Strike abilities by .' AS `src`, '在高风险模式下从沙虫身上剥取。' AS `dst`
    UNION ALL SELECT 'Your Icy Touch does an additional  damage and your Frost Fever reduces melee and ranged attack speed by an additional .' AS `src`, '在高风险模式下从瘟疫蝙蝠身上剥取。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit with one-handed melee weapons by  and increases the damage done by your offhand weapon by .' AS `src`, '在高风险模式下从黑龙人身上剥取。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your melee special abilities by   In addition, there is a  chance that your Obliterate will do its damage without consuming diseases.' AS `src`, '在高风险模式下从钴蓝龙人身上剥取。' AS `dst`
    UNION ALL SELECT 'Reduces the chance melee attacks will hit you by .' AS `src`, '在高风险模式下从魔暴龙身上剥取。' AS `dst`
    UNION ALL SELECT 'Diseased enemies take  more damage from your Icy Touch, Howling Blast and Frost Strike.' AS `src`, '商人们收购这些旧碎料，用来制作可堆肥的垃圾袋。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Icy Touch and Obliterate by  and casting Obliterate has a  chance to reset the cooldown on Howling Blast and cause your next Howling Blast to consume no runes.' AS `src`, '在高风险模式的虚空熔炉中精炼。' AS `dst`
    UNION ALL SELECT 'When dual-wielding, your Death Strikes, Obliterates, Plague Strikes, Rune Strikes, Blood Strikes and Frost Strikes have a  chance to also deal damage with your offhand weapon.' AS `src`, '在高风险模式的天灾熔炉中精炼。' AS `dst`
    UNION ALL SELECT 'Increases Blood Strike and Frost Strike damage by   In addition, whenever you hit with Blood Strike or Pestilence there is a  chance that the Blood Rune will become a Death Rune when it activates.  Death Runes count as a Blood, Frost or Unholy Rune.' AS `src`, '在高风险模式的火山熔炉中精炼。' AS `dst`
    UNION ALL SELECT 'When you are hit by a spell, you have a  chance to boost your resistance to that type of magic for 18 sec.  Stacks up to 3 times.' AS `src`, '在高风险模式的腐蚀熔炉中精炼。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your Blood Strike, Frost Strike, Howling Blast and Obliterate abilities by %, and increases the duration of your Icebound Fortitude by 00' AS `src`, '在高风险模式的侏罗纪熔炉中精炼。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit with your spells by  and reduces the chance that your damage over time diseases can be cured by .' AS `src`, '在高风险模式的极地熔炉中精炼。' AS `dst`
    UNION ALL SELECT 'Increases the damage and healing of Death Coil by  and reduces the cooldown on Death and Decay by 00' AS `src`, '由专家级矿工在高风险模式的虚空熔炉中用于熔炼甲壳合金。' AS `dst`
    UNION ALL SELECT 'Increases the damage of Plague Strike by  and Scourge Strike by .' AS `src`, '由专家级矿工在高风险模式的天灾熔炉中用于熔炼瘟疫铁。' AS `dst`
    UNION ALL SELECT 'Your auto attacks have a  chance to cause a Blood-Caked Strike, which hits for  weapon damage plus  for each of your diseases on the target.' AS `src`, '由专家级矿工在高风险模式的火山熔炉中用于熔炼龙钢。' AS `dst`
    UNION ALL SELECT 'You take  less damage from all magic.  In addition, your Anti-Magic Shell absorbs an additional  of spell damage.' AS `src`, '由专家级矿工在高风险模式的腐蚀熔炉中用于熔炼活体铁。' AS `dst`
    UNION ALL SELECT 'Whenever you hit with Blood Strike or Pestilence there is a  chance that the Blood Rune becomes a Death Rune when it activates.  Death Runes count as a Blood, Frost or Unholy Rune.' AS `src`, '由专家级矿工在高风险模式的侏罗纪熔炉中用于熔炼星铁。' AS `dst`
    UNION ALL SELECT 'When your diseases damage an enemy, there is a chance equal to your melee critical strike chance that they will cause  additional damage to the target and all enemies within 8 yards.  Ignores any target under the effect of a spell that is cancelled by taking damage.' AS `src`, '由专家级矿工在高风险模式的极地熔炉中用于熔炼冬钢。' AS `dst`
    UNION ALL SELECT 'Increases your pet\'s movement speed by .' AS `src`, '在高风险模式下从食肉块茎中采集。' AS `dst`
    UNION ALL SELECT 'Contains various currency.' AS `src`, '在高风险模式下从维纳斯血肉陷阱中采集。' AS `dst`
    UNION ALL SELECT 'Shift Right click to open, make sure you have enough room for items!' AS `src`, '在高风险模式下从腐蚀蘑菇中采集。' AS `dst`
    UNION ALL SELECT 'Counts as an Air, Earth, Fire, and Water totem. It is also Perishable.' AS `src`, '在高风险模式下从侏罗纪陷阱草中采集。' AS `dst`
    UNION ALL SELECT 'Augments your Spell Visual. Use it again to toggle off the visual.' AS `src`, '在高风险模式下从风暴花中采集。' AS `dst`
    UNION ALL SELECT 'Turn these crystals into your factions Warmaster at either Allerian Stronghold or Stonebreaker Stronghold to help your faction Reclaim Auchindoun!' AS `src`, '在高风险模式下从凛冬之死中采集。' AS `dst`
    UNION ALL SELECT 'This convenience item is added to your vanity collection and is usable on all of your characters.' AS `src`, '由专家级草药师在高风险模式中用于喂养食肉块茎并采集深漠根。' AS `dst`
    UNION ALL SELECT 'You can spend these on assets at your base!' AS `src`, '由专家级草药师在高风险模式中用于喂养维纳斯血肉陷阱并采集坏死莲花。' AS `dst`
    UNION ALL SELECT 'Do not use with less than 6 inventory slots available.' AS `src`, '由专家级草药师在高风险模式中用于喂养腐蚀蘑菇并采集腐化菌帽。' AS `dst`
    UNION ALL SELECT 'Made by TBRC' AS `src`, '由专家级草药师在高风险模式中用于喂养侏罗纪陷阱草并采集侏罗纪球茎。' AS `dst`
    UNION ALL SELECT 'A weathered stone tablet carved with primitive barbarian runes that seem to pulse with primal energy.' AS `src`, '由专家级草药师在高风险模式中用于喂养风暴花并采集风暴叶。' AS `dst`
    UNION ALL SELECT 'This potion has no effect until we put languages in.' AS `src`, '由专家级草药师在高风险模式中用于喂养凛冬之死并采集冬花。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Magic Cleansing Potion.' AS `src`, '在高风险模式下从结界教徒石板处获得。' AS `dst`
    UNION ALL SELECT 'For cutting down trees!' AS `src`, '在高风险模式下从结界天灾石板处获得。' AS `dst`
    UNION ALL SELECT 'Chipped Training Axe' AS `src`, '在高风险模式下从结界火山石板处获得。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make Primal Stalker Goggles.' AS `src`, '在高风险模式下从结界风暴石板处获得。' AS `dst`
    UNION ALL SELECT 'Teaches you how to sew Flarecore Gloves.' AS `src`, '在高风险模式下从结界极地石板处获得。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Heavy Obsidian Belt.' AS `src`, '由专家级附魔师在高风险模式中将结界教徒石板粉碎为午夜之尘。' AS `dst`
    UNION ALL SELECT 'Teaches you how to refine Elementium.' AS `src`, '由专家级附魔师在高风险模式中将结界天灾石板粉碎为活化尸尘。' AS `dst`
    UNION ALL SELECT 'There\'s a lot at steak here!' AS `src`, '由专家级附魔师在高风险模式中将结界火山石板粉碎为火山尘。' AS `dst`
    UNION ALL SELECT 'This unique watch is distorting time.' AS `src`, '由专家级附魔师在高风险模式中将结界风暴石板粉碎为风暴尘。' AS `dst`
    UNION ALL SELECT 'What the combat specialist wants, the combat specialist gets... PEWPEWLAWLZ' AS `src`, '由专家级附魔师在高风险模式中将结界极地石板粉碎为极地尘。' AS `dst`
    UNION ALL SELECT 'Spojka 4ever' AS `src`, '无用的旧碎料。商人们收购它们来制作装垃圾的可堆肥袋子。' AS `dst`
    UNION ALL SELECT 'TEMP Test Vendor Item' AS `src`, '在高风险模式中从矿脉开采。' AS `dst`
    UNION ALL SELECT 'Each side only has one eye...' AS `src`, '通过分解血铸物品获得。' AS `dst`
    UNION ALL SELECT 'Internal Only' AS `src`, '在高风险模式下从人型生物处获得。' AS `dst`
    UNION ALL SELECT 'A subtle aura permeates the wood of this carving. It gives you a feeling of unease.' AS `src`, '不是那只鸟。是那个动词。' AS `dst`
    UNION ALL SELECT 'There might be something good inside.' AS `src`, '在高风险模式下从逆风小径的秃鹫处获得' AS `dst`
    UNION ALL SELECT 'The surface is specially treated: it sticks to nothing, and nothing sticks to it.' AS `src`, '在高风险模式下从瘟疫之地的野兽处获得' AS `dst`
    UNION ALL SELECT 'Teaches you how to create a Jeweler\'s Sapphire Monocle.' AS `src`, '在高风险模式下从燃烧平原的野兽处获得' AS `dst`
    UNION ALL SELECT 'A bone tablet etched with runes that pulse with primal fury, speaking of endless rage that transcends death itself.' AS `src`, '在高风险模式下从冬泉谷的野兽处获得' AS `dst`
    UNION ALL SELECT 'A dark scroll stained with ancient blood, radiating malevolent power and crimson magic.' AS `src`, '在高风险模式下从安戈洛的野兽处获得' AS `dst`
    UNION ALL SELECT 'A tattered manuscript covered in symbols that seem to writhe and shift when observed.' AS `src`, '在高风险模式下从诅咒之地的野兽处获得' AS `dst`
    UNION ALL SELECT 'A demonic contract wreathed in green flames, its infernal script burning with unholy purpose.' AS `src`, '在高风险模式下从艾萨拉的野兽处获得' AS `dst`
    UNION ALL SELECT 'A steel tablet inscribed with protective wards, radiating defensive magic that persists beyond death.' AS `src`, '在高风险模式下从希利苏斯的野兽处获得' AS `dst`
    UNION ALL SELECT 'A shadow-wreathed proclamation bearing the seal of Xoroth, radiating cold darkness tempered by noble purpose.' AS `src`, '在高风险模式下从费伍德的野兽处获得' AS `dst`
    UNION ALL SELECT 'An ancient bone tablet carved with necromantic symbols that pulse with deathly power.' AS `src`, '在高风险模式中采集草药获得' AS `dst`
    UNION ALL SELECT 'A scroll that crackles with raw elemental fury, the forces of nature bound by undying will.' AS `src`, '熟练的矿工可在虚空熔炉中熔炼这些材料。' AS `dst`
    UNION ALL SELECT 'A smoldering manuscript that burns with cold fire, flames that consume without warmth.' AS `src`, '熟练的矿工可在天灾熔炉中熔炼这些材料。' AS `dst`
    UNION ALL SELECT 'A leather-bound tome marked with tracks from beasts long dead, reeking of decay and ancient wilderness.' AS `src`, '熟练的矿工可在火山熔炉中熔炼这些材料。' AS `dst`
    UNION ALL SELECT 'A stone slab etched with glowing runes that pulse with deathless power.' AS `src`, '熟练的矿工可在腐蚀熔炉中熔炼这些材料。' AS `dst`
    UNION ALL SELECT 'A manuscript that crackles with spectral lightning, thunder echoing from the realm beyond.' AS `src`, '熟练的矿工可在侏罗纪熔炉中熔炼这些材料。' AS `dst`
    UNION ALL SELECT 'Golden scripture that glows with pale light, divine energy filtered through the veil of death.' AS `src`, '熟练的矿工可在极地熔炉中熔炼这些材料。' AS `dst`
    UNION ALL SELECT 'A blessed document that emanates cold light, holy vows that bind even beyond the grave.' AS `src`, '一把与其主人生命相连的奇异钥匙。它已在崩解之中。' AS `dst`
    UNION ALL SELECT 'Technical blueprints drawn on preserved skin, mechanical designs powered by necromantic energy.' AS `src`, '寻找嘉奖官，用印戒换取认可。' AS `dst`
    UNION ALL SELECT 'A tome reeking of exotic poisons, green vapors seeping between pages of treated flesh.' AS `src`, '一场宏大战斗的战利品！' AS `dst`
    UNION ALL SELECT 'An ancient scroll decorated with bones and dark fetishes, humming with the power of restless spirits.' AS `src`, '艾泽拉斯的宝藏有几率包含任何已上线世界首领的装备，且至少为地下城品质！' AS `dst`
    UNION ALL SELECT 'A sealed letter bearing the burning wax seal of the Inquisition, marked with holy symbols that smolder with righteous fire.' AS `src`, '每当你被昏迷或定身效果命中时，你将产生' AS `dst`
    UNION ALL SELECT 'Drop it then defend it!' AS `src`, '猎人以及 码内的队伍和团队成员获得野性守护，使自然抗性提高。同一时间只能激活一种守护。' AS `dst`
    UNION ALL SELECT 'Teaches you how to beckon your subdued Abyssal Seahorse.  Can only be summoned in aquatic environments.' AS `src`, '惊吓一头野兽，使其恐惧奔逃，最多持续一段时间。造成的伤害可能打断该效果。同一时间只能恐惧一头野兽。' AS `dst`
    UNION ALL SELECT 'Taken from the corpse of Skulloc Soulgrinder, the stench of fel sorcery still clings to this sack woven from cyclopean sinew' AS `src`, '你试图终结受伤的目标，发射一次远程攻击，造成 点武器伤害外加。致死射击只能对生命值不高于 20% 的敌人使用。' AS `dst`
    UNION ALL SELECT 'The flares appear to have stayed dry and intact.' AS `src`, '放置一个冰霜陷阱，冻结第一个接近的敌人，最多阻止其一切行动一段时间。造成的任何伤害都会打破冰封。陷阱存在一段时间。同一时间只能激活一个陷阱。' AS `dst`
    UNION ALL SELECT 'Even heavier than it looks.' AS `src`, '终结技：使目标移动速度降低，持续一段时间，并提高投掷武器伤害：\n   1 点  :  -  伤害\n   2 点:  -  伤害\n   3 点:  -  伤害\n   4 点:  -  伤害\n   5 点:  -  伤害' AS `dst`
    UNION ALL SELECT 'Where\'d they get all of this gold they\'re offering for the oil drilling rights?' AS `src`, '绞杀敌人，使其沉默一段时间，并在持续时间内造成 点伤害，受攻击强度加成。必须潜行并位于目标背后。获得 点连击点数' AS `dst`
    UNION ALL SELECT 'Handle with care.' AS `src`, '为所有队伍和团队成员注入力量，使其耐力提高，持续' AS `dst`
    UNION ALL SELECT 'A box of stones and demonic fluids.' AS `src`, '为目标队伍和团队成员注入力量，使其精神提高，持续' AS `dst`
    UNION ALL SELECT 'You\'d think rope would have been a useful addition.' AS `src`, '束缚目标亡灵敌人，最多持续一段时间。被束缚的单位无法移动、攻击或施法。造成任何伤害都会释放该目标。同一时间只能束缚一个目标。' AS `dst`
    UNION ALL SELECT 'A thick, glowing liquid extracted from local sealife.' AS `src`, '治疗一个友方目标及施法者。威胁值低。' AS `dst`
    UNION ALL SELECT 'The legendary blade of Ignaeus Trollbane.' AS `src`, '对目标施加一个法术，在其下次受到伤害时为其治疗。治疗生效时，愈合祷言会跳向 码内的一名队伍或团队成员。最多跳跃 次，每次跳跃后持续一段时间。该法术同时只能施放于一个目标。' AS `dst`
    UNION ALL SELECT 'Loots nearby creatures you\'ve killed, will work in parties and dungeons, but is not usable in raids. \n\nThis companion is added to your Vanity Collection and is usable on all of your characters.\n\nThis is a non-combat companion.' AS `src`, '为目标队伍和团队成员注入力量，使其暗影抗性提高，持续' AS `dst`
    UNION ALL SELECT 'Purple and fashioned of a strange metal.' AS `src`, '使护甲提高。若敌人攻击施法者，其移动速度可能降低，攻击间隔延长，持续一段时间。法师身上同时只能有一个护甲法术生效。持续' AS `dst`
    UNION ALL SELECT 'The object buzzes and whirs.' AS `src`, '以末日降临诅咒目标，在一段时间后造成 点暗影伤害。若目标因此伤害死亡且能提供经验或荣誉，将召唤一个末日守卫。不能对玩家施放。' AS `dst`
    UNION ALL SELECT 'A Bloodscalp item of power.' AS `src`, '在敌方目标体内埋下恶魔之种，在一段时间内造成 点暗影伤害。当目标累计受到一定伤害或死亡时，种子会对目标 码内所有敌人造成 点暗影伤害。同一目标身上只能有一个术士腐蚀法术生效。' AS `dst`
    UNION ALL SELECT 'To the untrained eye, it looks just like any other ordinary ... samophlange.' AS `src`, '奴役目标恶魔，最高等级 1，强制其服从你的命令。被奴役期间，恶魔的攻击间隔延长，施法速度降低。最多持续' AS `dst`
    UNION ALL SELECT 'A large ogre hand, severed, and tied to a long piece of string.' AS `src`, '在目标区域制造猛烈风暴，每 秒对敌人造成 点自然伤害，移动速度降低 %，并使攻击间隔延长。持续一段时间。德鲁伊必须引导以维持该法术。' AS `dst`
    UNION ALL SELECT 'Sealed' AS `src`, '在猫形态下使移动速度提高，持续一段时间。不会打破潜行。' AS `dst`
    UNION ALL SELECT 'Bears the mark of the Blackwater Raiders.' AS `src`, '撕裂敌方目标，造成 点伤害并使其流血，在一段时间内受到 点伤害，同时产生大量威胁。伤害受攻击强度加成。该效果最多在同一目标上叠加 次。' AS `dst`
    UNION ALL SELECT 'It\'s there.  You just can\'t see it.' AS `src`, '撕碎目标，对其造成 点伤害外加。必须位于目标背后。获得 点连击点数' AS `dst`
    UNION ALL SELECT 'A satchel of simple hand-lobbed bombs.' AS `src`, '在一段时间内为目标恢复 点生命值。当生命绽放持续时间结束或被驱散时，目标立即为自己恢复 点生命值，德鲁伊回复一半的法力消耗。该效果最多在同一目标上叠加 次。' AS `dst`
    UNION ALL SELECT 'They\'re digging in the wrong place!' AS `src`, '冲锋一名敌人，产生' AS `dst`
    UNION ALL SELECT 'Crackling with arcane energy.' AS `src`, '使 码内所有队伍和团队成员的最大生命值提高。持续' AS `dst`
    UNION ALL SELECT 'In death, he looks much older and more frail.' AS `src`, '被指定的队伍或团队成员在一段时间内免疫所有物理攻击，但在此期间无法攻击或使用物理技能。每名圣骑士同一时间只能给玩家施加一个圣手。一旦受到保护，目标在持续时间内无法再被圣盾术、保护祝福或保护之手选为目标。对在过去一段时间内使用过复仇之怒的玩家无法使用。' AS `dst`
    UNION ALL SELECT 'An urgent note from Baroness Anastari.' AS `src`, '施法者发出心灵尖啸，使 码内的 个敌人逃跑，持续一段时间。造成的伤害可能打断该效果。' AS `dst`
    UNION ALL SELECT 'Quite a long time ago, someone was very verbose. Fortunately for you, you don\'t understand a word of it.' AS `src`, '使你对所有魔法的抗性提高，并允许你的法力回复在施法时继续生效一部分。法师身上同时只能有一个护甲法术生效。持续' AS `dst`
    UNION ALL SELECT 'The exact recipe is determined once the recipe is reassembled.' AS `src`, '将敌人变成一只绵羊，迫使其四处游荡，最多持续一段时间。游荡期间，绵羊无法攻击或施法，但会极快回复。任何伤害都会使目标变回原形。同一时间只能变形一个目标。只对野兽、人型生物和小动物有效。' AS `dst`
    UNION ALL SELECT 'Cracked, chipped, and old.' AS `src`, '为一个友方目标恢复等同于圣骑士最大生命值的生命，并恢复其法力的一部分。若对自身使用，圣骑士在持续时间内无法再被圣盾术、保护祝福、保护之手或自我施放的圣疗术选为目标。在使用复仇之怒后的一段时间内也不能对自身使用。' AS `dst`
    UNION ALL SELECT 'It\'s a rock.' AS `src`, '可在幻化师处用来改变你的水之护盾能力的外观。' AS `dst`
    UNION ALL SELECT 'A gnarled and sinister nail.' AS `src`, '允许你以 310% 的速度骑乘任何飞行坐骑（如果你的技能允许）。' AS `dst`
    UNION ALL SELECT 'Smells fishy.' AS `src`, '每完成一次神话+，你获得 50 枚神话硬币。你每周可领取 1550 枚硬币。\n\n对所有英雄而言，该上限每周提高 1550 枚。\n\n神话硬币与神话宝箱分开计数。' AS `dst`
    UNION ALL SELECT 'It\'s so colorful!' AS `src`, '一份强大附魔的部分说明。' AS `dst`
    UNION ALL SELECT 'The desire to serve as a loyal companion, coalesced into a single priceless crystal.' AS `src`, '预言之词正在迅速消退。' AS `dst`
    UNION ALL SELECT 'A cold chill flows from the scythe.' AS `src`, '血脉必须被恢复。' AS `dst`
    UNION ALL SELECT 'The satchel trembles with the weight of potential...' AS `src`, '|cFF2EF50E该物品不能在主公告板附近使用。|r' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount. This is a ground mount.' AS `src`, '使你的火焰冲击、灼烧、奥术冲击和冰锥术的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Enchanted to fit perfectly beneath any mug, with a frosty finish.' AS `src`, '使你的烈焰风暴、炎爆术、冲击波、龙息术、活体炸弹、暴风雪和魔爆术的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Reeking and rock hard.' AS `src`, '使你的伤害性法术有一定几率使你下一个施放的火焰冲击眩晕目标，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Never stops twice.' AS `src`, '使你的灼烧、火球术和霜火之箭的暴击几率额外提高，且你的伤害性灼烧法术有一定几率使目标易受法术伤害，使针对该目标的法术暴击几率提高，持续一段时间。' AS `dst`
    UNION ALL SELECT 'The Grim Guzzler\'s brawls are epic tales of legend.' AS `src`, '你的法术暴击将返还其基础法力消耗的一部分。' AS `dst`
    UNION ALL SELECT 'It\'s a wonder that this flimsy twig can open anything.' AS `src`, '使造成的所有法术伤害提高，并使受到的所有法术伤害提高。' AS `dst`
    UNION ALL SELECT 'Looks like it was scavenged from somewhere.' AS `src`, '使你的火焰法术的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Spooky looking.' AS `src`, '使暴击几率提高，并允许你的法力回复在施法时继续生效一部分。' AS `dst`
    UNION ALL SELECT 'This and eleven more should fetch a few coins.' AS `src`, '使你的火球术、霜火之箭和炎爆术的伤害提高，数值相当于你的法术强度的一部分。此外，每次你的点燃天赋造成伤害时，你有一定几率回复相当于基础法力一部分的法力。' AS `dst`
    UNION ALL SELECT '451 points of light dot the surface.' AS `src`, '当你使用火球术、火焰冲击、灼烧、活体炸弹或霜火之箭连续造成 2 次非周期性法术暴击时，你有一定几率使接下来一定时间内施放的炎爆术变为瞬发。' AS `dst`
    UNION ALL SELECT 'Too powerful to be consumed by the flames.' AS `src`, '使你的冰霜减速效果有一定几率冻结目标，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Tipped with pitch, ready to be lit.' AS `src`, '使你的冰霜新星、冰锥术、寒冰屏障和冰冷血脉法术的冷却时间缩短。' AS `dst`
    UNION ALL SELECT 'You can\'t handle the truth.' AS `src`, '使你的冰霜法术的暴击伤害加成提高。' AS `dst`
    UNION ALL SELECT 'The tome contains a complete account of the Scarlet Crusade\'s history.  Also included are its statutes, bylaws, and rituals, as well as a complete roster of the organization\'s membership.' AS `src`, '使你的法术法力消耗降低，并提高你的法术命中几率。' AS `dst`
    UNION ALL SELECT 'The sword glows a fiery red in your hand. Magical runes forming the word, "Unquenchable", are inlaid along the blade.' AS `src`, '使你的冰霜减速效果的持续时间延长。' AS `dst`
    UNION ALL SELECT 'A small crate of Dwarven Archaeology fragments.' AS `src`, '使你的冰霜法术造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Usable only in Pandaria.' AS `src`, '使所有法术的法力消耗降低，并使你的冰霜法术产生的威胁值降低。' AS `dst`
    UNION ALL SELECT 'An expertly-woven snare, designed to capture the leg of a powerful crane.' AS `src`, '使你的冰锥术造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'A tightly-wound trap, designed to capture and immobilize a large tiger.' AS `src`, '使你所受到的所有法术伤害降低。' AS `dst`
    UNION ALL SELECT 'A thick-walled crate, designed to contain an extra-large crab.' AS `src`, '使你的寒冰箭暴击几率额外提高，并使你的冰霜伤害法术有一定几率施加“严冬之寒”效果，使法术对该目标的暴击几率提高，持续一段时间。最多叠加数次。' AS `dst`
    UNION ALL SELECT 'The scintillating shine hides its true appeal.' AS `src`, '你的带有减速效果的冰霜伤害法术有一定几率使你的下一个火球术或霜火之箭变为瞬发且不消耗法力。' AS `dst`
    UNION ALL SELECT 'Your share of the "winnings" and whatever was left on the brawl floor.' AS `src`, '使你的召唤水元素法术的持续时间延长。' AS `dst`
    UNION ALL SELECT 'Sold under the counter. The crowd doesn\'t like it when you play dirty.' AS `src`, '提高你的命中几率，并使你的奥术法术的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Proof positive you pack a punch.' AS `src`, '使你的护甲提高，数值相当于你的智力的一部分。' AS `dst`
    UNION ALL SELECT 'Keystone that can complete Mantid archaeology artifacts with missing fragments.' AS `src`, '使你的魔爆术、奥术冲击、冲击波、火焰冲击、灼烧、火球术、冰枪术和冰锥术的伤害额外提高 。' AS `dst`
    UNION ALL SELECT 'Can be used to transform your Arcane Intellect ability at a transmogrifier.' AS `src`, '你的寒冰箭、火球术、霜火之箭、炎爆术、奥术飞弹、奥术冲击和奥术弹幕对受到诱捕或减速的目标造成  的额外伤害。' AS `dst`
    UNION ALL SELECT 'Can be used to transform your Power Word: Fortitude ability at a transmogrifier.' AS `src`, '使你受到的所有伤害降低 ，并使你的隐形术的渐隐时间缩短  秒。' AS `dst`
    UNION ALL SELECT 'The head of the Black Dragonflight\'s Brood Mother' AS `src`, '使你的法术伤害和爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'An official document, certifying Nefarian\'s death.\n\nBring this document to one of the following to reap your rewards.\n - Thrall in Grommash Hold (Orgrimmar).\n - Highlord Bolvar Fordragon in Stormwind Keep (Stormwind).\n - Baron Revilgaz on the upper boat of Booty Bay inn.' AS `src`, '使你的奥术飞弹的伤害提高，提高量等于' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '当你的法力护盾、冰霜结界、火焰结界或寒冰屏障吸收伤害时，你的法术伤害提高吸收量的 ，持续 13d。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '使你的法术急速提高 。' AS `dst`
    UNION ALL SELECT 'Original appearance can be restored by using this item while shapeshifted.\n\nThis appearance does not have jump and swim animations.' AS `src`, '使你的英勇打击技能的法力消耗降低' AS `dst`
    UNION ALL SELECT 'Does not consume on use. Only usable in the Manastorm.' AS `src`, '使所有施加于你的昏迷和魅惑效果的持续时间缩短 。' AS `dst`
    UNION ALL SELECT 'The last hope of the Dark Iron still lives on.' AS `src`, '每当你的撕裂技能造成伤害，你有  的几率使你的压制技能可以使用，持续   1 次。该效果每 6 秒最多触发一次。' AS `dst`
    UNION ALL SELECT 'This ragged and torn envelope appears to have been through quite an ordeal.' AS `src`, '使你的断筋技能有  的几率使目标定身，持续 94d。' AS `dst`
    UNION ALL SELECT 'Opening this will give you Scrolls of Fortune: Talents for your current Specialization. These allow you to unlearn talents.\n\nYou can obtain scrolls from The Manastorm, Quests, Dungeons, Raids, Callboard Caches, Battlegrounds, High-Risk Open-World, and a Questchain on Silas Darkmoon in Capitals using Marks of Ascension.\n\n|cFFCC0000THIS ITEM IS DESTROYED UPON PRESTIGE|r\n\n' AS `src`, '使你的致死打击造成的伤害提高 ，并使冷却时间缩短 00' AS `dst`
    UNION ALL SELECT 'Teaches you how to transform into this mount. This is a Ground mount.' AS `src`, '你的近战攻击有  的几率使你可以在无视目标生命值的情况下使用斩杀。此外，使用斩杀后你至少保留  点怒气。' AS `dst`
    UNION ALL SELECT 'Obtained from Defeating Alva on Manastorm Level 1000.' AS `src`, '使你的雷霆一击技能的法力消耗降低' AS `dst`
    UNION ALL SELECT 'This item unlocks all of your standard bank bag slots.' AS `src`, '使你的英勇打击、雷霆一击和顺劈斩技能的爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'Returns you to Sanctum of the Stars in Shadowmoon Valley.' AS `src`, '使你的破甲攻击和毁灭打击技能的怒气消耗降低' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch between specialization I and specialization II and unlocks an additional Mystic Enchanting Specialization' AS `src`, '使你的盾墙、反击风暴和鲁莽技能的冷却时间缩短 00' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to specialization III and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '使你的攻击技能的怒气消耗降低' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to specialization IV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '使你的总力量提高 %，耐力提高 ，精准提高' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to specialization V and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '你的成功格挡有  的几率格挡双倍于正常的伤害，并使你的盾牌猛击技能的爆击几率额外提高 。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to specialization VI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '使你的毁灭打击技能的爆击几率提高 ，并且当你的毁灭打击或复仇造成伤害时，有  的几率刷新你的盾牌猛击技能的冷却时间，并使其消耗降低 ，持续 27d。' AS `dst`
    UNION ALL SELECT 'Gives you access to your Guild Sized Bank with purchaseable tabs. You can put soulbound items into bank.' AS `src`, '使你的顺劈斩技能的额外伤害提高 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this companion.\n\nThe Book of Artisans allows you to train up any profession.\n\n\nThis is a non-combat companion.' AS `src`, '在受到爆击后，在  内恢复你总生命值的 。' AS `dst`
    UNION ALL SELECT 'Grants you the Founder Title!' AS `src`, '使你的近战武器命中几率提高 。' AS `dst`
    UNION ALL SELECT 'Equip your Sanguine Embrace of the Hexflame Coven.' AS `src`, '使你的血性狂暴、狂暴之怒、鲁莽和死亡之愿技能的冷却时间缩短 。' AS `dst`
    UNION ALL SELECT 'Use this to Heal You!' AS `src`, '你的英勇打击、嗜血和旋风斩命中后有  的几率使你的下一次猛击变为瞬发，持续 16d。' AS `dst`
    UNION ALL SELECT 'For mending wounds!' AS `src`, '使你的凿击技能的效果持续时间延长 00' AS `dst`
    UNION ALL SELECT 'Gets you out of the sh*t!' AS `src`, '使你的闪避几率提高 ，并为你提供  的近战急速。' AS `dst`
    UNION ALL SELECT 'This contains two weapons, a main-hand and a offhand version. It can be found on the Ethereal Bazaar!' AS `src`, '使你的能量回复速度提高 。' AS `dst`
    UNION ALL SELECT 'Preserved with Graccu\'s special spices!  It\'ll be a very long time before these turn bad...' AS `src`, '使你的刺骨技能造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Its just a stone, slowly crumbling apart...' AS `src`, '使你的近战终结技有  的几率为目标增加一个连击点。' AS `dst`
    UNION ALL SELECT '\'Joy\' is written on the back cover. Perhaps a name of the spellbook\'s owner?' AS `src`, '使你的背刺技能的爆击几率提高 %，并使你的毁伤技能的爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'Part of a legacy long since lost to time.' AS `src`, '使你的毒药和毒伤技能造成的伤害提高 ，并使你的持续性伤害毒药额外获得  的抵抗驱散效果的几率。' AS `dst`
    UNION ALL SELECT 'A message written in a runic script' AS `src`, '受到你的肾击技能影响时，目标受到的所有来源伤害提高 。' AS `dst`
    UNION ALL SELECT 'This blade is dimensional. It appears to be fading from this plane of existence.' AS `src`, '你的近战爆击有  的几率为你恢复  点能量。' AS `dst`
    UNION ALL SELECT 'Once worn by a cleric of Karabor, this item allows the wearer entry into the Black Temple.' AS `src`, '攻击技能的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Hail to the king, baby!' AS `src`, '使你对你所毒害目标的所有攻击的爆击几率提高 %，使所有施加于你的毒药效果的持续时间缩短 %，并使毒伤有  的几率不消耗致命毒药。' AS `dst`
    UNION ALL SELECT 'Don\'t you wish this was real!' AS `src`, '使你的潜行状态下的移动速度提高 ，并使你的潜行技能的冷却时间缩短 00' AS `dst`
    UNION ALL SELECT 'Changes the appearance of your Draconic Form.' AS `src`, '使你的攻击最多无视目标  的护甲，并使你的割裂技能造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'The naga and lost ones both use totems like this, but it could certainly be put to better use .' AS `src`, '在你躲闪目标的攻击或完全抵抗其法术之后，你有  的几率为目标增加一个连击点。该效果每秒最多触发一次。' AS `dst`
    UNION ALL SELECT 'A fragment of memory that holds only sorrow.' AS `src`, '当你使用伏击、锁喉或偷袭技能时，有  的几率为你的目标额外增加一个连击点。' AS `dst`
    UNION ALL SELECT 'The blade carries with it a sense of deep sorrow.' AS `src`, '在潜行状态下以及脱离潜行后 6 秒内进行的攻击会造成  的额外伤害。' AS `dst`
    UNION ALL SELECT 'Gives you the power to purge and reset your Talents' AS `src`, '使受到的群体攻击伤害降低 。' AS `dst`
    UNION ALL SELECT 'Right Click me!\n\nSelect a class and receive a class themed:\n\n- Mount\n- Cosmetic Set\n- Book of Ascension \n- Companion Pet' AS `src`, '你有  的几率使一次本会杀死你的攻击改为将你的生命值降至最大生命值的 10%。此外，在  内受到的所有伤害最多降低 90%（受韧性影响修正）。该效果每分钟最多触发一次。' AS `dst`
    UNION ALL SELECT 'Teaches Polymorph: Rat' AS `src`, '当你队伍中任何人以伤害或治疗法术或技能造成爆击时，你有  的几率在你当前的目标身上获得一个连击点。该效果每秒钟最多触发一次。' AS `dst`
    UNION ALL SELECT 'The vial is still intact, containing a small amount of the water from the Well of Eternity.' AS `src`, '使你的神圣和戒律法术产生的威胁值降低 ，并使你的有益法术和持续性伤害效果被驱散的几率降低 。' AS `dst`
    UNION ALL SELECT 'Show your resilience in defending Brewfest from the Dark Iron dwarves!' AS `src`, '使你的心灵之火法术的效果提高 %，并使总充能次数增加' AS `dst`
    UNION ALL SELECT 'Wield your shield with honor, protecting Brewfest from all who dare to try and ruin it!' AS `src`, '使你的真言术：盾所吸收的伤害提高 。' AS `dst`
    UNION ALL SELECT 'BY THE DAWN OF THE LIGHT!' AS `src`, '使你的驱散魔法、解除疾病、废除疾病和群体驱散法术的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'Be careful, Hero. In this world thousands of dangers await you. I\'m here to tell you everything you should know about it.' AS `src`, '使你的瞬发法术的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'Available on the webshop!' AS `src`, '使你的总精神提高 ，并使你的法术急速提高 。' AS `dst`
    UNION ALL SELECT 'Limited Edition. Does not help contain spread of disease, but doctors are advised to wear.' AS `src`, '使你的快速治疗的法力消耗降低 %，并使你的快速治疗对生命值等于或低于 50% 的友方目标的爆击效果几率提高 。' AS `dst`
    UNION ALL SELECT 'Activate your Blazing Wings.' AS `src`, '爆击治疗会在目标身上形成一层护盾，吸收治疗量的 。持续 53d。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount. This mount is capable of Flying.\n\nThis mount is an exclusive and rare item.' AS `src`, '使你的恢复法术的治疗量提高 。' AS `dst`
    UNION ALL SELECT 'A burst of power from a pile of junk!' AS `src`, '在受到近战或远程爆击后，祝福恢复会在  内为你恢复所受伤害的 。效果期间受到的额外爆击会提高所获得的治疗量。' AS `dst`
    UNION ALL SELECT 'Teaches you how to channel the Aspect of the Nap!' AS `src`, '在你的快速治疗、治疗、强效治疗、联结治疗、苦修、愈合祷言、治疗祷言或治疗之环产生爆击效果后，使你的目标受到的物理伤害降低 ，持续 。' AS `dst`
    UNION ALL SELECT 'Right Click to place a Lonely Bonfire.' AS `src`, '使你的次级治疗、治疗、强效治疗、神圣赞美诗和苦修法术的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'Slightly worn by time, but flawlessly balanced. The dried bloodstains have fused with the metal, becoming an integral part of its dark and lethal appearance.' AS `src`, '在你以快速治疗、强效治疗、联结治疗或强化恢复造成爆击治疗后，你在  内由精神产生的法力回复提高 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this Ancient Shield. Displays on your back.' AS `src`, '使你的治疗法术的效果提高 %，并且针对你的爆击有  的几率使你免于再次受到爆击，持续 43d。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this Troll Emblem. Displays on your back.' AS `src`, '你的恢复法术额外获得你额外治疗效果的 ，并且你的恢复会立即为目标治疗总持续效果量的 。' AS `dst`
    UNION ALL SELECT 'Turn in this reward token to Snagg at the Azzar Faire.' AS `src`, '使对生命值等于或低于 50% 的友方目标的治疗提高 。' AS `dst`
    UNION ALL SELECT 'Turn in this reward token to Takk at the Azzar Faire.' AS `src`, '在你杀死可获得经验值或荣誉的目标后，你有  的几率获得  的精神加成。在持续期间，你在施法时将以  的速度回复法力。持续 71d。' AS `dst`
    UNION ALL SELECT 'Contains 500 Azzar Faire Tickets!' AS `src`, '使你的暗影法术产生的威胁值降低 %，并且当你的暗言术：痛或吸血鬼之触法术被驱散时，你恢复  的基础法力值。' AS `dst`
    UNION ALL SELECT 'The Hammer absorbed the leftover Quel\'dorei Holy Light and seems to be bursting with energy.' AS `src`, '使你的暗影法术命中几率提高 %，并使你的暗影法术的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'A crackling tome bound in storm-touched leather, its pages alive with electrical energy.' AS `src`, '你的暗影伤害法术有  的几率使你造成的暗影伤害提高 ，持续  。最多叠加  次。' AS `dst`
    UNION ALL SELECT 'A steel tablet inscribed with solemn vows of protection, radiating honor and duty.' AS `src`, '使你的心灵震爆、精神控制、精神鞭笞和精神灼烧法术的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'A sacred document glowing with the Light\'s blessing, calling for absolute devotion.' AS `src`, '使你的噬灵瘟疫造成的周期性伤害提高 %，并且当你施放噬灵瘟疫时，立即造成等于其总持续效果量 的伤害。' AS `dst`
    UNION ALL SELECT 'A nature-worn guide still bearing traces of the wild - pine needles, moss, and earth.' AS `src`, '你的暗言术：痛、精神鞭笞和吸血鬼之触法术还会使有害法术的命中几率提高 ，持续 d，并使你的心灵震爆、精神鞭笞和精神灼烧法术从法术能量获得的收益提高 。' AS `dst`
    UNION ALL SELECT 'A manuscript that seems to exist in multiple moments simultaneously, its text shifting.' AS `src`, '你的精神鞭笞有  的几率刷新目标身上暗言术：痛的持续时间，并使你受到的来自你自己的暗言术：灭的伤害降低 。' AS `dst`
    UNION ALL SELECT 'A bone-bound journal that chills the air around it and whispers with forbidden knowledge.' AS `src`, '使你的火焰图腾和火焰新星造成的伤害提高 %，并使你的熔岩爆裂造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'A scorching codex with flames dancing across its surface, radiating intense heat.' AS `src`, '使你的震击法术和风剪的冷却时间缩短 00' AS `dst`
    UNION ALL SELECT 'A writhing treatise covered in symbols that shift when not observed directly.' AS `src`, '使你在施放闪电箭、闪电链、熔岩爆裂和妖术法术时受到伤害性攻击造成的延迟降低 。' AS `dst`
    UNION ALL SELECT 'A golden scripture that glows with the warm light of dawn and radiates healing energy.' AS `src`, '使你的火焰、冰霜和自然法术的命中几率提高 ，并使火焰、冰霜和自然法术造成的威胁值降低 。' AS `dst`
    UNION ALL SELECT 'A technical manual filled with blueprints and the faint sound of ticking machinery.' AS `src`, '使你的闪电箭和闪电链法术有  的几率对同一目标额外施放一次同类法术，不消耗额外资源，造成一半伤害且不产生威胁值。' AS `dst`
    UNION ALL SELECT 'A chilling manual that lowers the temperature and carries the scent of funeral preparations.' AS `src`, '使你的熔岩爆裂法术的爆击伤害加成额外提高 %，并且当你的烈焰震击被驱散时，你的施法速度提高 ，持续 94d。' AS `dst`
    UNION ALL SELECT 'An ancient stone tablet carved with glowing runes that pulse with primordial power.' AS `src`, '使你的治疗法术产生的威胁值降低 ，并使你的有益法术和持续性伤害效果被驱散的几率降低 。' AS `dst`
    UNION ALL SELECT 'A mysterious tome.' AS `src`, '当你从治疗波或激流法术获得爆击效果时，你有  的几率立即获得法力，如同消耗了一枚水之护盾宝珠；当你从次级治疗波获得爆击效果时，有  的几率如此；当你从治疗链获得爆击效果时，有  的几率如此。' AS `dst`
    UNION ALL SELECT 'A gemstone of some sort that resonates with magic.' AS `src`, '使你在施放任何萨满治疗法术时受到伤害性攻击造成的延迟降低 。' AS `dst`
    UNION ALL SELECT 'It shines bright.' AS `src`, '在你从某个治疗法术获得爆击效果后，使你的目标受到的物理伤害降低 ，持续 。' AS `dst`
    UNION ALL SELECT 'Seems like someone left this Book of Healing here, wonder if someone is in need' AS `src`, '使你的法力之泉图腾的效果提高 %，并使你的治疗之泉图腾的治疗量提高 。' AS `dst`
    UNION ALL SELECT 'Right click to open the Build Master\'s Bounty' AS `src`, '使你的治疗波法术的治疗量提高 。' AS `dst`
    UNION ALL SELECT 'The scroll seems to hold information on a great and ancient power.' AS `src`, '使任何施加于萨满的沉默或打断效果的持续时间缩短  该效果不与其他同类效果叠加。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to specialization IX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '使你的治疗量提高，提高量等于你智力值的 。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to specialization X and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '当你以治疗波、次级治疗波或激流造成爆击治疗时，你会召唤一位先祖之魂协助你，立即为 40 码内生命值百分比最低的队伍或团队成员治疗，治疗量为该次治疗量的 。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to specialization XI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '使你的大地之力图腾和火舌图腾的效果提高 。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to specialization XII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '使你的闪电之盾宝珠造成的伤害提高 %，使你的水之护盾宝珠提供的法力提高 ，并使你的大地之盾宝珠的治疗量提高 。' AS `dst`
    UNION ALL SELECT 'Teaches Rupture (Rank 6).' AS `src`, '使你的风怒武器效果造成的伤害提高 ，使你的火舌武器的法术伤害提高 ，并使你的大地生命武器的额外治疗提高 。' AS `dst`
    UNION ALL SELECT 'Returns you to Booty Bay in Stranglethorn Vale.' AS `src`, '使你的闪避几率额外提高 %，并使所有施加于你的缴械效果的持续时间缩短  该效果不与其他缩短缴械持续时间的效果叠加。' AS `dst`
    UNION ALL SELECT 'An Ethereal Box containing random cosmetic items from the Ethereal Bazaar! Has a rare chance at receiving the Seasonal Exclusive Mount' AS `src`, '使你的攻击强度提高，提高量等于你智力值的 。' AS `dst`
    UNION ALL SELECT 'Maxes out a Profession of your choice. You will need to learn the profession as well.' AS `src`, '使你的精准提高 1，并且在萨满  码范围内时，使所有队伍和团队成员的攻击强度提高 。' AS `dst`
    UNION ALL SELECT 'Will grant you: Debilitating Roar' AS `src`, '使你的所有武器造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'This book seems quite the worse for wear.' AS `src`, '使你的双持命中几率额外提高 。' AS `dst`
    UNION ALL SELECT 'Turn autoloot on. Do not open without at least 12 Bag Slots free.' AS `src`, '当你以近战攻击和技能造成伤害时，你有  的几率以闪电之盾宝珠充能击中目标，并且你的闪电之盾额外获得  次充能。' AS `dst`
    UNION ALL SELECT 'Turn autoloot on. Do not open without at least 3 Bag Slots free.' AS `src`, '使你的瞬发萨满法术的法力消耗降低 ，并使你的法术强度提高，提高量等于你攻击强度的 。' AS `dst`
    UNION ALL SELECT 'This is heavier than it looks.' AS `src`, '使你的横扫技能造成的伤害提高 ，并降低敌人在你潜行时发现你的几率。' AS `dst`
    UNION ALL SELECT 'I think someone will want this!' AS `src`, '使你的布甲和皮甲物品提供的护甲提高 。' AS `dst`
    UNION ALL SELECT 'May the Light guide your path.' AS `src`, '使你在熊形态、巨熊形态或猎豹形态下的爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to cut a Fractured Crimson Spinel.' AS `src`, '使你在猎豹、熊和巨熊形态下的近战攻击强度提高，提高量等于你等级的  与所装备武器攻击强度的 。此外，你的终结技每消耗一个连击点有  的几率使你的下一个基础施法时间少于 10 秒的自然法术变为瞬发。' AS `dst`
    UNION ALL SELECT 'Turns you or your party members into a ghost. oOoO Scary!' AS `src`, '使你在熊形态或巨熊形态下的闪避几率提高 %，并且你在熊形态或巨熊形态下每次闪避时都会回复  点怒气。' AS `dst`
    UNION ALL SELECT 'Thank you for Donating!' AS `src`, '使你的所有属性提高 %，使你受到近战攻击爆击的几率降低 %，并使你在熊形态和巨熊形态下由布甲和皮甲物品提供的护甲提高 。' AS `dst`
    UNION ALL SELECT 'Frostmourne has been Disgruntled in battle' AS `src`, '使恐惧效果的持续时间缩短 %，并使你在猎豹形态下处于昏迷状态时受到的所有伤害降低 。' AS `dst`
    UNION ALL SELECT 'Used by a Blacksmith or Engineer to create devices more effective at bypassing Hidden Cache traps.' AS `src`, '使你在熊形态或巨熊形态下的攻击强度提高 ，并使你受到的伤害降低 %。' AS `dst`
    UNION ALL SELECT 'Used by a Cook to create more potent Beast Nest Bait.' AS `src`, '在猎豹形态下，使你的近战爆击伤害提高 ，并使你受到的群体攻击伤害降低 。' AS `dst`
    UNION ALL SELECT 'You can spend your saved 8 Ability Essence on two level 50 and 60 talents when you reach level 60! You can only pick 1 level 60 talent. This chest contains a Dice of Talents, which will allow you to unlearn your chosen 50 and 60 talents and pick new ones.' AS `src`, '在熊形态或巨熊形态下使用激怒技能时，你的伤害提高 %，并且你的猛虎之怒技能还会立即回复  点能量。此外，熊形态、猎豹形态和巨熊形态的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'You will no longer roll new abilities. You will save your 4 Ability Essence earned levels 67 to 70 to allow you to pick one additional level 50 or 60 talent when you reach level 70! You will have a total of 12 Ability Essence to spend on 3 level 50 and 60 talents. You can only pick 1 level 60 talent. This item will also grant you a Scroll of Fortune at levels you are no longer rolling an ability!' AS `src`, '使你的裂伤（熊）技能的冷却时间缩短  秒，并使你的裂伤（豹）技能的能量消耗降低' AS `dst`
    UNION ALL SELECT 'Upon reaching level 70, you can spend your 4 Ability Essence saved from levels 67 to 70 to allow you to pick one additional level 50 or 60 talent when you reach level 70! You will have a total of 12 Ability Essence to spend on 3 level 50 and 60 talents. You can only pick 1 level 60 talent. This item will also grant you a Dice of Destiny!' AS `src`, '使你在施放治疗之触、愤怒、纠缠根须、飓风、滋养、愈合和宁静时受到伤害性攻击造成的延迟降低 。' AS `dst`
    UNION ALL SELECT 'Generates' AS `src`, '使你的恢复系法术产生的威胁值降低 ，并使你的有益法术、月火术和虫群被驱散的几率降低 。' AS `dst`
    UNION ALL SELECT 'Taunts the target to attack you, but has no effect if the target is already attacking you.' AS `src`, '使所有变形形态的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'The hunter takes on the aspects of a dragonhawk, increasing ranged attack power by  and chance to dodge by   Only one Aspect can be active at a time.' AS `src`, '使你的法力回复在施法时仍保留 ，并使你的激怒技能立即产生' AS `dst`
    UNION ALL SELECT 'A steady shot that causes unmodified weapon damage, plus ammo, plus   Causes an additional  against Dazed targets.' AS `src`, '使你的回春术法术的效果提高 。' AS `dst`
    UNION ALL SELECT 'Finishing move that causes damage over time, increased by your attack power.  Lasts longer per combo point:\n   1 point  :  damage over  secs\n   2 points:  damage over  secs\n   3 points:  damage over  secs\n   4 points:  damage over  secs\n   5 points:  damage over  secs' AS `src`, '当你以迅捷治愈、愈合、滋养或治疗之触法术对目标造成爆击治疗时，你有  的几率在目标身上种下一枚生命之种，治疗量为该次治疗量的 。生命之种会在目标下次受到攻击时绽放。持续 04d。' AS `dst`
    UNION ALL SELECT 'Reduces damage from falling.' AS `src`, '你的回春术和野性成长法术有  的几率回复  点能量，' AS `dst`
    UNION ALL SELECT 'Dispels magic on the target, removing  harmful ell:spells' AS `src`, '使你在生命之树形态下由物品提供的护甲提高 %，并使你在生命之树形态下的治疗法术强度提高，提高量等于你精神的 。' AS `dst`
    UNION ALL SELECT 'A burst of Holy energy fills the caster, increasing armor by  and spell power by   Each melee or ranged damage hit against the priest will remove one charge.  Lasts  or until  charges are used.' AS `src`, '使你的月火术、星火术、星辰坠落、愤怒、治疗之触、滋养、愈合和回春术的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'Allows the friendly party or raid target to levitate, floating a few feet above the ground.  While levitating, the target will fall at a reduced speed and travel over water.  Any damage will cancel the effect.  Lasts' AS `src`, '使你的荆棘术和纠缠根须造成的伤害提高 ，并使你的树人造成的伤害提高  此外，你的树人造成的伤害以及你在树皮术激活期间受到的攻击有  的几率使目标眩晕 3 秒。' AS `dst`
    UNION ALL SELECT 'Attempts to cure  disease effect on the target, and  more disease effect every  seconds for' AS `src`, '所有非周期性法术爆击有  的几率赐予你自然的祝福，使你的施法速度提高 ，持续 86d。' AS `dst`
    UNION ALL SELECT 'Causes an explosion of shadow magic around the enemy target, causing  Shadow damage every  sec for  to all enemies within  yards around the target.' AS `src`, '使你在施放星火术、休眠和飓风时受到伤害性攻击造成的延迟降低 ，并使你的总法术急速提高 。' AS `dst`
    UNION ALL SELECT 'Instantly shocks the target with frost, causing  Frost damage and slowing movement speed by   Lasts   Causes a high amount of threat.' AS `src`, '使你的愤怒法术对你虫群影响的目标造成的伤害提高 %，并使你的星火术对受你月火术影响的目标的爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'You hurl molten lava at the target, dealing  Fire damage. If your Flame Shock is on the target, Lava Burst will deal a critical strike.' AS `src`, '使你的星火术、月火术和愤怒法术造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Purges the enemy target, removing  beneficial magic fect:effects' AS `src`, '你的枭兽光环还会使受影响的目标获得  急速，并使你获得相当于你精神  的额外法术伤害。' AS `dst`
    UNION ALL SELECT 'Imbue the Shaman\'s weapon with frost.  Each hit has a chance of causing  additional Frost damage and slowing the target\'s movement speed by  for   Lasts 30 minutes.' AS `src`, '你的精灵之火法术还会使目标被法术攻击命中的几率提高 %，并使你的伤害法术对受精灵之火影响的目标的爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'Cures  poison fect:effects' AS `src`, '在枭兽形态下，针对你的攻击有  的几率使你进入狂暴状态，使你的伤害提高 %，使你在施放平衡法术时免疫延迟，并每  秒回复  基础法力值。持续 91d。' AS `dst`
    UNION ALL SELECT 'Increases your resistance to all magic by  and allows  of your mana regeneration to continue while casting.  In addition, the duration of all harmful Magic effects used against you is reduced by   Only one type of Armor spell can be active on the Mage at any time.  Lasts' AS `src`, '当你以星火术造成爆击时，你有  的几率使愤怒造成的伤害提高  当你以愤怒造成爆击时，你有  的几率使你的星火术爆击几率提高  每个效果持续 ，并且各自有独立的  秒冷却时间。两个效果不能同时触发。' AS `dst`
    UNION ALL SELECT 'Teleports the caster to Dalaran.' AS `src`, '使你的毁灭系法术的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'Teleports the caster to the Moonglade.' AS `src`, '使你的灼热之痛法术的爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'Launches a bolt of frostfire at the enemy, causing  to  Frostfire damage, slowing movement speed by  and causing an additional  Frostfire damage over  This spell will be checked against the lower of the target\'s Frost and Fire resists.' AS `src`, '使你的法术爆击几率额外提高 ，并且在受到物理攻击命中时，你有  的几率使你的下一个暗影箭或烧尽法术的施法时间缩短  该效果持续 ，并且每 8 秒最多触发一次。' AS `dst`
    UNION ALL SELECT 'Deals  to  Frost damage to an enemy target.  Causes triple damage against Frozen targets.' AS `src`, '使你的献祭法术造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Banishes the enemy target, preventing all action but making it invulnerable for up to   Only one target can be banished at a time.  Casting Banish on a banished target will cancel the spell.  Only works on Demons and Elementals.' AS `src`, '在受到法术命中后，你有  的几率获得虚空防护，使该法术学派对你造成的所有伤害降低 ，持续 70d。' AS `dst`
    UNION ALL SELECT 'While applied to target weapon it increases damage dealt by direct spells by  and spell critical strike rating by   Lasts for 1 hour.' AS `src`, '使你的暗影箭、暗影灼烧、混乱之箭、灵魂之火、烧尽、灼热之痛和燃烧法术有  的几率回复相当于所造成伤害  的生命值。' AS `dst`
    UNION ALL SELECT 'Creates a Fel Healthstone that can be used to instantly restore  health.\n\nConjured items disappear if logged out for more than 15 minutes.' AS `src`, '使你的小鬼造成的伤害提高 %，并且你的小鬼造成的所有爆击有  的几率使你的下一个法术的法术爆击几率提高  该效果持续 83d。' AS `dst`
    UNION ALL SELECT 'Finishing move that causes damage and stuns the target.  Non-player victim spellcasting is also interrupted for   Causes more damage and lasts longer per combo point:\n   1 point  :  damage, 1 sec\n   2 points:  damage, 2 sec\n   3 points:  damage, 3 sec\n   4 points:  damage, 4 sec\n   5 points:  damage, 5 sec' AS `src`, '使你的法术命中几率提高 %，并使你的痛苦系法术的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'Target\'s melee attack power is reduced by  and armor is reduced by  for   Only one Curse per Warlock can be active on any one target.' AS `src`, '使你的腐蚀术的伤害提高，提高量等于' AS `dst`
    UNION ALL SELECT 'Creates a portal, teleporting group members that use it to Silvermoon.' AS `src`, '使你的法术伤害提高 %，并使你的腐蚀术和痛苦无常法术的周期性爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'Creates a portal, teleporting group members that use it to Orgrimmar.' AS `src`, '当你的生命值等于或低于 20% 时，你的吸取生命吸取的生命值提高 ；当你的目标生命值等于或低于 35% 时，你的暗影法术造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Creates a portal, teleporting group members that use it to Thunder Bluff.' AS `src`, '使你的小鬼的火焰箭、火焰之盾和血契法术的效果提高 。' AS `dst`
    UNION ALL SELECT 'Creates a portal, teleporting group members that use it to Undercity.' AS `src`, '使你的总耐力提高 。' AS `dst`
    UNION ALL SELECT 'Teleports the caster to Orgrimmar.' AS `src`, '使你的虚空行者的折磨、吞噬暗影、牺牲和受难法术的效果提高 %，并使你的恶魔卫士的恶魔狂怒效果的攻击强度加成提高 。' AS `dst`
    UNION ALL SELECT 'Teleports the caster to Silvermoon.' AS `src`, '使你的小鬼、虚空行者、魅魔、地狱猎犬和恶魔卫士的耐力和智力提高 ，并使你的最大生命值和法力值提高 。' AS `dst`
    UNION ALL SELECT 'Teleports the caster to Thunder Bluff.' AS `src`, '使你的魅魔的诱惑的施法时间缩短 %，并使你的魅魔的诱惑和次级隐形术的持续时间提高 。' AS `dst`
    UNION ALL SELECT 'Teleports the caster to Undercity.' AS `src`, '使你的恶魔护甲和邪甲术法术的效果提高 。' AS `dst`
    UNION ALL SELECT 'Slam the target with your shield, causing Holy damage based on your block value plus an additional' AS `src`, '使你的献祭的持续时间延长 00' AS `dst`
    UNION ALL SELECT 'Increases the rogue\'s movement speed by  for   Does not break stealth.' AS `src`, '使你受到近战和法术爆击的几率降低 ，并使你召唤的恶魔受到的所有伤害降低 。' AS `dst`
    UNION ALL SELECT 'Incapacitates the target for up to   Must be stealthed.  Only works on Humanoids that are not in combat.  Any damage caused will revive the target.  Only 1 target may be sapped at a time.' AS `src`, '使你的法术伤害提高，提高量等于你当前恶魔的耐力与智力总和的 。' AS `dst`
    UNION ALL SELECT 'The Death Knight blows the Horn of Winter, which generates 10 runic power and increases total Strength and Agility of all party or raid members within  yards by   Lasts' AS `src`, '使你召唤的恶魔的爆击几率提高，提高量等于你爆击几率的 。' AS `dst`
    UNION ALL SELECT 'Strikes fear in the enemy, causing it to run in fear for up to   Damage caused may interrupt the effect.  Only 1 target can be feared at a time.' AS `src`, '使你的恶魔增效、恶魔变形和恶魔支配法术的冷却时间缩短 。' AS `dst`
    UNION ALL SELECT 'Forces the enemy target to sleep for up to   Any damage will awaken the target.  Only one target can be forced to hibernate at a time.  Only works on Beasts and Dragonkin.' AS `src`, '使你的雄鹰守护和龙鹰守护的闪避加成提高 。' AS `dst`
    UNION ALL SELECT 'Increases the friendly target\'s armor by  and all attributes by  for' AS `src`, '使你的宠物的护甲值提高 ，并使你由物品提供的护甲提高 。' AS `dst`
    UNION ALL SELECT 'Ice shards pelt the target area doing  Frost damage over 85d.' AS `src`, '在你的宠物  码范围内的所有队伍和团队成员造成的所有伤害提高 。此外，使奥术射击和稳固射击造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Slam the target with your shield, causing  damage, modified by your shield block value, and dispels  magic effect on the target.  Also causes a high amount of threat.' AS `src`, '使你的闪避几率提高 ，并使你的宠物的闪避几率额外提高  此外，使你的杀戮命令技能的冷却时间缩短 00' AS `dst`
    UNION ALL SELECT 'Wounds the target causing them to bleed for  damage plus an additional  (based on weapon damage) over   If used while your target is above  health, Rend does  more damage.' AS `src`, '使你的狂野怒火、胁迫和宠物特殊技能的冷却时间缩短 。' AS `dst`
    UNION ALL SELECT 'Teaches Lightwell (Rank 3)' AS `src`, '当你以奥术射击、稳固射击或杀戮射击造成爆击时，你有  的几率使你的宠物的下 2 次特殊攻击必定爆击。' AS `dst`
    UNION ALL SELECT 'Summons a Totem of Wrath with  health at the feet of the caster.  The totem increases spell power by  for all party and raid members, and increases the critical strike chance of all attacks by  against all enemies within  yards.  Lasts' AS `src`, '使你的远程武器的射程提高  码。' AS `dst`
    UNION ALL SELECT 'Allows you to ride ground mounts that require a riding skill of 150.' AS `src`, '使移动限制效果的持续时间缩短 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to make a Wooden Effigy.' AS `src`, '冰冻陷阱和冰霜陷阱 - 持续时间延长  爆炸陷阱、献祭陷阱和黑箭 - 周期性伤害提高  蛇陷阱 - 召唤的蛇数量提高' AS `dst`
    UNION ALL SELECT 'Used to unlearn spells by clicking the spell icon in Character Advancement.\n\nCan only be used for Talents while in Wildcard Mode and Draft Mode' AS `src`, '使你的招架几率提高 %，并使所有施加于你的缴械效果的持续时间缩短   该效果不与其他缩短缴械持续时间的效果叠加。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft an Homicite Buckle' AS `src`, '使你的爆炸射击、爆炸陷阱、黑箭和献祭陷阱造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Smelted by a Miner at a Sanguine Workbench to create metal.\n\nObtained from mining nodes in High-Risk Tier zones.' AS `src`, '当你以冰冻陷阱、冰冻之箭或冰霜陷阱困住目标时，你有  的几率；当你以献祭陷阱、爆炸陷阱或黑箭造成周期性伤害时，你有  的几率，使你的下 2 次奥术射击或爆炸射击不触发冷却、不消耗法力且不消耗弹药。该效果有  秒冷却时间。' AS `dst`
    UNION ALL SELECT 'Cured by a Leatherworker at a Sanguine Workbench to create workable leather.\n\nObtained from skinning beasts in High-Risk Tier zones.' AS `src`, '使你和你宠物的攻击强度与远程攻击强度提高，提高量等于你总耐力的 。' AS `dst`
    UNION ALL SELECT 'Cured by an Cook at a Sanguine Workbench to create Cured Meat.\n\nObtained from slaying beasts in High-Risk Meat and Leather areas.' AS `src`, '使你的所有攻击的爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'Due to technological advancements these have been obsolete and can be safely sold.' AS `src`, '使所有陷阱、近战技能和黑箭的法力消耗降低 ，并使所有陷阱和黑箭的冷却时间缩短 00' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a batch Twisted Magic Keys' AS `src`, '你的远程爆击有  的几率为你施加弱点暴露。弱点暴露使你的攻击强度提高，提高量等于你敏捷的 ，持续 01d。' AS `dst`
    UNION ALL SELECT 'This recipe is no longer in use and can be safely sold to a vendor.' AS `src`, '使你的任何射击造成爆击时有  的几率回复该次射击法力消耗的 40%。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a batch Void Magic Keys' AS `src`, '若翼龙钉刺被驱散，驱散者也会受到翼龙钉刺影响，持续剩余时间的 ，并使你对受你毒蛇钉刺影响的目标造成的所有伤害提高 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Homicite Buckle using 	Plague Iron' AS `src`, '使你的总敏捷额外提高 %，并且你的奥术射击、爆炸射击和稳固射击的爆击有  的几率使最多 10 名队伍或团队成员获得每 5 秒回复其最大法力值 1% 的法力回复效果。持续 69d。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Homicite Buckle using 	Dragonsteel' AS `src`, '使你在施放稳固射击时受到伤害性攻击造成的延迟降低 %，并使你的命中几率提高 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Homicite Buckle using 	Living Iron' AS `src`, '使你的远程攻击强度提高，提高量等于你总智力的 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Homicite Buckle using 	Star Metal' AS `src`, '使你的猎人印记提供的攻击强度加成提高 %，并使你的猎人印记的法力消耗降低 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to craft a Homicite Buckle using 	Wintersteel' AS `src`, '使你的奥术射击造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Obtained from completing Endgame Manastorms from |cffFFFFFFlevel 316 to level 346.|r\n\n|cFFffffffContains:|r \n\n+ Heroic Tier 4 Gear\n\n|cFFffffffChance to contain:|r\n\n+ Mythic Karazhan Gear\n+ Mythic Gruul\'s Lair Gear\n+ Mythic Dungeon Dungeon Gear' AS `src`, '使你的毒蛇钉刺和翼龙钉刺造成的伤害提高 ，并使你的蝰蛇钉刺吸取的法力提高   此外，使你的钉刺持续性伤害效果被驱散的几率降低 。' AS `dst`
    UNION ALL SELECT 'A reward for completing Quests throughout Azeroth' AS `src`, '使你的多重射击、瞄准射击和乱射法术造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Cultivated by an Alchemist at a Sanguine Workbench to create ingredients.\nObtained from gathering Herbs Nodes in Tier 1, 2 & 3 High-Risk zones.' AS `src`, '使你的远程武器造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Cultivated by an Alchemist at a Sanguine Workbench to create ingredients.\nObtained from Tier 1, 2 & 3 High-Risk zones.' AS `src`, '你的爆击瞄准射击、稳固射击和奇美拉射击会使目标流血，在 68d 内受到所造成伤害  的流血伤害。' AS `dst`
    UNION ALL SELECT 'Cultivated by an Alchemist at a Sanguine Workbench to create ingredients.\nObtained from Tier 2 & 3 High-Risk zones.' AS `src`, '使你的多重射击和瞄准射击技能的爆击几率提高 ，并使你在引导乱射时受到伤害性攻击造成的延迟降低 。' AS `dst`
    UNION ALL SELECT 'Smelted by a Miner at a Sanguine Workbench to create metal.\nObtained from Mining Nodes in Tier 1, 2 & 3 High-Risk zones.' AS `src`, '当你以自动射击造成伤害时，你有  的几率额外射出一箭，造成  的武器自然伤害。狂野箭袋不消耗弹药。' AS `dst`
    UNION ALL SELECT 'Smelted by a Miner at a Sanguine Workbench to create metal.\nObtained from Tier 1, 2 & 3 High-Risk zones.' AS `src`, '你的稳固射击命中后有  的几率使你的下一个瞄准射击、奥术射击或奇美拉射击造成的伤害提高 %，并使其法力消耗降低 20s2%。' AS `dst`
    UNION ALL SELECT 'Smelted by a Miner at a Sanguine Workbench to create metal.\nObtained from Tier 2 & 3 High-Risk zones.' AS `src`, '除正常效果外，你的审判法术还会使针对该目标的所有攻击的爆击几率额外提高 。' AS `dst`
    UNION ALL SELECT 'Cured by a Leatherworker at a Sanguine Workbench to create workable leather.\nObtained from Skinning Beasts in Tier 1, 2 & 3 High-Risk zones.' AS `src`, '使你的所有法术和攻击的爆击几率提高 ，并使驱邪术和十字军打击造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Cured by a Leatherworker at a Sanguine Workbench to create workable leather.\nObtained from Tier 1, 2 & 3 High-Risk zones.' AS `src`, '使造成的所有伤害提高 ，并使对人类、恶魔、亡灵和元素生物造成的所有伤害额外提高 。' AS `dst`
    UNION ALL SELECT 'Cured by a Leatherworker at a Sanguine Workbench to create workable leather.\nObtained from Tier 2 & 3 High-Risk zones.' AS `src`, '在武器挥击、法术或技能造成爆击后，使你的物理和神圣伤害提高 ，持续 。该效果最多叠加  次。' AS `dst`
    UNION ALL SELECT 'Shattered by an Enchanter at a Sanguine Workbench to create Dust.\nObtained from Tier 1, 2 & 3 High-Risk zones.' AS `src`, '你的伤害性审判法术有  的几率使最多 10 名队伍或团队成员获得恢复效果，每 5 秒回复其最大法力值的 1%，持续 d，并立即为你恢复  的基础法力值。' AS `dst`
    UNION ALL SELECT 'Shattered by an Enchanter at a Sanguine Workbench to create Dust.\nObtained from Tier 2 & 3 High-Risk zones.' AS `src`, '使所有可造成爆击的审判的爆击几率提高 ，并使所有行为造成的威胁值降低 ，但处于正义之怒效果下时除外。' AS `dst`
    UNION ALL SELECT 'Weaved by a Tailor at a Sanguine Workbench to create Thread.\nObtained from slaying Humanoids in Tier 1, 2 & 3 High-Risk zones.' AS `src`, '你的光环还会使施法、远程和近战攻击速度提高 。' AS `dst`
    UNION ALL SELECT 'Weaved by a Tailor at a Sanguine Workbench to create Thread.\nObtained from Tier 1, 2 & 3 High-Risk zones.' AS `src`, '使你的法术强度提高，提高量等于你攻击强度的 ，并且你的爆击治疗会为目标在 12 秒内治疗治疗量的 。' AS `dst`
    UNION ALL SELECT 'Weaved by a Tailor at a Sanguine Workbench to create Thread.\nObtained from Tier 2 & 3 High-Risk zones.' AS `src`, '当你的审判、十字军打击和神圣风暴法术造成爆击时，你的目标会在 40d 内受到  的额外伤害。' AS `dst`
    UNION ALL SELECT 'Cured by an Cook at a Sanguine Workbench to create Cured Meat.\nObtained from slaying Beasts in Tier 1, 2 & 3 High-Risk zones.' AS `src`, '使你的圣光术、圣光闪现的治疗量以及神圣震击的效果提高 。' AS `dst`
    UNION ALL SELECT 'Cured by an Cook at a Sanguine Workbench to create Cured Meat.\nObtained from Tier 1, 2 & 3 High-Risk zones.' AS `src`, '使你的专注光环的效果额外提高 ，并且当任何光环激活时，使施加于受影响队伍成员的沉默或打断效果的持续时间缩短   该持续时间缩短不与其他任何效果叠加。' AS `dst`
    UNION ALL SELECT 'Cured by an Cook at a Sanguine Workbench to create Cured Meat.\nObtained from Tier 2 & 3 High-Risk zones.' AS `src`, '使你的圣光术和神圣震击的爆击效果几率提高 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Pure Sanguine Metal' AS `src`, '使你的圣光术有  的几率使你的下一个圣光术的施法时间缩短 00' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Pure Core Metal' AS `src`, '所有针对你的攻击有  的几率只造成一半伤害。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Pure Scourge Metal' AS `src`, '你的清洁术有  的几率使目标对疾病、魔法和毒药的抗性提高 ，持续 59d。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transmute Pure Demon Metal' AS `src`, '使所有昏迷效果的持续时间额外缩短 ，并使你的有益法术和持续性伤害效果被驱散的几率额外降低 。' AS `dst`
    UNION ALL SELECT 'Teaches: Conjure Refreshment.\n\nGain this permanent spell.' AS `src`, '正义之怒激活时，受到的所有伤害降低 。' AS `dst`
    UNION ALL SELECT 'The claws hum with primal energy.' AS `src`, '使你的虔诚光环的护甲加成提高 ，并使受你任何光环影响的目标所受到的治疗量提高 。' AS `dst`
    UNION ALL SELECT 'This Elemental Water is unstable.' AS `src`, '使你在装备一把单手近战武器时造成的所有伤害提高 。' AS `dst`
    UNION ALL SELECT 'This Elemental Earth is unstable.' AS `src`, '会使你生命值低于 35% 的伤害降低   此外，本会杀死你的攻击会使你恢复最多相当于你最大生命值  的生命值（治疗量基于防御值）。该治疗效果每 33d 最多触发一次。' AS `dst`
    UNION ALL SELECT 'This Elemental Fire is unstable.' AS `src`, '使你的格挡值提高 ，并且针对你的伤害性近战和远程攻击有  的几率使你的格挡几率提高  持续  或  次格挡。' AS `dst`
    UNION ALL SELECT 'Written in a language you cannot decipher.' AS `src`, '使你的精准提高 1，使你的总耐力和爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'The unremarkable tome pushes back with dark energy when opened, but contains hidden writing of ancient spells and forbidden rituals.' AS `src`, '使你的法术强度提高，提高量等于你力量的 ，并使你的爆击治疗的治疗量提高 。' AS `dst`
    UNION ALL SELECT 'The mysterious tome emits a pulsing energy that shocks anyone who tries to open it, but is rumored to contain the secrets of life and death, and unimaginable power.' AS `src`, '使受到的所有伤害降低 ，并使你的复仇者之盾有  的几率使你的目标沉默，持续 29d。' AS `dst`
    UNION ALL SELECT 'The ancient tome resists all attempts to open it, but emanates a subtle aura of necrotic magic, promising dangerous knowledge.' AS `src`, '使血魄打击、天灾打击、心脏打击和湮灭的爆击几率提高 %，并使你在鲜血或邪恶灵气下产生的威胁值降低 。' AS `dst`
    UNION ALL SELECT 'The tome looks unsealed, but impossible to open due to a mysterious force. Dark energy emanates from the book\'s edges, tempting those who seek its secrets.' AS `src`, '每当你以死亡打击或湮灭命中时，有  的几率使冰霜和邪恶符文在激活时变为死亡符文。死亡符文可当作鲜血、冰霜或邪恶符文使用。' AS `dst`
    UNION ALL SELECT 'Used to unlock Mystic Enchanting Specialization at an Enchanting Altar. Can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '使符文分流提供的生命值提高 ，并使其冷却时间降低 00' AS `dst`
    UNION ALL SELECT 'Can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '你以等同于你招架几率的几率使一次直接伤害法术对你造成的伤害降低 。' AS `dst`
    UNION ALL SELECT 'Allows you to ride ground mounts that require a riding skill of 75.' AS `src`, '每当你杀死可获得经验值或荣誉的目标时，为你恢复最多相当于你最大生命值  的生命值。' AS `dst`
    UNION ALL SELECT 'Stuns the target for   Only usable on Frozen targets.  Deals  to  damage to targets permanently immune to stuns.' AS `src`, '使血魄打击的伤害提高 ，心脏打击的伤害提高 %，并使血液沸腾的伤害提高 。' AS `dst`
    UNION ALL SELECT 'When activated, this ability causes your Mangle (Bear) ability to hit up to  targets and have no cooldown, and reduces the energy cost of all your Cat Form abilities by   Lasts   You cannot use Tiger\'s Fury while Berserk is active. \n\nClears the effect of Fear and makes you immune to Fear for the duration.' AS `src`, '使你的总力量提高 %，总耐力提高 %，精准提高' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Fire Blast spell by 00' AS `src`, '在武器挥击、法术或技能造成爆击后，使你的物理伤害提高 ，持续 。该效果最多叠加  次。' AS `dst`
    UNION ALL SELECT 'When Interrupted or Silenced you have a  chance to become immune to the next Interrupt or Silence mechanic.  Lasts 48d.' AS `src`, '你的血魄打击和心脏打击有  的几率对目标发射一次免费的死亡缠绕。' AS `dst`
    UNION ALL SELECT 'Increases the range of all Fire spells except Frostfire Bolt by  yards.' AS `src`, '使你的血液沸腾、血魄打击、死亡打击和心脏打击技能的爆击伤害加成提高 。' AS `dst`
    UNION ALL SELECT 'Reduces the pushback suffered from damaging attacks while casting Fire spells by  and reduces the threat caused by your Fire spells by .' AS `src`, '你的冰霜打击造成  的额外伤害，并使你的冰霜疫病的近战和远程攻击速度降低效果额外提高 。' AS `dst`
    UNION ALL SELECT 'Gives you a  chance when hit by a melee or ranged attack to increase your movement speed by  and dispel all movement impairing effects.  This effect lasts 43d.' AS `src`, '使你的单手近战武器命中几率提高 ，并使你的副手武器造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Increases damage of all spells against targets with less than 35% health by .' AS `src`, '使你的近战特殊技能的爆击几率提高   此外，有  的几率使你的湮灭在不消耗疾病的情况下造成伤害。' AS `dst`
    UNION ALL SELECT 'When below 35% health all damage taken is reduced by  and your Pyroblast spell\'s cast time is reduced by  secs while the cooldown is increased by  secs.  In addition, melee and ranged attacks made against you have a  chance to disarm your attacker\'s main hand and ranged weapons.' AS `src`, '使近战攻击命中你的几率降低 。' AS `dst`
    UNION ALL SELECT 'Your damaging Blast Wave and Dragon\'s Breath spells have a  chance to make your next Flamestrike spell instant cast and cost no mana.  Lasts 41d.' AS `src`, '患病的敌人受到你的冰冷触摸、凛风冲击和冰霜打击的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Increases the armor and resistances given by your Frost Armor and Ice Armor spells by   In addition, gives your Frost Ward and Fire Ward a  chance to negate the warded damage spell and restore mana equal to the damage caused.' AS `src`, '使你的冰冷触摸和湮灭的爆击几率提高 ，并且施放湮灭有  的几率重置凛风冲击的冷却时间，并使你的下一个凛风冲击不消耗符文。' AS `dst`
    UNION ALL SELECT 'Increases the range of your Frostbolt, Ice Lance, Deep Freeze and Blizzard spells and the radius of your Frost Nova and Cone of Cold spells by .' AS `src`, '双持时，你的死亡打击、湮灭、瘟疫打击、符文打击、血魄打击和冰霜打击有  的几率同时以副手武器造成伤害。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Cold Snap, Ice Barrier and Summon Water Elemental spells by .' AS `src`, '使血魄打击和冰霜打击的伤害提高   此外，每当你以血魄打击或瘟疫打击命中时，有  的几率使鲜血符文在激活时变为死亡符文。死亡符文可当作鲜血、冰霜或邪恶符文使用。' AS `dst`
    UNION ALL SELECT 'Gives your Ice Barrier spell a  chance to freeze all enemies within  yds for  when it is destroyed.' AS `src`, '当你被法术命中时，你有  的几率使你对那类魔法的抗性提高，持续 18 秒。最多叠加 3 次。' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Frostbolt spell by an amount equal to  of your spell power and reduces the cast time by  sec.' AS `src`, '使你的血魄打击、冰霜打击、凛风冲击和湮灭技能的爆击伤害加成提高 %，并使你的冰封之韧的持续时间延长 00' AS `dst`
    UNION ALL SELECT 'Gives your Chill effects a  chance to grant you the Fingers of Frost effect, which treats your next  spells cast as if the target were Frozen.  Lasts 44d.' AS `src`, '使你的法术命中几率提高 ，并使你的持续性伤害疾病被治愈的几率降低 。' AS `dst`
    UNION ALL SELECT 'Reduces the chance your helpful spells and damage over time effects will be dispelled by  and reduces the threat caused by your Arcane spells by .' AS `src`, '使死亡缠绕的伤害和治疗量提高 ，并使死亡凋零的冷却时间缩短 00' AS `dst`
    UNION ALL SELECT 'Increases the range of your Arcane spells by  yards and the effect of your Amplify Magic and Dampen Magic spells by .' AS `src`, '使瘟疫打击的伤害提高 ，天灾打击的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Decreases the mana lost per point of damage taken when Mana Shield is active by  and increases the resistances granted by Mage Armor by .' AS `src`, '你的自动攻击有  的几率触发血染打击，造成  的武器伤害，并为目标身上的每种疾病额外造成  。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your next damaging spell by  after gaining Clearcasting or Presence of Mind.' AS `src`, '你受到的所有魔法伤害降低   此外，你的反魔法护罩额外吸收  的法术伤害。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Presence of Mind, Arcane Power and Invisibility spells by  and the cooldown of your Evocation spell by 000' AS `src`, '每当你以血魄打击或瘟疫打击命中时，有  的几率使鲜血符文在激活时变为死亡符文。死亡符文可当作鲜血、冰霜或邪恶符文使用。' AS `dst`
    UNION ALL SELECT 'Increases critical strike damage bonus of all spells by .' AS `src`, '当你的疾病对敌人造成伤害时，有等同于你近战爆击几率的几率，对目标及 8 码内的所有敌人造成  的额外伤害。忽略处于可被伤害取消的法术效果下的目标。' AS `dst`
    UNION ALL SELECT 'Increases the bleed damage done by your Rend ability by .' AS `src`, '使你的宠物的移动速度提高 。' AS `dst`
    UNION ALL SELECT 'Increases the amount of rage generated by your Charge ability by' AS `src`, '装有各种货币。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Overpower ability by .' AS `src`, '按住 Shift 并右键点击以打开，请确保背包有足够的空位！' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your abilities by .' AS `src`, '可当作空气、大地、火焰和水之图腾使用。它同时也是易腐物品。' AS `dst`
    UNION ALL SELECT 'Reduces the chance for your attacks to be dodged by  and reduces the duration of all Disarm effects used against you by   This does not stack with other Disarm duration reducing effects.' AS `src`, '强化你的法术视觉效果。再次使用可关闭该视觉效果。' AS `dst`
    UNION ALL SELECT 'Increases your total Strength and Stamina by  and your Expertise by' AS `src`, '在埃雷利安堡垒或碎石堡垒将这些水晶交给你的阵营统帅，帮助你的阵营夺回奥金顿！' AS `dst`
    UNION ALL SELECT 'Decreases the swing time of your Slam ability by 00' AS `src`, '这件便利物品已加入你的装饰收藏，你所有角色都可使用。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Overpower and Revenge abilities by 00' AS `src`, '你可以在你的基地用它们购买物资！' AS `dst`
    UNION ALL SELECT 'Increases the rage generated by your Bloodrage ability by .' AS `src`, '背包空位少于 6 格时请勿使用。' AS `dst`
    UNION ALL SELECT 'Increases your block value by  and reduces the cooldown of your Shield Block ability by 00' AS `src`, '由 TBRC 制作' AS `dst`
    UNION ALL SELECT 'Reduces the chance you\'ll be hit by spells by  and when the ability is used it will reflect the first spell cast against the  closest party members within 20 yards.' AS `src`, '一块风化的石碑，上面刻着原始野蛮人的符文，似乎脉动着原始的能量。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Disarm ability by 00' AS `src`, '在我们加入语言功能之前，这瓶药水没有任何效果。' AS `dst`
    UNION ALL SELECT 'Gives your Shield Bash and Heroic Throw abilities a  chance to silence the target for  and increases the damage of your Shield Slam ability by .' AS `src`, '教你如何制作魔法净化药水。' AS `dst`
    UNION ALL SELECT 'Whenever you take damage from or block a melee attack you cause damage equal to  of your block value.' AS `src`, '用来砍树！' AS `dst`
    UNION ALL SELECT 'Increases the area of effect and duration of your Battle Shout, Demoralizing Shout and Commanding Shout by .' AS `src`, '缺口的训练斧' AS `dst`
    UNION ALL SELECT 'Reduces the rage cost of your Execute ability by' AS `src`, '教你如何制作原始追猎者护目镜。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Intercept ability by 00' AS `src`, '教你如何缝制炽热之核手套。' AS `dst`
    UNION ALL SELECT 'The Berserker Rage ability will generate' AS `src`, '教你如何制作重型黑曜石腰带。' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Whirlwind ability by .' AS `src`, '教你如何提炼源质。' AS `dst`
    UNION ALL SELECT 'Reduces the Energy cost of your Sinister Strike ability by' AS `src`, '这里的牛排可事关重大！' AS `dst`
    UNION ALL SELECT 'Increases the duration of your Slice and Dice ability by .' AS `src`, '这只独特的手表正在扭曲时间。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Sprint and Evasion abilities by 00' AS `src`, '战斗专家想要什么，战斗专家就能得到……PEWPEWLAWLZ' AS `dst`
    UNION ALL SELECT 'Gives your Kick ability a  chance to silence the target for 25d.' AS `src`, 'Spojka 永远' AS `dst`
    UNION ALL SELECT 'Gives a  chance to remove all Movement Impairing effects when you activate your Sprint ability.' AS `src`, '临时测试商人物品' AS `dst`
    UNION ALL SELECT 'Increases your expertise by' AS `src`, '每一侧都只有一只眼睛……' AS `dst`
    UNION ALL SELECT 'Reduces damage taken while affected by Stun and Fear effects by .' AS `src`, '仅供内部使用' AS `dst`
    UNION ALL SELECT 'Increases the range of Throw and Deadly Throw by  yards and gives your Deadly Throw a  chance to interrupt the target for 80d.' AS `src`, '一缕微妙的灵气弥漫在这件木雕的纹理中，让你感到不安。' AS `dst`
    UNION ALL SELECT 'Whenever you dodge an attack you gain an Unfair Advantage, striking back for  of your main hand weapon\'s damage.  This cannot occur more than once per second.' AS `src`, '里面也许有好东西。' AS `dst`
    UNION ALL SELECT 'Increases the damage caused by your Garrote and Rupture abilities by .' AS `src`, '表面经过特殊处理：不粘任何东西，任何东西也粘不上它。' AS `dst`
    UNION ALL SELECT 'Reduces the energy cost of your Expose Armor ability by' AS `src`, '教你如何制作珠宝师的蓝宝石单片镜。' AS `dst`
    UNION ALL SELECT 'Reduces the duration of all movement impairing effects by  and increases your movement speed by   This does not stack with other movement speed increasing effects.' AS `src`, '一块刻着符文的骨板，符文脉动着原始的狂怒，诉说着超越死亡的无尽怒火。' AS `dst`
    UNION ALL SELECT 'All healing effects on you are increased by   In addition, your finishing moves refund  of their Energy cost when they fail to hit.' AS `src`, '一卷沾着古老血迹的黑暗卷轴，散发着恶意的力量与猩红魔法。' AS `dst`
    UNION ALL SELECT 'Increases all damage caused by .' AS `src`, '一份破烂的手稿，上面布满的符号在被注视时似乎在蠕动变形。' AS `dst`
    UNION ALL SELECT 'When you apply Instant, Wound or Mind-Numbing poison to a target, you have a  chance to apply Crippling poison.' AS `src`, '一份缠绕着绿色火焰的恶魔契约，其地狱般的文字燃烧着邪恶的意志。' AS `dst`
    UNION ALL SELECT 'Increases the damage dealt with your Backstab, Mutilate, Garrote and Ambush abilities by .' AS `src`, '一块刻有防护结界的钢制石板，散发出的防御魔法在死亡之后依然存在。' AS `dst`
    UNION ALL SELECT 'Reduces the chance you are critically hit by melee and ranged attacks by  and increases the threat reduction of your Feint ability by .' AS `src`, '一份笼罩着暗影的公告，盖有佐洛斯之印，散发着被高贵目的所淬炼的寒冷黑暗。' AS `dst`
    UNION ALL SELECT 'Increases the range of your Blind and Sap abilities by  yards and reduces the energy cost of your Blind and Sap abilities by .' AS `src`, '一块刻着死灵符文的古老骨板，符文脉动着死亡之力。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Vanish and Blind abilities by 00' AS `src`, '一卷噼啪作响、充溢着原始元素狂怒的卷轴，自然之力被不息意志所束缚。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Ambush ability by .' AS `src`, '一份冒着烟的手稿，燃烧着冰冷的火焰，那火焰吞噬一切却不带温度。' AS `dst`
    UNION ALL SELECT 'Your Ambush and Backstab hits have a  chance to unbalance a target, increasing the time between their melee and ranged attacks by %, and reducing movement speed by  for 93d.' AS `src`, '一本皮革装订的书册，上面留着早已死去的野兽的足迹，散发着腐朽与远古荒野的气息。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown by 00' AS `src`, '一块刻着发光符文的石板，符文脉动着不死之力。' AS `dst`
    UNION ALL SELECT 'Increases the effect of your Power Word: Fortitude and Prayer of Fortitude spells by %, and increases your total Stamina by .' AS `src`, '一份噼啪作响、迸射着幽灵闪电的手稿，雷声从彼岸世界回荡而来。' AS `dst`
    UNION ALL SELECT 'Reduces the casting time of your Mana Burn spell by 00' AS `src`, '金色的经文散发着苍白的光芒，神圣之力穿透死亡的帷幕过滤而来。' AS `dst`
    UNION ALL SELECT 'Causes  of the damage you absorb with Power Word: Shield to reflect back at the attacker.  This damage causes no threat.' AS `src`, '一份散发冷光的受祝福文书，神圣誓言即使跨越坟墓依然具有约束力。' AS `dst`
    UNION ALL SELECT 'Increases damage and healing done by your spells by  In addition, your Mass Dispel cast time is reduced by 00' AS `src`, '绘制在防腐处理过的皮张上的技术蓝图，以死灵能量驱动的机械设计。' AS `dst`
    UNION ALL SELECT 'Increases the critical effect chance of your Flash Heal, Greater Heal and Penance (Heal) spells by  on targets afflicted by the Weakened Soul effect, and you have a  chance to reduce all damage taken by  for  to all friendly party and raid targets when you cast Power Word: Shield. This effect has a  sec cooldown.' AS `src`, '一本散发着异域毒药气息的书册，绿色蒸汽从经处理的肉页之间渗出。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Inner Focus, Power Infusion, Pain Suppression and Penance spells by .' AS `src`, '一卷以骨骼和黑暗护符装饰的古老卷轴，嗡鸣着不安亡灵的力量。' AS `dst`
    UNION ALL SELECT 'Your Flash Heal, Greater Heal, and Penance spells have a  chance to bless the target with Grace, increasing all healing received from the Priest by  This effect will stack up to 3 times. Effect lasts  Grace can only be active on one target at a time.' AS `src`, '一封带有宗教裁判所燃烧蜡印的密封信件，上面标着带有正义之火余烬的神圣符号。' AS `dst`
    UNION ALL SELECT 'Reduces the pushback suffered from damaging attacks  while casting any healing spell by .' AS `src`, '放下它，然后守住它！' AS `dst`
    UNION ALL SELECT 'Increases the range of your Smite and Holy Fire spells and the radius of your Prayer of Healing, Holy Nova, Divine Hymn and Circle of Healing spells by .' AS `src`, '教你如何召唤你已驯服的深渊海马。只能在水中环境中召唤。' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Smite, Holy Fire, Holy Nova and Penance spells by .' AS `src`, '取自斯库洛克·碾魂者的尸体，用独眼巨人肌腱织成的袋子上仍残留着邪能巫术的恶臭。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your Prayer of Healing and Prayer of Mending spell by .' AS `src`, '这些照明弹看起来仍然干燥完好。' AS `dst`
    UNION ALL SELECT 'Your spell criticals have a  chance to cause your next Smite or Flash Heal spell to be instant cast, cost no mana but be incapable of a critical hit.  This effect lasts 51d.' AS `src`, '比看起来还要重。' AS `dst`
    UNION ALL SELECT 'When you cast Power Word: Shield, you increase the target\'s movement speed by  for d, and you have a  chance when you cast Abolish Disease on yourself to also cleanse 1 poison effect in addition to diseases.' AS `src`, '他们是从哪里弄到这些用来购买石油钻探权的金币的？' AS `dst`
    UNION ALL SELECT 'Your Mind Blast and Shadow Word: Death critical strikes have a 100% chance and your Mind Flay critical strikes have a 50% chance to increase your total Spirit by  For the duration, your mana will regenerate at a  rate while casting. Lasts 94d.' AS `src`, '小心轻放。' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Shadow Word: Pain spell by .' AS `src`, '一箱石头和恶魔液体。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Psychic Scream spell by 00' AS `src`, '你大概会想，加根绳子会很有用。' AS `dst`
    UNION ALL SELECT 'Decreases the cooldown of your Fade ability by 00' AS `src`, '一种从当地海洋生物中提取的浓稠发光液体。' AS `dst`
    UNION ALL SELECT 'Increases the range of your offensive Shadow spells by .' AS `src`, '伊格内修斯·托尔贝恩的传奇之刃。' AS `dst`
    UNION ALL SELECT 'Increases the healing received from Vampiric Embrace by .' AS `src`, '会拾取你杀死的附近生物，可在队伍和地下城中工作，但不能在团队副本中使用。\n\n该伙伴会加入你的装饰收藏，你所有角色都可使用。\n\n这是非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Mind Blast, Mind Flay and Mind Sear spells by %, and increases the periodic critical strike chance of your Vampiric Touch, Devouring Plague and Shadow Word: Pain spells by .' AS `src`, '紫色的，由一种奇特的金属制成。' AS `dst`
    UNION ALL SELECT 'Your Fade ability now has a  chance to remove all movement impairing effects when used while in Shadowform, and reduces casting or channeling time lost when damaged by  when casting any Shadow spell while in Shadowform.' AS `src`, '这个物体嗡嗡作响，发出阵阵运转声。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Fire Nova by  and reduces the cooldown by 00' AS `src`, '一件血顶巨魔的力量物品。' AS `dst`
    UNION ALL SELECT 'Increases the range of your Lightning Bolt, Chain Lightning, Fire Nova, and Lava Burst spells by  yards, increases the radius of your Thunderstorm spell by %, and increases the range of your Flame Shock by  yards.' AS `src`, '在外行人眼里，它看起来就像任何一个普通的……萨莫弗莱奇。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Flame Shock and Frost Shock spells by an additional 00' AS `src`, '一只巨大的食人魔手掌，被切断，系在一根长绳子上。' AS `dst`
    UNION ALL SELECT 'While Clearcasting from Elemental Focus is active, you deal  more spell damage. In addition, party and raid members within  yards receive a  bonus to their spell critical strike chance.' AS `src`, '已密封' AS `dst`
    UNION ALL SELECT 'When stunned, feared or silenced you  shift into the Astral Plane reducing all damage taken by  for the duration of the stun, fear or silence effect.' AS `src`, '带有黑水强盗的标记。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Reincarnation spell by 000' AS `src`, '它就在那里。你只是看不见它。' AS `dst`
    UNION ALL SELECT 'Increases the critical effect chance of your spells by %, and increases the chance to apply the Earthliving heal over time effect on the target by  when they are at or under 35% total health.' AS `src`, '一袋简易的手掷炸弹。' AS `dst`
    UNION ALL SELECT 'Increases the amount healed by your Chain Heal spell by .' AS `src`, '他们挖错地方了！' AS `dst`
    UNION ALL SELECT 'Increases the amount of charges for your Earth Shield by 1, and increases the healing done by your Earth Shield by .' AS `src`, '噼啪作响，充满奥术能量。' AS `dst`
    UNION ALL SELECT 'Increases the health of your Stoneclaw Totem by  and the radius of your Earthbind Totem by %, and reduces the cooldown of both totems by .' AS `src`, '死后，他看起来苍老衰弱得多。' AS `dst`
    UNION ALL SELECT 'Increases the amount of armor increased by your Stoneskin Totem by  and reduces the cooldown of your Grounding Totem by 00' AS `src`, '一封来自安娜丝塔丽男爵夫人的紧急便条。' AS `dst`
    UNION ALL SELECT 'Reduces the cast time of your Ghost Wolf spell by 00' AS `src`, '很久很久以前，有人非常啰嗦。幸运的是，你一个字都看不懂。' AS `dst`
    UNION ALL SELECT 'Increases the melee haste granted by your Windfury totem by .' AS `src`, '确切配方会在配方重组完成后确定。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Lightning Bolt, Chain Lightning, Lava Lash and Shock spells by  on targets afflicted by your Frostbrand Attack effect, and your Frost Shock has a  chance to root the target in ice for  when used on targets at or further than  yards from you.' AS `src`, '开裂、破损而且陈旧。' AS `dst`
    UNION ALL SELECT 'When you Stormstrike, you have a  chance to immediately grant you  of your base mana.' AS `src`, '这是一块石头。' AS `dst`
    UNION ALL SELECT 'Your Earthbind Totem\'s pulses have a  chance to also remove all snare effects from you and nearby friendly targets, and your Earth Shock reduces enemy attack speed by an additional' AS `src`, '一枚扭曲而邪恶的钉子。' AS `dst`
    UNION ALL SELECT 'Increases the damage caused by your Claw, Rake, Mangle (Cat), Mangle (Bear), and Maul abilities by .' AS `src`, '闻起来有鱼腥味。' AS `dst`
    UNION ALL SELECT 'Reduces the energy cost of your Shred ability by  and the rage cost of your Lacerate ability by' AS `src`, '真是五颜六色！' AS `dst`
    UNION ALL SELECT 'Gives you a  chance to gain an additional' AS `src`, '渴望成为忠诚伙伴的愿望，凝聚成一颗无价的晶体。' AS `dst`
    UNION ALL SELECT 'Increases your expertise by 1, and you are refunded  of the energy cost of a finishing move if it fails to land.' AS `src`, '一股寒气从镰刀上流出。' AS `dst`
    UNION ALL SELECT 'Increases the stun duration of your Bash and Pounce abilities by 00' AS `src`, '挎包因承载着无限可能而微微颤动……' AS `dst`
    UNION ALL SELECT 'Increases your healing spells by up to  of your Agility, and increases healing done to you by  while in Cat form.' AS `src`, '教你如何召唤此坐骑。这是地面坐骑。' AS `dst`
    UNION ALL SELECT 'Your Leader of the Pack ability also causes affected targets to heal themselves for  of their total health when they critically hit with a melee or ranged attack.  The healing effect cannot occur more than once every 6 sec.  In addition, you gain  of your maximum mana when you benefit from this heal.' AS `src`, '经魔法处理，可完美垫在任何酒杯之下，并带有冰霜光泽。' AS `dst`
    UNION ALL SELECT 'Increases the effects of your Mark of the Wild and Gift of the Wild spells by %, and increases all of your total attributes by .' AS `src`, '腥臭扑鼻，坚硬如石。' AS `dst`
    UNION ALL SELECT 'Grants an effect which lasts while the Druid is within the respective shapeshift form.\n\nBear Form - Increases physical damage by  Form - Increases critical strike chance by  Form - Increases spell damage by  of Life Form - Increases healing by .' AS `src`, '从不停下两次。' AS `dst`
    UNION ALL SELECT 'Reduces threat caused by Tranquility by %, and reduces the cooldown by .' AS `src`, '阴郁酒馆的斗殴是传奇般的史诗故事。' AS `dst`
    UNION ALL SELECT 'Your Healing Touch spell gains an additional  and your Nourish spell gains an additional  of your bonus healing effects.' AS `src`, '这根细弱的树枝居然能打开任何东西，真是奇迹。' AS `dst`
    UNION ALL SELECT 'Grants  additional armor contribution from cloth and leather items while in Travel Form or while not shapeshifted, increases the damage reduction granted by your Barkskin spell by  and reduces the chance your Barkskin is dispelled by .' AS `src`, '看起来像是从某处捡来的。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your Wrath, Starfire, Starfall, Nourish and Healing Touch spells by .' AS `src`, '看起来很阴森。' AS `dst`
    UNION ALL SELECT 'Increases the damage and critical strike chance of your Moonfire spell by .' AS `src`, '这个再加上另外十一个，应该能换几个铜板。' AS `dst`
    UNION ALL SELECT 'Increases the range of your Balance spells and Faerie Fire (Feral) ability by %, and reduces the threat generated by your Balance spells by .' AS `src`, '表面点缀着 451 个光点。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit with all spells by  and reduces your damage taken from all spells by .' AS `src`, '太过强大，不会被火焰吞噬。' AS `dst`
    UNION ALL SELECT 'Increases damage done by your Hurricane and Typhoon spells by %, and increases the range of your Cyclone spell by  yards.' AS `src`, '尖端涂有沥青，随时可以点燃。' AS `dst`
    UNION ALL SELECT 'Your Wrath and Starfire spells have a  chance to apply the Earth and Moon effect, which increases spell damage taken by  for   Also increases your spell damage by .' AS `src`, '你承受不了真相。' AS `dst`
    UNION ALL SELECT 'Increases the periodic damage done by your Immolate by %, and your Conflagrate has a  chance to daze the target for 18d.' AS `src`, '这本典籍完整记载了血色十字军的历史，还包括其章程、附则与仪式，以及该组织成员的完整名册。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Succubus\' Lash of Pain spell by 00' AS `src`, '这把剑在你手中发出火红的光芒。沿着剑身镶嵌着魔法符文，组成“不灭”二字。' AS `dst`
    UNION ALL SELECT 'Increases the range of your Destruction spells by  and reduces threat caused by Destruction spells by .' AS `src`, '一小箱矮人考古碎片。' AS `dst`
    UNION ALL SELECT 'Your Soul Leech effect also restores mana to you and your summoned demon equal to  of maximum mana, and has a  chance to grant up to 10 party or raid members mana regeneration equal to 1% of maximum mana per 5 sec. Lasts for 69d.' AS `src`, '只能在潘达利亚使用。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Curse of Agony by .' AS `src`, '一张精巧编织的绊索，用来套住强大仙鹤的腿。' AS `dst`
    UNION ALL SELECT 'Increases the amount of attack power reduced by your Curse of Weakness by .' AS `src`, '一个绷得很紧的陷阱，用来捕获并困住一头巨大的老虎。' AS `dst`
    UNION ALL SELECT 'Returns  of your maximum mana if the target is killed by you while you drain its soul.  In addition, your Affliction spells generate  less threat.' AS `src`, '一个厚壁木箱，用来装下一只特大号螃蟹。' AS `dst`
    UNION ALL SELECT 'Increases the amount of Mana awarded by your Life Tap spell by .' AS `src`, '闪耀的光泽掩盖了它真正的魅力。' AS `dst`
    UNION ALL SELECT 'Increases the amount drained by your Drain Life and Drain Soul spells by an additional  for each of your Affliction effects on the target, up to a maximum of  additional effect.' AS `src`, '你那份“彩头”，以及斗殴场地上剩下的东西。' AS `dst`
    UNION ALL SELECT 'Increases the range of your Affliction spells by .' AS `src`, '柜台底下偷偷卖的。群众可不喜欢你耍手段。' AS `dst`
    UNION ALL SELECT 'Reduces the casting time of your Howl of Terror spell by 00' AS `src`, '证明你确实拳拳到肉的凭证。' AS `dst`
    UNION ALL SELECT 'Increases the amount of Health restored by your Healthstone by .' AS `src`, '可用来补全缺失碎片的螳螂妖考古文物的钥石。' AS `dst`
    UNION ALL SELECT 'You have a  chance to heal your pet for  of the amount of spell damage done by you.' AS `src`, '可在幻化师处用来改变你的奥术智慧技能的外观。' AS `dst`
    UNION ALL SELECT 'Increases the amount of Health transferred by your Health Funnel spell by  and reduces the health cost by  In addition, your summoned Demon takes  less damage while under the effect of your Health Funnel.' AS `src`, '可在幻化师处用来改变你的真言术：韧技能的外观。' AS `dst`
    UNION ALL SELECT 'Reduces the casting time of your Imp, Voidwalker, Succubus, Felhunter and Fel Guard Summoning spells by 00' AS `src`, '黑龙军团的母龙之首' AS `dst`
    UNION ALL SELECT 'Increases the combat ratings gained from your conjured Firestone and Spellstone by .' AS `src`, '一份证明奈法利安已死的官方文书。\n\n将这份文书交给以下任一位，以领取你的奖励。\n - 格罗玛什要塞的萨尔（奥格瑞玛）。\n - 暴风要塞的伯瓦尔·弗塔根大领主（暴风城）。\n - 藏宝海湾旅店上层船只上的雷维尔加兹男爵。' AS `dst`
    UNION ALL SELECT 'All damage caused by you is increased by  while your pet is active and the critical strike chance of your pet\'s special abilities is increased by  while Kill Command is active.' AS `src`, '解锁切换至 CLXXXVII 专精的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Revive Pet\'s casting time is reduced by 00' AS `src`, '解锁切换至 CCXXXVII 专精的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Increases the speed bonus of your Aspect of the Cheetah and Aspect of the Pack by %, and increases your speed while mounted by  The mounted movement speed increase does not stack with other effects.' AS `src`, '在变形状态下使用此物品可恢复原本的外观。\n\n该外观没有跳跃和游泳动画。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your Mend Pet spell by  and gives the Mend Pet spell a  chance of cleansing  Curse, Disease, Magic or Poison effect from the pet each tick.' AS `src`, '使用后不会消耗。只能在法力风暴中使用。' AS `dst`
    UNION ALL SELECT 'While your pet is active, you and your pet will regenerate  of total health every  sec., and increases healing done to you and your pet by .' AS `src`, '黑铁矮人的最后希望仍在延续。' AS `dst`
    UNION ALL SELECT 'Increases the Focus regeneration of your pets by .' AS `src`, '这个破烂撕裂的信封似乎经历了不少磨难。' AS `dst`
    UNION ALL SELECT 'Increases your pet\'s attack power by %, and increases the duration of your Master\'s Call effect by 00' AS `src`, '打开后可获得你当前专精的“命运卷轴：天赋”。它可让你重置天赋。\n\n你可以通过法力风暴、任务、地下城、团队副本、悬赏板宝箱、战场、高风险开放世界，以及各大主城中塞拉斯·暗月处的任务链，用升华印记换取卷轴。\n\n|cFFCC0000此物品在转生后会被销毁|r\n\n' AS `dst`
    UNION ALL SELECT 'When your pet scores a critical hit with a special ability, you have a  chance to instantly regenerate  mana.' AS `src`, '教你如何变形成此坐骑。这是地面坐骑。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of Raptor Strike, Mongoose Bite and Counterattack by .' AS `src`, '在法力风暴 1000 层击败阿尔瓦获得。' AS `dst`
    UNION ALL SELECT 'Reduces all damage taken by  and increases the critical strike chance of your Arcane Shot, Steady Shot, and Explosive Shot by .' AS `src`, '此物品会解锁你所有标准银行包栏位。' AS `dst`
    UNION ALL SELECT 'Reduces the chance your Feign Death ability and all trap spells will be resisted by %, and reduces the cooldown of your Disengage ability by 00' AS `src`, '将你送回影月谷的星辰圣殿。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of all of your attacks on targets affected by your Frost Trap, Freezing Trap and Freezing Arrow by .' AS `src`, '解锁在专精 I 与专精 II 之间切换的机会，并额外解锁一个神秘附魔专精' AS `dst`
    UNION ALL SELECT 'Increases the duration of your Concussive Shot\'s daze effect by 00' AS `src`, '解锁切换至专精 III 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Your ranged critical hits cause your pet to generate  Focus.' AS `src`, '解锁切换至专精 IV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Rapid Fire ability by 000' AS `src`, '解锁切换至专精 V 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Your successful Chimera Shot and Multi-Shot attacks have a  chance to Daze the target for 01d.' AS `src`, '解锁切换至专精 VI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Increases your total Agility and Intellect by .' AS `src`, '为你开放公会规模的银行，可购买页签。你可以把灵魂绑定的物品存入银行。' AS `dst`
    UNION ALL SELECT 'You gain  of your mana every  sec while under the effect of Rapid Fire, and you gain  of your mana every  sec for  when you gain Rapid Killing.' AS `src`, '教你如何召唤此伙伴。\n\n《工匠之书》可让你训练任何专业技能。\n\n\n这是非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Decreases the cooldown of your Judgement spells by 00' AS `src`, '授予你创始人头衔！' AS `dst`
    UNION ALL SELECT 'Increases the attack power bonus of your Blessing of Might by .' AS `src`, '装备你的咒焰集会血色之拥。' AS `dst`
    UNION ALL SELECT 'Reduces the duration of all Disarm effects by  and increases movement and mounted movement speed by   This does not stack with other movement speed increasing effects.' AS `src`, '用它来治疗你自己！' AS `dst`
    UNION ALL SELECT 'All criticals against you cause  of the damage taken to the attacker as well.  The damage caused by Eye for an Eye will not exceed 50% of the Paladin\'s total health.' AS `src`, '用于包扎伤口！' AS `dst`
    UNION ALL SELECT 'Reduces your chance to be hit by spells and ranged attacks by  and gives your Hand of Freedom spell a  chance to remove any Stun effects on the target.' AS `src`, '帮你脱离困境！' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of Hammer of Wrath by %, reduces the cooldown of Avenging Wrath by 00' AS `src`, '内含两把武器：主手版与副手版。可在虚灵集市找到！' AS `dst`
    UNION ALL SELECT 'Reduces the duration of all Fear and Disorient effects by .' AS `src`, '用格拉库的特制香料保存！很久很久都不会变质……' AS `dst`
    UNION ALL SELECT 'Grants the target of your Lay on Hands spell  reduced physical damage taken for   In addition, the cooldown for your Lay on Hands spell is reduced by  min.' AS `src`, '这只是块石头，正慢慢碎裂……' AS `dst`
    UNION ALL SELECT 'Increases the effect of your Blessing of Wisdom spell by .' AS `src`, '封底写着“喜悦”。也许是这本法术书主人的名字？' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of Hand of Freedom, Hand of Sacrifice and Hand of Salvation by %, increases the effectiveness of Hand of Salvation by  and the effectiveness of Hand of Sacrifice by an additional .' AS `src`, '早已被时间湮没的传承的一部分。' AS `dst`
    UNION ALL SELECT 'Reduces the duration of Curse, Disease and Poison effects by .' AS `src`, '一封用符文写成的讯息' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your Cleanse, Purify and Consecration spells by  and reduces the cooldown of your Exorcism and Holy Wrath spells by .' AS `src`, '这把刀刃具有维度特性，似乎正在从这个位面中淡去。' AS `dst`
    UNION ALL SELECT 'Your Holy Shock critical hits reduce the cast time of your next Flash of Light by  sec or increase the critical chance of your next Holy Light by   In addition, causes your Flash of Light to heal targets with Sacred Shield for an additional  over 22d.' AS `src`, '这件物品曾由卡拉波的一位牧师佩戴，可让佩戴者进入黑暗神殿。' AS `dst`
    UNION ALL SELECT 'Increases the range of your Judgement of Light and Judgement of Wisdom spells by  yards and increases your chance to hit by .' AS `src`, '向国王致敬吧，宝贝！' AS `dst`
    UNION ALL SELECT 'When Divine Sacrifice is activated, your party and raid members within  yards take  reduced damage for   In addition, increases the duration of your Sacred Shield by  and the amount absorbed by .' AS `src`, '你难道不希望这是真的吗！' AS `dst`
    UNION ALL SELECT 'Decreases the cooldown of your Hammer of Justice spell by 00' AS `src`, '改变你的龙裔形态的外观。' AS `dst`
    UNION ALL SELECT 'Increases your total Stamina by %, reduces the cooldown of your Divine Shield and Divine Protection spells by 00' AS `src`, '纳迦和失落者都会使用这样的图腾，不过它显然能派上更好的用场 。' AS `dst`
    UNION ALL SELECT 'A passive ability that gives the Paladin mana when healed by other friendly targets\' spells.  The amount of mana gained is equal to  of the amount healed.' AS `src`, '一段只承载悲伤的记忆碎片。' AS `dst`
    UNION ALL SELECT 'Reduces spell damage taken by  and gives a  chance to refresh the duration of your Divine Plea when you hit an enemy.  In addition, your Divine Plea spell is  less likely to be dispelled.' AS `src`, '这把刀刃带着深沉的悲伤。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Hammer of Justice by 00' AS `src`, '赋予你洗点并重置天赋的能力' AS `dst`
    UNION ALL SELECT 'While in Frost Presence or Unholy Presence, you retain  healing from Blood Presence, and healing done to you is increased by  in Blood Presence.' AS `src`, '右键点击我！\n\n选择一个职业，即可获得该职业主题的：\n\n- 坐骑\n- 幻化套装\n- 升华之书 \n- 伙伴宠物' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Death Strike by %, increases its critical strike chance by %, and increases the healing granted by .' AS `src`, '教你变形术：老鼠' AS `dst`
    UNION ALL SELECT 'Increases your maximum Runic Power by 1/10}.' AS `src`, '瓶子依然完好，里面盛有少量永恒之井的井水。' AS `dst`
    UNION ALL SELECT 'Your Icy Touch, Howling Blast, Obliterate and Frost Strike do an additional  damage when striking targets with less than 35% health.' AS `src`, '在抵御黑铁矮人、保卫美酒节的战斗中展现你的坚韧！' AS `dst`
    UNION ALL SELECT 'While in Blood Presence or Unholy Presence, you retain  stamina from Frost Presence, and damage done to you is decreased by an additional  in Frost Presence.' AS `src`, '光荣地举起你的盾牌，保护美酒节不被任何胆敢破坏它的人得逞！' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance by  and critical strike damage bonus by  of your Plague Strike and Scourge Strike.' AS `src`, '以光之黎明之名！' AS `dst`
    UNION ALL SELECT 'Increases the duration of Blood Plague and Frost Fever by 00' AS `src`, '小心，英雄。这个世界里有成千上万的危险等着你。我来告诉你应该知道的一切。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Death Grip ability by 00' AS `src`, '可在网页商城购买！' AS `dst`
    UNION ALL SELECT 'Increases your total Strength by  and the contribution your Ghouls get from your Strength and Stamina by .' AS `src`, '限量版。无助于阻止疾病传播，但建议医生佩戴。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown on Raise Dead by  sec and the cooldown on Army of the Dead by  min.  Also reduces the damage your pet takes from creature area of effect attacks by .' AS `src`, '激活你的炽燃之翼。' AS `dst`
    UNION ALL SELECT 'While in Blood Presence or Frost Presence, you retain  increased movement speed from Unholy Presence, and your runes finish their cooldowns  faster in Unholy Presence.' AS `src`, '教你如何召唤此坐骑。此坐骑可以飞行。\n\n此坐骑是限定稀有物品。' AS `dst`
    UNION ALL SELECT 'Your pet charges an enemy, immobilizing the target for d, and increasing the pet\'s melee attack power by  for its next attack.' AS `src`, '一堆废品中迸发出的力量！' AS `dst`
    UNION ALL SELECT 'Increases your pet\'s total Stamina by  and increases all healing effects on your pet by .' AS `src`, '教你如何引导小憩之相！' AS `dst`
    UNION ALL SELECT 'Increases your pet\'s armor by  and chance to Dodge by .' AS `src`, '右键点击以放置孤独篝火。' AS `dst`
    UNION ALL SELECT 'Your pet\'s Growl generates  additional threat and 10% of its total happiness.' AS `src`, '略有岁月痕迹，但平衡毫无瑕疵。干涸的血迹已与金属融为一体，成为它阴暗致命外观的一部分。' AS `dst`
    UNION ALL SELECT 'Protects a friendly target from critical strikes, making attacks against that target unable to be critical strikes, but  of all damage taken by that target is also taken by the pet.  Lasts' AS `src`, '教你如何召唤这面远古之盾。背在背上显示。' AS `dst`
    UNION ALL SELECT 'Your pet\'s Growl also heals it for  of its total health.' AS `src`, '教你如何召唤这枚巨魔徽记。背在背上显示。' AS `dst`
    UNION ALL SELECT 'The movement speed penalty of your pet\'s Cower is reduced by .' AS `src`, '将此奖励代币交给阿扎尔集市的斯纳格。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown on your pet\'s Dash ability by  sec.' AS `src`, '将此奖励代币交给阿扎尔集市的塔克。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown on your pet\'s Dive ability by  sec.' AS `src`, '内含 500 张阿扎尔集市门票！' AS `dst`
    UNION ALL SELECT 'Your pet has a  chance after using an ability that the next ability will cost no Focus if used within 15d.' AS `src`, '这把锤子吸收了残留的奎尔多雷圣光，似乎充满了能量。' AS `dst`
    UNION ALL SELECT 'When at less than 35% health, your pet does  more damage and has a  reduced chance to be critically hit.' AS `src`, '一本噼啪作响的书册，以受风暴洗礼的皮革装订，书页间跃动着电能。' AS `dst`
    UNION ALL SELECT 'Your pet does  additional damage to targets with less than 35% health.' AS `src`, '一块镌刻着庄严守护誓言的钢制石板，散发着荣誉与责任。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Shock and Wind Shear spells by 00' AS `src`, '一份闪耀着圣光祝福的神圣文书，呼唤着绝对的虔诚。' AS `dst`
    UNION ALL SELECT 'You get Skill Cards from Silas Darkmoon!\nYou can activate skill cards in the Skill Card Collection between levels 1 and 9.' AS `src`, '一本被自然侵蚀的指南，仍带着荒野的痕迹——松针、苔藓与泥土。' AS `dst`
    UNION ALL SELECT 'First Upgrade!' AS `src`, '一份似乎同时存在于多个时刻的手稿，其文字不断变幻。' AS `dst`
    UNION ALL SELECT 'Second Upgrade!' AS `src`, '一本以骨骼装订的日志，令周围的空气变冷，并以禁忌知识低语。' AS `dst`
    UNION ALL SELECT 'Third Upgrade!' AS `src`, '一本灼热的法典，火焰在其表面舞动，散发着炽热的高温。' AS `dst`
    UNION ALL SELECT 'Fourth Upgrade!' AS `src`, '一篇蠕动的论著，布满在不被直视时会变形的符号。' AS `dst`
    UNION ALL SELECT 'Be careful out there Hero! Contains 14 items. Make sure you have room in your inventory!' AS `src`, '一部金色经文，散发着黎明温暖的光芒与治疗能量。' AS `dst`
    UNION ALL SELECT 'This magical jewel is perfectly formed into the likeness of a blue dragon\'s eye.' AS `src`, '一本技术手册，满是蓝图，还伴着隐约的机械滴答声。' AS `dst`
    UNION ALL SELECT 'This equipment is perishable' AS `src`, '一本令人胆寒的手册，会降低周围的温度，并带着葬礼筹备的气味。' AS `dst`
    UNION ALL SELECT 'Resurrects and converts your Ironman character to a normal character.' AS `src`, '一块古老的石碑，其上刻着发光的符文，脉动着太初之力。' AS `dst`
    UNION ALL SELECT 'Equip your Adventurer`s Backpack.' AS `src`, '一本神秘的书册。' AS `dst`
    UNION ALL SELECT 'Contains a brand new Ethereal Tool Dispenser!' AS `src`, '某种与魔法产生共鸣的宝石。' AS `dst`
    UNION ALL SELECT 'A manuscript that crackles with contained lightning.' AS `src`, '它闪闪发亮。' AS `dst`
) AS `m` ON `m`.`src` = `a`.`description`
SET `a`.`description` = `m`.`dst`;
