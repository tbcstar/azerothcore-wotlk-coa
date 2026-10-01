-- Conquest of Azeroth quests in Elwynn Forest that this world has never carried, outside the
-- Goldshire storyline: the Ascension 17000 series (Maclure, Bouden, the Tower of Azora, Guard Thomas,
-- the Smudged Note, Ridgepoint Tower, Mirror Lake), the Bandit's Bastion quests (100071-100074) and
-- Agent Serina Vale's mineral dig (254038-254108).
--
-- WHERE EACH VALUE COMES FROM
--   quests, objects, items, reward items  the realm's own client cache (data-cache-945cd3b8b0ce4a496586).
--     Every quest and reward item already exists in item_template, so no item is written here.
--   object positions  SOURCED from the QuestSuperTrack objective points (Maclure Supplies, the Supply
--     Cache, one Mirror Lake Harvest, the Crocolisk Egg) and the archive atlas (one Harvest, one crate of
--     Stolen Goods); the rest are placed by hand at a named landmark, each on the server floor.
--   quest givers  SOURCED where the quest text names them; the rest INFERRED from the voice of the text.
--   Esyra's greeting  npccache 4000. Supply Run follows Remy's Gold Dust Exchange (INFERRED from its text).
--   new NPCs  Guard Jacob, Esyra and Sinter Wive come from the creature cache. Agent Serina Vale (996114 in
--     Goldshire, 996115 at the Bastion) is in no source; two entries keep each copy's quests apart. Displays
--     the client cannot resolve use stock stand-ins. Givers and enders stand at their QuestSuperTrack
--     turn-in points; Esyra stands 1.9 yd from hers because Servant of Azora 80924 occupies it.
--   mobs  stock Defias, beasts, gnolls and spiders are added by hand to fill each objective area; the
--     Mirror Lake Orchard's Defias Cutpurses follow the Exiles export's stock spawns, which this world
--     lacks; its Defias Bandits come from the relocations migration.
--   drop chances  SOURCED from the Exiles export creature_loot (100% for every quest drop here).
--   credits  Slimy Solution: the vial spell hitting a murloc corpse credits it and removes the corpse;
--     a condition refuses the vial on a living murloc, as its spell description says (corpse only).
--     Unexpected Results: the enchanted fragment credits once per beast per ten minutes. Final Dig: a new
--     gossip option on Innkeeper Farley, shown only with the quest, gives him away (option and line INFERRED).
--   not restored  quests 254039 and 254040 are in no source, so 254041 and 254095 follow 254038 directly.
--
-- Spawn guid blocks: creature 9002200-9002599, gameobject 7911200-7911599. Quest 17005 starts from the
-- Smudged Note that rev_20260922_00_coa_northshire_quests.sql spawns.

