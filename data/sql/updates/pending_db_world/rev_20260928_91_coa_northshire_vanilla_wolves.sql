-- Northshire wolves, Wolves Across the Border (33) and Eagan Peltskinner (5261) as in CoA: vanilla wolves, Tough Wolf Meat
UPDATE `creature_template` SET `name` = '森林狼' WHERE `entry` = 69;
UPDATE `creature_template` SET `name` = '幼狼' WHERE `entry` = 299;
UPDATE `creature_template_model` SET `CreatureDisplayID` = 604 WHERE `CreatureID` = 69 AND `Idx` = 0;
UPDATE `creature_template_model` SET `CreatureDisplayID` = 447 WHERE `CreatureID` = 299 AND `Idx` = 0;
UPDATE `creature_template_addon` SET `auras` = NULL WHERE `entry` IN (69, 299) AND `auras` = '71764';
UPDATE `creature_loot_template` SET `Item` = 750 WHERE `Entry` IN (69, 299) AND `Item` = 50432;
UPDATE `creature_questitem` SET `ItemId` = 750 WHERE `CreatureEntry` IN (69, 299) AND `ItemId` = 50432;
UPDATE `quest_template` SET `RequiredItemId1` = 750,
`LogDescription` = '将8块硬狼肉带给北郡修道院外的伊根·皮剥者。',
`QuestDescription` = '我讨厌那些讨厌的森林狼！但我确实喜欢吃狼排……给我带硬狼肉来，我会用对你有用的东西跟你交换。$B$B硬狼肉可以从猎杀在北郡乡间游荡的森林狼和幼狼身上获得。'
WHERE `ID` = 33;
UPDATE `quest_request_items` SET `CompletionText` = '嘿 $N。猎狼进展如何？' WHERE `ID` = 33;
UPDATE `quest_template` SET `QuestDescription` = '伊根·皮剥者正在找人替他猎狼。这是个好消息，因为最近我们在北郡山谷看到了更多的狼。' WHERE `ID` = 5261;
