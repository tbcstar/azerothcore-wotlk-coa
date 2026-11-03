-- One indexed pass replaces 155 single-row UPDATEs on `item_template`.`description`.
UPDATE `item_template` AS `a`
JOIN (
    SELECT 'Teaches Ambush (Rank 6)' AS `src`, '教你伏击（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Amplify Magic (Rank 4)' AS `src`, '教你魔法增效（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Ancestral Spirit (Rank 5)' AS `src`, '教你先祖之魂（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Arcane Explosion (Rank 6)' AS `src`, '教你奥爆术（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Arcane Intellect (Rank 5)' AS `src`, '教你奥术智慧（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Arcane Shot (Rank 8)' AS `src`, '教你奥术射击（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Battle Shout (Rank 6)' AS `src`, '教你战斗怒吼（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Blast Wave (Rank 5)' AS `src`, '教你冲击波（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Blessing of Might (Rank 6)' AS `src`, '教你力量祝福（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Chain Heal (Rank 3)' AS `src`, '教你治疗链（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Chain Lightning (Rank 4)' AS `src`, '教你闪电链（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Cleave (Rank 5)' AS `src`, '教你顺劈斩（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Cone of Cold (Rank 5)' AS `src`, '教你冰锥术（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Conjure Food (Rank 6)' AS `src`, '教你造食术（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Conjure Mana Gem (Rank 4)' AS `src`, '教你制造法力宝石（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Conjure Water (Rank 6)' AS `src`, '教你造水术（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Consecration (Rank 5)' AS `src`, '教你奉献（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Corruption (Rank 6)' AS `src`, '教你腐蚀术（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Counterattack (Rank 3)' AS `src`, '教你震荡反击（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Create Firestone (Rank 4)' AS `src`, '教你制造火焰石（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Create Healthstone (Rank 5)' AS `src`, '教你制造治疗石（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Create Soulstone (Rank 5)' AS `src`, '教你制造灵魂石（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Curse of Agony (Rank 6)' AS `src`, '教你痛苦诅咒（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Curse of Tongues (Rank 2)' AS `src`, '教你语言诅咒（等级 2）' AS `dst`
    UNION ALL SELECT 'Teaches Curse of the Elements (Rank 3)' AS `src`, '教你元素诅咒（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Dampen Magic (Rank 5)' AS `src`, '教你魔法抑制（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Dark Pact (Rank 3)' AS `src`, '教你黑暗契约（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Death Coil (Rank 3)' AS `src`, '教你死亡缠绕（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Demon Armor (Rank 5)' AS `src`, '教你恶魔护甲（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Demoralizing Roar (Rank 5)' AS `src`, '教你挫志咆哮（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Demoralizing Shout (Rank 5)' AS `src`, '教你挫志怒吼（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Desperate Prayer (Rank 6)' AS `src`, '教你绝望祷言（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Devotion Aura (Rank 7)' AS `src`, '教你虔诚光环（等级 7）' AS `dst`
    UNION ALL SELECT 'Teaches Divine Spirit (Rank 4)' AS `src`, '教你神圣之灵（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Drain Life (Rank 6)' AS `src`, '教你吸取生命（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Earth Shock (Rank 7)' AS `src`, '教你大地震击（等级 7）' AS `dst`
    UNION ALL SELECT 'Teaches Enslave Demon (Rank 3)' AS `src`, '教你奴役恶魔（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Eviscerate (Rank 8)' AS `src`, '教你剔骨（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Execute (Rank 5)' AS `src`, '教你斩杀（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Exorcism (Rank 6)' AS `src`, '教你驱邪（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Explosive Trap (Rank 3)' AS `src`, '教你爆炸陷阱（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Fear (Rank 3)' AS `src`, '教你恐惧（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Feint (Rank 4)' AS `src`, '教你佯攻（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Ferocious Bite (Rank 4)' AS `src`, '教你凶猛撕咬（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Fire Nova (Rank 5)' AS `src`, '教你火焰新星（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Fire Resistance Aura (Rank 3)' AS `src`, '教你火焰抗性光环（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Fire Ward (Rank 5)' AS `src`, '教你防护火焰结界（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Fireball (Rank 11)' AS `src`, '教你火球术（等级 11）' AS `dst`
    UNION ALL SELECT 'Teaches Flame Shock (Rank 5)' AS `src`, '教你烈焰震击（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Flamestrike (Rank 6)' AS `src`, '教你烈焰风暴（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Flametongue Weapon (Rank 6)' AS `src`, '教你火舌武器（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Flash Heal (Rank 7)' AS `src`, '教你快速治疗（等级 7）' AS `dst`
    UNION ALL SELECT 'Teaches Flash of Light (Rank 6)' AS `src`, '教你圣光闪现（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Frost Nova (Rank 4)' AS `src`, '教你冰霜新星（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Frost Resistance Aura (Rank 3)' AS `src`, '教你冰霜抗性光环（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Frost Resistance Totem (Rank 3)' AS `src`, '教你抗寒图腾（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Frost Ward (Rank 5)' AS `src`, '教你防护冰霜结界（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Frostbolt (Rank 10)' AS `src`, '教你寒冰箭（等级 10）' AS `dst`
    UNION ALL SELECT 'Teaches Garrote (Rank 6)' AS `src`, '教你绞喉（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Greater Blessing of Might (Rank 2)' AS `src`, '教你强效力量祝福（等级 2）' AS `dst`
    UNION ALL SELECT 'Teaches Greater Blessing of Wisdom (Rank 2)' AS `src`, '教你强效智慧祝福（等级 2）' AS `dst`
    UNION ALL SELECT 'Teaches Greater Heal (Rank 4)' AS `src`, '教你强效治疗术（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Hammer of Justice (Rank 4)' AS `src`, '教你制裁之锤（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Hammer of Wrath (Rank 3)' AS `src`, '教你愤怒之锤（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Healing Stream Totem (Rank 5)' AS `src`, '教你治疗之泉图腾（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Healing Touch (Rank 10)' AS `src`, '教你治疗之触（等级 10）' AS `dst`
    UNION ALL SELECT 'Teaches Healing Wave (Rank 9)' AS `src`, '教你治疗波（等级 9）' AS `dst`
    UNION ALL SELECT 'Teaches Health Funnel (Rank 7)' AS `src`, '教你生命通道（等级 7）' AS `dst`
    UNION ALL SELECT 'Teaches Hellfire (Rank 3)' AS `src`, '教你地狱烈焰（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Hemorrhage (Rank 3)' AS `src`, '教你大出血（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Heroic Strike (Rank 8)' AS `src`, '教你英勇打击（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Hibernate (Rank 3)' AS `src`, '教你休眠（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Holy Fire (Rank 8)' AS `src`, '教你神圣之火（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Holy Light (Rank 8)' AS `src`, '教你神圣之光（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Holy Nova (Rank 6)' AS `src`, '教你神圣新星（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Holy Shield (Rank 3)' AS `src`, '教你神圣之盾（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Holy Shock (Rank 3)' AS `src`, '教你神圣震击（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Holy Wrath (Rank 2)' AS `src`, '教你神圣愤怒（等级 2）' AS `dst`
    UNION ALL SELECT 'Teaches Howl of Terror (Rank 2)' AS `src`, '教你恐惧嚎叫（等级 2）' AS `dst`
    UNION ALL SELECT 'Teaches Hunter\'s Mark (Rank 4)' AS `src`, '教你猎人印记（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Hurricane (Rank 3)' AS `src`, '教你飓风（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Ice Armor (Rank 4)' AS `src`, '教你冰甲术（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Ice Barrier (Rank 4)' AS `src`, '教你寒冰护体（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Immolate (Rank 7)' AS `src`, '教你献祭（等级 7）' AS `dst`
    UNION ALL SELECT 'Teaches Immolation Trap (Rank 5)' AS `src`, '教你献祭陷阱（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Inner Fire (Rank 6)' AS `src`, '教你心灵之火（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Insect Swarm (Rank 5)' AS `src`, '教你虫群（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Lay on Hands (Rank 3)' AS `src`, '教你圣疗术（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Lesser Healing Wave (Rank 6)' AS `src`, '教你次级治疗波（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Lightning Shield (Rank 7)' AS `src`, '教你闪电之盾（等级 7）' AS `dst`
    UNION ALL SELECT 'Teaches Mage Armor (Rank 3)' AS `src`, '教你法师护甲（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Magma Totem (Rank 4)' AS `src`, '教你熔岩图腾（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Mana Shield (Rank 6)' AS `src`, '教你法力护盾（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Mana Spring Totem (Rank 4)' AS `src`, '教你法力之泉图腾（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Maul (Rank 7)' AS `src`, '教你重殴（等级 7）' AS `dst`
    UNION ALL SELECT 'Teaches Mind Blast (Rank 9)' AS `src`, '教你心灵震爆（等级 9）' AS `dst`
    UNION ALL SELECT 'Teaches Mind Flay (Rank 6)' AS `src`, '教你精神鞭笞（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Mongoose Bite (Rank 3)' AS `src`, '教你猫鼬撕咬（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Mongoose Bite (Rank 4)' AS `src`, '教你猫鼬撕咬（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Moonfire (Rank 10)' AS `src`, '教你月火术（等级 10）' AS `dst`
    UNION ALL SELECT 'Teaches Multi-Shot (Rank 4)' AS `src`, '教你多重射击（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Nature Resistance Totem (Rank 3)' AS `src`, '教你自然抗性图腾（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Nature\'s Grasp (Rank 6)' AS `src`, '教你自然之握（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Polymorph (Rank 4)' AS `src`, '教你变形术（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Portal: Dalaran.' AS `src`, '教你传送门：达拉然。' AS `dst`
    UNION ALL SELECT 'Teaches Prayer of Healing (Rank 4)' AS `src`, '教你治疗祷言（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Psychic Scream (Rank 4)' AS `src`, '教你心灵尖啸（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Purify.' AS `src`, '教你纯净术。' AS `dst`
    UNION ALL SELECT 'Teaches Pyroblast (Rank 8)' AS `src`, '教你炎爆术（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Rain of Fire (Rank 4)' AS `src`, '教你火焰之雨（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Rake (Rank 4)' AS `src`, '教你斜掠（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Raptor Strike (Rank 8)' AS `src`, '教你猛禽一击（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Ravage (Rank 4)' AS `src`, '教你蹂躏（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Rebirth (Rank 5)' AS `src`, '教你复生（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Redemption (Rank 5)' AS `src`, '教你救赎（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Regrowth (Rank 9)' AS `src`, '教你愈合（等级 9）' AS `dst`
    UNION ALL SELECT 'Teaches Rejuvenation (Rank 10)' AS `src`, '教你回春术（等级 10）' AS `dst`
    UNION ALL SELECT 'Teaches Rend (Rank 7)' AS `src`, '教你撕裂（等级 7）' AS `dst`
    UNION ALL SELECT 'Teaches Renew (Rank 9)' AS `src`, '教你恢复（等级 9）' AS `dst`
    UNION ALL SELECT 'Teaches Resurrection (Rank 5)' AS `src`, '教你复活（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Retribution Aura (Rank 5)' AS `src`, '教你惩戒光环（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Rip (Rank 6)' AS `src`, '教你撕扯（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Sap (Rank 3)' AS `src`, '教你闷棍（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Scorch (Rank 7)' AS `src`, '教你灼烧（等级 7）' AS `dst`
    UNION ALL SELECT 'Teaches Searing Pain (Rank 6)' AS `src`, '教你灼热之痛（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Searing Totem (Rank 6)' AS `src`, '教你灼热图腾（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Serpent Sting (Rank 8)' AS `src`, '教你毒蛇钉刺（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Shadow Bolt (Rank 9)' AS `src`, '教你暗影箭（等级 9）' AS `dst`
    UNION ALL SELECT 'Teaches Shadow Resistance Aura (Rank 3)' AS `src`, '教你暗影抗性光环（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Shadow Ward (Rank 3)' AS `src`, '教你暗影防护结界（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Shadow Ward (Rank 4)' AS `src`, '教你暗影防护结界（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Shadowburn (Rank 6)' AS `src`, '教你暗影灼烧（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Shred (Rank 5)' AS `src`, '教你撕碎（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Sinister Strike (Rank 8)' AS `src`, '教你邪恶攻击（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Slam (Rank 4)' AS `src`, '教你猛击（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Slice and Dice (Rank 2)' AS `src`, '教你切割（等级 2）' AS `dst`
    UNION ALL SELECT 'Teaches Soothe Animal (Rank 3)' AS `src`, '教你安抚动物（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Soul Fire (Rank 2)' AS `src`, '教你灵魂之火（等级 2）' AS `dst`
    UNION ALL SELECT 'Teaches Sprint (Rank 3)' AS `src`, '教你疾跑（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Starfire (Rank 6)' AS `src`, '教你星火术（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Stoneclaw Totem (Rank 6)' AS `src`, '教你石爪图腾（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Stoneskin Totem (Rank 6)' AS `src`, '教你石肤图腾（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Strength of Earth Totem (Rank 4)' AS `src`, '教你大地之力图腾（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Swipe (Bear) (Rank 5)' AS `src`, '教你揮擊(熊形態)（等级 5）' AS `dst`
    UNION ALL SELECT 'Teaches Teleport: Dalaran.' AS `src`, '教你传送：达拉然。' AS `dst`
    UNION ALL SELECT 'Teaches Thorns (Rank 6)' AS `src`, '教你荆棘（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Thunder Clap (Rank 6)' AS `src`, '教你雷霆一击（等级 6）' AS `dst`
    UNION ALL SELECT 'Teaches Tiger\'s Fury (Rank 4)' AS `src`, '教你猛虎之怒（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Tranquility (Rank 4)' AS `src`, '教你宁静（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Vanish (Rank 2)' AS `src`, '教你消失（等级 2）' AS `dst`
    UNION ALL SELECT 'Teaches Vanish (Rank 3)' AS `src`, '教你消失（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Volley (Rank 3)' AS `src`, '教你乱射（等级 3）' AS `dst`
    UNION ALL SELECT 'Teaches Windfury Weapon (Rank 4)' AS `src`, '教你风怒武器（等级 4）' AS `dst`
    UNION ALL SELECT 'Teaches Wrath (Rank 8)' AS `src`, '教你愤怒（等级 8）' AS `dst`
    UNION ALL SELECT 'Teaches Wyvern Sting (Rank 3)' AS `src`, '教你翼龙钉刺（等级 3）' AS `dst`
) AS `m` ON `m`.`src` = `a`.`description`
SET `a`.`description` = `m`.`dst`;
