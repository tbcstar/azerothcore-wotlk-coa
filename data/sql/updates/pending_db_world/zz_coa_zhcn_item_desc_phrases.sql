-- Fill the most common English item flavor texts left in item_template.
-- Each statement is guarded by the exact English source text, so it is
-- idempotent and only touches rows that still carry the English value.

-- One indexed pass replaces 160 single-row UPDATEs on `item_template`.`description`.
UPDATE `item_template` AS `a`
JOIN (
    SELECT 'You get Skill Cards from Silas Darkmoon!\n\nYou can activate skill cards in the Skill Card Collection between levels 1 and 9.' AS `src`, '你可以从塞拉斯·暗月处获得技能卡！\n\n你可以在 1 到 9 级之间于技能卡收藏中激活技能卡。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this companion.\n\nThis is a non-combat companion.' AS `src`, '教你如何召唤这个伙伴。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'A Cosmetic set meant to be used with Transmogrification. You can see what Cosmetic Sets look like in the Vanity Collection. These can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '一套用于幻化的外观套装。你可以在收藏品中查看外观套装的样子。它们可以从其他玩家、拍卖行或飞升商店获得。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount. This is a Ground mount.' AS `src`, '教你如何召唤这个坐骑。这是一个地面坐骑。' AS `dst`
    UNION ALL SELECT 'A small satchel containing various trade goods.' AS `src`, '一个小挎包，里面装着各种贸易商品。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount. This mount is capable of Flying.' AS `src`, '教你如何召唤这个坐骑。该坐骑可以飞行。' AS `dst`
    UNION ALL SELECT 'Original appearance can be restored by using this item while shapeshifted.' AS `src`, '在变形状态下使用此物品可恢复原本外观。' AS `dst`
    UNION ALL SELECT 'This Equipment is Perishable' AS `src`, '此装备会损耗' AS `dst`
    UNION ALL SELECT 'Matches a Red or Yellow Socket.' AS `src`, '可镶嵌红色或黄色插槽。' AS `dst`
    UNION ALL SELECT 'Matches a Yellow or Blue Socket.' AS `src`, '可镶嵌黄色或蓝色插槽。' AS `dst`
    UNION ALL SELECT 'Matches a Red or Blue Socket.' AS `src`, '可镶嵌红色或蓝色插槽。' AS `dst`
    UNION ALL SELECT 'Can only be consumed at level 60.' AS `src`, '只能在 60 级时使用。' AS `dst`
    UNION ALL SELECT 'This is directly from Millificent\'s Private Collection. Who knew she was into collecting these?\n\nIf you already have the card/enchant inside you cannot use this.' AS `src`, '这件物品直接来自米莉菲森特的私人收藏。谁知道她居然喜欢收集这些东西？\n\n如果你体内已有该卡牌或附魔，则无法使用。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this companion.' AS `src`, '教你如何召唤这个伙伴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount.' AS `src`, '教你如何召唤这个坐骑。' AS `dst`
    UNION ALL SELECT 'Shift Right click to open!' AS `src`, '按住 Shift 右键点击打开！' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon and dismiss this companion.\n\nThis is a non-combat companion.' AS `src`, '教你如何召唤和收回这个伙伴。\n\n这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this companion. \n\n This is a non-combat companion.' AS `src`, '教你如何召唤这个伙伴。 \n\n 这是一个非战斗伙伴。' AS `dst`
    UNION ALL SELECT 'Artifact details have already been logged in your Archaeology Journal, under the Completed Artifacts tab.' AS `src`, '神器详情已记录在你的考古学日志的已完成神器标签页中。' AS `dst`
    UNION ALL SELECT 'Be careful out there Hero!' AS `src`, '小心点，英雄！' AS `dst`
    UNION ALL SELECT 'Teaches this Spell' AS `src`, '教你此法术' AS `dst`
    UNION ALL SELECT 'Matches a Red Socket.' AS `src`, '可镶嵌红色插槽。' AS `dst`
    UNION ALL SELECT 'Heals a friendly target for' AS `src`, '治疗一个友方目标' AS `dst`
    UNION ALL SELECT 'Achievement Reward for Accumulating Fel Power.' AS `src`, '累积邪能之力成就奖励。' AS `dst`
    UNION ALL SELECT 'Matches a Yellow Socket.' AS `src`, '可镶嵌黄色插槽。' AS `dst`
    UNION ALL SELECT 'Healing and Mana potions can be used on separate cooldown from other potions in combat.' AS `src`, '战斗中，治疗药水和法力药水拥有与其他药水独立的冷却。' AS `dst`
    UNION ALL SELECT 'Original appearance can be restored by using this item.' AS `src`, '使用此物品可恢复原本外观。' AS `dst`
    UNION ALL SELECT 'Deprecated. This item no longer serves any purpose.' AS `src`, '已废弃。此物品不再有任何用途。' AS `dst`
    UNION ALL SELECT 'This item is stored in your Character Advancement Sheet.' AS `src`, '此物品存放在你的角色成长面板中。' AS `dst`
    UNION ALL SELECT 'Bound in powerful blood magic.' AS `src`, '以强大的血魔法束缚。' AS `dst`
    UNION ALL SELECT 'Apply this Weapon Illusion at any Transmogrifier.' AS `src`, '在任何幻化师处应用此武器幻象。' AS `dst`
    UNION ALL SELECT 'This Token has been deprecated and all tier Tokens on Ascension are now a global token. If you received this from a creature, please open a bugtracker report.' AS `src`, '此徽记已废弃，飞升上所有的套装徽记现在都是通用徽记。如果你从生物身上获得了此物品，请提交 bug 报告。' AS `dst`
    UNION ALL SELECT 'Can be exchanged at the War Herald for Twisted or Void materials.' AS `src`, '可在战争使者处兑换扭曲或虚空材料。' AS `dst`
    UNION ALL SELECT 'Only fits in a meta gem slot.' AS `src`, '只能镶嵌于多彩宝石插槽。' AS `dst`
    UNION ALL SELECT 'Has a chance to contain Bonus Marks, Orbs, Runes and Raiders Commendations or Personal loot.\n\nPersonal Loot allows you to select gear from the raid for whichever stat type you prefer.' AS `src`, '有几率包含奖励徽记、宝珠、符文和掠夺者嘉奖或个人拾取。\n\n个人拾取允许你从团队副本中选择你偏好的属性类型的装备。' AS `dst`
    UNION ALL SELECT 'Heals the target for  over' AS `src`, '为目标治疗，持续' AS `dst`
    UNION ALL SELECT 'Matches a Blue socket.' AS `src`, '可镶嵌蓝色插槽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this aura.' AS `src`, '教你如何召唤此光环。' AS `dst`
    UNION ALL SELECT 'Obtained from Tier 1, 2 & 3 High-Risk zones.' AS `src`, '从 1、2、3 级高风险区域获得。' AS `dst`
    UNION ALL SELECT 'High-Risk Event Bonus Loot. Does not drop on death.' AS `src`, '高风险事件额外战利品。死亡时不会掉落。' AS `dst`
    UNION ALL SELECT 'A Cosmetic Weapon set meant to be used with Transmogrification. You can see what Cosmetic Weapon Sets look like in the Vanity Collection. These can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '一套用于幻化的外观武器套装。你可以在收藏品中查看外观武器套装的样子。它们可以从其他玩家、拍卖行或飞升商店获得。' AS `dst`
    UNION ALL SELECT 'Alliance Paladin Start Set' AS `src`, '联盟圣骑士起始套装' AS `dst`
    UNION ALL SELECT 'Horde Paladin Start Set' AS `src`, '部落圣骑士起始套装' AS `dst`
    UNION ALL SELECT 'Alliance Shaman Start Set' AS `src`, '联盟萨满祭司起始套装' AS `dst`
    UNION ALL SELECT 'Horde Shaman Start Set' AS `src`, '部落萨满祭司起始套装' AS `dst`
    UNION ALL SELECT 'This cosmetic item is added to your vanity collection and is usable on all of your characters.' AS `src`, '此装饰物品会加入你的收藏品，且所有角色均可使用。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount.  This is a flying mount.' AS `src`, '教你如何召唤这个坐骑。  这是一个飞行坐骑。' AS `dst`
    UNION ALL SELECT 'Right Click to Open' AS `src`, '右键点击打开' AS `dst`
    UNION ALL SELECT 'Horde Druid Start Set' AS `src`, '部落德鲁伊起始套装' AS `dst`
    UNION ALL SELECT 'Alliance Druid Start Set' AS `src`, '联盟德鲁伊起始套装' AS `dst`
    UNION ALL SELECT 'The Lich King awaits you!' AS `src`, '巫妖王在等着你！' AS `dst`
    UNION ALL SELECT 'A cosmetic set for Transmogrification. These can be obtained from other players, the auctionhouse, or the Ascension shop.' AS `src`, '一套用于幻化的外观套装。它们可以从其他玩家、拍卖行或飞升商店获得。' AS `dst`
    UNION ALL SELECT 'A magical disruption has fractured this arcanum, rendering it useless.' AS `src`, '一次魔法扰动使这件秘术破碎，已无法使用。' AS `dst`
    UNION ALL SELECT 'Mystic enchantments cannot be applied to artifact equipment.\n\nThis item is added to your vanity collection and is usable on all of your Felforged characters.' AS `src`, '神秘附魔无法应用于神器装备。\n\n此物品会加入你的收藏品，且所有邪铸角色均可使用。' AS `dst`
    UNION ALL SELECT 'Only fits in a Cogwheel socket.' AS `src`, '只能镶嵌于齿轮插槽。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon these wings.' AS `src`, '教你如何召唤这对翅膀。' AS `dst`
    UNION ALL SELECT 'Placeholder Item' AS `src`, '占位物品' AS `dst`
    UNION ALL SELECT 'Can be used to transform your One With The Light spell in the Wardrobe.' AS `src`, '可在衣柜中用它改变你的「与光合一」法术外观。' AS `dst`
    UNION ALL SELECT 'Contains 5.' AS `src`, '内含 5 个。' AS `dst`
    UNION ALL SELECT 'Hurls a fiery ball that causes  Fire damage and an additional  Fire damage over' AS `src`, '投掷一团火球，造成 点火焰伤害，并在 内额外造成 点火焰伤害' AS `dst`
    UNION ALL SELECT 'Launches a bolt of frost at the enemy, causing  to  Frost damage and slowing movement speed by  for' AS `src`, '向敌人发射一支寒冰箭，造成 到 点冰霜伤害，并使其移动速度降低 ，持续' AS `dst`
    UNION ALL SELECT 'Increases your total Intellect by .' AS `src`, '使你的总智力提高 点。' AS `dst`
    UNION ALL SELECT 'Increases your armor value from items by  and reduces the duration of all movement slowing effects by .' AS `src`, '使你从物品获得的护甲值提高 ，并使所有移动减速效果的持续时间缩短 。' AS `dst`
    UNION ALL SELECT 'Casts a bolt of lightning at the target for  Nature damage.' AS `src`, '向目标发射一道闪电，造成 点自然伤害。' AS `dst`
    UNION ALL SELECT 'Heals a friendly target for  to x>.' AS `src`, '为一个友方目标恢复 到 x> 点生命值。' AS `dst`
    UNION ALL SELECT 'Obtained from Tier 2 & 3 High-Risk zones.' AS `src`, '从 2、3 级高风险区域获得。' AS `dst`
    UNION ALL SELECT 'Turn this into Profession Master, to get your profession maxed.' AS `src`, '将此交给专业大师，即可将你的专业技能练满。' AS `dst`
    UNION ALL SELECT 'Alliance Hunter Start Set' AS `src`, '联盟猎人起始套装' AS `dst`
    UNION ALL SELECT 'Horde Hunter Start Set' AS `src`, '部落猎人起始套装' AS `dst`
    UNION ALL SELECT 'Returns the spirit to the body, restoring a dead target to life with  health and  mana.  Cannot be cast when in combat.' AS `src`, '将灵魂送回躯体，使一个死亡的目标复活，并为其恢复 点生命值和 点法力值。  无法在战斗中使用。' AS `dst`
    UNION ALL SELECT 'Burns the enemy for  Arcane damage and then an additional  Arcane damage over' AS `src`, '灼烧敌人，造成 点奥术伤害，并在 内额外造成 点奥术伤害' AS `dst`
    UNION ALL SELECT 'Increases your Parry chance by .' AS `src`, '使你的招架几率提高 。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon and dismiss this companion.' AS `src`, '教你如何召唤和收回这个伙伴。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount.  This is a flying mount.  Requires Cloud Serpent Riding from the Order of the Cloud Serpent.' AS `src`, '教你如何召唤这个坐骑。  这是一个飞行坐骑。  需要云端翔龙骑士团的云端翔龙骑术。' AS `dst`
    UNION ALL SELECT 'Gives you a random Skill Card' AS `src`, '随机给予你一张技能卡' AS `dst`
    UNION ALL SELECT 'Alliance Warrior Start Set' AS `src`, '联盟战士起始套装' AS `dst`
    UNION ALL SELECT 'Horde Warrior Start Set' AS `src`, '部落战士起始套装' AS `dst`
    UNION ALL SELECT 'Apply a cosmetic set of Demon Hunter horns to your head!' AS `src`, '给你的头上套上一套恶魔猎手犄角外观！' AS `dst`
    UNION ALL SELECT 'Throw it with effect at another player!' AS `src`, '带着特效把它扔向另一名玩家！' AS `dst`
    UNION ALL SELECT 'Harness the power of The Flames.' AS `src`, '驾驭烈焰之力。' AS `dst`
    UNION ALL SELECT '|cffFFD700Prestigious|r' AS `src`, '|cffFFD700威望|r' AS `dst`
    UNION ALL SELECT 'Smite an enemy for  Holy damage.' AS `src`, '制裁一个敌人，造成 点神圣伤害。' AS `dst`
    UNION ALL SELECT 'Blasts the target for  Shadow damage.' AS `src`, '冲击目标，造成 点暗影伤害。' AS `dst`
    UNION ALL SELECT 'Sends a shadowy bolt at the enemy, causing  Shadow damage.' AS `src`, '向敌人发射一支暗影箭，造成 点暗影伤害。' AS `dst`
    UNION ALL SELECT 'Uncommon High-Risk Materials are not lost on death!\n\nObtained from High-Risk Tier zones.' AS `src`, '优秀品质的高风险材料死亡时不会丢失！\n\n从高风险等级区域获得。' AS `dst`
    UNION ALL SELECT 'Bonus High-Risk Loot from For the Horde/Alliance!' AS `src`, '来自「为了部落/联盟」的高风险额外战利品！' AS `dst`
    UNION ALL SELECT 'Shared High-Risk Party Loot!\nObtained from Tier 1, 2 & 3 High-Risk zones.' AS `src`, '可共享的高风险小队战利品！\n从 1、2、3 级高风险区域获得。' AS `dst`
    UNION ALL SELECT 'Hurls an immense fiery boulder that causes  Fire damage and an additional  Fire damage over' AS `src`, '投掷一块巨大的炽热巨石，造成 点火焰伤害，并在 内额外造成 点火焰伤害' AS `dst`
    UNION ALL SELECT 'Looks like this is for internal use only.' AS `src`, '看起来这件物品仅供内部使用。' AS `dst`
    UNION ALL SELECT 'Alliance Rogue Start Set' AS `src`, '联盟潜行者起始套装' AS `dst`
    UNION ALL SELECT 'Horde Rogue Start Set' AS `src`, '部落潜行者起始套装' AS `dst`
    UNION ALL SELECT 'Plant a Flag of Ownership on an enemy player\'s corpse in front of you.' AS `src`, '在你面前的敌方玩家尸体上插下一面所有权旗帜。' AS `dst`
    UNION ALL SELECT 'Stings the target, causing  Nature damage over   Only one Sting per Hunter can be active on any one target.' AS `src`, '蜇刺目标，在 内造成 点自然伤害。  同一目标上每个猎人只能有一个钉刺效果。' AS `dst`
    UNION ALL SELECT 'Finishing move that causes damage per combo point:\n   1 point  :  damage\n   2 points:  damage\n   3 points:  damage\n   4 points:  damage\n   5 points:  damage' AS `src`, '终结技，每点连击点数造成伤害：\n   1 点：  伤害\n   2 点：  伤害\n   3 点：  伤害\n   4 点：  伤害\n   5 点：  伤害' AS `dst`
    UNION ALL SELECT 'Backstab the target, causing  weapon damage plus  to the target.  Must be behind the target.  Requires a dagger in the main hand.  Awards  combo int:points' AS `src`, '背刺目标，造成 点武器伤害外加 点伤害。  必须在目标背后。  需要主手装备匕首。  奖励 点连击值' AS `dst`
    UNION ALL SELECT 'An instant strike that causes  damage in addition to  of your normal weapon damage.  Awards  combo int:points' AS `src`, '一次瞬发打击，造成 点伤害，另加你正常武器伤害的 。  奖励 点连击值' AS `dst`
    UNION ALL SELECT 'A word of darkness that causes  Shadow damage over' AS `src`, '一句黑暗真言，在 内造成 点暗影伤害' AS `dst`
    UNION ALL SELECT 'Blasts the enemy for  Fire damage.' AS `src`, '冲击敌人，造成 点火焰伤害。' AS `dst`
    UNION ALL SELECT 'Causes  Nature damage to the target.' AS `src`, '对目标造成 点自然伤害。' AS `dst`
    UNION ALL SELECT 'Heals a friendly target for  and another  over' AS `src`, '为一个友方目标恢复 点生命值，并在 内再恢复 点' AS `dst`
    UNION ALL SELECT 'Obtained from Tier 2 & Tier 3 High-Risk zones.' AS `src`, '从 2、3 级高风险区域获得。' AS `dst`
    UNION ALL SELECT 'Shared High-Risk Party Loot!' AS `src`, '可共享的高风险小队战利品！' AS `dst`
    UNION ALL SELECT 'Shared High-Risk Party Loot!\nObtained from Tier 2 & 3 High-Risk zones.' AS `src`, '可共享的高风险小队战利品！\n从 2、3 级高风险区域获得。' AS `dst`
    UNION ALL SELECT 'Your pet does an additional  damage with all attacks.' AS `src`, '你的宠物所有攻击额外造成 点伤害。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount.  This mount changes depending on your Riding skill and location.' AS `src`, '教你如何召唤这个坐骑。  该坐骑会随你的骑术等级和所在位置而变化。' AS `dst`
    UNION ALL SELECT 'Contains 25.' AS `src`, '内含 25 个。' AS `dst`
    UNION ALL SELECT 'Allows you to purchase gear from the Paladin, Rogue, and Shaman armor collections.' AS `src`, '允许你购买圣骑士、潜行者和萨满祭司的护甲系列装备。' AS `dst`
    UNION ALL SELECT 'Allows you to purchase gear from the Warrior, Priest, and Druid armor collections.' AS `src`, '允许你购买战士、牧师和德鲁伊的护甲系列装备。' AS `dst`
    UNION ALL SELECT 'Allows you to purchase gear from the Hunter, Mage, and Warlock armor collections.' AS `src`, '允许你购买猎人、法师和术士的护甲系列装备。' AS `dst`
    UNION ALL SELECT 'Alliance Death Knight Start Set' AS `src`, '联盟死亡骑士起始套装' AS `dst`
    UNION ALL SELECT 'Horde Death Knight Start Set' AS `src`, '部落死亡骑士起始套装' AS `dst`
    UNION ALL SELECT 'Horde Mage Start Set' AS `src`, '部落法师起始套装' AS `dst`
    UNION ALL SELECT 'Horde Warlock Start Set' AS `src`, '部落术士起始套装' AS `dst`
    UNION ALL SELECT 'Horde Priest Start Set' AS `src`, '部落牧师起始套装' AS `dst`
    UNION ALL SELECT 'Alliance Priest Start Set' AS `src`, '联盟牧师起始套装' AS `dst`
    UNION ALL SELECT 'Increases your Manastorm Shrine spawn chance by 0.5%.' AS `src`, '使你的魔暴神殿出现几率提高 0.5%。' AS `dst`
    UNION ALL SELECT 'An instant shot that causes  Arcane damage.' AS `src`, '一次瞬发射击，造成 点奥术伤害。' AS `dst`
    UNION ALL SELECT 'Scorch the enemy for  Fire damage.' AS `src`, '灼烧敌人，造成 点火焰伤害。' AS `dst`
    UNION ALL SELECT 'Burns the enemy for  Fire damage and then an additional  Fire damage over' AS `src`, '灼烧敌人，造成 点火焰伤害，并在 内额外造成 点火焰伤害' AS `dst`
    UNION ALL SELECT 'Material used to upgrade Bloodforged Gear.' AS `src`, '用于升级血铸装备的材料。' AS `dst`
    UNION ALL SELECT 'Your attacks with maces ignore up to  of your opponent\'s armor.' AS `src`, '你的锤类攻击最多可忽略对手 点护甲。' AS `dst`
    UNION ALL SELECT 'Increases your Dodge chance by .' AS `src`, '使你的闪避几率提高 。' AS `dst`
    UNION ALL SELECT 'Increases the damage done by your offhand weapon by .' AS `src`, '使你的副手武器伤害提高 。' AS `dst`
    UNION ALL SELECT 'Increases the critical effect chance of your Holy spells by .' AS `src`, '使你的神圣法术的爆击几率提高 。' AS `dst`
    UNION ALL SELECT 'A legendary Paragon of Power from the old Gurubashi Empire.' AS `src`, '来自古老古拉巴什帝国的传奇力量典范。' AS `dst`
    UNION ALL SELECT 'Requires Level 58. Can\'t be used after level 60.' AS `src`, '需要等级 58。60 级之后无法使用。' AS `dst`
    UNION ALL SELECT 'Places a Blessing on the friendly target, increasing attack power by  for   Players may only have one Blessing on them per Paladin at any one time.' AS `src`, '为一个友方目标施加祝福，使其攻击强度提高 ，持续 。  每名圣骑士一次只能给目标施加一个祝福。' AS `dst`
    UNION ALL SELECT 'Heals your pet for  health over' AS `src`, '在 内为你的宠物恢复 点生命值' AS `dst`
    UNION ALL SELECT 'An aimed shot that increases ranged damage by  and reduces healing done to that target by   Lasts' AS `src`, '一次瞄准射击，使远程伤害提高 ，并使该目标受到的治疗效果降低 。  持续' AS `dst`
    UNION ALL SELECT 'A strong attack that increases melee damage by' AS `src`, '一次强力攻击，使近战伤害提高' AS `dst`
    UNION ALL SELECT 'Ambush the target, causing  weapon damage plus  to the target.  Must be stealthed and behind the target.  Requires a dagger in the main hand.  Awards  combo int:points' AS `src`, '伏击目标，造成 点武器伤害外加 点伤害。  必须处于潜行状态且位于目标背后。  需要主手装备匕首。  奖励 点连击值' AS `dst`
    UNION ALL SELECT 'Instantly shocks the target with concussive force, causing  Nature damage and reducing melee attack speed by  for' AS `src`, '立即以震荡之力冲击目标，造成 点自然伤害，并使其近战攻击速度降低 ，持续' AS `dst`
    UNION ALL SELECT 'Summons a Searing Totem with  health at your feet for  that repeatedly attacks an enemy within  yards for  Fire damage.' AS `src`, '在你的脚下召唤一个生命值为 的灼热图腾，持续 ，它会反复攻击 码内的一个敌人，造成 点火焰伤害。' AS `dst`
    UNION ALL SELECT 'Imbue the Shaman\'s weapon with fire, increasing total spell damage by  and increasing spell critical strike chance by  Each hit causes' AS `src`, '为萨满祭司的武器灌注火焰，使法术总伤害提高 ，法术爆击几率提高 。每次命中造成' AS `dst`
    UNION ALL SELECT 'Summons a Stoneskin Totem with  health at the feet of the caster.  The totem protects party and raid members within  yards, increasing armor by   Lasts' AS `src`, '在施法者脚下召唤一个生命值为 的石肤图腾。  该图腾保护 码内的小队和团队成员，使其护甲提高 。  持续' AS `dst`
    UNION ALL SELECT 'Causes an explosion of arcane magic around the caster, causing  Arcane damage to all targets within  yards.' AS `src`, '在施法者周围引发奥术爆炸，对 码内的所有目标造成 点奥术伤害。' AS `dst`
    UNION ALL SELECT 'Corrupts the target, causing  Shadow damage over' AS `src`, '腐蚀目标，在 内造成 点暗影伤害' AS `dst`
    UNION ALL SELECT 'Inflict searing pain on the enemy target, causing  Fire damage.  Causes a high amount of threat.' AS `src`, '对敌方目标造成灼痛，带来 点火焰伤害。  产生大量威胁值。' AS `dst`
    UNION ALL SELECT 'Causes  Arcane damage to the target.' AS `src`, '对目标造成 点奥术伤害。' AS `dst`
    UNION ALL SELECT 'A strong attack that increases melee damage by  and causes a high amount of threat.  Effects which increase Bleed damage also increase Maul damage.' AS `src`, '一次强力攻击，使近战伤害提高 ，并产生大量威胁值。  提高流血伤害的效果也会提高重击伤害。' AS `dst`
    UNION ALL SELECT 'Instantly counterattack an enemy for  to  damage.   Revenge is only usable after the warrior blocks, dodges or parries an attack.' AS `src`, '立即反击一个敌人，造成 到 点伤害。   复仇只能在战士格挡、闪避或招架一次攻击后使用。' AS `dst`
    UNION ALL SELECT 'Places a Blessing on the friendly target, restoring  mana every 5 seconds for   Players may only have one Blessing on them per Paladin at any one time.' AS `src`, '为一个友方目标施加祝福，每 5 秒恢复 点法力值，持续 。  每名圣骑士一次只能给目标施加一个祝福。' AS `dst`
    UNION ALL SELECT 'Gives  additional armor to party and raid members within  yards.  Players may only have one Aura on them per Paladin at any one time.' AS `src`, '使 码内的小队和团队成员获得 点额外护甲。  每名圣骑士一次只能给目标施加一个光环。' AS `dst`
    UNION ALL SELECT 'Instantly blasts the target for  Shadow damage.  If the target dies within  of Shadowburn, and yields experience or honor, the caster gains a Soul Shard.' AS `src`, '立即冲击目标，造成 点暗影伤害。  如果目标在暗影灼烧生效后 内死亡，并提供经验值或荣誉值，施法者将获得一枚灵魂碎片。' AS `dst`
    UNION ALL SELECT 'Assault the target\'s mind with Shadow energy, causing  Shadow damage over  and slowing their movement speed by .' AS `src`, '用暗影能量冲击目标的心灵，在 内造成 点暗影伤害，并使其移动速度降低 。' AS `dst`
    UNION ALL SELECT 'A wave of flame radiates outward from the caster, damaging all enemies caught within the blast for  Fire damage, knocking them back and dazing them for' AS `src`, '一道火焰波浪从施法者向外扩散，对爆炸范围内的所有敌人造成 点火焰伤害，将其击退并使其恍惚，持续' AS `dst`
    UNION ALL SELECT 'Reduces all damage taken by .' AS `src`, '使受到的所有伤害降低 。' AS `dst`
    UNION ALL SELECT 'Increases your pet\'s total Stamina by .' AS `src`, '使你的宠物的总耐力提高 。' AS `dst`
    UNION ALL SELECT 'When your pet\'s Claw, Bite, or Smack ability deals a critical strike, you and your pet deal  increased damage for 93d.' AS `src`, '当你的宠物的爪击、撕咬或拍击造成爆击时，你和你的宠物在 93d 内造成的伤害提高 。' AS `dst`
    UNION ALL SELECT 'Your pet takes  less damage from Arcane, Fire, Frost, Nature and Shadow magic.' AS `src`, '你的宠物受到的奥术、火焰、冰霜、自然和暗影魔法伤害降低 。' AS `dst`
    UNION ALL SELECT 'Water to quench your thirst.' AS `src`, '解渴的水。' AS `dst`
    UNION ALL SELECT 'Can be used to transform your Blink ability at a transmogrifier.' AS `src`, '可在幻化师处用它改变你的闪现术外观。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon this mount.  The capabilities of this mount depend on your Riding skill and location.' AS `src`, '教你如何召唤这个坐骑。  该坐骑的能力取决于你的骑术等级和所在位置。' AS `dst`
    UNION ALL SELECT 'This Keeper\'s Scroll buffs only players in your current zone. Lasts 1 Hour.' AS `src`, '这份守护者卷轴只会为你当前区域内的玩家提供增益。持续 1 小时。' AS `dst`
    UNION ALL SELECT 'Allows you to purchase gear from the Paladin, Priest, and Warlock armor collections.' AS `src`, '允许你购买圣骑士、牧师和术士的护甲系列装备。' AS `dst`
    UNION ALL SELECT 'Allows you to purchase gear from the Warrior, Hunter, and Shaman armor collections.' AS `src`, '允许你购买战士、猎人和萨满祭司的护甲系列装备。' AS `dst`
    UNION ALL SELECT 'Allows you to purchase gear from the Rogue, Mage, and Druid armor collections.' AS `src`, '允许你购买潜行者、法师和德鲁伊的护甲系列装备。' AS `dst`
    UNION ALL SELECT 'A Cosmetic set meant to be used with Transmogrification. You can see what Cosmetic Sets look like in the Vanity Collection.' AS `src`, '一套用于幻化的外观套装。你可以在收藏品中查看外观套装的样子。' AS `dst`
    UNION ALL SELECT 'Teaches you how to transform into this mount. This mount is capable of Flying.' AS `src`, '教你如何变成这个坐骑形态。该坐骑可以飞行。' AS `dst`
    UNION ALL SELECT 'Teaches you how to summon these Soul Wings.' AS `src`, '教你如何召唤这对灵魂之翼。' AS `dst`
) AS `m` ON `m`.`src` = `a`.`description`
SET `a`.`description` = `m`.`dst`;
