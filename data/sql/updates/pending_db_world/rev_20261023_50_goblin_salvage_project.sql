-- CoA Goblin Salvage Project: a level 30-40 Stranglethorn questline that awards Lootbot 3000 (57000).

INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyPrice`, `SellPrice`, `InventoryType`, `ItemLevel`, `RequiredLevel`, `maxcount`, `stackable`, `bonding`, `startquest`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellcooldown_1`, `spellcategorycooldown_1`, `description`)
VALUES
(9707001, 12, 0, '奇怪的废料块', 4486, 1, 0, 0, 0, 0, 1, 0, 1, 1, 4, 176000, 0, 0, 0, -1, -1, '上面印着半刮花的风险投资公司序列号。'),
(9707002, 12, 0, '回收的齿轮箱', 5199, 1, 2048, 0, 0, 0, 1, 0, 6, 6, 4, 0, 0, 0, 0, -1, -1, ''),
(9707003, 12, 0, '伐木机动力核心', 13706, 1, 2048, 0, 0, 0, 1, 0, 1, 1, 4, 0, 0, 0, 0, -1, -1, ''),
(9707004, 12, 0, '易挥发燃料罐', 5272, 1, 2048, 0, 0, 0, 1, 0, 1, 1, 4, 0, 0, 0, 0, -1, -1, ''),
(9707005, 12, 0, '校准逻辑核心', 4754, 1, 2048, 0, 0, 0, 1, 0, 1, 1, 4, 0, 0, 0, 0, -1, -1, ''),
(9707006, 12, 0, '拾取机器人实地遥控器', 11823, 1, 0, 0, 0, 0, 1, 0, 1, 1, 4, 0, 9930889, 0, 0, -1, -1, '召唤原型拾取机器人进行实地测试。'),
(9707007, 12, 0, '实地测试样本', 7758, 1, 2048, 0, 0, 0, 1, 0, 8, 20, 4, 0, 0, 0, 0, -1, -1, ''),
(9707008, 12, 0, '回收许可证申请书', 24417, 1, 0, 0, 0, 0, 1, 0, 1, 1, 4, 0, 0, 0, 0, -1, -1, '三方签过字。还差一个印章。')
ON DUPLICATE KEY UPDATE `class` = VALUES(`class`), `subclass` = VALUES(`subclass`), `name` = VALUES(`name`), `displayid` = VALUES(`displayid`), `Quality` = VALUES(`Quality`), `Flags` = VALUES(`Flags`), `BuyPrice` = VALUES(`BuyPrice`), `SellPrice` = VALUES(`SellPrice`), `InventoryType` = VALUES(`InventoryType`), `ItemLevel` = VALUES(`ItemLevel`), `RequiredLevel` = VALUES(`RequiredLevel`), `maxcount` = VALUES(`maxcount`), `stackable` = VALUES(`stackable`), `bonding` = VALUES(`bonding`), `startquest` = VALUES(`startquest`), `spellid_1` = VALUES(`spellid_1`), `spelltrigger_1` = VALUES(`spelltrigger_1`), `spellcharges_1` = VALUES(`spellcharges_1`), `spellcooldown_1` = VALUES(`spellcooldown_1`), `spellcategorycooldown_1` = VALUES(`spellcategorycooldown_1`), `description` = VALUES(`description`);

-- The client has no Item.dbc row for 9707001-9707008, and it draws a bag icon from that row: without one the
-- items showed a question mark. These rows match item_template and reach the client through the item patch
-- stream (the core registers the ids); their displays are ItemDisplayInfo rows the client already has.
DELETE FROM `item_dbc` WHERE `ID` BETWEEN 9707001 AND 9707008;