-- ---------------------------------------------------------------------------
-- 1. Creatures
-- ---------------------------------------------------------------------------
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `rank`, `unit_class`, `unit_flags`, `type`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `gossip_menu_id`)
VALUES
(157000, '守卫雅各布', NULL, 30, 30, 0, 12, 2, 0, 1, 0, 7, 0, '', 0, 1.36, 1, 1, 1, 0, 0),
(900017, '艾希拉', '阿佐拉的学徒', 10, 10, 0, 12, 3, 0, 8, 0, 7, 0, '', 0, 0.96, 1, 1, 1, 0, 4000),
(996119, '迪菲亚哨兵', NULL, 9, 10, 0, 17, 0, 0, 1, 0, 7, 0, '', 0, 0.92448, 1, 1, 1, 0, 0),
(996114, '特工塞琳娜·维尔', NULL, 20, 20, 0, 35, 2, 0, 1, 0, 7, 0, '', 0, 1, 1, 1, 1, 0, 0),
(996115, '特工塞琳娜·维尔', NULL, 20, 20, 0, 35, 2, 0, 1, 0, 7, 0, '', 0, 1, 1, 1, 1, 0, 0),
(764542, '辛特·怀夫', NULL, 15, 15, 0, 35, 2, 0, 1, 0, 7, 0, '', 0, 1, 1, 1, 1, 0, 0),
(300220, '[KC] 黏滑的鱼人口水', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, '', 0, 1, 1, 1, 1, 130, 0),
(996120, '[KC] 找到内鬼', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, '', 0, 1, 1, 1, 1, 130, 0),
(996121, '[KC] 测试矿物效力', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, '', 0, 1, 1, 1, 1, 130, 0)
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `rank` = VALUES(`rank`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `type` = VALUES(`type`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `gossip_menu_id` = VALUES(`gossip_menu_id`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (157000, 300220, 764542, 900017, 996114, 996115, 996119, 996120, 996121);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(157000, 0, 1984, 1, 1),
(900017, 0, 3768, 1, 1),
(996119, 0, 5035, 1, 1),
(996114, 0, 5783, 1, 1),
(996115, 0, 5783, 1, 1),
(764542, 0, 1659, 1, 1),
(300220, 0, 11686, 1, 1),
(996120, 0, 11686, 1, 1),
(996121, 0, 11686, 1, 1);

DELETE FROM `creature_equip_template` WHERE `CreatureID` = 996119;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(996119, 1, 1896, 0, 0);

UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` IN (250, 66, 11916, 955, 958, 11072);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (118, 822);

DELETE FROM `npc_text` WHERE `ID` = 4000;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `Probability0`)
VALUES
(4000, '哦！你好！你一定是冒险者，对吧？太令人兴奋了！我一直在阿佐拉之塔这边帮忙，其实只是个学徒，但我终于被分配了一些真正的任务！     我现在还不能离开这里，但也许你能帮我完成它们？', '哦！你好！你一定是冒险者，对吧？太令人兴奋了！我一直在阿佐拉之塔这边帮忙，其实只是个学徒，但我终于被分配了一些真正的任务！     我现在还不能离开这里，但也许你能帮我完成它们？', 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` = 4000;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(4000, 4000);

-- ---------------------------------------------------------------------------
-- 2. World objects
-- ---------------------------------------------------------------------------
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`)
VALUES
(96000, 3, 36, '麦克卢尔补给品', '', 1, 43, 96000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96002, 3, 31, '补给藏匿处', '', 1, 43, 96002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96003, 3, 3012, '镜湖收获', '回收中', 1, 43, 96003, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5055563, 3, 286, '赃物', '', 1, 43, 5055563, 0, 1, 0, 0, 0, 0, 100073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25428, 3, 3851, '鳄鱼蛋', '拾取中', 1, 57, 25428, 0, 1, 0, 0, 0, 0, 254051, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`);

-- ---------------------------------------------------------------------------
-- 3. Quests
-- ---------------------------------------------------------------------------
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(17000, 2, 9, 5, 12, 0, 0, 0, 0, 0, 0, 0, 4, 350, 375, 0, 0, 0, 0, 0, 8, 0, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '被盗的补给品', '将失窃的补给品归还给麦克卢尔老爹。', '该死的迪菲亚闯进来洗劫了我们的补给品！我们到底对他们做了什么？当然，除了在他们决定背叛我们之前供养过他们。反正我咽不下这口气！$B$B你可以在东边不远的杰罗德码头找到他们的营地。给他们点颜色瞧瞧，然后把补给品带回来，我会好好补偿你的。', '', '回到麦克卢尔葡萄园的麦克卢尔老爹那里。', 0, 0, 0, 0, 0, 0, 0, 0, 157000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(17001, 2, 9, 6, 12, 0, 0, 0, 0, 0, 0, 0, 5, 375, 375, 0, 0, 0, 0, 0, 8, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '奢华的订单', '将4份宝石镶嵌的蜘蛛丝交给萨林·布登。', '啊，英雄，能耽误你一会儿吗？你看，我遇上了一个绝佳的商机，需要你的专长。我最近收到报告说贾斯珀洛德矿洞里出现了蜘蛛肆虐——那些恶心的东西。对狗头人来说是个坏消息，但对我们来说可是个好机会！$B$B据说这些蜘蛛能产出一种非常独特、也非常值钱的丝——宝石镶嵌的蜘蛛丝！我推测这与它们以矿洞内外的狗头人矿工为食有关，不过这只是个理论。总之，如果你能给我带来4份这种宝石镶嵌的蜘蛛丝，我会重谢你的！', '', '将4份宝石镶嵌的蜘蛛丝交给萨林·布登。', 0, 0, 0, 0, 0, 0, 0, 0, 157001, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, '', '', '', ''),
(17002, 2, 10, 7, 12, 0, 0, 0, 0, 0, 0, 0, 5, 300, 187, 0, 0, 0, 0, 0, 8, 0, 157003, 4, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '主人的命令', '找回10颗耗尽的法力宝石，并回到阿佐拉之塔。', '你好！我刚被指派协助一个研究项目，我觉得这可能是我向主人证明自己已准备好承担更多责任的大好机会。我们正在研究魔法耗竭，为此我们需要消耗过的奥术物质的样本。我想你可以从石冢湖附近的迪菲亚流氓法师身上收集到。他们很危险，但我听说他们最近施法过度，这对我们所需的东西来说再合适不过了。你愿意带回十颗他们耗尽的法力宝石吗？我会确保你得到奖励。如果这事办得好……也许我就能尝试施放比法师护甲更厉害的法术了！', '', '找回10颗耗尽的法力宝石，并回到阿佐拉之塔。', 0, 0, 0, 0, 0, 0, 0, 0, 157002, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, '', '', '', ''),
(17003, 2, 10, 7, 12, 0, 0, 0, 0, 0, 0, 0, 5, 300, 187, 0, 0, 0, 0, 157006, 8, 0, 157005, 1, 1397885, 1, 0, 0, 0, 0, 157006, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '黏滑的溶液', '取回10份黏滑的鱼人口水样本，并回到阿佐拉之塔。', '嗨！抱歉如果这听起来有点奇怪，但你愿意帮忙做个研究任务吗？主人开始研究……嗯，口水中的魔法残留物。准确地说，是鱼人的口水。他想看看残留的奥术能量在生物物质中如何反应。我知道，有点恶心，但也很有趣，对吧？在东谷伐木营地附近的湖边，南北两岸都有鱼人潜伏者和觅食者。如果你能收集十份它们的口水样本带回来，我会确保你得到应有的奖励。我甚至准备了一个采集用的瓶子。', '', '取回10份黏滑的鱼人口水样本，并回到阿佐拉之塔。', 300220, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '已采集黏滑的鱼人口水', '', '', ''),
(17004, 2, 10, 7, 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 8, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 157009, 1, 157010, 1, 157011, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '解除豺狼人的武装', '取回6把豺狼人利刃和10把豺狼人斧头，并回到东艾尔文桥的守卫托马斯那里。', '好像鱼人肆虐还不够糟糕似的，我们还有豺狼人在边境啃噬。一个问题接着一个问题！$B$B为王国和艾尔文森林的人民伸张正义，在这个威胁还没来得及成为真正的问题之前就解除它。给我带回6把来自豺狼人幼崽的利刃和10把来自它们奔跑者的斧头。$B$B你可以在石冢湖北端和西北端的营地找到它们。如果你办成了这件事，暴风城军队一定会给予你相应的奖励。', '', '取回6把豺狼人利刃和10把豺狼人斧头，并回到东艾尔文桥的守卫托马斯那里。', 0, 0, 0, 0, 0, 0, 0, 0, 157007, 157008, 0, 0, 0, 0, 6, 10, 0, 0, 0, 0, '', '', '', ''),
(17005, 2, 10, 7, 12, 0, 0, 0, 0, 0, 0, 0, 4, 350, 375, 0, 0, 0, 0, 157012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '最后的遗物', '将污迹斑斑的便条归还给暴风城的伊梅尔达。', '我最亲爱的伊梅尔达。尽管你已经搬到了暴风城，我希望你知道，任何距离都无法将我们分开。我对你的爱如同无尽燃烧的太阳。你将永远拥有我心中的一部分。永远不要忘记。$B$B——伊桑$B$B我应该试着把这张便条还给伊梅尔达。她大概会想知道伊桑的感受。', '', '将污迹斑斑的便条归还给暴风城的伊梅尔达。', 0, 0, 0, 0, 0, 0, 0, 0, 157012, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(17006, 2, 10, 7, 12, 0, 0, 0, 0, 0, 0, 0, 5, 300, 375, 0, 0, 0, 0, 0, 8, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '国王的正义', '杀死8名迪菲亚强盗，并将补给藏匿处交还给山脊哨塔的守卫雅各布。', '英雄，我遇上麻烦了。我们的斥候报告说，一批运往湖畔镇的货物被迪菲亚截获了。我需要你取回那批货物，并让迪菲亚得到应有的下场。$B$B我相信他们还没来得及把货物转移到他们的安全屋。看来一小队迪菲亚正在东边不远处看守着货物。$B$B可惜我抽不出人手，但如果你能杀死8名迪菲亚强盗并把货物带回来给我，我会确保你得到相应的补偿。', '', '杀死8名迪菲亚强盗，并将补给藏匿处交还给山脊哨塔的守卫雅各布。', 116, 0, 0, 0, 8, 0, 0, 0, 157013, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(17007, 2, 10, 7, 12, 0, 0, 0, 0, 0, 0, 0, 2, 150, 150, 0, 0, 0, 0, 157013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '送往湖畔镇', '将补给藏匿处交给湖畔镇的法官所罗门。', '呃，稍等，英雄。听着，我很不想再麻烦你，但我现在实在抽不出人手。你能否行行好，把这批补给藏匿处送到湖畔镇去。$B$B我想所罗门法官会想知道你为他的人民做了什么，我相信他会给予你应得的奖励。', '', '将补给藏匿处交给湖畔镇的法官所罗门。', 0, 0, 0, 0, 0, 0, 0, 0, 157013, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(17008, 2, 10, 7, 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 187, 0, 0, 0, 0, 0, 0, 0, 157015, 5, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '夺回收成', '取回8个镜湖苹果，并将它们交给西泉要塞的德弗里斯中士。', '真可惜，$N。迪菲亚占据了镜湖果园，正在劫掠收成。我记得小时候母亲为我做她著名的镜湖苹果派。我希望我能和要塞里的其他人一起分享。$B$B嘿，你看起来像个走南闯北的$R。你觉得你能去要塞东北方的镜湖果园，收集足够的苹果让我做些派吗？我甚至可以给你做几个！哦，顺便替我向迪菲亚问好。', '', '取回8个镜湖苹果，并将它们交给西泉要塞的德弗里斯中士。', 0, 0, 0, 0, 0, 0, 0, 0, 157014, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, '', '', '', ''),
(100071, 2, 8, 4, 12, 0, 0, 0, 0, 0, 0, 0, 5, 130, 135, 0, 0, 0, 0, 0, 0, 0, 1397885, 1, 500813, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '迪菲亚的扰乱', '削减闪金镇以东强盗堡垒的迪菲亚势力。', '哦，嗯……你是那种勇敢的人吗？就是那种处理危险、怪物还有……那些事的人？只是最近这里变得不太一样了。酒馆更安静了，路上也更空旷了，就连平时那些吵闹的家伙也不再经过了。我一直告诉自己这只是淡季，但……我觉得不是这样。我听到一个传闻，只是个传闻，说有些迪菲亚强盗在镇子东边建了个营地。人们说他们在拦截旅人，偷取补给，或者更糟。我不太确定，但……也许如果有人去那里给他们点教训，让他们三思而行，事情就会平静一些？那样也许能让人群回来。', '', '回到艾尔文森林闪金镇的梅利卡·伊森斯特莱德那里。', 116, 474, 0, 0, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(100073, 2, 8, 5, 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 90, 0, 0, 0, 0, 0, 0, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500814, 1, 500815, 1, 500816, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '补给行动', '从闪金镇以东的强盗堡垒取回4个被盗的补给箱。', '听着，如果你还愿意接手的话，我这还有个后续任务。有传言说迪菲亚在镇子东边集结成了一个像样的据点。那是一个大型营地，比一般的乌合之众要有组织得多。不久前当地的一些商人遭到袭击。成箱的补给品被抢走了。有用的东西，比如工具、布料，甚至还有一些稀有的烈酒。这一带的人就靠这些东西过活。这事有风险，但如果有人能进去把丢失的东西找回来，我知道有几个人会感激不尽。我会确保你为此得到奖励。', '', '回到艾尔文森林闪金镇的雷米“两次”那里。', 0, 0, 0, 0, 0, 0, 0, 0, 5055564, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, '', '', '', ''),
(100074, 2, 8, 5, 12, 0, 0, 0, 0, 0, 0, 0, 5, 130, 135, 0, 0, 0, 0, 5055565, 0, 0, 1397884, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '内部背叛', '回到杜汉元帅那里。', '你发现了一份看起来像是真正的联盟文件，由一个身着士兵服装、驻扎在迪菲亚前哨深处的人携带。文件内容指向联盟军队与当地强盗之间的勾结。这不该发生。必须让某个忠诚的人看到这个。把文件交给合适的联盟官员。运气好的话，他们会知道该怎么处理。', '', '回到艾尔文森林闪金镇的杜汉元帅那里。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254038, 2, 7, 6, 12, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '开始挖掘', '在强盗堡垒附近的会合点与塞琳娜见面。', '你看起来不像是本地人。这地方越来越吵了。太多眼睛，太多问题。我不喜欢重复自己，也不信任听力范围内的半数人。到强盗堡垒附近见我，我会把细节告诉你。', '', '向艾尔文森林强盗堡垒附近的特工塞琳娜·维尔报到。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254041, 2, 8, 5, 12, 0, 0, 0, 0, 0, 0, 0, 4, 175, 202, 0, 0, 0, 0, 0, 8, 0, 1252803, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '向将军汇报', '把这些情报带给马库斯·乔纳森将军。', '马库斯·乔纳森将军会想知道你在这里发现了什么。把这份报告带给他，你进入暴风城时应该就能找到他。', '', '向暴风城英雄谷的马库斯·乔纳森将军汇报。', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254051, 2, 15, 10, 12, 0, 0, 0, 0, 0, 0, 0, 5, 375, 202, 0, 0, 0, 0, 0, 0, 0, 1397885, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '拯救鳄鱼', '辛特·怀夫想让你从北边岛上的穴居人“偷猎者”手中取回鳄鱼蛋。', '我已经在河边观察一个巢穴好几天了。其中一只鳄鱼终于产卵了，就一颗完美的蛋。漂亮的东西。带斑点的壳，摸起来暖暖的。我本希望能把它移到安全的地方，给它一个真正孵化的机会。然后那些肮脏的穴居人出现了。哼哧哼哧地踩着灌木丛冲过来，其中一个像捡石头一样抓起蛋就尖叫着跑了。他们不知道自己拿着什么。如果我们不赶快拿回来，他们会把它吃掉、砸碎或者用泥巴煮了。你比我快，也不怕弄脏。把蛋带回来。我欠你一个人情。', '', '向洛克莫丹的辛特·怀夫汇报。', 0, 0, 0, 0, 0, 0, 0, 0, 1252808, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(254095, 2, 7, 6, 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 202, 0, 0, 0, 0, 354526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '奥术洞察', '将矿物碎片送到阿佐拉之塔，寻求关于其属性和潜在用途的魔法洞察。', '我不认识这种矿物。这让我担心。涉及黄金的时候，人们都会谈论。但这个？这个让所有人都沉默了。阿佐拉之塔的法师们也许能告诉我们更多。他们处理的东西可不是贸易路线上能找到的。把碎片带给他们。说话小心点，我不想知道我们面对的是什么之前就让消息传开。', '', '将矿物碎片交给艾尔文森林阿佐拉之塔的法师。', 0, 0, 0, 0, 0, 0, 0, 0, 354526, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(254098, 2, 8, 6, 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 202, 0, 0, 0, 0, 354525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '混合试剂', '将样本包交给曙光·亮星。', '既然我们有了两种样本，我需要妥善准备它们，为此我们需要曙光·亮星。她负责处理我们那些易变的成分，手比我稳得多。把蜘蛛腿和装满的瓶子带给她，就在塔里面。别洒了任何东西，也别让她说服你尝试任何东西。她会……很好奇。', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 354525, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(254099, 2, 8, 6, 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 202, 0, 0, 0, 0, 354524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '测试混合物', '喝下“浓缩”矿泉水，检查是否有任何不良影响。', '嗯……它似乎完全没有反应。想想在这个剂量水平下，矿物没有任何反应。你看起来像个强壮健康的人，介意喝一口吗？绝对安全！我想……把你的发现报告给泰奥克里图斯。', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(254106, 2, 8, 6, 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 202, 0, 0, 0, 0, 354527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '附魔矿物', '将矿物碎片带给基塔·火风。', '贾斯珀洛德矿洞中发现的含量即使经过长时间暴露，也肯定不足以用于任何事情，而且似乎很安全。但既然迪菲亚在开采它，其中必有蹊跷。把矿物碎片带给阿佐拉之塔里的基塔·火风，看看她能否为我们附魔，以观察矿物是否会对魔法产生任何反应。', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 354527, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', '', ''),
(254107, 2, 9, 6, 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 202, 0, 0, 0, 0, 354047, 0, 0, 375250, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '意外的结果', '测试附魔后的矿物碎片。', '处理这个的时候要非常非常小心。矿物在暴露于魔法时似乎极不稳定。我们需要测试它的全部潜力。到阿佐拉之塔外面去，对当地的野生动物进行测试。', '', '将你的发现报告给艾尔文森林闪金镇的特工塞琳娜·维尔。', 996121, 0, 0, 0, 5, 0, 0, 0, 354047, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '测试矿物效力', '', '', ''),
(254108, 2, 9, 6, 12, 0, 0, 0, 0, 0, 0, 0, 5, 0, 202, 0, 0, 0, 0, 0, 0, 0, 375250, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '最终挖掘', '在狮王之傲旅店中找到迪菲亚内鬼。', '当你出去调查矿物的用途时，我从我们之前找回的所有烧焦文件中，拼凑出了可能是狮王之傲旅店中迪菲亚内鬼的人。根据这些文件，应该是旅店里工作的某个人，某个与他们有长期渊源的人。我们只需要在里面问几个人，看看谁会露出破绽。', '', '回到艾尔文森林闪金镇的特工塞琳娜·维尔那里汇报。', 996120, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '找到内鬼', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (17000, 17001, 17002, 17003, 17004, 17005, 17006, 17007, 17008, 100071, 100073, 100074, 254038, 254041, 254051, 254095, 254098, 254099, 254106, 254107, 254108);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(17000, 0, 0, 0, 0, 0),
(17001, 0, 0, 0, 0, 0),
(17002, 0, 0, 0, 0, 0),
(17003, 0, 0, 0, 1, 0),
(17004, 0, 0, 0, 0, 0),
(17005, 0, 0, 0, 1, 0),
(17006, 0, 0, 0, 0, 0),
(17007, 0, 0, 17006, 1, 0),
(17008, 0, 0, 0, 0, 0),
(100071, 0, 0, 0, 0, 0),
(100073, 0, 0, 47, 0, 0),
(100074, 0, 0, 0, 1, 0),
(254038, 0, 0, 0, 0, 0),
(254041, 0, 0, 254038, 0, 0),
(254051, 0, 0, 0, 0, 0),
(254095, 0, 0, 254038, 1, 0),
(254098, 0, 0, 254095, 1, 0),
(254099, 0, 0, 254098, 1, 2),
(254106, 0, 0, 254099, 1, 0),
(254107, 0, 0, 254106, 1, 0),
(254108, 0, 0, 254107, 0, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (17000, 17001, 17002, 17003, 17004, 17005, 17006, 17007, 17008, 100071, 100073, 100074, 254038, 254041, 254051, 254095, 254098, 254099, 254106, 254107, 254108);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(17000, '赞美国王！我还担心我们再也见不到那些补给了。英雄，我不知道没有你我们该怎么办。'),
(17001, '让我看看你找到了什么，英——哇！我是说，呃，正如我所料。你做得很好，英雄。来，把这个当作对你协助的慷慨报酬。'),
(17002, '你拿到了！你真的拿到了！我迫不及待想给主人看。我会确保他知道这一切都是你促成的。'),
(17003, '谢谢你，$R。主人会很高兴的。'),
(17004, '这样我和艾尔文森林的人民就少了一件需要担心的事。谢谢你，$N。我们非常感激你所做的一切。'),
(17005, '哦，我的天哪。以圣光之名，$N！那个伊桑总是这么夸张！$B$B我发誓，如果那男孩把一半幻想的时间用来实际做点事。好吧，这么说吧，他本可以成为一个有成就的人。相反，他整天坐着生闷气，抱怨事情本来可以怎样。$B$B别担心伊桑，$N。他已经给我送过很多次消息了，说他在一个远离艾尔文的地方，那里“恶魔肆虐大地，野蛮的红色兽人游荡，还有裹着绷带的奇怪生物在为太空商品讨价还价。” 噗，好像真的一样！$B$B总之，谢谢你把这个带给我。我知道你是好意。这是给你的辛苦费。'),
(17006, '啊，感谢圣光，也感谢你，英雄。你今天为国王立下了大功。要是我能抽出一队人去送这个就好了。'),
(17007, '哦，我还在想我们上一支商队去哪了！谢谢你，英雄。你今天为我，也为湖畔镇的人民，立下了大功。要是我能得到国王的回信就好了。'),
(17008, '太棒了，$N，你做到了！请收下这个，作为你善举的报酬。$B$B哦，我迫不及待想看到要塞里的人们看到我做的东西时脸上的笑容了！'),
(100071, ''),
(100073, '干得好。我会确保这些货物回到它们合法的主人手中。'),
(100074, '所以……你是在我们自己人身上发现这个的，是吗？$B$B这个印章是真的。我敢用我的徽章担保。但这些命令是叛国。与强盗勾结？授权袭击我们的人民？$B$B这不是什么伪造品。有人下达了这些命令，他们会为此负责的。$B$B谢谢你悄悄地把这个交上来。剩下的我们会处理。'),
(254038, ''),
(254041, ''),
(254051, '就是它。就是这颗。温暖而完整，壳上一点划痕都没有。要不是我满身沼泽水和鳄鱼口水，我真想抱抱你。$B$B你做得很好。真的很好。这个小家伙现在也许有机会了。'),
(254095, ''),
(254098, ''),
(254099, ''),
(254106, ''),
(254107, ''),
(254108, '');

DELETE FROM `quest_request_items` WHERE `ID` IN (17000, 17001, 17002, 17003, 17004, 17005, 17006, 17007, 17008, 100071, 100073, 100074, 254038, 254041, 254051, 254095, 254098, 254099, 254106, 254107, 254108);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(17000, '你的搜寻进展如何？迪菲亚没给你添太多麻烦吧？'),
(17001, '那么，英雄，你深入贾斯珀洛德矿洞的行动进展如何？'),
(17002, '哦！你找到那些宝石了吗？我都在桌上腾出地方了！'),
(17003, '你设法完成要求的任务了吗？'),
(17004, '那么，豺狼人处理掉了吗？'),
(17005, '那是什么？你有东西给我吗，$N？'),
(17006, '迪菲亚解决了吗？'),
(17007, '这是什么，英雄？'),
(17008, '你设法夺回一些收成了吗？'),
(100071, ''),
(100073, '外面情况怎么样？你拿到那些箱子了吗？'),
(100074, '你有事要报告？让我看看。'),
(254038, ''),
(254041, ''),
(254051, '你找到蛋了吗？告诉我你在他们把它敲开之前拿到了。'),
(254095, ''),
(254098, ''),
(254099, ''),
(254106, ''),
(254107, ''),
(254108, '');

-- ---------------------------------------------------------------------------
-- 4. Who offers and who takes them back
-- ---------------------------------------------------------------------------
DELETE FROM `creature_queststarter` WHERE `quest` IN (17000, 17001, 17002, 17003, 17004, 17005, 17006, 17007, 17008, 100071, 100073, 100074, 254038, 254041, 254051, 254095, 254098, 254099, 254106, 254107, 254108);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(250, 17000),
(66, 17001),
(900017, 17002),
(900017, 17003),
(261, 17004),
(157000, 17006),
(157000, 17007),
(955, 17008),
(6778, 100071),
(241, 100073),
(996114, 254038),
(996115, 254041),
(764542, 254051),
(996115, 254095),
(313, 254098),
(958, 254099),
(313, 254106),
(11072, 254107),
(996114, 254108);

DELETE FROM `gameobject_queststarter` WHERE `quest` = 17005;
INSERT INTO `gameobject_queststarter` (`id`, `quest`)
VALUES
(96001, 17005);

DELETE FROM `creature_questender` WHERE `quest` IN (17000, 17001, 17002, 17003, 17004, 17005, 17006, 17007, 17008, 100071, 100073, 100074, 254038, 254041, 254051, 254095, 254098, 254099, 254106, 254107, 254108);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(250, 17000),
(66, 17001),
(900017, 17002),
(900017, 17003),
(261, 17004),
(11916, 17005),
(157000, 17006),
(344, 17007),
(955, 17008),
(6778, 100071),
(241, 100073),
(240, 100074),
(996115, 254038),
(466, 254041),
(764542, 254051),
(313, 254095),
(958, 254098),
(313, 254099),
(11072, 254106),
(996114, 254107),
(996114, 254108);

-- ---------------------------------------------------------------------------
-- 5. Loot
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE (`Entry`, `Item`) IN ((43, 157001), (471, 157001), (474, 157002), (97, 157007), (478, 157008));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(43, 157001, 0, 100, 1, 1, 0, 1, 1, 'Mine Spider - Gem Encrusted Spider Silk (creaturecache, Exiles creature_loot 100%)'),
(471, 157001, 0, 100, 1, 1, 0, 1, 1, 'Mother Fang - Gem Encrusted Spider Silk (creaturecache, Exiles creature_loot 100%)'),
(474, 157002, 0, 100, 1, 1, 0, 1, 1, 'Defias Rogue Wizard - Depleted Mana Gem (creaturecache, Exiles creature_loot 100%)'),
(97, 157007, 0, 100, 1, 1, 0, 1, 1, 'Riverpaw Runt - Gnoll Sword (creaturecache, Exiles creature_loot 100%)'),
(478, 157008, 0, 100, 1, 1, 0, 1, 1, 'Riverpaw Outrunner - Gnoll Axe (creaturecache, Exiles creature_loot 100%)');

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`, `Idx`) IN ((43, 0), (471, 0), (474, 2), (97, 1), (478, 1));
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(43, 0, 157001),
(471, 0, 157001),
(474, 2, 157002),
(97, 1, 157007),
(478, 1, 157008);

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (25428, 96000, 96002, 96003, 5055563);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(96000, 157000, 0, 100, 1, 1, 0, 1, 1, 'CoA Elwynn: quest item from Maclure Supplies'),
(96002, 157013, 0, 100, 1, 1, 0, 1, 1, 'CoA Elwynn: quest item from Supply Cache'),
(96003, 157014, 0, 100, 1, 1, 0, 1, 1, 'CoA Elwynn: quest item from Mirror Lake Harvest'),
(5055563, 5055564, 0, 100, 1, 1, 0, 1, 1, 'CoA Elwynn: quest item from Stolen Goods'),
(25428, 1252808, 0, 100, 1, 1, 0, 1, 1, 'CoA Elwynn: quest item from Crocolisk Egg');

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` IN (25428, 96000, 96002, 96003, 5055563);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(96000, 0, 157000),
(96002, 0, 157013),
(96003, 0, 157014),
(5055563, 0, 5055564),
(25428, 0, 1252808);

-- ---------------------------------------------------------------------------
-- 6. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9002200, 9002201, 9002202, 9002203, 9002204, 9002205, 9002206, 9002209, 9002213, 9002216, 9002220, 9002221, 9002222, 9002223, 9002226, 9002230, 9002231, 9002233, 9002235, 9002237, 9002244, 9002245, 9002247, 9002250, 9002251, 9002252, 9002253, 9002254, 9002260, 9002261, 9002262, 9002263, 9002264, 9002265, 9002266, 9002267, 9002268, 9002269, 9002271, 9002272, 9002277, 9002279, 9002282, 9002290, 9002291, 9002292, 9002300, 9002301, 9002302, 9002303, 9002304, 9002305, 9002306, 9002307, 9002308, 9002309, 9002310, 9002320, 9002321, 9002322, 9002323, 9002324, 9002325, 9002326, 9002327, 9002328, 9002330, 9002331, 9002332, 9002333, 9002334, 9002335, 9002336, 9002337, 9002338, 9002339, 9002340, 9002341, 9002342, 9002343, 9002344, 9002345, 9002346, 9002347) OR `guid` BETWEEN 9002200 AND 9002599;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9002200, 157000, 0, 0, 0, 1, 1, 0, -9769.75, -1379.84, 62.78, 4.71, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Ridgepoint Tower first floor at the 17006 SuperTrack turn-in point, facing east toward the Defias camp'),
(9002201, 900017, 0, 0, 0, 1, 1, 0, -9562.33, -722.93, 64.74, 0.82, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Tower of Azora ground floor at the 17002/17003 SuperTrack turn-in point, the Servant of Azora post CoA gave her'),
(9002202, 996114, 0, 0, 0, 1, 1, 0, -9451.46, 79.9, 57.49, 4.37, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Goldshire lane outside the smithy at the 254107 SuperTrack turn-in point, facing down the lane to the inn'),
(9002203, 996115, 0, 0, 0, 1, 1, 0, -9783.61, -404.56, 60.29, 4.71, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: 254038 SuperTrack turn-in point: the rendezvous on the west cliff above the Bastion''s mine, overlooking the camp'),
(9002204, 764542, 0, 0, 0, 1, 1, 0, -5200.66, -3521.83, 303.97, 0.17, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Loch Modan shore at the 254051 SuperTrack turn-in point, facing the trogg island'),
(9002205, 996119, 0, 0, 0, 1, 1, 1, -9790, -484, 30.6, 4.99, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, inside the farmhouse at the desk by the book stack, deep in the camp'),
(9002206, 116, 0, 0, 0, 1, 1, 1, -9746.5, -427.5, 44.6, 0, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, gate walkway above the north ravine, watching the approach over the barricade'),
(9002209, 116, 0, 0, 0, 1, 1, 1, -9768, -427, 33.8, 1.05, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, training yard, sparring with the north dummy'),
(9002213, 116, 0, 0, 0, 1, 1, 1, -9801, -429.5, 31.84, 1.57, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, inside the mine entrance, facing the tunnel'),
(9002216, 116, 0, 0, 0, 1, 1, 1, -9788.5, -463.5, 30.18, 0.24, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, under the storehouse crane, stacking crates'),
(9002220, 116, 0, 0, 0, 1, 1, 1, -9822, -428, 38.34, 3.14, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, west end of the south boardwalk, watching the south approach'),
(9002221, 116, 0, 0, 0, 1, 1, 1, -9838, -466, 30.3, 1.57, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, outside the south wall, patrolling the approach under the big oak'),
(9002222, 116, 0, 0, 0, 1, 1, 1, -9784, -497, 32.84, 1.57, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, east campsite between the tent and the supply wagon'),
(9002223, 116, 0, 0, 0, 1, 1, 1, -9760, -472, 57.74, 3.8, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, lookout on the hill above the camp, watching the loot deck'),
(9002226, 474, 0, 0, 0, 1, 1, 1, -9779, -449.5, 31.16, 4.71, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, west side of the long loot table, reading the mission board'),
(9002230, 474, 0, 0, 0, 1, 1, 1, -9807, -464.5, 28.9, 1.2, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, shed, at the lockbox table'),
(9002231, 474, 0, 0, 0, 1, 1, 1, -9825, -439, 36.3, 3.14, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, middle of the south boardwalk behind the barricades'),
(9002233, 474, 0, 0, 0, 1, 1, 1, -9838, -438, 32.42, 1.57, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, outside the south wall on the west approach'),
(9002235, 474, 0, 0, 0, 1, 1, 1, -9793, -478.5, 30.6, 5, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, inside the farmhouse, guarding the Sentry''s quarters'),
(9002237, 474, 0, 0, 0, 1, 1, 1, -9814, -444, 29.7, 3.9, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Bandit''s Bastion, south yard between the bunk shed and the boardwalk stairs'),
(9002244, 116, 0, 0, 0, 1, 1, 1, -9740, -1560, 50.9, 0, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Defias camp east of Ridgepoint Tower, lookout on the north ridge'),
(9002245, 116, 0, 0, 0, 1, 1, 1, -9738, -1590, 49.17, 0.3, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Defias camp east of Ridgepoint Tower, north-east ridge'),
(9002247, 116, 0, 0, 0, 1, 1, 1, -9776, -1608, 43.98, 4.7, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Defias camp east of Ridgepoint Tower, east, under the big oak'),
(9002250, 116, 0, 0, 0, 1, 1, 1, -9805, -1552, 38.99, 2.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Defias camp east of Ridgepoint Tower, south-west slope'),
(9002251, 116, 0, 0, 0, 1, 1, 1, -9795, -1535, 41.3, 1.57, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Defias camp east of Ridgepoint Tower, west approach from the tower road'),
(9002252, 116, 0, 0, 0, 1, 1, 1, -9775, -1530, 46.47, 1.57, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Defias camp east of Ridgepoint Tower, west, watching the road to Ridgepoint Tower'),
(9002253, 116, 0, 0, 0, 1, 1, 1, -9755, -1530, 48.9, 1.2, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Defias camp east of Ridgepoint Tower, north-west slope'),
(9002254, 116, 0, 0, 0, 1, 1, 1, -9814, -1572, 33.5, 3.14, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Defias camp east of Ridgepoint Tower, south, lower ground below the camp'),
(9002260, 1922, 0, 0, 0, 1, 1, 0, -9365, -715, 66.35, 3.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, between the two northern oaks'),
(9002261, 1922, 0, 0, 0, 1, 1, 0, -9352, -740, 69.08, 4, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, north-east edge'),
(9002262, 1922, 0, 0, 0, 1, 1, 0, -9440, -695, 64.64, 2, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, open grass west of the southern oaks'),
(9002263, 1922, 0, 0, 0, 1, 1, 0, -9470, -705, 62.85, 1, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, south-west edge toward the tower'),
(9002264, 1922, 0, 0, 0, 1, 1, 0, -9395, -760, 64.73, 5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, east clearing'),
(9002265, 1922, 0, 0, 0, 1, 1, 0, -9470, -785, 61.02, 0.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, south-east clearing'),
(9002266, 822, 0, 0, 0, 1, 1, 0, -9410, -675, 65.58, 2, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, west edge'),
(9002267, 822, 0, 0, 0, 1, 1, 0, -9445, -735, 65.09, 4, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, under the southern oak'),
(9002268, 822, 0, 0, 0, 1, 1, 0, -9380, -775, 63.66, 5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, beside the eastern oak'),
(9002269, 822, 0, 0, 0, 1, 1, 0, -9425, -775, 65.01, 4.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, south-east grass'),
(9002330, 1922, 0, 0, 0, 1, 1, 0, -9383, -800, 66.36, 0.8, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, north-east, past the eastern oak'),
(9002331, 822, 0, 0, 0, 1, 1, 0, -9352, -712, 66.43, 3.9, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, north edge, beyond the northern oaks'),
(9002332, 1922, 0, 0, 0, 1, 1, 0, -9383, -684, 67.72, 4.3, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, north-west, between the north-west oak and the path'),
(9002333, 1922, 0, 0, 0, 1, 1, 0, -9442, -668, 64.94, 5.2, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, west edge of the grass'),
(9002334, 822, 0, 0, 0, 1, 1, 0, -9482, -732, 60.97, 0.2, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, south-west, beside the south-west oak'),
(9002335, 1922, 0, 0, 0, 1, 1, 0, -9484, -757, 61.78, 0.6, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, south, toward the tower grounds'),
(9002336, 822, 0, 0, 0, 1, 1, 0, -9447, -798, 62.13, 1.1, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, south-east, under the south-east oak'),
(9002337, 1922, 0, 0, 0, 1, 1, 0, -9405, -797, 66.58, 1.9, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, east, between the two eastern clearings'),
(9002338, 1922, 0, 0, 0, 1, 1, 0, -9420, -757, 65.14, 3, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, middle of the wood, south of the central oak'),
(9002339, 822, 0, 0, 0, 1, 1, 0, -9380, -742, 68.64, 2.4, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, north-east clearing below the eastern oak'),
(9002340, 1922, 0, 0, 0, 1, 1, 0, -9412, -698, 67.36, 4.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, clearing between the western oaks'),
(9002341, 822, 0, 0, 0, 1, 1, 0, -9462, -720, 63.31, 5.8, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, north side of the south-west oak'),
(9002342, 1922, 0, 0, 0, 1, 1, 0, -9362, -757, 67.23, 2.9, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, north-east, below the eastern oak'),
(9002343, 1922, 0, 0, 0, 1, 1, 0, -9462, -800, 60.17, 1.3, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: wood north of the Tower of Azora, south-east clearing, with the pair by the oak'),
(9002271, 94, 0, 0, 0, 1, 1, 1, -9462, 486, 53.94, 3.14, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Mirror Lake Orchard, Exiles spawn 80396 moved 6 yd north-west, clear of relocated Defias Bandit 80385 and the oak roots'),
(9002272, 94, 0, 0, 0, 1, 1, 1, -9495.64, 457.06, 52.12, 0, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Mirror Lake Orchard, Exiles spawn 80400, south rows'),
(9002277, 94, 0, 0, 0, 1, 1, 1, -9517.96, 494.38, 52.09, 0, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Mirror Lake Orchard, Exiles spawn 80405, south-west of the orchard'),
(9002279, 94, 0, 0, 0, 1, 1, 1, -9453.23, 512.81, 56.13, 3.9, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Mirror Lake Orchard, Exiles spawn 80397, north-west of the orchard'),
(9002282, 94, 0, 0, 0, 1, 1, 1, -9459.9, 426.18, 52.62, 2.4, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Mirror Lake Orchard, Exiles spawn 80402, north-east of the orchard'),
(9002290, 43, 0, 0, 0, 1, 1, 0, -9030, -591, 56.38, 1.57, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Jasperlode Mine spider chamber, upper east lobe between the webbed spiders'),
(9002291, 43, 0, 0, 0, 1, 1, 0, -9045, -610, 52.5, 3.9, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Jasperlode Mine spider chamber, lower east lobe on the way to Mother Fang''s den'),
(9002292, 43, 0, 0, 0, 1, 1, 0, -9030, -558, 55.16, 4.7, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Jasperlode Mine spider chamber, west lobe'),
(9002300, 97, 0, 0, 0, 1, 1, 1, -8993, -826, 69.67, 5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, between the west tent and the stores'),
(9002301, 97, 0, 0, 0, 1, 1, 1, -8970, -845, 68.77, 1.6, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, behind the east tent'),
(9002302, 97, 0, 0, 0, 1, 1, 1, -9000, -860, 70.23, 3.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, south of the tents toward the shore'),
(9002303, 97, 0, 0, 0, 1, 1, 1, -8965, -825, 68.83, 0.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, north-east edge under the oak'),
(9002304, 97, 0, 0, 0, 1, 1, 1, -9030, -835, 69.14, 3, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, south-west, toward the north-west end of the lake'),
(9002305, 478, 0, 0, 0, 1, 1, 1, -8970, -805, 69.68, 0.3, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, north, on the trail to the upper camp'),
(9002306, 478, 0, 0, 0, 1, 1, 1, -9005, -800, 69.62, 1.6, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, west of the camp'),
(9002307, 478, 0, 0, 0, 1, 1, 1, -8958, -860, 70.03, 4.5, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, east, toward the lake'),
(9002308, 478, 0, 0, 0, 1, 1, 1, -9010, -880, 69.17, 3.8, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, south, along the north shore'),
(9002309, 478, 0, 0, 0, 1, 1, 1, -8935, -830, 68.64, 0.8, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, north-east, between the oaks'),
(9002310, 478, 0, 0, 0, 1, 1, 1, -9043, -817, 69.5, 2.8, 180, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Riverpaw camp on the north shore of Stone Cairn Lake, south-west, above the west end of the lake'),
(9002320, 474, 0, 0, 0, 1, 1, 1, -9170, -1040, 71.8, 6.2, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, west of the stones, on the path from the 17002 point'),
(9002321, 474, 0, 0, 0, 1, 1, 1, -9160, -1075, 70.85, 0.8, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, south of the stone ring'),
(9002322, 474, 0, 0, 0, 1, 1, 1, -9120, -1080, 72.22, 2.2, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, north-east of the stone ring'),
(9002323, 474, 0, 0, 0, 1, 1, 1, -9100, -1030, 72.75, 3.6, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, north-west of the stone ring'),
(9002324, 474, 0, 0, 0, 1, 1, 1, -9195, -1025, 73.2, 5.9, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, south-west, facing the stones'),
(9002325, 474, 0, 0, 0, 1, 1, 1, -9172, -1092, 72.11, 0.6, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, south, under the big oak'),
(9002326, 474, 0, 0, 0, 1, 1, 1, -9206, -1036, 70.66, 0.2, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, south-west edge'),
(9002327, 474, 0, 0, 0, 1, 1, 1, -9110, -990, 72.81, 4, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, north-west, between the stones and the lone wizards'),
(9002328, 474, 0, 0, 0, 1, 1, 1, -9165, -1015, 69.93, 5.2, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, west, between the stones and the northern group'),
(9002344, 474, 0, 0, 0, 1, 1, 1, -9200, -1065, 70.85, 0.23, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, south, clearing at the north-west edge of the south oak canopy, facing the stones'),
(9002345, 474, 0, 0, 0, 1, 1, 1, -9238, -1078, 68.03, 0.27, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, far south, lakeside meadow above the shore, murloc huts 80 yd east-south-east, facing the stones'),
(9002346, 474, 0, 0, 0, 1, 1, 1, -9064, -1005, 71.18, 3.71, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, north-west, open rise at the east edge of the north oak grove, facing the stones'),
(9002347, 474, 0, 0, 0, 1, 1, 1, -9095, -1075, 73.8, 2.58, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Elwynn: Stone Cairn standing stones, north-east, at the foot of the Earthroot knoll, facing the stones');

DELETE FROM `gameobject` WHERE `guid` IN (7911200, 7911201, 7911202, 7911203, 7911204, 7911205, 7911206, 7911207, 7911208, 7911209, 7911210, 7911211, 7911212, 7911213, 7911214, 7911215, 7911216, 7911217, 7911218, 7911219, 7911220, 7911221, 7911230, 7911231, 7911232, 7911233, 7911234, 7911235, 7911236, 7911237, 7911238, 7911239, 7911240, 7911241, 7911250) OR `guid` BETWEEN 7911200 AND 7911599;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7911200, 96000, 0, 0, 0, 1, 1, -9950.16, -132.37, 25.37, 0, 0, 0, 0, 1, 2, 100, 1, '', 'CoA Elwynn: 17000 SuperTrack objective point, inside the farmhouse at Jerod''s Landing (atlas sighting 0.4 yd away)'),
(7911201, 96002, 0, 0, 0, 1, 1, -9766.9, -1560.26, 41.48, 0, 0, 0, 0, 1, 2, 100, 1, '', 'CoA Elwynn: Defias camp east of Ridgepoint Tower, 17006 SuperTrack objective point beside the camp crates (atlas sighting 0.3 yd away)'),
(7911202, 96003, 0, 0, 0, 1, 1, -9491.41, 475.9, 50.96, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, 17008 SuperTrack objective point, between three trees'),
(7911203, 96003, 0, 0, 0, 1, 1, -9482.9, 441.86, 53.11, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, atlas sighting, east rows'),
(7911204, 96003, 0, 0, 0, 1, 1, -9488, 493, 51.97, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree by the west fence'),
(7911205, 96003, 0, 0, 0, 1, 1, -9478, 495, 52.63, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the north-west corner'),
(7911206, 96003, 0, 0, 0, 1, 1, -9474.5, 483.5, 52.12, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree by the north fence'),
(7911207, 96003, 0, 0, 0, 1, 1, -9481.5, 487, 51.9, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the west rows'),
(7911208, 96003, 0, 0, 0, 1, 1, -9478, 474.5, 51.9, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the middle rows'),
(7911209, 96003, 0, 0, 0, 1, 1, -9479, 467.5, 51.53, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the middle rows, north side'),
(7911210, 96003, 0, 0, 0, 1, 1, -9486, 467, 51.4, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the middle rows, south side'),
(7911211, 96003, 0, 0, 0, 1, 1, -9492.5, 465, 51.2, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree by the south fence'),
(7911212, 96003, 0, 0, 0, 1, 1, -9477.5, 458, 51.56, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the east rows, north side'),
(7911213, 96003, 0, 0, 0, 1, 1, -9486.5, 458, 51.55, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the east rows'),
(7911214, 96003, 0, 0, 0, 1, 1, -9490, 454.5, 51.9, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the south-east rows'),
(7911215, 96003, 0, 0, 0, 1, 1, -9476.5, 452.5, 51.95, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the north-east rows'),
(7911216, 96003, 0, 0, 0, 1, 1, -9492, 447.5, 52.73, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the south-east corner'),
(7911217, 96003, 0, 0, 0, 1, 1, -9473, 448, 52.47, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the north-east corner'),
(7911218, 96003, 0, 0, 0, 1, 1, -9481.5, 449, 52.28, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the east rows, middle'),
(7911219, 96003, 0, 0, 0, 1, 1, -9494, 482.5, 51.24, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the south-west rows'),
(7911220, 96003, 0, 0, 0, 1, 1, -9484, 473, 51.4, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the middle rows, west side'),
(7911221, 96003, 0, 0, 0, 1, 1, -9485.5, 482.5, 51.6, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Elwynn: Mirror Lake Orchard, foot of the tree in the west rows, middle'),
(7911230, 5055563, 0, 0, 0, 1, 1, -9757.68, -442.04, 32.79, 3.63, 0, 0, 0.97033, -0.241784, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, atlas sighting, ravine by the crate stacks'),
(7911231, 5055563, 0, 0, 0, 1, 1, -9784.5, -452, 30.77, 1.57, 0, 0, 0.706825, 0.707388, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, south end of the long loot table'),
(7911232, 5055563, 0, 0, 0, 1, 1, -9789, -467, 29.37, 0.3, 0, 0, 0.149438, 0.988771, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, under the storehouse crane beside the crate stacks'),
(7911233, 5055563, 0, 0, 0, 1, 1, -9793, -438, 29.57, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, beside the ore carts at the mine mouth'),
(7911234, 5055563, 0, 0, 0, 1, 1, -9803.5, -429, 31.49, 1.57, 0, 0, 0.706825, 0.707388, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, inside the mine entrance'),
(7911235, 5055563, 0, 0, 0, 1, 1, -9804, -465, 28.9, 2, 0, 0, 0.841471, 0.540302, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, shed, beside the lockbox table'),
(7911236, 5055563, 0, 0, 0, 1, 1, -9818, -457, 30.56, 1.57, 0, 0, 0.706825, 0.707388, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, bunk shed, at the foot of the bunks'),
(7911237, 5055563, 0, 0, 0, 1, 1, -9795, -470.5, 28.9, 0.5, 0, 0, 0.247404, 0.968912, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, farmyard by the farmhouse''s west wall'),
(7911238, 5055563, 0, 0, 0, 1, 1, -9786, -481.5, 30.6, 4.7, 0, 0, 0.711473, -0.702713, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, inside the farmhouse by the coal piles'),
(7911239, 5055563, 0, 0, 0, 1, 1, -9781.5, -497, 33, 5, 0, 0, 0.598472, -0.801144, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, east campsite, at the tent'),
(7911240, 5055563, 0, 0, 0, 1, 1, -9762, -436, 32.54, 0.3, 0, 0, 0.149438, 0.988771, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, ravine path below the gate stairs'),
(7911241, 5055563, 0, 0, 0, 1, 1, -9823, -431, 38.4, 3.14, 0, 0, 1, 0.000796, 120, 100, 1, '', 'CoA Elwynn: Bandit''s Bastion, west end of the south boardwalk'),
(7911250, 25428, 0, 0, 0, 1, 1, -4980.27, -3483, 305.61, 0, 0, 0, 0, 1, 2, 100, 1, '', 'CoA Elwynn: 254051 SuperTrack objective point on the trogg island, beside the troggs'' cauldron (atlas sighting 3 yd away)');

-- ---------------------------------------------------------------------------
-- 7. Scripts
-- ---------------------------------------------------------------------------
-- The stock blocks of the murlocs, the beasts and Innkeeper Farley are rewritten whole: their
-- existing rows are kept verbatim and the quest rows are added after them.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (46, 118, 295, 524, 732, 822, 1922) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(46, 0, 0, 0, 2, 0, 100, 1, 0, 40, 0, 0, 0, 0, 11, 3368, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Forager - Between 0-40% Health - Cast ''Drink Minor Potion'' (Phase 1)'),
(46, 0, 1, 2, 8, 0, 100, 0, 966240, 0, 0, 0, 0, 0, 33, 300220, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Forager - On Spellhit Collect Slimy Murloc Spittle - Quest Credit'),
(46, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Forager - Linked - Despawn the milked corpse'),
(118, 0, 0, 0, 8, 0, 100, 0, 350249, 0, 600000, 600000, 0, 0, 33, 996121, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Prowler - On Spellhit Enchanted Mineral - Credit testing the mineral, once per beast'),
(295, 0, 0, 1, 62, 0, 100, 512, 1291, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Innkeeper Farley - On Gossip Option 0 Selected - Close Gossip'),
(295, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 134, 24751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Innkeeper Farley - On Gossip Option 0 Selected - Invoker Cast ''Trick or Treat'''),
(295, 0, 2, 3, 62, 0, 100, 0, 1291, 4, 0, 0, 0, 0, 33, 996120, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Innkeeper Farley - On Gossip Option 4 Selected - Credit finding the mole'),
(295, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Innkeeper Farley - Linked - Say Line 2'),
(295, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Innkeeper Farley - Linked - Close Gossip'),
(524, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockhide Boar - On Aggro - Cast ''Rushing Charge'''),
(524, 0, 1, 0, 8, 0, 100, 0, 350249, 0, 600000, 600000, 0, 0, 33, 996121, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockhide Boar - On Spellhit Enchanted Mineral - Credit testing the mineral, once per beast'),
(732, 0, 0, 0, 67, 0, 100, 0, 3900, 6900, 3900, 6900, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Lurker - On Behind Target - Cast ''Backstab'' (No Repeat)'),
(732, 0, 1, 2, 8, 0, 100, 0, 966240, 0, 0, 0, 0, 0, 33, 300220, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Lurker - On Spellhit Collect Slimy Murloc Spittle - Quest Credit'),
(732, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Lurker - Linked - Despawn the milked corpse'),
(822, 0, 0, 0, 8, 0, 100, 0, 350249, 0, 600000, 600000, 0, 0, 33, 996121, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Young Forest Bear - On Spellhit Enchanted Mineral - Credit testing the mineral, once per beast'),
(1922, 0, 0, 1, 1, 0, 100, 0, 120000, 600000, 120000, 600000, 0, 0, 4, 1018, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gray Forest Wolf - Out of Combat - Play Sound 1018'),
(1922, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 5, 393, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gray Forest Wolf - Out of Combat - Play Emote 393'),
(1922, 0, 2, 0, 8, 0, 100, 0, 350249, 0, 600000, 600000, 0, 0, 33, 996121, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gray Forest Wolf - On Spellhit Enchanted Mineral - Credit testing the mineral, once per beast');

DELETE FROM `creature_text` WHERE `CreatureID` = 295 AND `GroupID` = 2;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `comment`)
VALUES
(295, 2, 0, '迪菲亚？从来没和他们打过交道……好吧，自从老石匠工会那会儿就没有了。还需要别的吗？', 12, 0, 100, '旅店老板法雷 - 暴露了自己（推断）');

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 1291 AND `OptionID` = 4;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(1291, 4, 0, '你对迪菲亚了解多少？', 0, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 1291 AND `SourceEntry` = 4;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 966240;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(15, 1291, 4, 0, 0, 9, 0, 254108, 0, 0, 0, 0, 0, '', 'Innkeeper Farley - mole question only while Final Dig is taken'),
(17, 0, 966240, 0, 0, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Collect Slimy Murloc Spittle - only on a corpse, never a living murloc');
