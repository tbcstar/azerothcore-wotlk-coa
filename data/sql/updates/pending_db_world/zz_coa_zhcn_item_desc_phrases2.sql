-- Fill more common English item flavor texts left in item_template.
-- Each statement is guarded by the exact English source text, so it is
-- idempotent and only touches rows that still carry the English value.

-- One indexed pass replaces 333 single-row UPDATEs on `item_template`.`description`.
UPDATE `item_template` AS `a`
JOIN (
    SELECT 'Used to unlearn abilities in Specialization I by clicking the ability icon in Character Advancement, this will randomly select a new ability to take its place.\n\nYou can obtain scrolls from The Manastorm, Quests, Dungeons, Raids, Callboard Caches, Battlegrounds, High-Risk Open-World, and a Questchain on Silas Darkmoon in Capitals using Marks of Ascension.' AS `src`, '用于在角色进阶界面点击技能图标遗忘专精 I 中的技能，并随机选取一个新技能替代它。\n\n可在魔法风暴、任务、地下城、团队副本、公告板宝箱、战场、高危开放世界，以及在各大主城找西拉斯·暗月、使用飞升印记完成的任务链中获得卷轴。' AS `dst`
    UNION ALL SELECT 'Draws on the soul of the friendly target to shield them, absorbing  damage.  Lasts   While the shield holds, spellcasting will not be interrupted by damage.  Once shielded, the target cannot be shielded again for 8d.' AS `src`, '汲取友方目标的灵魂为其施加护盾，吸收  点伤害。  持续  。护盾存在期间，施法不会因受到伤害而被打断。  一旦被护盾保护，目标在 8 天内无法再次获得护盾。' AS `dst`
    UNION ALL SELECT 'Matches a Blue Socket.' AS `src`, '匹配一个蓝色插槽。' AS `dst`
    UNION ALL SELECT 'Seek out Tiraxis, the Reliquary Weapons Vendor in any major city in order to exchange these tokens for a reward.\n\nBazaar tokens are obtained from the Auctionhouse with gold, or the webshop with DP.' AS `src`, '前往任意主城寻找提拉希斯——圣物武器商人，用这些代币兑换奖励。\n\n集市代币可在拍卖行用金币购买，或在网络商城用 DP 购买。' AS `dst`
    UNION ALL SELECT 'A Cosmetic Weapon set meant to be used with Transmogrification. You can see what Cosmetic Sets look like in the Vanity Collection. These can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '一套用于幻化的装饰武器套装。你可以在收藏品外观中查看装饰套装的样式。可从其他玩家、拍卖行或飞升商城获得。' AS `dst`
    UNION ALL SELECT 'The caster is surrounded by  balls of lightning.  When a spell, melee or ranged attack hits the caster, the attacker will be struck for  Nature damage.  This expends one lightning ball.  Only one ball will fire every few seconds.  Lasts   Only one Elemental Shield can be active on the Shaman at any one time.' AS `src`, '施法者被  个闪电球环绕。当法术、近战或远程攻击命中施法者时，攻击者将受到  点自然伤害。  这会消耗一个闪电球。  每几秒只有一个闪电球会触发。  持续  。  萨满同时只能保持一个元素护盾。' AS `dst`
    UNION ALL SELECT 'Afflicts the target with a disease that causes  Shadow damage over  15% of damage caused by the Devouring Plague heals the caster. This spell can only affect one target at a time.' AS `src`, '使目标染上疾病，在  内造成  点暗影伤害。  噬灵疫病造成伤害的 15% 会治疗施法者。此法术一次只能影响一个目标。' AS `dst`
    UNION ALL SELECT 'The caster is surrounded by  globes of water, granting  mana per 5 sec.  When a spell, melee or ranged attack hits the caster,  mana is restored to the caster. This expends one water globe.  Only one globe will activate every few seconds.  Lasts   Only one Elemental Shield can be active on the Shaman at any one time.' AS `src`, '施法者被  个水球环绕，每 5 秒恢复  点法力。当法术、近战或远程攻击命中施法者时，为施法者恢复  点法力。这会消耗一个水球。  每几秒只有一个水球会激活。  持续  。  萨满同时只能保持一个元素护盾。' AS `dst`
    UNION ALL SELECT 'Protects the caster, increasing armor by 1, and increasing the amount of health generated through spells and effects by  Only one type of Armor spell can be active on the Warlock at any time.  Lasts' AS `src`, '保护施法者，使其护甲提高 1 点，并使其通过法术和效果产生的生命值提高  。术士同时只能保持一种护甲法术。  持续  。' AS `dst`
    UNION ALL SELECT 'A cosmetic spell designed to enhance your appearance with Transmogrification. Find it in the Database to see how it looks. These can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '一种通过幻化改变外观的装饰法术。可在数据库中查看它的样子。可从其他玩家、拍卖行或飞升商城获得。' AS `dst`
    UNION ALL SELECT 'A slow casting spell that heals a single target for' AS `src`, '一个施法缓慢的法术，为单一目标治疗' AS `dst`
    UNION ALL SELECT 'Consumes the enemy in Holy flames that cause  Holy damage and an additional  Holy damage over' AS `src`, '以圣焰吞噬敌人，造成  点神圣伤害，并在  内额外造成  点神圣伤害。' AS `dst`
    UNION ALL SELECT 'Causes an explosion of holy light around the caster, causing  Holy damage to all enemy targets within  yards and healing all party members within  yards for   These effects cause no threat.' AS `src`, '在施法者周围引发圣光爆炸，对  码内所有敌方目标造成  点神圣伤害，并为  码内所有队友恢复  点生命值。  这些效果不会产生威胁值。' AS `dst`
    UNION ALL SELECT 'Causes the shaman\'s active Fire totem to emit a wave of flames, inflicting  Fire damage to enemies within  yards of the totem.' AS `src`, '使萨满当前的火焰图腾释放一道火焰波，对图腾  码内的敌人造成  点火焰伤害。' AS `dst`
    UNION ALL SELECT 'Summons a Stoneclaw Totem with  health at the feet of the caster for  that taunts creatures within  yards to attack it.  Enemies attacking the Stoneclaw Totem have a  chance to be stunned for  Stoneclaw totem also protects all your totems, causing them to absorb  damage.' AS `src`, '在施法者脚下召唤一个拥有  点生命值的石爪图腾，持续  ，并嘲讽  码内的生物攻击它。  攻击石爪图腾的敌人有  几率被击晕  。石爪图腾还会保护你的所有图腾，使它们吸收  点伤害。' AS `dst`
    UNION ALL SELECT 'Summons a Flametongue Totem with  health at the feet of the caster.  Party and raid members within  yards of the totem have their spell damage and healing increased by up to   Lasts' AS `src`, '在施法者脚下召唤一个拥有  点生命值的火舌图腾。  图腾  码内的队伍和团队成员的法术伤害与治疗效果最多提高  。  持续  。' AS `dst`
    UNION ALL SELECT 'Summons a Healing Stream Totem with  health at the feet of the caster for  that heals group members within  yards for  every  seconds.' AS `src`, '在施法者脚下召唤一个拥有  点生命值的治疗之泉图腾，持续  ，每  秒为  码内的队伍成员恢复  点生命值。' AS `dst`
    UNION ALL SELECT 'Absorbs  damage, draining mana instead.  Drains  mana per damage absorbed.  Lasts' AS `src`, '吸收  点伤害，改为消耗法力。  每吸收一点伤害消耗  点法力。  持续  。' AS `dst`
    UNION ALL SELECT 'Calls down a pillar of fire, burning all enemies within the area for  Fire damage and an additional  Fire damage over' AS `src`, '召唤一道火柱，对区域内的所有敌人造成  点火焰伤害，并在  内额外造成  点火焰伤害。' AS `dst`
    UNION ALL SELECT 'Curses the target with agony, causing  Shadow damage over   This damage is dealt slowly at first, and builds up as the Curse reaches its full duration.  Only one Curse per Warlock can be active on any one target.' AS `src`, '以痛苦诅咒目标，在  内造成  点暗影伤害。  该伤害起初很低，随着诅咒接近完整持续时间而逐渐提高。  每个术士对同一目标只能施加一个诅咒。' AS `dst`
    UNION ALL SELECT 'Transfers  health every  sec from the target to the caster.  Lasts' AS `src`, '每  秒从目标身上转移  点生命值给施法者。  持续  。' AS `dst`
    UNION ALL SELECT 'Gives  health to the caster\'s pet every second for  as long as the caster channels.' AS `src`, '只要施法者持续引导，每秒就为施法者的宠物恢复  点生命值，持续  。' AS `dst`
    UNION ALL SELECT 'Roots the target in place and causes  Nature damage over   Damage caused may interrupt the effect.' AS `src`, '将目标定在原地，并在  内造成  点自然伤害。  造成的伤害可能打断该效果。' AS `dst`
    UNION ALL SELECT 'Claw the enemy, causing  additional damage.  Awards  combo int:points' AS `src`, '爪击敌人，造成  点额外伤害。  获得  点连击点。' AS `dst`
    UNION ALL SELECT 'Finishing move that causes damage over time.  Damage increases per combo point and by your attack power:\n   1 point:  damage over    2 points:  damage over    3 points:  damage over    4 points:  damage over    5 points:  damage over' AS `src`, '终结技，造成持续伤害。  伤害随连击点数提高，并受你的攻击强度影响：\n   1 点：  内造成  点伤害    2 点：  内造成  点伤害    3 点：  内造成  点伤害    4 点：  内造成  点伤害    5 点：  内造成  点伤害' AS `dst`
    UNION ALL SELECT 'A strong attack that increases melee damage by  and causes a high amount of threat.' AS `src`, '一次强力攻击，使近战伤害提高  ，并造成大量威胁值。' AS `dst`
    UNION ALL SELECT 'Blasts nearby enemies increasing the time between their attacks by  for  and doing  damage to them.  Damage increased by attack power.  This ability causes additional threat.' AS `src`, '冲击附近的敌人，使其攻击间隔延长  ，持续  ，并对其造成  点伤害。  伤害受攻击强度提高。  该技能会额外产生威胁值。' AS `dst`
    UNION ALL SELECT 'The warrior shouts, increasing attack power of all raid and party members within  yards by   Lasts' AS `src`, '战士发出怒吼，使  码内所有团队和队伍成员的攻击强度提高  。  持续  。' AS `dst`
    UNION ALL SELECT 'Attempt to finish off a wounded foe, causing  damage and converting each extra point of rage into' AS `src`, '尝试结果一个受伤的敌人，造成  点伤害，并将每点额外怒气转化为' AS `dst`
    UNION ALL SELECT 'Causes  to  Holy damage to an enemy target.  If the target is Undead or Demon, it will always critically hit.' AS `src`, '对一名敌方目标造成  到  点神圣伤害。  若目标为亡灵或恶魔，则必定暴击。' AS `dst`
    UNION ALL SELECT 'A vicious strike that deals weapon damage plus  and wounds the target, reducing the effectiveness of any healing by  for' AS `src`, '一次凶猛的打击，造成武器伤害外加  ，并重创目标，使其受到的治疗效果降低  ，持续  。' AS `dst`
    UNION ALL SELECT 'Instantly shields you, absorbing  damage.  Lasts   While the shield holds, spellcasting will not be delayed by damage.' AS `src`, '立即为你施加护盾，吸收  点伤害。  持续  。  护盾存在期间，施法不会因受到伤害而延迟。' AS `dst`
    UNION ALL SELECT 'Instantly heals the caster for' AS `src`, '立即为施法者治疗' AS `dst`
    UNION ALL SELECT 'You send a ghostly soul into the target, dealing  Shadow damage and increasing all damage done by your Shadow damage-over-time effects on the target by  for  When the Haunt spell ends or is dispelled, the soul returns to you, healing you for  of the damage it did to the target.' AS `src`, '将幽灵般的灵魂送入目标体内，造成  点暗影伤害，并使你的暗影持续伤害效果对该目标造成的伤害提高  ，持续  。当缠绕之魂效果结束或被驱散时，灵魂会回到你身边，为你恢复它对目标造成的伤害的  。' AS `dst`
    UNION ALL SELECT 'A powerful relic from Nozdormu obtained with Marks of Ascension.' AS `src`, '一件来自诺兹多姆的强大圣物，用飞升印记获得。' AS `dst`
    UNION ALL SELECT 'This Callboard Cache gives you rewards based on your item level.' AS `src`, '这个公告板宝箱会根据你的物品等级给予奖励。' AS `dst`
    UNION ALL SELECT 'Increases the damage you deal with two-handed melee weapons by .' AS `src`, '使你用双手近战武器造成的伤害提高  。' AS `dst`
    UNION ALL SELECT 'Increases your attack power by  for every  armor value you have.' AS `src`, '每  点护甲值使你的攻击强度提高  。' AS `dst`
    UNION ALL SELECT 'Increases your spell power by  of your total Intellect.' AS `src`, '使你的法术强度提高，数值相当于你总智力的  。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike chance of your pet by .' AS `src`, '使你的宠物的暴击几率提高  。' AS `dst`
    UNION ALL SELECT 'Contains five Darkmoon Game Tokens.' AS `src`, '内含五枚暗月游戏代币。' AS `dst`
    UNION ALL SELECT 'Contains twenty Darkmoon Game Tokens.' AS `src`, '内含二十枚暗月游戏代币。' AS `dst`
    UNION ALL SELECT 'Can be used to transform your Life Tap ability at a transmogrifier.' AS `src`, '可在幻化师处用于改变你的生命分流能力的外观。' AS `dst`
    UNION ALL SELECT 'Can be used to transform your Wind Shear ability at a transmogrifier.' AS `src`, '可在幻化师处用于改变你的风剪能力的外观。' AS `dst`
    UNION ALL SELECT 'Contains five Darkmoon Ride Tickets.' AS `src`, '内含五张暗月游乐券。' AS `dst`
    UNION ALL SELECT 'Obtainable for gold from Beezlebub in Demon\'s Tears.' AS `src`, '可在恶魔之泪的比兹勒布处用金币购买。' AS `dst`
    UNION ALL SELECT 'A Cosmetic Weapon set that contains 1 Bow and 1 Arrow Incarnation. \n\nIt is meant to be used with Transmogrification. You can see what Cosmetic Sets look like in the Vanity Collection. These can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '一套装饰武器套装，包含 1 把弓和 1 个箭矢化身。 \n\n用于幻化。你可以在收藏品外观中查看装饰套装的样式。可从其他玩家、拍卖行或飞升商城获得。' AS `dst`
    UNION ALL SELECT 'Alliance Mage Start Set' AS `src`, '联盟法师新手套装' AS `dst`
    UNION ALL SELECT 'Alliance Warlock Start Set' AS `src`, '联盟术士新手套装' AS `dst`
    UNION ALL SELECT 'A Cosmetic Weapon set that contains 2 Bows and 1 Arrow Incarnation. \n\nIt is meant to be used with Transmogrification. You can see what Cosmetic Sets look like in the Vanity Collection. These can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '一套装饰武器套装，包含 2 把弓和 1 个箭矢化身。 \n\n用于幻化。你可以在收藏品外观中查看装饰套装的样式。可从其他玩家、拍卖行或飞升商城获得。' AS `dst`
    UNION ALL SELECT 'Use me!' AS `src`, '使用我！' AS `dst`
    UNION ALL SELECT 'A Clingy Sloth on your back. Requires constant affection!' AS `src`, '一只黏人的树懒趴在你背上。需要持续关爱！' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this balloon. Displays on your back.' AS `src`, '教你如何召唤这只气球。显示在背上。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this Goblin Explosive Artifact. Displays on your back.' AS `src`, '教你如何召唤这件地精爆炸物。显示在背上。' AS `dst`
    UNION ALL SELECT 'Teaches a random mobility spell.' AS `src`, '随机教授一个移动类法术。' AS `dst`
    UNION ALL SELECT 'The hunter takes on the aspects of a hawk, increasing ranged attack power by   Only one Aspect can be active at a time.' AS `src`, '猎人化身雄鹰，使远程攻击强度提高  。  同时只能激活一种守护。' AS `dst`
    UNION ALL SELECT 'Place a fire trap that will burn the first enemy to approach for  Fire damage over   Trap will exist for   Only one trap can be active at a time.' AS `src`, '放置一个火焰陷阱，对第一个靠近的敌人造成  点火焰伤害，持续  。  陷阱将存在  。  同时只能激活一个陷阱。' AS `dst`
    UNION ALL SELECT 'Instantly attacks with both weapons for  weapon damage plus an additional  with each weapon.  Damage is increased by 20% against Poisoned targets.  Awards 2 combo points.' AS `src`, '立即用两把武器攻击，造成  点武器伤害，每把武器额外造成  。  对中毒目标的伤害提高 20%。  获得 2 点连击点。' AS `dst`
    UNION ALL SELECT 'Heal your target for' AS `src`, '为你的目标治疗' AS `dst`
    UNION ALL SELECT 'Hurls a lightning bolt at the enemy, dealing  Nature damage and then jumping to additional nearby enemies.  Each jump reduces the damage by 30%.  Affects  total targets.' AS `src`, '向敌人投掷闪电，造成  点自然伤害，然后跳向附近的其他敌人。  每次跳跃使伤害降低 30%。  共影响  个目标。' AS `dst`
    UNION ALL SELECT 'Instantly sears the target with fire, causing  Fire damage immediately and  Fire damage over  This periodic damage may critically strike and will occur more rapidly based on the caster\'s spell haste.' AS `src`, '立即用火焰灼烧目标，造成  点火焰伤害，并在  内造成  点火焰伤害。  该周期性伤害可以暴击，并会随施法者的法术急速提高而更快生效。' AS `dst`
    UNION ALL SELECT 'Summons a Strength of Earth Totem with  health at the feet of the caster.  The totem increases the strength and agility of all party and raid members within  yards by   Lasts' AS `src`, '在施法者脚下召唤一个拥有  点生命值的大地之力图腾。  该图腾使  码内所有队伍和团队成员的力量与敏捷提高  。  持续  。' AS `dst`
    UNION ALL SELECT 'Imbue the Shaman\'s weapon with wind.  Each hit has a 20% chance of dealing additional damage equal to two extra attacks with  extra attack power.  Lasts 30 minutes.' AS `src`, '以风之力灌注萨满的武器。  每次命中都有 20% 的几率造成相当于两次额外攻击、附带  点额外攻击强度的伤害。  持续 30 分钟。' AS `dst`
    UNION ALL SELECT 'Summons a Mana Spring Totem with  health at the feet of the caster for  that restores  mana every 5 seconds to all party and raid members within  yards.' AS `src`, '在施法者脚下召唤一个拥有  点生命值的法力之泉图腾，持续  ，每 5 秒为  码内的所有队伍和团队成员恢复  点法力。' AS `dst`
    UNION ALL SELECT 'Increases the target\'s Intellect by  for' AS `src`, '使目标的智力提高  ，持续' AS `dst`
    UNION ALL SELECT 'Absorbs  Fire damage.  Lasts' AS `src`, '吸收  点火焰伤害。  持续' AS `dst`
    UNION ALL SELECT 'Targets in a cone in front of the caster take  to  Frost damage and are slowed by  for' AS `src`, '施法者前方锥形区域内的目标受到  到  点冰霜伤害，并被减速  ，持续' AS `dst`
    UNION ALL SELECT 'Thorns sprout from the friendly target causing  Nature damage to attackers when hit.  Lasts' AS `src`, '友方目标身上长出荆棘，被击中时对攻击者造成  点自然伤害。  持续' AS `dst`
    UNION ALL SELECT 'The druid roars, decreasing nearby enemies\' melee attack power by   Lasts' AS `src`, '德鲁伊发出咆哮，使附近敌人的近战攻击强度降低  。  持续' AS `dst`
    UNION ALL SELECT 'Finishing move that causes damage per combo point and converts each extra point of energy (up to a maximum of  extra energy) into  additional damage.  Damage is increased by your attack power.\n   1 point  :  damage\n   2 points:  damage\n   3 points:  damage\n   4 points:  damage\n   5 points:  damage' AS `src`, '终结技，每点连击点造成伤害，并将每点额外能量（最多  点额外能量）转化为  点额外伤害。  伤害受你的攻击强度提高。\n   1 点  ：  点伤害\n   2 点：  点伤害\n   3 点：  点伤害\n   4 点：  点伤害\n   5 点：  点伤害' AS `dst`
    UNION ALL SELECT 'Swipe nearby enemies, inflicting  damage.  Damage increased by attack power.' AS `src`, '横扫附近的敌人，造成  点伤害。  伤害受攻击强度提高。' AS `dst`
    UNION ALL SELECT 'Wounds the target causing them to bleed for  damage plus an additional  (based on weapon damage) over' AS `src`, '重创目标，使其流血，在  内造成  点伤害，外加  点额外伤害（基于武器伤害）。' AS `dst`
    UNION ALL SELECT 'A sweeping attack that does your weapon damage plus  to the target and his  nearest allies][nearest ally].' AS `src`, '一次横扫攻击，对目标及其  个最近的盟友][最近的盟友]造成你的武器伤害外加  。' AS `dst`
    UNION ALL SELECT 'Reduces the melee attack power of all enemies within  yards by  for' AS `src`, '使  码内所有敌人的近战攻击强度降低  ，持续' AS `dst`
    UNION ALL SELECT 'Slams the opponent, causing weapon damage plus' AS `src`, '猛击对手，造成武器伤害外加' AS `dst`
    UNION ALL SELECT 'Consecrates the land beneath the Paladin, doing  Holy damage over  to enemies who enter the area.' AS `src`, '圣化圣骑士脚下的土地，在  内对进入该区域的敌人造成  点神圣伤害。' AS `dst`
    UNION ALL SELECT 'Conjures  ttle:bottles' AS `src`, '制造  ttle:bottles' AS `dst`
    UNION ALL SELECT 'Heals up to  friendly party or raid members within  yards of the target for' AS `src`, '为目标  码内最多  名友方队伍或团队成员治疗' AS `dst`
    UNION ALL SELECT 'Targets in a cone in front of the caster take  Fire damage and are Disoriented for   Any direct damaging attack will revive targets.  Turns off your attack when used.' AS `src`, '施法者前方锥形区域内的目标受到  点火焰伤害，并被迷惑  。  任何直接的伤害攻击都会使目标恢复。  使用时会关闭你的攻击。' AS `dst`
    UNION ALL SELECT 'This item cannot be returned or refunded once it has been purchased.' AS `src`, '该物品一经购买，无法退货或退款。' AS `dst`
    UNION ALL SELECT 'Allows you to Hearthstone in Style.' AS `src`, '让你以更有格调的方式使用炉石。' AS `dst`
    UNION ALL SELECT 'Contains a random Lucky Skill Card that can be activated at level 1 during Prestige or a new character.\nLucky Skill Cards greatly increase the chance to draft a specific spell.\n\nThese are obtained with Marks of Ascension from Silas Darkmoon.\nGolden Skill cards can be obtained with gold from Silas in your Capital City.' AS `src`, '内含一张随机的幸运技能卡，可在晋升或新角色时于 1 级激活。\n幸运技能卡会大幅提高抽到特定法术的几率。\n\n可在西拉斯·暗月处用飞升印记获得。\n黄金技能卡可在你的主城找西拉斯用金币购买。' AS `dst`
    UNION ALL SELECT 'Contains a random Golden Lucky Skill Card that can be activated at level 1 during Prestige or a new character.\nGolden Lucky Skill Cards greatly increase the chance to draft a specific spell.\n\nThese are bought with Gold from Silas Darkmoon.' AS `src`, '内含一张随机的黄金幸运技能卡，可在晋升或新角色时于 1 级激活。\n黄金幸运技能卡会大幅提高抽到特定法术的几率。\n\n可在西拉斯·暗月处用金币购买。' AS `dst`
    UNION ALL SELECT 'Contains a random Talent Skill Card that can be used at level 1 during Prestige or on a new character.\n\nTalent Skill Cards guarantee drafting a specific spell.\n\nTalent Skill Cards are obtained from Silas Darkmoon in a capital city.' AS `src`, '内含一张随机的天赋技能卡，可在晋升或新角色时于 1 级使用。\n\n天赋技能卡可保证抽到特定法术。\n\n天赋技能卡可在主城找西拉斯·暗月获得。' AS `dst`
    UNION ALL SELECT 'Contains a random Talent Golden Skill Card that can be used at level 1 during Prestige or on a new character.\n\nTalent Golden Skill Cards guarantee drafting a specific spell.\n\nTalent Golden Skill Cards are obtained from Silas Darkmoon in a capital city.' AS `src`, '内含一张随机的天赋黄金技能卡，可在晋升或新角色时于 1 级使用。\n\n天赋黄金技能卡可保证抽到特定法术。\n\n天赋黄金技能卡可在主城找西拉斯·暗月获得。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount. This mount is a Ground mount.' AS `src`, '教你如何召唤这个坐骑。该坐骑为地面坐骑。' AS `dst`
    UNION ALL SELECT 'IAM A ASCENDED ITEM BUT I HAVE NO CLUE WHAT MY UPSCALING HAS TO BE' AS `src`, '我是一件飞升物品，但我不知道自己该被提升到什么程度' AS `dst`
    UNION ALL SELECT '- Contains a random Lucky Skill Card that can be activated at level 1 during Prestige or a new character.\n- GoldenSkill Cards guarantee you\'ll draft a specific spell while leveling.\n- Golden Skill cards can be obtained with gold from Silas in your Capital City.' AS `src`, '- 内含一张随机的幸运技能卡，可在晋升或新角色时于 1 级激活。\n- 黄金技能卡保证你在升级时抽到特定法术。\n- 黄金技能卡可在你的主城找西拉斯用金币购买。' AS `dst`
    UNION ALL SELECT 'Gives you a random Golden Skill Card' AS `src`, '给予你一张随机黄金技能卡' AS `dst`
    UNION ALL SELECT 'Contains a random Skill Card that can be used at level 1 during Prestige or on a new character.\n\nSkill Cards guarantee drafting a specific spell.\n\nSkillcards are obtained from Silas Darkmoon in a capital city.' AS `src`, '内含一张随机技能卡，可在晋升或新角色时于 1 级使用。\n\n技能卡可保证抽到特定法术。\n\n技能卡可在主城找西拉斯·暗月获得。' AS `dst`
    UNION ALL SELECT 'This runestone seems like it\'s designed to fit somewhere.' AS `src`, '这枚符文石看起来是为嵌入某处而设计的。' AS `dst`
    UNION ALL SELECT 'IAM A HEROIC ITEM BUT I HAVE NO CLUE WHAT MY UPSCALING HAS TO BE' AS `src`, '我是一件英雄物品，但我不知道自己该被提升到什么程度' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this companion that was born of the twisted magic of the Burning Legion. This mini infernal defies the darkness of its origins, and prefers to radiate a warm, comforting glow.\n\nThis is a non-combat companion.' AS `src`, '教你如何召唤这只由燃烧军团扭曲魔法诞生的伙伴。这只迷你地狱火违抗了它的黑暗出身，更喜欢散发温暖而令人安心的光芒。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Counts as an Air,Earth,Fire,and Water totem.' AS `src`, '可同时视为空气、大地、火焰和水之图腾。' AS `dst`
    UNION ALL SELECT 'I stand alone in death\'s embrace,\nNo longer searching for my place.\nNo more sorrow, no more tears,\nNo more echoes of old fears.\n\nFlesh grows cold, my heartbeat slows,\nAs life fades out, my power grows.\nA final tear, then none remain,\nFor I choose a path that is free of pain.\n\nIt is the last piece of me...\nThe rest... Is silence...' AS `src`, '我独自伫立在死亡的怀抱，\n不再寻找属于我的位置。\n不再有悲伤，不再有眼泪，\n不再有旧日恐惧的回响。\n\n血肉渐冷，心跳渐缓，\n生命消逝，力量增长。\n最后一滴泪落下，此后不复存在，\n因为我选择了一条没有痛苦的路。\n\n那是我最后的一部分……\n其余的……是沉默……' AS `dst`
    UNION ALL SELECT 'Only usable in Battlegrounds.' AS `src`, '只能在战场中使用。' AS `dst`
    UNION ALL SELECT 'A nice hat from a cracker.' AS `src`, '一顶来自圣诞拉炮的好帽子。' AS `dst`
    UNION ALL SELECT 'Equip your Clockwork Engine' AS `src`, '装备你的发条引擎' AS `dst`
    UNION ALL SELECT 'Cosmetic Weapons meant to be used with Transmogrification. You can see what Cosmetic Weapons look like in the Vanity Collection. These can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '用于幻化的装饰武器。你可以在收藏品外观中查看装饰武器的样式。可从其他玩家、拍卖行或飞升商城获得。' AS `dst`
    UNION ALL SELECT 'A clear manifestation of Yth\'qwa\'s everlasting corruption upon the island.' AS `src`, '伊萨夸对这个岛屿永恒腐化的明显显现。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this tire. Displays on your back.' AS `src`, '教你如何召唤这只轮胎。显示在背上。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this Goblin Portable Battery. Displays on your back.' AS `src`, '教你如何召唤这个地精便携电池。显示在背上。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon these Back-Mounted Thrusters. Displays on your back.' AS `src`, '教你如何召唤这副背部推进器。显示在背上。' AS `dst`
    UNION ALL SELECT 'Teaches you to summon this Wonka banner. Displays on your back.' AS `src`, '教你如何召唤这面旺卡旗帜。显示在背上。' AS `dst`
    UNION ALL SELECT 'Teaches you how to use the Personal Atmospheric Reconfigurator, a goblin-engineered virtual reality device that alters your perception of the sky. Can only be used on continents and in battlegrounds.' AS `src`, '教你如何使用私人大气重构器——一件由地精工程学制造的虚拟现实装置，可改变你对天空的感知。只能在陆地和战场中使用。' AS `dst`
    UNION ALL SELECT 'You\'ve explored some of the vast caverns and castles in Azeroth!' AS `src`, '你已探索过艾泽拉斯的一些巨大洞穴和城堡！' AS `dst`
    UNION ALL SELECT '|r|cff00FFFF1. Open this container to add this container to your collection.\n2. You will still be able to use this key regardless of your reputation on all characters.\n|r' AS `src`, '|r|cff00FFFF1. 打开此容器，将此容器加入你的收藏。\n2. 无论你所有角色的声望如何，你仍然可以使用这把钥匙。\n|r' AS `dst`
    UNION ALL SELECT 'Caustic Wow Staff\'s Uniform' AS `src`, '腐蚀之叹法杖的制服' AS `dst`
    UNION ALL SELECT 'You have traveled to many lands, the mall being only one of them' AS `src`, '你已游历过许多地方，商场只是其中之一' AS `dst`
    UNION ALL SELECT 'Obtained from Twilight Cultists in High-Risk.' AS `src`, '从高危区域的暮光信徒处获得。' AS `dst`
    UNION ALL SELECT 'Obtained from the Scarlet Crusade in High-Risk.' AS `src`, '从高危区域的血色十字军处获得。' AS `dst`
    UNION ALL SELECT 'This Item no longer serves any purpose and can be safely removed.' AS `src`, '该物品已不再具有任何用途，可以安全移除。' AS `dst`
    UNION ALL SELECT 'You will no longer roll new abilities until level 62. You will save your Ability Essence earned levels 53 to 60, and you can spend your saved 8 Ability Essence on two level 50 and 60 talents when you reach level 60! This item will also grant you a Scroll of Fortune at levels you are no longer rolling an ability!' AS `src`, '在升到 62 级之前，你将不再抽取新技能。你会保留 53 到 60 级获得的技能精华，并且在 60 级时可以把保存的 8 点技能精华用在两个 50 级和 60 级天赋上！在你不再抽取技能的等级，该物品还会给予你一张命运卷轴！' AS `dst`
    UNION ALL SELECT 'A Prestigious Sack' AS `src`, '一个尊贵的袋子' AS `dst`
    UNION ALL SELECT 'Fires several missiles, hitting  targets for an additional  damage.' AS `src`, '发射数枚导弹，命中  个目标，额外造成  点伤害。' AS `dst`
    UNION ALL SELECT 'Fires a Black Arrow at the target, increasing all damage done by you to the target by  and dealing  Shadow damage over  Black Arrow shares a cooldown with Trap spells.' AS `src`, '向目标射出黑色箭矢，使你对该目标造成的所有伤害提高  ，并在  内造成  点暗影伤害。黑箭与陷阱法术共享冷却时间。' AS `dst`
    UNION ALL SELECT 'A powerful prayer heals the friendly target\'s party members within  yards for' AS `src`, '一段强大的祈祷，为目标  码内的队伍成员治疗' AS `dst`
    UNION ALL SELECT 'Brings a dead player back to life with  health and  mana.  Cannot be cast when in combat.' AS `src`, '使一名死亡的玩家复活，并恢复  点生命值和  点法力。  战斗中无法施放。' AS `dst`
    UNION ALL SELECT 'A vicious strike that deals  weapon damage plus  and infects the target with Blood Plague, a disease dealing Shadow damage over time.' AS `src`, '一次凶猛的打击，造成  点武器伤害外加  ，并使目标感染血之瘟疫——一种造成持续暗影伤害的疾病。' AS `dst`
    UNION ALL SELECT 'Summons a Magma Totem with  health at the feet of the caster for  sec that causes  Fire damage to creatures within  yards every  seconds.' AS `src`, '在施法者脚下召唤一个拥有  点生命值的岩浆图腾，持续  秒，每  秒对  码内的生物造成  点火焰伤害。' AS `dst`
    UNION ALL SELECT 'Heals the friendly target for 1, then jumps to heal additional nearby targets.  If cast on a party member, the heal will only jump to other party members.  Each jump reduces the effectiveness of the heal by 40%.  Heals  total targets.' AS `src`, '为友方目标治疗 1 点生命值，然后跳向附近的其他目标继续治疗。  若对队伍成员施放，治疗只会在其他队伍成员之间跳跃。  每次跳跃使治疗效果降低 40%。  共治疗  个目标。' AS `dst`
    UNION ALL SELECT 'Imbue the Shaman\'s weapon with earthen life. Increases healing done by  and each heal has a  chance to proc Earthliving on the target, healing an additional  over  Lasts 30 minutes.' AS `src`, '以大地之生命灌注萨满的武器。使治疗效果提高  ，且每次治疗都有  几率在目标身上触发大地生命，在  内额外恢复  点生命值。持续 30 分钟。' AS `dst`
    UNION ALL SELECT 'Amplifies magic used against the targeted party member, increasing damage taken from spells by up to  and healing spells by up to   Lasts' AS `src`, '放大针对目标队伍成员的魔法，使其受到的法术伤害最多提高  ，受到的治疗法术效果最多提高  。  持续  。' AS `dst`
    UNION ALL SELECT 'Dampens magic used against the targeted party member, decreasing damage taken from spells by up to  and healing spells by up to   Lasts' AS `src`, '削弱针对目标队伍成员的魔法，使其受到的法术伤害最多降低  ，受到的治疗法术效果最多降低  。  持续  。' AS `dst`
    UNION ALL SELECT 'Absorbs  Frost damage.  Lasts' AS `src`, '吸收  点冰霜伤害。  持续' AS `dst`
    UNION ALL SELECT 'Drains the soul of the target, causing  Shadow damage over   If the target is at or below 25% health, Drain Soul causes four times the normal damage. If the target dies while being drained, and yields experience or honor, the caster gains a Soul Shard.  Each time the Drain Soul damages the target, it also has a chance to generate a Soul Shard.  Soul Shards are required for other spells.' AS `src`, '抽取目标的灵魂，在  内造成  点暗影伤害。  若目标生命值不高于 25%，吸取灵魂造成的伤害提高四倍。若目标在被吸取期间死亡，并给予经验或荣誉，施法者将获得一枚灵魂碎片。  每次吸取灵魂对目标造成伤害时，还有几率产生一枚灵魂碎片。  灵魂碎片是其他法术的必需材料。' AS `dst`
    UNION ALL SELECT 'While applied to target weapon it increases damage dealt by periodic spells by  and spell haste rating by   Lasts for 1 hour.' AS `src`, '涂抹在目标武器上时，使周期性法术造成的伤害提高  ，并使法术急速等级提高  。  持续 1 小时。' AS `dst`
    UNION ALL SELECT 'Rake the target for  bleed damage and an additional  damage over   Awards  combo int:points' AS `src`, '横扫目标，造成  点流血伤害，并在  内额外造成  点伤害。  获得  点连击点。' AS `dst`
    UNION ALL SELECT 'Ravage the target, causing  damage plus  to the target.  Must be prowling and behind the target.  Awards  combo int:points' AS `src`, '撕碎目标，对其造成  点伤害外加  。  必须处于潜行状态并位于目标背后。  获得  点连击点。' AS `dst`
    UNION ALL SELECT 'Increases the friendly target\'s armor by 1, all attributes by  and all resistances by  for' AS `src`, '使友方目标的护甲提高 1 点，所有属性提高  ，所有抗性提高  ，持续' AS `dst`
    UNION ALL SELECT 'Returns the spirit to the body, restoring a dead target to life with  health and  mana.' AS `src`, '使灵魂回到躯体，让死亡的目标复活，并恢复  点生命值和  点法力。' AS `dst`
    UNION ALL SELECT 'Heals all nearby group members for  every  seconds for   Druid must channel to maintain the spell.' AS `src`, '每  秒为附近所有队伍成员治疗  点生命值，持续  。  德鲁伊必须持续引导才能维持该法术。' AS `dst`
    UNION ALL SELECT 'Causes  Holy damage to any enemy that strikes a party or raid member within  yards.  Players may only have one Aura on them per Paladin at any one time.' AS `src`, '对任何攻击  码内队伍或团队成员者造成  点神圣伤害。  每个圣骑士同时只能给一名玩家施加一个光环。' AS `dst`
    UNION ALL SELECT 'A burst of Holy energy fills the caster, increasing armor by   Each melee or ranged damage hit against the priest will remove one charge.  Lasts  or until  charges are used.' AS `src`, '一阵神圣能量充满施法者，使其护甲提高  。  每次对牧师造成近战或远程伤害都会消耗一层充能。  持续  ，或直到  层充能耗尽。' AS `dst`
    UNION ALL SELECT 'Blasts the target with Holy energy, causing  Holy damage to an enemy, or  healing to an ally.' AS `src`, '以神圣能量冲击目标，对敌人造成  点神圣伤害，或为盟友治疗  点生命值。' AS `dst`
    UNION ALL SELECT 'This item is bound to your soul, and will not be lost on death so long as it is equipped.' AS `src`, '该物品与你的灵魂绑定，只要装备着，死亡时就不会遗失。' AS `dst`
    UNION ALL SELECT 'Allows you to ride flying mounts that require a riding skill of 225.' AS `src`, '使你能够骑乘需要 225 点骑术的飞行坐骑。' AS `dst`
    UNION ALL SELECT 'Allows you to ride flying mounts that require a riding skill of 300.' AS `src`, '使你能够骑乘需要 300 点骑术的飞行坐骑。' AS `dst`
    UNION ALL SELECT 'Instantly strike the enemy, causing  weapon damage plus  as Frost damage.' AS `src`, '立即攻击敌人，造成武器伤害外加  ，作为冰霜伤害。' AS `dst`
    UNION ALL SELECT 'Instantly strike the target and his nearest ally, causing  weapon damage plus  on the primary target, and  weapon damage plus  on the secondary target.  Each target takes  additional damage for each of your diseases active on that target[, and movement speed is reduced by by  for 17d.][.]' AS `src`, '立即攻击目标及其最近的盟友，对主目标造成武器伤害外加  ，对次要目标造成武器伤害外加  。  该目标身上每有一种你所施加的疾病，其受到的伤害就提高  [，并且移动速度降低 ，持续 17 天。][。]' AS `dst`
    UNION ALL SELECT 'Uncommon High-Risk Materials are not lost on death!\n\nObtained from Tier 1, 2 & 3 High-Risk zones.' AS `src`, '罕见的高危材料不会在死亡时丢失！\n\n可从 1、2、3 级高危区域获得。' AS `dst`
    UNION ALL SELECT 'IAM A MYTHIC ITEM BUT I HAVE NO CLUE WHAT MY UPSCALING HAS TO BE' AS `src`, '我是一件神话物品，但我不知道自己该被提升到什么程度' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon and dismiss Tiny Amani Elite War Bear.\n\nThis is a non-combat companion.' AS `src`, '教你如何召唤和遣散迷你阿曼尼精英战熊。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Increases your total Spirit by .' AS `src`, '使你的总精神提高  。' AS `dst`
    UNION ALL SELECT 'Allows  of your mana regeneration to continue while casting.' AS `src`, '使你在施法时可以保留  的法力回复。' AS `dst`
    UNION ALL SELECT 'Regenerate mana equal to  of your Intellect every 5 sec, even while casting.' AS `src`, '每 5 秒恢复相当于你智力  的法力，即使在施法时也有效。' AS `dst`
    UNION ALL SELECT 'Increases your pet\'s attack speed by   Your pet will hit faster but each hit will do less damage.' AS `src`, '使你的宠物的攻击速度提高  。  你的宠物攻击更快，但每次命中的伤害更低。' AS `dst`
    UNION ALL SELECT 'Increases your pet\'s armor by .' AS `src`, '使你的宠物的护甲提高  。' AS `dst`
    UNION ALL SELECT 'Reduces the duration of all Stun and Fear effects used against your pet by .' AS `src`, '使你宠物受到的昏迷和恐惧效果持续时间缩短  。' AS `dst`
    UNION ALL SELECT 'Increases the contribution your pet gets from your Stamina by  and attack power by .' AS `src`, '使你的宠物从你的耐力中获得的加成提高  ，攻击强度提高  。' AS `dst`
    UNION ALL SELECT 'IAM A BLOODFORGED ITEM BUT I HAVE NO CLUE WHAT MY UPSCALING HAS TO BE' AS `src`, '我是一件血锻物品，但我不知道自己该被提升到什么程度' AS `dst`
    UNION ALL SELECT 'Can be refined at a Sawmill.' AS `src`, '可在锯木厂精炼。' AS `dst`
    UNION ALL SELECT 'Tier 1 CoA' AS `src`, '1 级 CoA' AS `dst`
    UNION ALL SELECT 'Can be used for transmutations in place of a Philosopher\'s Stone.' AS `src`, '可代替哲人石用于转化。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount.  This mount can walk on water in non-battleground areas.' AS `src`, '教你如何召唤这个坐骑。  该坐骑可在非战场区域行走于水面。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount.  This mount will fly or run, depending on your riding skill and location.' AS `src`, '教你如何召唤这个坐骑。  该坐骑会根据你的骑术和所在地点飞行或奔跑。' AS `dst`
    UNION ALL SELECT 'Can be used to transform your Mana-forged Barrier in the Wardrobe.' AS `src`, '可在衣橱中用于改变你的法力熔铸屏障的外观。' AS `dst`
    UNION ALL SELECT 'Right click to reveal a Mystic Enchant!' AS `src`, '右键点击以揭示一个神秘附魔！' AS `dst`
    UNION ALL SELECT 'An asset of arena participants' AS `src`, '竞技场参与者的资产' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount. This is a Ground mount. \n\nBuilt for speed, not for safety!' AS `src`, '教你如何召唤这个坐骑。这是地面坐骑。 \n\n为速度而生，不为安全着想！' AS `dst`
    UNION ALL SELECT 'A piece of a broken prototype Millhouse Manastorm made to open a path out of the Manastorm. Millhouse can easily pull those he sends into the Manastorm back out, but maybe you\'ll find another need for such a device.' AS `src`, '一块破损的原型装置残片，米尔斯豪斯·马纳斯特姆为打开一条离开魔法风暴的通路而制造。米尔斯豪斯可以轻松把他送进魔法风暴的人再拉出来，但也许你会为这种装置找到别的用途。' AS `dst`
    UNION ALL SELECT 'The Path of the Protector' AS `src`, '守护者之路' AS `dst`
    UNION ALL SELECT 'The Path of the Conqueror' AS `src`, '征服者之路' AS `dst`
    UNION ALL SELECT 'The Path of the Invoker' AS `src`, '祈求者之路' AS `dst`
    UNION ALL SELECT 'A beautiful floral arrangement for any celebration.' AS `src`, '适合任何庆典的美丽花艺。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this companion. They want to be your best friend.\n\nThis is a non-combat companion.' AS `src`, '教你如何召唤这个伙伴。它想成为你最好的朋友。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Dress yourself in a Gravitational Anchoring Suit.' AS `src`, '穿上引力锚定服。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this Oxygen Tank. Displays on your back.' AS `src`, '教你如何召唤这个氧气罐。显示在背上。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon these holo-wings.' AS `src`, '教你如何召唤这对全息之翼。' AS `dst`
    UNION ALL SELECT 'Turn autoloot on. Do not open without at least 2 Bag Slots free.' AS `src`, '开启自动拾取。请至少留出 2 个背包空格再打开。' AS `dst`
    UNION ALL SELECT 'Does not drop on death in High-Risk.\n\nOpens Scourge Bound Hidden Caches found in High-Risk Western Plaguelands and Eastern Plaguelands. Opening a cache will trigger the No-Retreat debuff on you, preventing escape spells from taking you to safety.' AS `src`, '在高危区域死亡时不会掉落。\n\n可开启高危西瘟疫之地与东瘟疫之地的天灾束缚隐秘宝箱。开启宝箱会对你施加「不得撤退」减益，使逃生法术无法把你带离危险。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount. This mount is capable of Flying.\n\nBorn in the mountains of Stormheim; this terrifying fusion of storm and scale sets the sky ablaze in pursuit of its prey.' AS `src`, '教你如何召唤这个坐骑。该坐骑可以飞行。\n\n诞生于风暴峡湾的群山；这头风暴与鳞片的可怕融合体在追击猎物时让天空燃烧。' AS `dst`
    UNION ALL SELECT 'Truly Bestowed by the Gods' AS `src`, '真正的神明赐福' AS `dst`
    UNION ALL SELECT 'Continuously fires a volley of ammo at the target area, causing  Arcane damage to enemy targets within  yards every  cond:seconds' AS `src`, '持续向目标区域发射一连串弹药，每  cond:seconds 对  码内的敌方目标造成  点奥术伤害' AS `dst`
    UNION ALL SELECT 'A strike that becomes active after parrying an opponent\'s attack.  This attack deals  damage and immobilizes the target for   Counterattack cannot be blocked, dodged, or parried.' AS `src`, '一次在招架对手攻击后才会激活的攻击。  该攻击造成  点伤害，并使目标定身  。  反击无法被格挡、闪避或招架。' AS `dst`
    UNION ALL SELECT 'Place a fire trap that explodes when an enemy approaches, causing  to  Fire damage and burning all enemies for  additional Fire damage over  to all within  yards.  Trap will exist for   Only one trap can be active at a time.' AS `src`, '放置一个火焰陷阱，敌人靠近时爆炸，对  码内所有敌人造成  到  点火焰伤害，并在  内额外造成  点火焰伤害。  陷阱将存在  。  同时只能激活一个陷阱。' AS `dst`
    UNION ALL SELECT 'A stinging shot that puts the target to sleep for   Any damage will cancel the effect.  When the target wakes up, the Sting causes  Nature damage over   Only one Sting per Hunter can be active on the target at a time.' AS `src`, '一支刺痛的射击，使目标沉睡  。  任何伤害都会取消该效果。  目标醒来后，毒刺会在  内造成  点自然伤害。  每个猎人同时只能对目标施加一种毒刺。' AS `dst`
    UNION ALL SELECT 'Holy power infuses the target, increasing their Spirit by  for' AS `src`, '神圣力量注入目标，使其精神提高  ，持续' AS `dst`
    UNION ALL SELECT 'Increases the target\'s resistance to Shadow spells by  for' AS `src`, '使目标对暗影法术的抗性提高  ，持续' AS `dst`
    UNION ALL SELECT 'Instantly strike the enemy, causing  weapon damage plus >, total damage increased by  for each of your diseases on the target.' AS `src`, '立即攻击敌人，造成  点武器伤害外加 >，目标身上每有一种你所施加的疾病，总伤害就提高  。' AS `dst`
    UNION ALL SELECT 'Chills the target for  to  Frost damage and  infects them with Frost Fever, a disease that deals periodic damage and reduces melee and ranged attack speed by  for   Very high threat when in Frost Presence.' AS `src`, '冰冻目标，造成  到  点冰霜伤害，并用冰霜热疫感染目标——一种造成周期性伤害、并使近战与远程攻击速度降低  的疾病，持续  。  在冰霜领域下产生极高威胁值。' AS `dst`
    UNION ALL SELECT 'A deadly attack that deals  weapon damage plus  and heals the Death Knight for  of s:her' AS `src`, '一次致命攻击，造成  点武器伤害外加  ，并为死亡骑士治疗相当于其 s:her 的  。' AS `dst`
    UNION ALL SELECT 'Summons a Frost Resistance Totem with  health at the feet of the caster for   The totem increases party and raid members\' frost resistance by 1, if within  yards.' AS `src`, '在施法者脚下召唤一个拥有  点生命值的冰霜抗性图腾，持续  。  若在  码内，该图腾使队伍和团队成员的冰霜抗性提高 1 点。' AS `dst`
    UNION ALL SELECT 'Launches Arcane Missiles at the enemy, causing  Arcane damage every  sec for' AS `src`, '向敌人发射奥术飞弹，每  秒造成  点奥术伤害，持续' AS `dst`
    UNION ALL SELECT 'Blasts enemies near the caster for  to  Frost damage and freezes them in place for up to   Damage caused may interrupt the effect.' AS `src`, '对施法者附近的敌人造成  到  点冰霜伤害，并将其冻结在原地最多  。  造成的伤害可能打断该效果。' AS `dst`
    UNION ALL SELECT 'Increases Armor by  and Frost resistance by    If an enemy strikes the caster, they may have their movement slowed by  and the time between their attacks increased by  for   Only one type of Armor spell can be active on the Mage at any time.  Lasts' AS `src`, '使护甲提高  ，冰霜抗性提高  。  若敌人攻击施法者，其移动速度可能降低  ，攻击间隔延长  ，持续  。  法师同时只能保持一种护甲法术。  持续  。' AS `dst`
    UNION ALL SELECT 'Causes the enemy target to run in horror for  and causes  Shadow damage.  The caster gains  of the damage caused in health.' AS `src`, '使敌方目标恐惧奔逃  ，并造成  点暗影伤害。  施法者获得所造成伤害的  作为生命值。' AS `dst`
    UNION ALL SELECT 'Burn the enemy\'s soul, causing  Fire damage.' AS `src`, '灼烧敌人的灵魂，造成  点火焰伤害。' AS `dst`
    UNION ALL SELECT 'Mangle the target for  normal damage plus  and causes the target to take  additional damage from bleed effects for' AS `src`, '撕裂目标，造成  点普通伤害外加  ，并使目标在  内受到的流血效果伤害提高  。' AS `dst`
    UNION ALL SELECT 'Mangle the target for  normal damage plus  and causes the target to take  additional damage from bleed effects for   Awards  combo int:points' AS `src`, '撕裂目标，造成  点普通伤害外加  ，并使目标在  内受到的流血效果伤害提高  。  获得  点连击点。' AS `dst`
    UNION ALL SELECT 'Increases damage done by  for' AS `src`, '使造成的伤害提高  ，持续' AS `dst`
    UNION ALL SELECT 'Stuns the target for  and interrupts non-player spellcasting for 47d.' AS `src`, '使目标昏迷  ，并打断非玩家单位的施法 47 天。' AS `dst`
    UNION ALL SELECT 'Hurls a hammer that strikes an enemy for  to  Holy damage.  Only usable on enemies that have 20% or less health.' AS `src`, '投掷一柄战锤，对敌人造成  到  点神圣伤害。  只能对生命值不高于 20% 的敌人使用。' AS `dst`
    UNION ALL SELECT 'Garrote the enemy, causing  damage over d, increased by your attack power.  Must be stealthed and behind the target.  Awards  combo int:points' AS `src`, '绞杀敌人，在 d 内造成  点伤害，并受你的攻击强度提高。  必须处于潜行状态并位于目标背后。  获得  点连击点。' AS `dst`
    UNION ALL SELECT 'Power infuses the target, increasing their Stamina by  for' AS `src`, '强韧之力注入目标，使其耐力提高  ，持续' AS `dst`
    UNION ALL SELECT 'Sunder the target\'s armor causing the Sunder Armor effect.  In addition, causes  of weapon damage plus  for each application of Sunder Armor on the target.  The Sunder Armor effect can stack up to  times.' AS `src`, '削弱目标的护甲，造成破甲效果。  此外，目标身上每层破甲还会造成  点武器伤害外加  。  破甲效果最多可叠加  层。' AS `dst`
    UNION ALL SELECT 'Hurls a holy shield at the enemy, dealing  to  Holy damage, Dazing them and then jumping to additional nearby enemies.  Affects  total targets.  Lasts' AS `src`, '向敌人投掷神圣护盾，造成  到  点神圣伤害，使其眩晕，然后跳向附近的其他敌人。  共影响  个目标。  持续' AS `dst`
    UNION ALL SELECT 'Increases chance to block by  for  and deals  Holy damage for each attack blocked while active.  Each block expends a charge.   charges.' AS `src`, '使格挡几率提高  ，持续  ，并在激活期间每次格挡攻击时造成  点神圣伤害。  每次格挡消耗一层充能。  共  层充能。' AS `dst`
    UNION ALL SELECT 'Creates a Holy Lightwell.  Friendly players can click the Lightwell to restore  health over  Attacks done to you equal to 30% of your total health will cancel the effect. Lightwell lasts for  or 10 charges.' AS `src`, '创造一座圣光之井。  友方玩家可点击圣光之井，在  内恢复  点生命值。对你造成的伤害累计达到你总生命值的 30% 会取消该效果。圣光之井持续  或 10 次充能。' AS `dst`
    UNION ALL SELECT 'Causes  Shadow damage over  to your target and causes up to 10 party or raid members to gain 1% of their maximum mana per 5 sec when you deal damage from Mind Blast. In addition, if the Vampiric Touch is dispelled it will cause' AS `src`, '在  内对你的目标造成  点暗影伤害，并在你以心灵震爆造成伤害时，使最多 10 名队伍或团队成员每 5 秒获得其最大法力的 1%。此外，若吸血鬼之触被驱散，将造成' AS `dst`
    UNION ALL SELECT 'Shadowfury is unleashed, causing  Shadow damage and stunning all enemies within  yds for' AS `src`, '释放暗影之怒，造成  点暗影伤害，并使  码内的所有敌人昏迷  。' AS `dst`
    UNION ALL SELECT 'Shadow energy slowly destroys the target, causing  damage over   In addition, if the Unstable Affliction is dispelled it will cause' AS `src`, '暗影能量缓慢地摧毁目标，在  内造成  点伤害。  此外，若痛苦无常被驱散，将造成' AS `dst`
    UNION ALL SELECT 'Protects the target with an earthen shield, reducing casting or channeling time lost when damaged by   and causing attacks to heal the shielded target for   This effect can only occur once every few seconds.   charges.  Lasts   Earth Shield can only be placed on one target at a time and only one Elemental Shield can be active on a target at a time.' AS `src`, '以大地之盾保护目标，使其受伤害时损失的施法与引导时间减少  ，并使攻击者为被护盾者恢复  点生命值。  该效果每几秒只能触发一次。  共  层充能。  持续  。  大地之盾同时只能施加在一个目标上，且一个目标同时只能有一种元素护盾。' AS `dst`
    UNION ALL SELECT 'Can be used to transform your Shadow Form ability at a Transmogrifier.' AS `src`, '可在幻化师处用于改变你的暗影形态能力的外观。' AS `dst`
    UNION ALL SELECT 'Obtained from Disenchanting Epic Bloodforged Gear' AS `src`, '由分解史诗血锻装备获得' AS `dst`
    UNION ALL SELECT 'Obtained from Disenchanting Bloodforged Gear.' AS `src`, '由分解血锻装备获得。' AS `dst`
    UNION ALL SELECT 'Heals a friendly target for  and another  over   Your next Chain Heal cast on that primary target within  will consume the healing over time effect and increase the amount of the Chain Heal by .' AS `src`, '为友方目标治疗  点生命值，并在  内再治疗  点。  你在  内对该主目标施放的下一次治疗链将消耗该持续治疗效果，并使治疗链的治疗量提高  。' AS `dst`
    UNION ALL SELECT 'The enemy target is swarmed by insects, decreasing their chance to hit with melee and ranged attacks by  and causing  Nature damage over' AS `src`, '敌方目标被虫群包围，其近战和远程攻击命中几率降低  ，并在  内造成  点自然伤害' AS `dst`
    UNION ALL SELECT 'Uncommon High-Risk Materials are not lost on death!\n\nCan be exchanged at the War Herald for Twisted or Void materials.' AS `src`, '罕见的高危材料不会在死亡时丢失！\n\n可在战争使者处兑换扭曲或虚空材料。' AS `dst`
    UNION ALL SELECT 'Matches a Blue or Yellow Socket.' AS `src`, '匹配一个蓝色或黄色插槽。' AS `dst`
    UNION ALL SELECT 'Right click me! Any items you do not have space for will be sent to your mail!' AS `src`, '右键点击我！你没有空格存放的物品会通过邮件寄给你！' AS `dst`
    UNION ALL SELECT 'A reaped Soul infused with mana. This item persists through death.' AS `src`, '一枚注满法力的收割灵魂。该物品死亡后仍会保留。' AS `dst`
    UNION ALL SELECT 'Reduces the casting time of your Fireball spell by 00' AS `src`, '使你的火球术施法时间缩短 00' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Fire spells by .' AS `src`, '使你的火焰法术造成的伤害提高  。' AS `dst`
    UNION ALL SELECT 'Increases your spell critical damage bonus with all spells by  but your non-periodic spell criticals cost an additional  of the spell\'s cost.' AS `src`, '使你的所有法术的法术暴击伤害加成提高  ，但你的非周期性法术暴击会额外消耗该法术  的法力。' AS `dst`
    UNION ALL SELECT 'Reduces the casting time of your Frostbolt spell by 00' AS `src`, '使你的寒冰箭施法时间缩短 00' AS `dst`
    UNION ALL SELECT 'Increases all Frost damage you cause by  and reduces the chance melee and ranged attacks will hit you by .' AS `src`, '使你造成的所有冰霜伤害提高  ，并使近战和远程攻击命中你的几率降低  。' AS `dst`
    UNION ALL SELECT 'Increases the damage caused by your Frostbolt, Frostfire Bolt and Ice Lance spells by  and reduces the movement speed of all chilled targets by an additional .' AS `src`, '使你的寒冰箭、霜火之箭和冰枪术造成的伤害提高  ，并使所有被冰冻目标的移动速度额外降低  。' AS `dst`
    UNION ALL SELECT 'Reduces the pushback suffered from damaging attacks while casting Arcane Missiles and Arcane Blast by .' AS `src`, '使你在施放奥术飞弹和奥术冲击时受到的伤害击退效果降低  。' AS `dst`
    UNION ALL SELECT 'Gives you a  chance of entering a Clearcasting state after any damage spell hits a target.  The Clearcasting state reduces the mana cost of your next damage spell by' AS `src`, '任何伤害法术命中目标后，你有  几率进入清晰施法状态。  该状态使你的下一个伤害法术的法力消耗降低' AS `dst`
    UNION ALL SELECT 'Increases spell power by  of your total Intellect.' AS `src`, '使法术强度提高，数值相当于你总智力的  。' AS `dst`
    UNION ALL SELECT 'Gives your Arcane Blast a  chance, and your Arcane Barrage, Fireball, Frostbolt and Frostfire Bolt spells a  chance to reduce the channeled duration of the next Arcane Missiles spell by 00' AS `src`, '使你的奥术冲击有  几率、奥术弹幕、火球术、寒冰箭和霜火之箭有  几率，使下一次奥术飞弹的引导时间缩短 00' AS `dst`
    UNION ALL SELECT 'Increases your chance to get a critical strike and the critical damage caused with Axes and Polearms by .' AS `src`, '使你的斧与长柄武器的暴击几率与暴击伤害提高  。' AS `dst`
    UNION ALL SELECT 'Gives you a  chance to get an extra attack on the same target after hitting your target with your Sword.  This effect cannot occur more than once every 6 seconds.' AS `src`, '用剑命中目标后，你有  几率对同一目标获得一次额外攻击。  该效果每 6 秒最多触发一次。' AS `dst`
    UNION ALL SELECT 'Your melee critical hits Enrage you, increasing all damage caused by  for   This effect does not stack with Enrage.' AS `src`, '你的近战暴击会使你激怒，使造成的所有伤害提高  ，持续  。  该效果不与激怒叠加。' AS `dst`
    UNION ALL SELECT 'Increases your chance to block attacks with a shield by  and has a  chance to generate' AS `src`, '使你的盾牌格挡几率提高  ，并有  几率产生' AS `dst`
    UNION ALL SELECT 'Increases physical damage you deal when a one-handed melee weapon is equipped by .' AS `src`, '使你在装备单手近战武器时造成的物理伤害提高  。' AS `dst`
    UNION ALL SELECT 'Increases your chance to get a critical strike with melee weapons by .' AS `src`, '使你的近战武器暴击几率提高  。' AS `dst`
    UNION ALL SELECT 'Increases the melee attack power reduction of your Demoralizing Shout by .' AS `src`, '使你的挫志怒吼的近战攻击强度降低效果提高  。' AS `dst`
    UNION ALL SELECT 'Increases the melee attack power bonus of your Battle Shout and the health bonus of your Commanding Shout by .' AS `src`, '使你的战斗怒吼的近战攻击强度加成、命令怒吼的生命值加成提高  。' AS `dst`
    UNION ALL SELECT 'Gives you a  chance to receive a  damage bonus for  after being the victim of a damaging attack.  This effect does not stack with Wrecking Crew.' AS `src`, '受到伤害性攻击后，你有  几率获得  点伤害加成，持续  。  该效果不与破坏之众叠加。' AS `dst`
    UNION ALL SELECT 'Increases your attack speed by  for your next 3 swings after dealing a melee critical strike.' AS `src`, '近战暴击后，你接下来 3 次挥击的攻击速度提高  。' AS `dst`
    UNION ALL SELECT 'Increases Strength by  and reduces threat caused by  while in Berserker Stance.' AS `src`, '在狂暴姿态下，力量提高  ，造成的威胁值降低  。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Slam, Whirlwind and Bloodthirst abilities by .' AS `src`, '使你的猛击、旋风斩和嗜血技能造成的伤害提高  。' AS `dst`
    UNION ALL SELECT 'Increases your chance to hit with weapon and poison attacks by .' AS `src`, '使你的武器与毒药攻击的命中几率提高  。' AS `dst`
    UNION ALL SELECT 'Increases your chance to get a critical strike with Daggers and Fist Weapons by .' AS `src`, '使你的匕首与拳套武器的暴击几率提高  。' AS `dst`
    UNION ALL SELECT 'Increases the damage of your Sinister Strike, Backstab, and Eviscerate abilities by .' AS `src`, '使你的邪恶攻击、背刺和剔骨技能的伤害提高  。' AS `dst`
    UNION ALL SELECT 'Gives you a  chance to get an extra attack on the same target after hitting your target with your Sword or Axe.' AS `src`, '用剑或斧命中目标后，你有  几率对同一目标获得一次额外攻击。' AS `dst`
    UNION ALL SELECT 'Gives your successful off-hand melee attacks a  chance to generate  Energy.' AS `src`, '使你的成功副手近战攻击有  几率产生  点能量。' AS `dst`
    UNION ALL SELECT 'Your critical strike damage is increased by  when the target has less health than you (as a percentage of total health).' AS `src`, '当目标的生命值低于你时（按总生命值百分比计算），你的暴击伤害提高  。' AS `dst`
    UNION ALL SELECT 'Increases your critical strike chance by .' AS `src`, '使你的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of all combo point-generating abilities that do not require stealth by .' AS `src`, '使所有不需要潜行的、能产生连击点数的技能，其暴击伤害加成提高。' AS `dst`
    UNION ALL SELECT 'Increases the chance to apply Deadly Poison to your target by  and the frequency of applying Instant Poison to your target by .' AS `src`, '使你的致命毒药命中目标的几率提高，并使速效毒药命中目标的频率提高。' AS `dst`
    UNION ALL SELECT 'Your critical strikes from abilities that add combo points have a  chance to add an additional combo point.' AS `src`, '使你的、能增加连击点数的技能在造成暴击时有一定几率额外增加一个连击点数。' AS `dst`
    UNION ALL SELECT 'Your Eviscerate and Envenom abilities have a  chance to refresh your Slice and Dice duration to its 5 combo point maximum.' AS `src`, '使你的剔骨和毒伤技能有一定几率将你的切割持续时间刷新至 5 个连击点上限。' AS `dst`
    UNION ALL SELECT 'Your finishing moves have a  chance per combo point to restore  energy.' AS `src`, '使你的终结技每消耗一个连击点，便有一定几率恢复能量。' AS `dst`
    UNION ALL SELECT 'Increases your attack power by .' AS `src`, '使你的攻击强度提高。' AS `dst`
    UNION ALL SELECT 'Increases your total Agility by  and increases the percentage damage bonus of Backstab and Hemorrhage by an additional .' AS `src`, '使你的总敏捷提高，并使背刺和出血的伤害加成额外提高。' AS `dst`
    UNION ALL SELECT 'Reduces the energy cost of your Backstab and Ambush abilities by  and the energy cost of your Hemorrhage by 2, and increases all damage done by .' AS `src`, '使你的背刺和伏击技能的能量消耗降低，出血的能量消耗降低 2 点，并使你造成的所有伤害提高。' AS `dst`
    UNION ALL SELECT 'Reduces the duration of Stun, Fear, and Silence effects done to you by an additional .' AS `src`, '使你所受的昏迷、恐惧和沉默效果的持续时间额外缩短。' AS `dst`
    UNION ALL SELECT 'Increases the damage and healing done by your instant spells by .' AS `src`, '使你的瞬发法术造成的伤害和治疗效果提高。' AS `dst`
    UNION ALL SELECT 'Grants  spell haste for your next spell after casting Power Word: Shield, and increases the amount absorbed by your Power Word: Shield equal to  of your spell power.' AS `src`, '在施放真言术：盾后，使你的下一个法术获得法术急速，并使你的真言术：盾的吸收量提高，数值相当于你的法术强度的一部分。' AS `dst`
    UNION ALL SELECT 'Reduces all spell damage taken by .' AS `src`, '使你所受到的所有法术伤害降低。' AS `dst`
    UNION ALL SELECT 'Reduces the casting time of your Smite, Holy Fire, Heal and Greater Heal spells by 00' AS `src`, '使你的惩击、神圣之火、治疗和强效治疗术的施法时间缩短。' AS `dst`
    UNION ALL SELECT 'Increases spell power by  of your total Spirit.' AS `src`, '使你的法术强度提高，数值相当于你总精神值的一部分。' AS `dst`
    UNION ALL SELECT 'Increases the amount healed by your healing spells by .' AS `src`, '使你的治疗法术的治疗量提高。' AS `dst`
    UNION ALL SELECT 'Your Greater Heal spell gains an additional  and your Flash Heal and Binding Heal gain an additional  of your bonus healing effects.' AS `src`, '使你的强效治疗术额外获得相当于你的治疗效果加成的一部分，快速治疗和联结治疗也同样额外获得。' AS `dst`
    UNION ALL SELECT 'Increases the amount healed by Circle of Healing, Binding Heal, Holy Nova, Prayer of Healing, Divine Hymn and Prayer of Mending by %, and reduces the cooldown of your Prayer of Mending by .' AS `src`, '使你的治疗之环、联结治疗、神圣新星、治疗祷言、神圣赞美诗和愈合祷言的治疗量提高 %，并使你的愈合祷言的冷却时间缩短。' AS `dst`
    UNION ALL SELECT 'Increases your Shadow spell damage by .' AS `src`, '使你的暗影法术伤害提高。' AS `dst`
    UNION ALL SELECT 'Reduces the cooldown of your Mind Blast spell by 00' AS `src`, '使你的心灵震爆法术的冷却时间缩短。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your Mind Blast, Mind Flay, and Shadow Word: Death spells by .' AS `src`, '使你的心灵震爆、精神鞭笞和暗言术：灭的暴击伤害加成提高。' AS `dst`
    UNION ALL SELECT 'Increases your spell power by  of your total Spirit, and your damage done by your Mind Flay and Mind Blast is increased by  if your target is afflicted by your Shadow Word: Pain.' AS `src`, '使你的法术强度提高，数值相当于你总精神值的一部分；当你的目标受到你的暗言术：痛影响时，你的精神鞭笞和心灵震爆造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your Shock, Lightning Bolt, Chain Lightning, Lava Burst, and Wind Shear spells by .' AS `src`, '使你的震击、闪电箭、闪电链、熔岩爆裂和风剪法术的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Lightning Bolt, Chain Lightning, Thunderstorm, Lava Burst and Shock spells by .' AS `src`, '使你的闪电箭、闪电链、雷霆风暴、熔岩爆裂和震击法术造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your Searing and Magma Totems and your Fire, Frost, and Nature spells by .' AS `src`, '使你的灼热图腾、熔岩图腾以及火焰、冰霜和自然法术的暴击伤害加成提高。' AS `dst`
    UNION ALL SELECT 'Reduces the cast time of your Lightning Bolt, Chain Lightning, and Lava Burst spells by 00' AS `src`, '使你的闪电箭、闪电链和熔岩爆裂法术的施法时间缩短。' AS `dst`
    UNION ALL SELECT 'Your Lightning Bolt and Chain Lightning spells gain an additional  and your Lava Burst gains an additional  of your bonus damage effects.' AS `src`, '使你的闪电箭和闪电链额外获得相当于你的伤害加成的一部分，熔岩爆裂也同样额外获得。' AS `dst`
    UNION ALL SELECT 'Reduces the casting time of your Healing Wave spell by 00' AS `src`, '使你的治疗波法术的施法时间缩短。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your totems by .' AS `src`, '使你的图腾的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your healing spells by .' AS `src`, '使你的治疗法术的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Increases the critical effect chance of your healing and lightning spells by .' AS `src`, '使你的治疗和闪电法术的暴击效果几率提高。' AS `dst`
    UNION ALL SELECT 'Increases the effectiveness of your healing spells by .' AS `src`, '使你的治疗法术的效果提高。' AS `dst`
    UNION ALL SELECT 'Whenever a damaging attack brings you below  health, your maximum health is increased by  for  and your threat level towards the attacker is reduced.  30 second cooldown.' AS `src`, '当一次伤害性攻击使你的生命值降至低点时，你的最大生命值提高，持续一段时间，同时你对攻击者的威胁值降低。30 秒冷却时间。' AS `dst`
    UNION ALL SELECT 'When you cast Chain Heal or Riptide, you have a  chance to lower the cast time of your Healing Wave spell by  and increase the critical effect chance of your Lesser Healing Wave spell by %, until two such spells have been cast. In addition, your Healing Wave gains an additional  of your bonus healing effects and your Lesser Healing Wave gains an additional  of your bonus healing effects.' AS `src`, '当你施放治疗链或激流时，有一定几率使你的治疗波的施法时间缩短、并使你的次级治疗波的暴击效果几率提高 %，直到施放两次此类法术为止。此外，你的治疗波额外获得相当于你的治疗加成的一部分，次级治疗波也同样额外获得。' AS `dst`
    UNION ALL SELECT 'Increases your Intellect by .' AS `src`, '使你的智力提高。' AS `dst`
    UNION ALL SELECT 'Improves your chance to get a critical strike with all spells and attacks by .' AS `src`, '使你的所有法术和攻击的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases your attack speed by  for your next 3 swings after dealing a critical strike.' AS `src`, '在造成一次暴击后，使你的下 3 次攻击的攻击速度提高。' AS `dst`
    UNION ALL SELECT 'Increases your Stamina by %, and reduces the duration of movement slowing effects on you by .' AS `src`, '使你的耐力提高 %，并使你所受的移动减速效果的持续时间缩短。' AS `dst`
    UNION ALL SELECT 'Reduces the cost of your Maul, Swipe, Claw, Rake and Mangle abilities by' AS `src`, '使你的槌击、横扫、爪击、斜掠和裂伤技能的能量消耗降低。' AS `dst`
    UNION ALL SELECT 'Increases the attack power reduction of your Demoralizing Roar by  and the damage caused by your Ferocious Bite by .' AS `src`, '使你的挫志咆哮的攻击强度降低效果提高，并使你的凶猛撕咬造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Increases your Intellect by   In addition, while in Bear or Dire Bear Form your Stamina is increased by  and while in Cat Form your attack power is increased by .' AS `src`, '使你的智力提高。此外，在熊形态或巨熊形态下，你的耐力提高；在猎豹形态下，你的攻击强度提高。' AS `dst`
    UNION ALL SELECT 'Increases damage done by your Maul and Shred attacks on bleeding targets by %, and increases the critical strike chance of your Ferocious Bite ability on bleeding targets by .' AS `src`, '使你的槌击和撕碎对流血目标造成的伤害提高 %，并使你的凶猛撕咬对流血目标的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Gives you  chance to gain' AS `src`, '使你有一定几率获得额外效果。' AS `dst`
    UNION ALL SELECT 'Reduces the cast time of your Healing Touch spell by 00' AS `src`, '使你的治疗之触法术的施法时间缩短。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of your Healing Touch, Nourish and Tranquility spells by .' AS `src`, '使你的治疗之触、滋养和宁静法术的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Increases the critical effect chance of your Regrowth and Nourish spells by .' AS `src`, '使你的愈合和滋养法术的暴击效果几率提高。' AS `dst`
    UNION ALL SELECT 'The bonus healing effects of your healing over time spells is increased by .' AS `src`, '使你的持续治疗法术的治疗加成效果提高。' AS `dst`
    UNION ALL SELECT 'Increases your total spell haste by  and reduces the base cooldown of your Lifebloom spell by 2/-15}%.' AS `src`, '使你的总法术急速提高，并使你的生命绽放法术的基础冷却时间缩短。' AS `dst`
    UNION ALL SELECT 'Reduces the cast time of your Wrath and Starfire spells by 00' AS `src`, '使你的愤怒和星火术法术的施法时间缩短。' AS `dst`
    UNION ALL SELECT 'Increases the damage and healing done by your periodic spell damage and healing effects by .' AS `src`, '使你的周期性法术伤害和治疗效果造成的伤害与治疗量提高。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your Starfire, Starfall, Moonfire, and Wrath spells by .' AS `src`, '使你的星火术、星辰坠落、月火术和愤怒法术的暴击伤害加成提高。' AS `dst`
    UNION ALL SELECT 'Your Starfire spell gains an additional  and your Wrath gains an additional  of your bonus damage effects.' AS `src`, '使你的星火术额外获得相当于你的伤害加成的一部分，愤怒也同样额外获得。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Shadow Bolt spell by %, and your Shadow Bolt has a  chance to cause your target to be vulnerable to spell damage, increasing spell critical strike chance against that target by  Effect lasts 00d.' AS `src`, '使你的暗影箭法术造成的伤害提高 %，并使你的暗影箭有一定几率使目标易受法术伤害，使对该目标的法术暴击几率提高。效果持续一段时间。' AS `dst`
    UNION ALL SELECT 'Reduces the casting time of your Shadow Bolt. Chaos Bolt and Immolate spells by 00' AS `src`, '使你的暗影箭、混乱之箭和献祭法术的施法时间缩短。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your Destruction spells and your Imp\'s Firebolt spell by .' AS `src`, '使你的毁灭系法术和小鬼的火箭术的暴击伤害加成提高。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Fire spells by  and reduces the cast time of your Incinerate spell by  sec.' AS `src`, '使你的火焰法术造成的伤害提高，并使你的烧尽法术的施法时间缩短 秒。' AS `dst`
    UNION ALL SELECT 'Your Shadow Bolt, Shadowburn, Chaos Bolt and Incinerate spells gain an additional  of your bonus spell damage effects.' AS `src`, '使你的暗影箭、暗影灼烧、混乱之箭和烧尽法术额外获得相当于你的法术伤害加成的一部分。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Incinerate and Chaos Bolt spells to targets afflicted by your Immolate by %, and the critical strike chance of your Conflagrate spell is increased by .' AS `src`, '使你的烧尽和混乱之箭对受到你的献祭影响的目标造成的伤害提高 %，并使你的燃烧法术的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Corruption by %, and increases the critical strike chance of your Seed of Corruption by .' AS `src`, '使你的腐蚀术造成的伤害提高 %，并使你的腐蚀之种法术的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases the damage dealt or life drained by your Shadow spells and your Felhunter\'s Shadow Bite ability by .' AS `src`, '使你的暗影法术和地狱猎犬的暗影撕咬技能造成的伤害或吸取的生命值提高。' AS `dst`
    UNION ALL SELECT 'Your Corruption and Unstable Affliction spells gain an additional  of your bonus spell damage, and your Drain Life, Drain Soul, Shadow Bolt, and Haunt spells have a  chance to reset the duration of your Corruption spell on the target.' AS `src`, '你的腐蚀术和痛苦无常额外获得相当于你的法术伤害加成的一部分；你的吸取生命、吸取灵魂、暗影箭和鬼影缠身法术有一定几率重置目标身上的腐蚀术持续时间。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Voidwalker, Succubus, Felhunter and Felguard\'s melee attacks and your Imp\'s Firebolt by .' AS `src`, '使你的虚空行者、魅魔、地狱猎犬和恶魔卫士的近战攻击以及小鬼的火箭术造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Increases melee and spell critical strike chance for you and your summoned demon by .' AS `src`, '使你和你的召唤恶魔的近战与法术暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases your spell damage by %, and your pet\'s criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by  of your Spell Damage for  This effect has a  sec cooldown. Does not work on Enslaved demons.' AS `src`, '使你的法术伤害提高 %，并且你的宠物的暴击会为你的队伍或团队成员施加恶魔契约效果。恶魔契约使法术强度提高，数值相当于你的法术伤害的一部分，持续一段时间。该效果有冷却时间。对通过奴役获得的恶魔无效。' AS `dst`
    UNION ALL SELECT 'While Aspect of the Hawk or Dragonhawk is active, all normal ranged attacks have a  chance of increasing ranged attack speed by  for 0d.' AS `src`, '当雄鹰守护或龙鹰守护激活时，你的所有普通远程攻击都有一定几率使远程攻击速度提高，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Increases the health of your pet by  and your total health by .' AS `src`, '使你的宠物的生命值提高，并使你的总生命值提高。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your pets by .' AS `src`, '使你的宠物造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'Gives your pet a  chance to gain a  attack speed increase for  after dealing a critical strike.' AS `src`, '使你的宠物在造成暴击后有一定几率获得攻击速度提高，持续一段时间。' AS `dst`
    UNION ALL SELECT 'Increases ranged combat attack speed by  and your pet\'s melee attack speed by .' AS `src`, '使你的远程战斗攻击速度提高，并使你的宠物的近战攻击速度提高。' AS `dst`
    UNION ALL SELECT 'Increases your pet\'s damage by  and you and your pet\'s movement speed by  while your pet is active. This does not stack with other movement speed increasing effects.' AS `src`, '当你的宠物激活时，使你的宠物造成的伤害提高，并使你和你的宠物的移动速度提高。该效果不与其他提高移动速度的效果叠加。' AS `dst`
    UNION ALL SELECT 'While tracking Beasts, Demons, Dragonkin, Elementals, Giants, Humanoids and Undead, all damage done to those types by the Hunter is increased by .' AS `src`, '当你追踪野兽、恶魔、龙类、元素生物、巨人、人形生物和亡灵时，猎人对这些类型目标造成的所有伤害提高。' AS `dst`
    UNION ALL SELECT 'Increases your Stamina by .' AS `src`, '使你的耐力提高。' AS `dst`
    UNION ALL SELECT 'Increases your Agility by .' AS `src`, '使你的敏捷提高。' AS `dst`
    UNION ALL SELECT 'Increases your critical strike chance with ranged weapons by .' AS `src`, '使你的远程武器暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Increases the critical strike damage bonus of your ranged abilities by .' AS `src`, '使你的远程技能的暴击伤害加成提高。' AS `dst`
    UNION ALL SELECT 'Reduces the Mana cost of your Shots and Stings by .' AS `src`, '使你的射击和钉刺技能的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Increases your critical strike chance by %, and reduces the Mana cost of your Steady Shot, Aimed Shot, and Chimera Shot by .' AS `src`, '使你的暴击几率提高 %，并使你的稳固射击、瞄准射击和奇美拉射击的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Increases your damage done by your shots and the damage done by your pet\'s special abilities by  on marked targets, and increases the critical strike damage bonus of your Aimed Shot, Arcane Shot, Steady Shot, Kill Shot and Chimera Shot by .' AS `src`, '使你对被标记目标造成的射击伤害以及你的宠物的特殊技能伤害提高，并使你的瞄准射击、奥术射击、稳固射击、杀戮射击和奇美拉射击的暴击伤害加成提高。' AS `dst`
    UNION ALL SELECT 'Reduces the mana cost of all instant cast spells by .' AS `src`, '使你的所有瞬发法术的法力消耗降低。' AS `dst`
    UNION ALL SELECT 'Increases your chance to get a critical strike with all spells and attacks by .' AS `src`, '使你的所有法术和攻击的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'Reduces the pushback suffered from damaging attacks while casting Flash of Light and Holy Light by .' AS `src`, '使你在施放圣光闪现和圣光术时因受到伤害性攻击而遭受的施法延迟降低。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your Seal of Righteousness, Seal of Vengeance and Seal of Corruption and their Judgement effects by .' AS `src`, '使你的正义圣印、复仇圣印和腐蚀圣印及其审判效果造成的伤害提高。' AS `dst`
    UNION ALL SELECT 'After getting a critical effect from your Flash of Light, Holy Light, or Holy Shock heal spell you have a  chance to gain mana equal to  of the base cost of the spell.' AS `src`, '当你的圣光闪现、圣光术或神圣震击的治疗效果造成暴击后，你有一定几率获得法力值，数值相当于该法术基础消耗的一部分。' AS `dst`
    UNION ALL SELECT 'Increases all healing done by you and all healing effects on you by .' AS `src`, '使你的所有治疗量以及你受到的所有治疗效果提高。' AS `dst`
    UNION ALL SELECT 'Increases your total Strength by .' AS `src`, '使你的总力量提高。' AS `dst`
    UNION ALL SELECT 'Increases your chance to dodge by .' AS `src`, '使你的躲闪几率提高。' AS `dst`
    UNION ALL SELECT 'Increases your chance to critically hit with weapons, spells and abilities by .' AS `src`, '使你的武器、法术和技能的暴击几率提高。' AS `dst`
    UNION ALL SELECT 'When you are above 75% health, you deal  more damage.  In addition, your attacks ignore up to  of your opponent\'s armor at all times.' AS `src`, '当你的生命值高于 75% 时，你造成的伤害提高。此外，你的攻击始终可无视对手最多一部分护甲。' AS `dst`
    UNION ALL SELECT 'Increases your Frost and Shadow damage by .' AS `src`, '使你的冰霜和暗影伤害提高。' AS `dst`
    UNION ALL SELECT 'You leech heat from victims of your Frost Fever, so that when their melee attack speed is reduced, yours increases by  for the next 20 sec.' AS `src`, '你从霜热疫病的受害者身上吸取热量：当他们的近战攻击速度被降低时，你的攻击速度提高，持续 20 秒。' AS `dst`
    UNION ALL SELECT 'Your spells and abilities deal  more damage to targets infected with Frost Fever.  Also increases your expertise by' AS `src`, '你的法术和技能对感染霜热疫病的目标造成的伤害提高。此外，使你的精准提高。' AS `dst`
    UNION ALL SELECT 'Your auto attacks deal an additional  Shadow damage.' AS `src`, '你的自动攻击额外造成暗影伤害。' AS `dst`
    UNION ALL SELECT 'Activate your Enchanted Wings.' AS `src`, '激活你的附魔之翼。' AS `dst`
) AS `m` ON `m`.`src` = `a`.`description`
SET `a`.`description` = `m`.`dst`;
