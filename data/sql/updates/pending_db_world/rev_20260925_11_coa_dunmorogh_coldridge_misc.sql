-- CoA Coldridge Valley: Efry Cogspark's Nylrisa chain 254000-254002 with Mountaineer Tagnur and the two
-- security bots, six more Rockjaw Raiders in the Coldridge Pass tunnel, and Mountaineer Thalos on his CoA
-- post. Creature guids 9008400-9008479.

-- ---------------------------------------------------------------------------
-- 1. Creatures of the chain
-- ---------------------------------------------------------------------------
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `rank`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `ScriptName`)
VALUES
(254002, '巡山者塔格努尔', NULL, 932231, 57, 57, 0, 55, 3, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 7, 0, 0, '', 0, 5, 1, 1, 1, 2, ''),
(254004, '受损的安保机器人', NULL, 0, 1, 1, 0, 72, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 9, 0, 254004, '', 0, 2.232, 1, 1, 1, 0, ''),
(254005, '安保机器人 AN-32', NULL, 0, 1, 1, 0, 72, 0, 1, 1.14286, 20, 0, 2000, 2000, 1, 0, 2048, 9, 0, 254005, '', 0, 2.232, 1, 1, 1, 0, '');
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `gossip_menu_id` = VALUES(`gossip_menu_id`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `speed_walk` = VALUES(`speed_walk`), `speed_run` = VALUES(`speed_run`), `detection_range` = VALUES(`detection_range`), `rank` = VALUES(`rank`), `BaseAttackTime` = VALUES(`BaseAttackTime`), `RangeAttackTime` = VALUES(`RangeAttackTime`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `unit_flags2` = VALUES(`unit_flags2`), `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `ScriptName` = VALUES(`ScriptName`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (254002, 254004, 254005);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(254002, 0, 254000, 1, 1),
(254004, 0, 15200, 1, 1),
(254005, 0, 8369, 1, 1);

-- CoA displays 254000 (Tagnur) and 254001 (Efry, migration 07) lack model info; values of stock displays
-- of the same models (53, 5435).
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (254000, 254001);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
VALUES
(254000, 0.347, 1.5, 0, 0),
(254001, 0.3519, 1.725, 1, 0);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (254002, 254004, 254005);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`)
VALUES
(254002, 1, 2023, 0, 2552);

-- Greetings: npccache 52000 (Efry, template in migration 07) and 52001 (Tagnur).
DELETE FROM `npc_text` WHERE `ID` IN (52000, 52001);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`)
VALUES
(52000, '啊，我只需要换……不，不是那个。拜托！$B$B哦，嘿，我没看到你！不，我一切都很好，谢谢！……好吧，也许我确实需要点帮助。', '啊，我只需要换……不，不是那个。拜托！$B$B哦，嘿，我没看到你！不，我一切都很好，谢谢！……好吧，也许我确实需要点帮助。', 0, 0, 1),
(52001, '嗯，你好啊。这一带很危险，你最好小心点。', '嗯，你好啊。这一带很危险，你最好小心点。', 0, 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (932230, 932231);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932230, 52000),
(932231, 52001);

UPDATE `creature_template` SET `gossip_menu_id` = 932230, `npcflag` = `npcflag` | 1 WHERE `entry` = 254000;

-- ---------------------------------------------------------------------------
-- 2. Drops
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE `Entry` IN (254004, 254005);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(254004, 254000, 0, 100, 1, 1, 0, 1, 1, 'Damaged Security Bot - Security Bot AN-29 (254000)'),
(254005, 254001, 0, 100, 1, 1, 0, 1, 1, 'Security Bot AN-32 - Security Bot AN-32 (254001)');

DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (254004, 254005);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(254004, 0, 254000),
(254005, 0, 254001);

-- ---------------------------------------------------------------------------
-- 3. Quests
-- ---------------------------------------------------------------------------
-- Paragraph breaks from the AscensionES archive (dEN).
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `AllowableRaces`)
VALUES
(254000, 2, -1, 1, 132, 0, 0, 0, 0, 0, 0, 254001, 5, 0, 67, 0, 0, 0, 0, 0, 8, 0, 828, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '一个小失误', '在霜鬃营地中搜寻线索。', '哦，真是糟糕透顶！这下糟了……真的很糟……嘿，你！对，就是你！你想找份活儿干吗？好。我这有一个。好吧，冷静点艾弗里，冷静……$B$B事情是这样的，我在造一个机器人，想让它聪明点！我本来想让它慢一点的，抱歉。我造了一个机器人，智能自动安保守卫，简称奈尔丽莎。什么，你觉得我会到处管它叫IASG？才不呢！奈尔丽莎是我的骄傲和喜悦，她会塑造我们对科技的认知！她可能比你我都更擅长谋略！有奈尔丽莎守卫你的家，就算一队配合默契的冒险者都别想闯进去！$B$B至少……本来是这么打算的……$B$B奈尔丽莎失控了。她走了，不知道去了哪里，但以她的能力……这可真不妙。我是说，我差不多给了她控制其他机器人的能力……听着，这事本来不该发生的，好吗？她袭击了附近的霜鬃巨魔，看起来没做完，但也许她留下了什么。', '', '回到丹莫罗寒脊山谷的艾弗里·齿轮火花那里。', 0, 0, 0, 0, 0, 0, 0, 0, 254000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '搜寻奈尔丽莎下落的线索。', '', '', '', 1101),
(254001, 2, -1, 1, 132, 0, 0, 0, 0, 0, 0, 254002, 5, 0, 67, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '找到她了！', '在布伦纳尔村西南方搜寻奈尔丽莎。', '好了，我知道了！她甚至没走多远，就在寒脊山谷的南端。你最好在她离开之前赶过去，而且……你可能得摧毁她，但尽量不要损坏内部组件。我只需要搞清楚发生了什么，做些调整，一切都会好起来的，我发誓！$B$B但她现在仍然是个威胁，所以赶紧去把她关掉！我……之后再想剩下的。', '', '回到丹莫罗寒脊山谷的艾弗里·齿轮火花那里。', 0, 0, 0, 0, 0, 0, 0, 0, 254001, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '搜寻奈尔丽莎', '', '', '', 1101),
(254002, 2, 2, 1, 132, 0, 0, 0, 0, 0, 0, 254003, 5, 0, 67, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 5, 0, 54, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '斥候的请求', '杀死4名石颚袭击者，并在隧道另一端与巡山者塔格努尔会面。', '不知道奈尔丽莎是不是真的在针对霜鬃巨魔，但我现在没有其他线索，所以咱们去找那个流放者，看看她知不知道什么我们不知道的事。$B$B好吧，如果我是一个被流放的巨魔，我会在哪里？嗯，任何不是主要营地的地方吧。哦，这根本没法缩小范围，对吧？等等，我知道了，我从一个斥候那里听来的，也许他看到了更多！斥候穿过隧道往山上去了，你之前可能还路过他。去找他，问问他知道什么！$B$B我要去塞尔萨玛，看看那里的矮人有没有看到什么。你做完之后来那里找我，告诉我你有没有从那个巨魔嘴里问出什么，好吗？哦，呃，顺便把隧道里的穴居人清理一下，也许能让那个矮人更愿意聊天。还有，这样我才能过得去……', '', '与巡山者塔格努尔交谈', 1718, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 1101)
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`), `AllowableRaces` = VALUES(`AllowableRaces`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (254000, 254001, 254002);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `ProvidedItemCount`, `SpecialFlags`)
VALUES
(254000, 0, 0, 0, 0, 0),
(254001, 0, 0, 254000, 0, 0),
(254002, 0, 0, 254001, 0, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (254000, 254001, 254002);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(254000, '你找到了什么……让我看看！对，就是这个，这是她控制的一台机器人！嗯，信号是双向的，所以……给我一点时间……我应该能靠这个追踪到她的位置。'),
(254001, '另一台机器人？所以她不在那里？等等，那意味着……哦，这可真不妙。奈尔丽莎学会了如何重定向信号。把它发送到这个随便什么东西上，然后她就跑到谁也不知道的地方去了。$B$BHmm，我们需要另一个计划。你说你是在霜鬃营地附近找到这个的？我注意到一个规律……我们需要弄清楚她一直在做什么，而唯一知道的人就是霜鬃巨魔。那些……一看到我们就攻击的巨魔。不过，也许有一个我们可以问问。有些斥候谈到过一个，他脱离了部族。看起来甚至对他们很警惕。如果她警惕其他巨魔，那就意味着也许这个巨魔和他们合不来。一个流放者之类的。$B$B敌人的敌人就是我们的朋友，对吧？'),
(254002, '来问一个被流放的巨魔？嗯，我可能知道些类似的事。$B$B你把隧道清理干净了，是吧？这我可不确定，那些穴居人似乎总是会爬回来，但至少是个开始。行吧，这足够让我告诉你我看到了什么了，不过我不太确定你要这干嘛。流放与否，要我说，好巨魔就是死巨魔。');

DELETE FROM `quest_request_items` WHERE `ID` IN (254000, 254001, 254002);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(254000, '找到什么了吗？拜托，那里肯定有什么东西！'),
(254001, '呃，小心点，我说过，奈尔丽莎相当危险，所以……听着，我们没时间集结一支军队，所以这全得靠你了！$B$B别紧张……收回这句话，压力很大，全是压力，拜托，快行动！'),
(254002, '我相信他会告诉你的，但是，最好先把那些穴居人清理干净以确保万无一失……我真的不想等一个护卫送我去卡拉诺斯。');

DELETE FROM `creature_queststarter` WHERE `quest` IN (254000, 254001, 254002);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(254000, 254000),
(254000, 254001),
(254000, 254002);

DELETE FROM `creature_questender` WHERE `quest` IN (254000, 254001, 254002);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(254000, 254000),
(254000, 254001),
(254002, 254002);

-- ---------------------------------------------------------------------------
-- 4. Spawns: Tagnur, the two bots and the Coldridge Pass Raiders
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9008400, 9008401, 9008402, 9008410, 9008411, 9008412, 9008413, 9008414, 9008415) OR `guid` BETWEEN 9008400 AND 9008479;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9008400, 254002, 0, 0, 0, 1, 1, 1, -5923.73, 17.851, 366.15, 1.95, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Kharanos end of the Coldridge Pass road: the turn-in point ST1090 of 254002 (SOURCED-CLIENT, Questie 2.5 yd), at the north end of the ruined steam tank; faces up the road toward the pass exit, the way players come'),
(9008401, 254004, 0, 0, 0, 1, 1, 0, -6340.81, 802.589, 390.731, 3, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: foot of the pine slope east of the Frostmane Troll Whelp camp north of the troll cave: the objective point ST55 of 254000 (SOURCED-CLIENT, Questie 0.5 yd); faces the whelps it was sent against'),
(9008402, 254005, 0, 0, 0, 1, 1, 0, -6416.3, 452.161, 383.113, 6.02, 60, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: south end of the valley among the Ragged Timber Wolves: the objective point ST54 of 254001 (SOURCED-CLIENT; its z floats 1.8, so z is the terrain floor); faces up the valley toward Anvilmar, where players come from'),
(9008410, 1718, 0, 0, 0, 1, 1, 1, -6190, 122, 429.924, 3.84, 180, 0, 0, 71, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Coldridge Pass tunnel (Anvilmarpass.wmo floor), the bend 26 yd inside the west mouth, between the stock Raiders 326 and 323 and 36 yd from the Coldridge Mountaineers; faces down the corridor toward the mouth'),
(9008411, 1718, 0, 0, 0, 1, 1, 1, -6155, 116, 420.888, 2.38, 180, 0, 0, 71, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Coldridge Pass tunnel (Anvilmarpass.wmo floor), the upper chamber at the head of the ramp, between the stock Raiders 323 and 321; faces the bend where players come in'),
(9008412, 1718, 0, 0, 0, 1, 1, 1, -6160, 62, 413.138, 1.52, 180, 0, 0, 71, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Coldridge Pass tunnel (Anvilmarpass.wmo floor), main chamber, by the excavation tent and barrels, 15 yd west of the stock pair 318/1553; faces the foot of the ramp'),
(9008413, 1718, 0, 0, 0, 1, 1, 1, -6140, 72, 416.303, 2.14, 180, 4, 0, 71, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Coldridge Pass tunnel (Anvilmarpass.wmo floor), open middle of the main chamber, roaming between the tent and the east corridor; faces the ramp'),
(9008414, 1718, 0, 0, 0, 1, 1, 1, -6108, 65, 415.448, 2.93, 180, 0, 0, 71, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Coldridge Pass tunnel (Anvilmarpass.wmo floor), east corridor beside the dwarven brazier, between the stock Raiders 319 and 1556; faces back toward the main chamber'),
(9008415, 1718, 0, 0, 0, 1, 1, 1, -6090, 55, 412.618, 2.63, 180, 0, 0, 71, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Coldridge: Coldridge Pass tunnel (Anvilmarpass.wmo floor), east corridor halfway between the stock Raiders 1556 and 1562, 63 yd short of the caravan stop; faces back down the corridor');

-- ---------------------------------------------------------------------------
-- 5. Mountaineer Thalos on his CoA post
-- ---------------------------------------------------------------------------
-- Mountaineer Thalos (331) to the turn-in point ST1241 of 282; stock facing kept.
UPDATE `creature` SET `position_x` = -6240.28, `position_y` = 136.578, `position_z` = 430.929 WHERE `guid` = 331 AND `id` = 1965;