INSERT INTO `item_dbc` (`ID`, `ClassID`, `SubclassID`, `Sound_Override_Subclassid`, `Material`, `DisplayInfoID`, `InventoryType`, `SheatheType`)
VALUES
(9707001, 12, 0, -1, 0, 4486, 0, 0),
(9707002, 12, 0, -1, 0, 5199, 0, 0),
(9707003, 12, 0, -1, 0, 13706, 0, 0),
(9707004, 12, 0, -1, 0, 5272, 0, 0),
(9707005, 12, 0, -1, 0, 4754, 0, 0),
(9707006, 12, 0, -1, 0, 11823, 0, 0),
(9707007, 12, 0, -1, 0, 7758, 0, 0),
(9707008, 12, 0, -1, 0, 24417, 0, 0);

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `CreatureImmunitiesId`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
VALUES
(9312001, 0, 0, 0, 0, 0, '菲兹尔博尔特·齿轮哨', '诺莫瑞根回收工程师', NULL, 0, 40, 40, 0, 12, 3, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(9312002, 0, 0, 0, 0, 0, '格里兹克·拾荒者', '锈水财阀发明家', NULL, 0, 40, 40, 0, 29, 3, 1, 1.14286, 1, 1, 20, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 2, '', 0),
(9312003, 0, 0, 0, 0, 0, '失控拾取机器人原型机', NULL, NULL, 0, 37, 37, 0, 14, 0, 1, 1.14286, 1, 1, 18, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 9, 0, 9312003, 0, 0, 0, 0, 60, 259, '', 0, 1, 2.5, 1, 1, 1, 0, 0, 1, -93, 0, '', 0)
ON DUPLICATE KEY UPDATE `difficulty_entry_1` = VALUES(`difficulty_entry_1`), `difficulty_entry_2` = VALUES(`difficulty_entry_2`), `difficulty_entry_3` = VALUES(`difficulty_entry_3`), `KillCredit1` = VALUES(`KillCredit1`), `KillCredit2` = VALUES(`KillCredit2`), `name` = VALUES(`name`), `subname` = VALUES(`subname`), `IconName` = VALUES(`IconName`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `speed_swim` = VALUES(`speed_swim`), `speed_flight` = VALUES(`speed_flight`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `dmgschool` = VALUES(`dmgschool`), `DamageModifier` = VALUES(`DamageModifier`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `BaseVariance` = VALUES(`BaseVariance`), `RangeVariance` = VALUES(`RangeVariance`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `dynamicflags` = VALUES(`dynamicflags`), `family` = VALUES(`family`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `pickpocketloot` = VALUES(`pickpocketloot`), `skinloot` = VALUES(`skinloot`), `PetSpellDataId` = VALUES(`PetSpellDataId`), `VehicleId` = VALUES(`VehicleId`), `mingold` = VALUES(`mingold`), `maxgold` = VALUES(`maxgold`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HoverHeight` = VALUES(`HoverHeight`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `ExperienceModifier` = VALUES(`ExperienceModifier`), `RacialLeader` = VALUES(`RacialLeader`), `movementId` = VALUES(`movementId`), `RegenHealth` = VALUES(`RegenHealth`), `CreatureImmunitiesId` = VALUES(`CreatureImmunitiesId`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`), `VerifiedBuild` = VALUES(`VerifiedBuild`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (9312001, 9312002, 9312003);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`)
VALUES
(9312001, 0, 2590, 1, 1, 0),
(9312002, 0, 1233, 1, 1, 0),
(9312003, 0, 6888, 2.5, 1, 0);

INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`)
VALUES
(9312001, 3, 335, '被丢弃的原型机', '', '', 1, 43, 9312001, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(9312002, 3, 5093, '易挥发燃料罐', '', '', 1, 43, 9312002, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '')
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`), `AIName` = VALUES(`AIName`), `ScriptName` = VALUES(`ScriptName`);

INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `AllowableRaces`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `StartItem`, `Flags`, `RewardItem1`, `RewardAmount1`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `ItemDrop1`, `ItemDropQuantity1`)
VALUES
(176000, 2, 34, 30, 33, 0, 0, 3, 0, 0, 8, 0, 0, '一块奇怪的废料', '把这块奇怪的废料交给叛军营或格罗姆高营地的回收工程师。', '<这块废料还带着余温，散着机油味。一侧印着半刮花的风险投资公司序列号，下面有人潦草地写着「原型机——请勿拾取」。>$B$B工程师会知道这是什么。联盟在叛军营有一位，部落则在格罗姆高营地。', '', '把废料交给一位回收工程师。', 9707001, 0, 0, 1, 0, 0, 0, 0),
(176001, 2, 35, 30, 33, 1101, 176002, 5, 2500, 0, 8, 0, 0, '一只地精的破烂', '为菲兹尔博尔特·齿轮哨从荆棘谷北部的风险投资公司带回 6 个回收的齿轮箱、从风险投资公司伐木机取下一个伐木机动力核心，再从风险投资公司营地取下一只易挥发燃料罐。', '那个序列号是风险投资公司的存货，其余部分还在外面！这些地精把这片丛林砍伐掏空，打掉的机械比诺莫瑞根造过的还多。$B$B我可以用他们的边角料拼出一台像样的回收装置，但要精密就得有零件：从他们的工人身上弄六个完好的齿轮箱，从他们的一台伐木机上拆下动力核心，再弄一只他们堆在营地的易挥发燃料罐。最后那个请轻一点。', '', '回到菲兹尔博尔特·齿轮哨那里。', 9707002, 9707003, 9707004, 6, 1, 1, 0, 0),
(176002, 2, 36, 30, 33, 1101, 176003, 5, 2500, 0, 8, 0, 0, '需要组装', '摧毁风险投资公司营地的失控拾取机器人原型机，把它的校准逻辑核心带给菲兹尔博尔特·齿轮哨。', '齿轮、动力、燃料……就是没有脑子。我的逻辑核心至今还在按气味分拣铜币。$B$B风险投资公司自己造了个拾取原型机，然后失控了。它在他们的营地巡逻，凡是没钉牢的东西都往回收。它的逻辑核心校准得完美无缺。砸了那台机器，把核心给我带来。', '', '回到菲兹尔博尔特·齿轮哨那里。', 9707005, 0, 0, 1, 0, 0, 0, 0),
(176003, 2, 37, 30, 33, 1101, 176004, 5, 2500, 9707006, 8, 0, 0, '实地测试', '使用拾取机器人实地遥控器，让拾取机器人从你在荆棘谷击败的风险投资公司工人身上采集 8 份实地测试样本。', '它成了！至少图纸上说它该成。$B$B拿着这个遥控器，在风险投资公司工人附近召唤拾取机器人。打倒他们，让拾取机器人在每个人身上采一份实地测试样本。八个样本应该够我拿到数据了。一定要待在附近：它还没学会害羞。', '', '回到菲兹尔博尔特·齿轮哨那里。', 9707007, 0, 0, 8, 0, 0, 9707006, 1),
(176004, 2, 38, 30, 33, 1101, 0, 5, 0, 9707008, 8, 57000, 1, '有照回收助手', '把回收许可证申请书交给藏宝海湾的雷维尔加兹男爵。', '八个完美样本！它准备好了。$B$B有个问题：藏宝海湾拥有这片海岸的回收权，没有执照的拾取机器人只会变成雷维尔加兹男爵桌上的废铁。申请书我已经填好了。把它交给男爵，盖上他的印章，拾取机器人就是你的了。', '', '把申请书交给藏宝海湾的雷维尔加兹男爵。', 9707008, 0, 0, 1, 0, 0, 0, 0),
(176011, 2, 35, 30, 33, 690, 176012, 5, 2500, 0, 8, 0, 0, '一只地精的破烂', '为格里兹克·拾荒者从荆棘谷北部的风险投资公司带回 6 个回收的齿轮箱、从风险投资公司伐木机取下一个伐木机动力核心，再从风险投资公司营地取下一只易挥发燃料罐。', '风险投资公司的破烂！朋友，你知道那是什么吗？白送的货。那些风险投资公司的小子扔掉的利润，比科赞一年赚的还多。$B$B我的想法是这样：一个机械搭档，你干苦活，它捣东西。我需要从他们工人那儿弄到六个能用的齿轮箱，从他们的一台伐木机上拆下动力核心，再从他们营地弄一只燃料罐。那只别摇。', '', '回到格里兹克·拾荒者那里。', 9707002, 9707003, 9707004, 6, 1, 1, 0, 0),
(176012, 2, 36, 30, 33, 690, 176013, 5, 2500, 0, 8, 0, 0, '需要组装', '摧毁风险投资公司营地的失控拾取机器人原型机，把它的校准逻辑核心带给格里兹克·拾荒者。', '齿轮、动力、燃料：躯体做好了。贵的是脑子。$B$B风险投资公司自己造了个抢掠原型机，还把遥控器弄丢了，现在正把他们的营地搅得一团乱。它的逻辑核心是顶级的。砸了那东西，把核心给我带来，我们就能省下几个月的研究。', '', '回到格里兹克·拾荒者那里。', 9707005, 0, 0, 1, 0, 0, 0, 0),
(176013, 2, 37, 30, 33, 690, 176014, 5, 2500, 9707006, 8, 0, 0, '实地测试', '使用拾取机器人实地遥控器，让拾取机器人从你在荆棘谷击败的风险投资公司工人身上采集 8 份实地测试样本。', '任何伟大的产品上市前都要实地测试。$B$B拿着这个遥控器，在风险投资公司工人附近召唤原型机。你把他们打倒，它就从每个人身上采一份样本。八个样本足以说服任何投资人。别离太远：它还没搞清自己是给谁干活的。', '', '回到格里兹克·拾荒者那里。', 9707007, 0, 0, 8, 0, 0, 9707006, 1),
(176014, 2, 38, 30, 33, 690, 0, 5, 0, 9707008, 8, 57000, 1, '有照回收助手', '把回收许可证申请书交给藏宝海湾的雷维尔加兹男爵。', '八个样本！我们有产品了！$B$B一个小细节：藏宝海湾拥有这里的回收权，雷维尔加兹男爵什么都要抽一份。许可证申请书我已经填好了。把它交给藏宝海湾的男爵，拿到他的印章，拾取机器人就全归你了。', '', '把申请书交给藏宝海湾的雷维尔加兹男爵。', 9707008, 0, 0, 1, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `AllowableRaces` = VALUES(`AllowableRaces`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (176000, 176001, 176002, 176003, 176004, 176011, 176012, 176013, 176014);

INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `SpecialFlags`)
VALUES
(176000, 40, 0, 0, 0),
(176001, 40, 0, 176000, 0),
(176002, 40, 0, 176001, 0),
(176003, 40, 0, 176002, 0),
(176004, 40, 0, 176003, 0),
(176011, 40, 0, 176000, 0),
(176012, 40, 0, 176011, 0),
(176013, 40, 0, 176012, 0),
(176014, 40, 0, 176013, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (176000, 176001, 176002, 176003, 176004, 176011, 176012, 176013, 176014);

INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(176000, '风险投资公司的序列号……还有「原型机」？那些地精在外头造东西。$B$B你在哪儿找到的？算了。重要的是它有可能变成什么。'),
(176001, '全都拿到了，而且燃料罐居然没炸。太好了！现在我可以开始组装了。'),
(176002, '漂亮的核心。看看这些焊点！我们的拾取机器人终于有脑子了。'),
(176003, '八个样本，每一个都分好类、贴好标签。原型机超出了所有预期！'),
(176004, '<雷维尔加兲男爵逐行读完申请书，然后满意地盖上印章。>$B$B一台有照的回收助手，文书齐全。藏宝海湾拿到自己那份，你拿到你的拾取机器人。皆大欢喜的买卖。$B$B好好照顾它。我可不想在拍卖行见到它。'),
(176011, '看看这么多货物！燃料罐居然没爆。这才叫好买卖。'),
(176012, '这才叫顶级逻辑核心。研发的钱是风险投资公司出的，产品归我们。'),
(176013, '八个样本，零起诉讼！投资人一定会爱死这个。'),
(176014, '<雷维尔加兲男爵逐行读完申请书，然后满意地盖上印章。>$B$B一台有照的回收助手，文书齐全。藏宝海湾拿到自己那份，你拿到你的拾取机器人。皆大欢喜的买卖。$B$B好好照顾它。我可不想在拍卖行见到它。');

DELETE FROM `quest_request_items` WHERE `ID` IN (176000, 176001, 176002, 176003, 176004, 176011, 176012, 176013, 176014);

INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(176000, '你手上那是什么？'),
(176001, '你找到零件了吗？精密就是一切。'),
(176002, '你从那台机器上拿到逻辑核心了吗？'),
(176003, '实地测试进行得怎么样？拾取机器人在采集吗？'),
(176004, '申请书？还是一个侏儒的？让我看看。'),
(176011, '我的零件到手了吗？时间就是金钱，朋友。'),
(176012, '那台跑掉的机器还在到处乱转吗？'),
(176013, '到现在有多少样本了？'),
(176014, '申请书？还是卡特尔的人？让我看看。');

DELETE FROM `creature_queststarter` WHERE `quest` IN (176000, 176001, 176002, 176003, 176004, 176011, 176012, 176013, 176014);

INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(9312001, 176001),
(9312001, 176002),
(9312001, 176003),
(9312001, 176004),
(9312002, 176011),
(9312002, 176012),
(9312002, 176013),
(9312002, 176014);

DELETE FROM `creature_questender` WHERE `quest` IN (176000, 176001, 176002, 176003, 176004, 176011, 176012, 176013, 176014);

INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(9312001, 176000),
(9312002, 176000),
(9312001, 176001),
(9312001, 176002),
(9312001, 176003),
(2496, 176004),
(9312002, 176011),
(9312002, 176012),
(9312002, 176013),
(2496, 176014);

DELETE FROM `creature_loot_template` WHERE `Item` IN (9707002, 9707003, 9707005, 9707007);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(921, 9707002, 0, 40, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Salvaged Gearbox'),
(921, 9707007, 0, 100, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Field Test Sample'),
(1094, 9707002, 0, 40, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Salvaged Gearbox'),
(1094, 9707007, 0, 100, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Field Test Sample'),
(1095, 9707002, 0, 40, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Salvaged Gearbox'),
(1095, 9707007, 0, 100, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Field Test Sample'),
(1096, 9707002, 0, 40, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Salvaged Gearbox'),
(1096, 9707007, 0, 100, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Field Test Sample'),
(1097, 9707002, 0, 40, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Salvaged Gearbox'),
(1097, 9707007, 0, 100, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Field Test Sample'),
(4260, 9707003, 0, 100, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Shredder Power Core'),
(9312003, 9707005, 0, 100, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Calibrated Logic Core');

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (9312001, 9312002);

INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(9312001, 9707001, 0, 100, 0, 1, 0, 1, 1, 'Goblin Salvage Project: Strange Piece of Scrap'),
(9312002, 9707004, 0, 100, 1, 1, 0, 1, 1, 'Goblin Salvage Project: Volatile Fuel Canister');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 4 AND `SourceGroup` = 9312001 AND `SourceEntry` = 9707001;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(4, 9312001, 9707001, 0, 0, 8, 0, 176000, 0, 0, 1, 0, 0, '', 'Strange Piece of Scrap drops until A Strange Piece of Scrap is rewarded'),
(4, 9312001, 9707001, 0, 0, 9, 0, 176000, 0, 0, 1, 0, 0, '', 'Strange Piece of Scrap drops only while A Strange Piece of Scrap is not active');

DELETE FROM `creature` WHERE `guid` IN (9112000, 9112001, 9112002);

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9112000, 9312001, 0, 33, 0, 1, 1, 0, -11307.4, -191.2, 75.35, 1.95, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Fizzlebolt Gearwhistle, Goblin Salvage Project, Rebel Camp'),
(9112001, 9312002, 0, 33, 0, 1, 1, 0, -12341.85, 165.85, 3.12, 4.2, 300, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 'Grizzik Scrapsnatch, Goblin Salvage Project, Grom''gol Base Camp'),
(9112002, 9312003, 0, 33, 0, 1, 1, 0, -11985.0, -536.0, 12.06, 3.0, 60, 8, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 'Haywire Lootbot Prototype, Goblin Salvage Project, Venture Co. Base Camp');

DELETE FROM `gameobject` WHERE `guid` IN (9112000, 9112001, 9112002, 9112003, 9112004, 9112005);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(9112000, 9312001, 0, 33, 0, 1, 1, -11960.5, -486.5, 17.08, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 'Discarded Prototype, Venture Co. Base Camp'),
(9112001, 9312001, 0, 33, 0, 1, 1, -11951.0, -505.0, 17.15, 4.0, 0, 0, 0.909297, -0.416147, 120, 100, 1, '', 'Discarded Prototype, Venture Co. Base Camp'),
(9112002, 9312001, 0, 33, 0, 1, 1, -11938.5, -576.0, 16.9, 2.5, 0, 0, 0.948985, 0.315322, 120, 100, 1, '', 'Discarded Prototype, Venture Co. Base Camp'),
(9112003, 9312002, 0, 33, 0, 1, 1, -12132.7, -638.5, 13.6, 0.7, 0, 0, 0.342898, 0.939373, 120, 100, 1, '', 'Volatile Fuel Canister, Venture Co. Base Camp'),
(9112004, 9312002, 0, 33, 0, 1, 1, -12110.3, -629.76, 15.61, 3.3, 0, 0, 0.996865, -0.079121, 120, 100, 1, '', 'Volatile Fuel Canister, Venture Co. Base Camp'),
(9112005, 9312002, 0, 33, 0, 1, 1, -12079.1, -733.46, 14.28, 5.1, 0, 0, 0.557684, -0.830054, 120, 100, 1, '', 'Volatile Fuel Canister, Venture Co. Base Camp');

DELETE FROM `npc_vendor` WHERE `entry` = 900008 AND `item` = 57000;

DELETE FROM `coa_client_vanity_collection` WHERE `ItemID` = 57000;

INSERT INTO `coa_client_vanity_collection` (`ItemID`, `DonationPointCost`, `SeasonalPointCost`, `BazaarTokenCost`)
VALUES
(57000, 0, 0, 0);
