-- Apex contract questline: two faction huntmasters, one contract each, then the
-- three-hide hunt that pays out the Skin-Peeler diploma and the Apex Hunter title.

DELETE FROM `creature_queststarter` WHERE `quest` BETWEEN 9916200 AND 9916211;
DELETE FROM `creature_questender` WHERE `quest` BETWEEN 9916200 AND 9916211;
DELETE FROM `quest_template` WHERE `ID` BETWEEN 9916200 AND 9916211;
DELETE FROM `gossip_menu` WHERE `MenuID` IN (9916113, 9916114);
DELETE FROM `npc_text` WHERE `ID` IN (900001, 900002);
DELETE FROM `creature_loot_template` WHERE `Entry` IN (9916212, 9916213, 9916214);

-- ---- gossip: each huntmaster speaks in his own voice -----------------------
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(900001, '当心架子上那些兽皮，它们还在鞣制。……你看上去像是个杀过会反抗的猎物的人。很好。坐下吧。'),
(900002, '你身上有路野的气味，不是城里的。很好。祖尔卡可不在城里猎人身上浪费口舌。');

INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(9916113, 900001),
(9916114, 900002);

UPDATE `creature_template` SET `gossip_menu_id` = 9916113 WHERE `entry` = 9916113;
UPDATE `creature_template` SET `gossip_menu_id` = 9916114 WHERE `entry` = 9916114;

-- ---- the contract: a breadcrumb that opens the hunt ------------------------
INSERT INTO `quest_template`
(`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `LogTitle`, `LogDescription`, `QuestDescription`,
 `QuestCompletionLog`, `QuestSortID`, `QuestInfoID`, `Flags`, `RewardNextQuest`) VALUES
(9916200, 0, 58, 58, '巅峰契约',
 '阅读悬赏板并接受狩猎。',
 '我身后的板子上钉着三份契约，下面还压着更旧的，全都失败了。读一读，然后再决定你是不是还喜欢这个主意。',
 '回到暴风城矮人区的托瓦尔德·灰羽那里。', 0, 0, 0, 9916201),
(9916210, 0, 58, 58, '巅峰契约',
 '阅读悬赏板并接受这场狩猎。',
 '我身后板子上钉着三份契约，底下压着更旧的，全都栽了。读读看，再琢磨琢磨你还想不想干这活儿。',
 '回到奥格瑞玛荣誉谷的祖尔卡那里。', 0, 0, 0, 9916211);

-- ---- the hunt: the three hides, then the diploma ---------------------------
INSERT INTO `quest_template`
(`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `LogTitle`, `LogDescription`, `QuestDescription`,
 `QuestCompletionLog`, `QuestSortID`, `QuestInfoID`, `Flags`,
 `RequiredItemId1`, `RequiredItemCount1`, `RequiredItemId2`, `RequiredItemCount2`,
 `RequiredItemId3`, `RequiredItemCount3`,
 `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`,
 `RewardItem1`, `RewardAmount1`, `RewardTitle`) VALUES
(9916201, 0, 60, 58, '三场巅峰狩猎',
 '将尼萨罗斯、风暴之牙和瓦尔莎拉的兽皮带给托瓦尔德·灰羽。',
 '我在这片大陆上追猎过三头野兽，每次都失败了。不是败给它们的牙齿，而是败给它们的耐心。尼萨罗斯盘踞在沉没的废墟里，让大海替它干活。风暴之牙奔跑在 Hinterlands 山脊上，从不停下脚步，让人打不中。瓦尔莎拉被食人魔猎杀了二十年，她学会了反击。把它们的兽皮带给我，而且必须是你亲手剥的。我会知道你是不是亲手剥的。',
 '回到暴风城矮人区的托瓦尔德·灰羽那里。', 0, 0, 0,
 1009103, 1, 1009101, 1, 1009102, 1,
 '潮汐扭曲的兽皮', '风暴之牙毛皮', '伤痕累累的枭兽皮',
 1009100, 1, 231),
(9916211, 0, 60, 58, '三场巅峰狩猎',
 '把尼萨罗斯、风暴之牙和瓦尔莎拉的兽皮带给祖尔卡。',
 '有三头野兽身上披着艾泽拉斯最好的皮。尼萨罗斯，那个淹死的家伙。他不追你，他等着，让水来杀人。风暴之牙，那头风暴座狼。他动起来像闪电，打起来也像。瓦尔莎拉，那头满身伤疤的母兽。食人魔猎了她二十年，现在她猎一切。杀了他们。自己剥皮。从猎人手里买来的皮不过是皮革。',
 '回到奥格瑞玛荣誉谷的祖尔卡那里。', 0, 0, 0,
 1009103, 1, 1009101, 1, 1009102, 1,
 '潮汐扭曲的兽皮', '风暴之牙毛皮', '伤痕累累的枭兽皮',
 1009100, 1, 231);

-- ---- who offers and who takes them ----------------------------------------
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(9916113, 9916200), (9916113, 9916201),
(9916114, 9916210), (9916114, 9916211);

INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(9916113, 9916200), (9916113, 9916201),
(9916114, 9916210), (9916114, 9916211);

-- ---- the hides drop only for someone on the hunt ---------------------------
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(9916214, 1009103, 0, 100, 1, 1, 0, 1, 1, 'Tide-Warped Hide, quest only'),
(9916212, 1009101, 0, 100, 1, 1, 0, 1, 1, 'Stormfang Pelt, quest only'),
(9916213, 1009102, 0, 100, 1, 1, 0, 1, 1, 'Scarred Owlcat Pelt, quest only');
