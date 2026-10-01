-- Conquest of Azeroth added eight quests to Northshire that this world has never carried. They run from
-- the abbey down into a Secret Inquisitorial Dungeon and up above the waterfall into Shadewell Spring,
-- and none of their quests, NPCs, objects or items exist here. This restores them.
--
-- WHERE EACH VALUE COMES FROM
--   quests, creatures, objects, items  the realm's own client cache, dataset release
--     data-cache-945cd3b8b0ce4a496586, cachedata/by-mode/conquest-of-azeroth/*.tsv.gz, fetched and
--     checksum-verified by apps/coa-world-content/archive.py. Names, models, health modifiers, quest
--     text, objectives, required targets, required items and rewards are copied, not invented.
--   object positions  the archive atlas addon-sighting layer for the first five, and the client's
--     QuestSuperTrack.dbc objective points for Lost Pages II-IV and the journal, idol and jewel, with z on
--     the floor the server itself computes from the CoA maps and vmaps.
--   creature positions  Moroi, Sister Alma, the injured guard and the Censor stand at their
--     QuestSuperTrack turn-in or objective points. The mobs are hand-placed on real floors around the
--     places the quests name: the murloc village huts and the upper river bank above the falls, the
--     ruined tower's hall, spiral ramp, roof and yard, the spiders in the ruined houses, dock and jail
--     cellar of Old Northshire Village ("what vermin have claimed its ruins"), and the Accursed Judges
--     (creaturecache 161708, its own display 4629) through the Secret Inquisitorial Dungeon's chambers,
--     hall and library gallery beside the relics ("the Dead guard them well"). Every spawn gives its
--     reason in its Comment.
--   NPC appearance  STAND-IN for five of them. The cache gives Bianca 652000, Moroi 652001, Sister
--     Alma 652002, the injured guard 652079 and the Theologian 652003, and none of those display ids
--     exists in the client. Until a capture supplies CoA's own looks they use resolvable stock displays:
--     Bianca 3344, Moroi 3253, Sister Alma 10909 (a translucent human woman, the Darrowshire Spirit),
--     the guard 3167 (Northshire Guard) sitting injured. The Theologian and his images are a human man
--     (display 49) dressed through creature_display_preset in the black priest robe and cowl of display
--     23655, restyled to a player skin and face: a dark priest for a follower of the abbess who taught "the
--     nature of the Shadow". No capture of his look exists, so race, gender and outfit are INFERRED.
--   spider look  STAND-IN. No source records an aura on the Shadewell Spider: the client cache has
--     no aura column at all, and the exil.es export leaves its spells and texture empty. Its display
--     955 is an ordinary MineSpider at 0.7 scale, fully opaque, so nothing in the data makes it dark.
--     It is reported as small, with a blue wispy shadow overlay, so it takes DisplayScale 0.33 and
--     aura 17327 Spirit Particles: a dummy-aura visual of infinite duration whose siblings are named
--     green, purple and red, leaving the unmarked one blue. It changes nothing but appearance.
--   quest givers and enders  from the quest text and the QuestSuperTrack turn-in points. Bianca
--     starts 1660000 ("Speak with Seminarian Moroi"); Moroi ends 1660000, 1660001 and 1660004 at
--     SuperTrack 8641 and gives 1660001 and 1660002. Sister Alma, "the spectral priestess", ends 1660002,
--     1660003 and 1660038 at SuperTrack 8648 and gives 1660003, 1660038 and 1660004, whose details are her
--     testimony ("the inquisitorial court summoned me to testify"). The injured guard gives and ends
--     1660005 at SuperTrack 8694. 1660036 starts from the Oracular Idol an oracle drops (itemcache
--     startquest); "Find someone at the Abbey" has no named NPC and no source places anyone at its
--     SuperTrack 8696 point, so Moroi, the abbey scholar of this storyline, ends it (INFERRED).
--
-- CHAIN from the text: Bookworm sends you to Moroi, who then shows you his book ("Go on, take a look");
-- 1660002 continues from it ("According to the book"); Alma is met at the end of 1660002 and gives the two
-- dungeon tasks; 1660004 follows the purification ("And so, the way remains shut"). 1660005 and 1660036
-- stand alone.
--
-- The Wayward Theologian is the questline miniboss. The cache carries the fight as four entries: 161713
-- the elite at 5.76x health, 161904 an elite image at 1.0x, and the invisible portals 161908/161909 (their
-- old subnames were "Portal 01" and "Portal 02"). His spells come from the archived MobSpells combat log
-- (zone Shadewell): Shadow Bolt 256737, Shadowfury 256486, Dark Reality 256762 and Shadow Shield 256763;
-- the images cast Shadow Bolt 256738 and the portals Portal 256761. Section 8 scripts the fight.
--
-- PLACEMENT IS OWNED BY THE GAME. This file is generated, and the generator reads the live world back
-- before it writes: every spawn in the blocks below, and the DisplayScale and auras of these creatures.
-- A regenerated file therefore carries the CoA Forge edits made in game instead of undoing them:
-- position, facing, wander, movement, respawn time, phase, and spawns added or deleted in game. Only a
-- seed that has never existed in game takes its inferred placement. Each Comment says which.
--
-- Re-applying this file rewrites only the spawns it lists, so an older copy puts back the placements it
-- recorded. Regenerate before the next worldserver start after any git operation that changes this file.
-- Regenerate and commit before starting the worldserver on a branch without this file: that start deletes
-- its row in `updates`, and the next start here applies the file again.
--
-- Spawn guid blocks: creature 9001000-9001999, gameobject 7910000-7910999. The worldserver hands
-- a new in-game spawn the next guid above the highest in use, which lands inside these blocks. The
-- Worldforged module owns gameobject guids 6900001-6999999 and deletes them outright.
-- Seed spawns deleted in game: creature 9001066, 9001067, 9001068, 9001070, 9001071, 9001072, 9001074; gameobject none.

-- ---------------------------------------------------------------------------
-- 1. Items
-- ---------------------------------------------------------------------------
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `BuyPrice`, `SellPrice`, `InventoryType`, `ItemLevel`, `RequiredLevel`, `maxcount`, `stackable`, `bonding`, `description`)
VALUES
(559130, 0, 0, '遗失的书页 I', 138854, 1, 2048, 0, 0, 0, 1, 0, 1, 1, 4, ''),
(559131, 0, 0, '遗失的书页 II', 138854, 1, 2048, 0, 0, 0, 1, 0, 1, 1, 4, ''),
(559132, 0, 0, '遗失的书页 III', 138854, 1, 2048, 0, 0, 0, 1, 0, 1, 1, 4, ''),
(559133, 0, 0, '遗失的书页 IV', 138854, 1, 2048, 0, 0, 0, 1, 0, 1, 1, 4, ''),
(559160, 0, 0, '先知的神谕宝珠', 137929, 1, 2048, 0, 0, 0, 1, 0, 3, 3, 4, '<失明的眼球表面闪烁着不确定未来的幻象：恶魔的暗影、异域的天空、冰封的荒原……以及火焰。一点余烬，点燃将世界焚毁的烈焰。>'),
(559176, 2, 7, '淬火钢剑', 15733, 2, 0, 11503, 55, 13, 7, 3, 1, 1, 1, ''),
(559182, 4, 1, '七美德披风', 38432, 3, 0, 1534, 30, 16, 3, 3, 0, 1, 1, '')
ON DUPLICATE KEY UPDATE `class` = VALUES(`class`), `subclass` = VALUES(`subclass`), `name` = VALUES(`name`), `displayid` = VALUES(`displayid`), `Quality` = VALUES(`Quality`), `Flags` = VALUES(`Flags`), `BuyPrice` = VALUES(`BuyPrice`), `SellPrice` = VALUES(`SellPrice`), `InventoryType` = VALUES(`InventoryType`), `ItemLevel` = VALUES(`ItemLevel`), `RequiredLevel` = VALUES(`RequiredLevel`), `maxcount` = VALUES(`maxcount`), `stackable` = VALUES(`stackable`), `bonding` = VALUES(`bonding`), `description` = VALUES(`description`);

-- ---------------------------------------------------------------------------
-- 2. Creatures
-- ---------------------------------------------------------------------------
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `rank`, `unit_class`, `unit_flags`, `type`, `lootid`, `AIName`, `MovementType`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `flags_extra`, `gossip_menu_id`)
VALUES
(161700, '比安卡·斯帕达', NULL, 5, 6, 0, 35, 2, 0, 1, 0, 7, 0, 'SmartAI', 0, 0.96, 1, 1, 1, 0, 0),
(161701, '莫罗伊·斯帕达', '北郡修道院神学院学生', 5, 6, 0, 35, 2, 0, 1, 0, 7, 0, '', 0, 0.98, 1, 1, 1, 0, 0),
(161702, '阿尔玛修女', '北郡古代女祭司', 5, 6, 0, 35, 2, 0, 1, 0, 6, 0, '', 0, 1.0, 1, 1, 1, 0, 0),
(161705, '受伤的北郡守卫', NULL, 5, 6, 0, 35, 3, 0, 1, 0, 7, 0, '', 0, 1.0, 1, 1, 1, 0, 62631),
(161716, '暗井鱼人', NULL, 4, 5, 0, 7, 0, 0, 1, 0, 7, 0, '', 0, 0.93, 1, 1, 1, 0, 0),
(161717, '暗井鱼人先知', NULL, 5, 6, 0, 7, 0, 0, 1, 0, 7, 161717, '', 0, 0.93, 1, 1, 1, 0, 0),
(161736, '迪菲亚掠夺者', NULL, 5, 6, 0, 14, 0, 0, 1, 0, 7, 0, '', 0, 0.93, 1, 1, 1, 0, 0),
(161707, '暗井蜘蛛', NULL, 4, 5, 0, 7, 0, 0, 1, 0, 1, 0, '', 0, 0.93, 1, 1, 1, 0, 0),
(161712, '被诅咒的监察官', NULL, 7, 7, 0, 14, 0, 1, 1, 0, 6, 0, '', 0, 2.79, 1, 1, 1, 0, 0),
(161708, '被诅咒的法官', NULL, 5, 6, 0, 14, 0, 0, 1, 0, 6, 0, '', 0, 0.93, 1, 1, 1, 0, 0),
(161713, '误入歧途的神学家', NULL, 7, 7, 0, 14, 0, 1, 1, 0, 7, 0, 'SmartAI', 0, 5.76, 1, 1, 1, 0, 0),
(161904, '误入歧途的神学家', NULL, 6, 6, 0, 14, 0, 1, 1, 0, 7, 0, 'SmartAI', 0, 1.0, 1, 1, 1, 64, 0),
(161711, '活体异端', NULL, 5, 6, 0, 14, 0, 0, 1, 0, 0, 0, 'SmartAI', 0, 1.0, 1, 1, 1, 0, 0),
(161703, '[KC] 隐藏路径', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, '', 0, 1, 1, 1, 1, 130, 0),
(161704, '[KC] 废墟庄园', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, '', 0, 1, 1, 1, 1, 130, 0),
(161714, '[KC] 地下城入口', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, 'SmartAI', 0, 1, 1, 1, 1, 130, 0),
(161715, '[KC] 净化遗物', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, '', 0, 1, 1, 1, 1, 130, 0),
(161824, '[KC] 净化法杖', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, '', 0, 1, 1, 1, 1, 130, 0),
(161825, '[KC] 净化神像', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, '', 0, 1, 1, 1, 1, 130, 0),
(161826, '[KC] 净化珠宝', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 10, 0, '', 0, 1, 1, 1, 1, 130, 0),
(161908, '误入歧途的神学家', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 9, 0, 'SmartAI', 0, 1, 1, 1, 1, 130, 0),
(161909, '误入歧途的神学家', NULL, 1, 1, 0, 35, 0, 0, 1, 33555202, 9, 0, 'SmartAI', 0, 1, 1, 1, 1, 130, 0)
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `minlevel` = VALUES(`minlevel`), `maxlevel` = VALUES(`maxlevel`), `exp` = VALUES(`exp`), `faction` = VALUES(`faction`), `npcflag` = VALUES(`npcflag`), `rank` = VALUES(`rank`), `unit_class` = VALUES(`unit_class`), `unit_flags` = VALUES(`unit_flags`), `type` = VALUES(`type`), `lootid` = VALUES(`lootid`), `AIName` = VALUES(`AIName`), `MovementType` = VALUES(`MovementType`), `HealthModifier` = VALUES(`HealthModifier`), `ManaModifier` = VALUES(`ManaModifier`), `ArmorModifier` = VALUES(`ArmorModifier`), `RegenHealth` = VALUES(`RegenHealth`), `flags_extra` = VALUES(`flags_extra`), `gossip_menu_id` = VALUES(`gossip_menu_id`);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (161700, 161701, 161702, 161705, 161716, 161717, 161736, 161707, 161712, 161708, 161713, 161904, 161711, 161703, 161704, 161714, 161715, 161824, 161825, 161826, 161908, 161909);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES
(161700, 0, 3344, 1, 1),
(161701, 0, 3253, 1, 1),
(161702, 0, 10909, 1, 1),
(161705, 0, 3167, 1, 1),
(161716, 0, 757, 1, 1),
(161717, 0, 1079, 1, 1),
(161736, 0, 4418, 1, 1),
(161707, 0, 955, 0.33, 1),
(161712, 0, 7555, 1, 1),
(161708, 0, 4629, 1, 1),
(161713, 0, 49, 1, 1),
(161904, 0, 49, 1, 1),
(161711, 0, 19110, 0.5, 1),
(161736, 1, 4419, 1, 1),
(161703, 0, 11686, 1, 1),
(161704, 0, 11686, 1, 1),
(161714, 0, 11686, 1, 1),
(161715, 0, 11686, 1, 1),
(161824, 0, 11686, 1, 1),
(161825, 0, 11686, 1, 1),
(161826, 0, 11686, 1, 1),
(161908, 0, 11686, 1, 1),
(161909, 0, 11686, 1, 1);

DELETE FROM `creature_display_preset` WHERE `entry` IN (161713, 161904);
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`, `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`, `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`)
VALUES
(161713, 49, 1, 0, 1, 1, 4, 4, 9, 3, 0, 0, 146782, 147800, 149777, 0, 3238, 155842, 0, 0, 0, 0),
(161904, 49, 1, 0, 1, 1, 4, 4, 9, 3, 0, 0, 146782, 147800, 149777, 0, 3238, 155842, 0, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (161705, 161707);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`)
VALUES
(161705, 0, 0, 1, 0, 0, 0, NULL),
(161707, 0, 0, 0, 1, 0, 0, '17327');

-- ---------------------------------------------------------------------------
-- 3. World objects
-- ---------------------------------------------------------------------------
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`)
VALUES
(96001, 2, 164, '污迹斑斑的便条', '', '', 0.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(685237, 10, 7717, '抓钩绳索', '', '', 0.075, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'go_coa_theologian_rope'),
(2300500, 3, 210, '遗失的书页 I', '', '', 1, 1689, 2300500, 0, 1, 0, 0, 0, 0, 1660001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', ''),
(2300501, 0, 300449, '地下城大门', '', '', 1, 0, 0, 5000, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(2300503, 3, 210, '遗失的书页 II', '', '', 1, 1689, 2300503, 0, 1, 0, 0, 0, 0, 1660001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', ''),
(2300504, 3, 210, '遗失的书页 III', '', '', 1, 1689, 2300504, 0, 1, 0, 0, 0, 0, 1660001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', ''),
(2300505, 3, 210, '遗失的书页 IV', '', '', 1, 1689, 2300505, 0, 1, 0, 0, 0, 0, 1660001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', ''),
(2300517, 3, 210, '遗失的书页 VI', '', '', 1, 1689, 2300517, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', ''),
(2300520, 10, 1029136, '女修道院长的日志', '', '', 1, 0, 1660003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'go_coa_abbess_relic'),
(2300521, 10, 87111, '女修道院长的法杖', '', '', 1.25, 0, 1660003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'go_coa_abbess_relic'),
(2300522, 10, 63523, '净化后的异端神像', '', '', 1.5, 0, 1660003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'go_coa_abbess_relic'),
(2300523, 10, 7075, '珠宝', '', '', 0.75, 0, 1660003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'go_coa_abbess_relic')
ON DUPLICATE KEY UPDATE `type` = VALUES(`type`), `displayId` = VALUES(`displayId`), `name` = VALUES(`name`), `IconName` = VALUES(`IconName`), `castBarCaption` = VALUES(`castBarCaption`), `size` = VALUES(`size`), `Data0` = VALUES(`Data0`), `Data1` = VALUES(`Data1`), `Data2` = VALUES(`Data2`), `Data3` = VALUES(`Data3`), `Data4` = VALUES(`Data4`), `Data5` = VALUES(`Data5`), `Data6` = VALUES(`Data6`), `Data7` = VALUES(`Data7`), `Data8` = VALUES(`Data8`), `Data9` = VALUES(`Data9`), `Data10` = VALUES(`Data10`), `Data11` = VALUES(`Data11`), `Data12` = VALUES(`Data12`), `Data13` = VALUES(`Data13`), `Data14` = VALUES(`Data14`), `Data15` = VALUES(`Data15`), `Data16` = VALUES(`Data16`), `Data17` = VALUES(`Data17`), `Data18` = VALUES(`Data18`), `Data19` = VALUES(`Data19`), `Data20` = VALUES(`Data20`), `Data21` = VALUES(`Data21`), `Data22` = VALUES(`Data22`), `Data23` = VALUES(`Data23`), `AIName` = VALUES(`AIName`), `ScriptName` = VALUES(`ScriptName`);

-- ---------------------------------------------------------------------------
-- 4. Quests
-- ---------------------------------------------------------------------------
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`)
VALUES
(1660000, 2, 6, 3, 9, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '书虫', '与比安卡·斯帕达的兄弟，神学院学生莫罗伊交谈。', '<一位女子向你打招呼，显然焦躁不安。她的眼中闪过愤怒与担忧交织的锐利神色。>$b$b抱歉，我不是有意要闹出动静，但是……我那个该死的兄弟，总是埋头在他的书堆里！我在这里喊了半天，嗓子都喊哑了，却毫无回应。卫兵已经警告过我，说我“扰乱修道院的安宁”，再有下次就不客气了。$b$b你能否进去一趟，就算要揪着耳朵，也把他给拖出来？我们的母亲已经奄奄一息，我长途跋涉来找他，就是为了让他回去见最后一面。这个不知感恩的混账。', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', ''),
(1660001, 2, 6, 3, 9, 0, 0, 0, 0, 0, 0, 0, 4, 15, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '知识腐化', '找回莫罗伊那本未归类手稿中遗失的书页，它们散落在修道院各处。', '来吧，看一眼。$b$b<莫罗伊指向那本吸引他注意的书：一本薄薄的、破旧的手稿，与它的读者倒有几分相似。>$b$b我在图书馆里偶然发现了它；修道院的记录里并没有这本书。我想它是某种编年史，记载着一位被指控为异端的老女修道院长。我匆忙之中弄丢了好几页。我一直在试图把它们拼回去，但还有些仍然缺失。$b$b你能否在修道院里找一找，帮我找回丢失的书页？这是一本禁书；如果被人发现我在不该探听的地方乱翻，他们就会把我送回老家……送回我姐姐那儿。$b$b行行好，帮帮我，好吗？', '', '回到莫罗伊那里。', 0, 0, 0, 0, 0, 0, 0, 0, 559130, 559131, 559132, 559133, 0, 0, 1, 1, 1, 1, 0, 0, '', '', '', ''),
(1660002, 2, -1, 3, 9, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '北郡废墟', '找到秘密审判庭地牢的地窖入口。', '去一趟女修道院长受审的地牢，也许能有所发现……$b$b根据书中的记载，如今已被废弃的北郡镇曾有一个通往审判庭地牢的秘密入口。$b$b我会在地图上给你标出来，但务必小心。那地方已经多年无人踏足……我可不愿去想，废墟里如今盘踞着什么样的害虫。', '', '与幽灵女祭司交谈。', 161714, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '已找到秘密审判庭地牢入口', '', '', ''),
(1660003, 2, -1, 3, 9, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 8, 0, 5571, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '被诅咒的修女会', '净化前任女修道院长的遗物，它们散落在秘密审判庭地牢各处。', '道路已被封闭。女修道院长诅咒了那些审判她的人，将他们束缚为不得安息的幽灵。$b$b那些死去的人仍被她的力量所禁锢。他们从她身上剥夺的尊严与财物，化作了枷锁。一句简单的祈祷。一个真诚的恳求。那就足够了……$b$b除非有人净化女修道院长的遗物——它们散落在这座地牢各处——否则他们永远无法安息。$b$b但亡者看守得十分严密。因此，道路依旧封闭。', '', '与阿尔玛修女交谈。', 161715, 161824, 161825, 161826, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '女修道院长的日志已净化', '女修道院长的法杖已净化', '异端神像已净化', '珠宝已净化'),
(1660004, 2, 6, 3, 9, 0, 2, 0, 0, 0, 0, 0, 7, 35, 0, 0, 0, 0, 0, 0, 8, 0, 559182, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '引向疯狂的言语', '找到通往瀑布顶端的隐藏路径，直面北郡前任女修道院长的罪孽。', '西蒂斯……曾是一场风暴。她的教义不合正统，甚至危险。许多学生因她而离开了教会。$b$b所以当审判庭传唤我作证时，我同意出面指证她。$b$b我得知她曾在瀑布上方的一座旧庄园里，与她最亲近的圈子举行秘密集会。在那些集会中，西蒂斯谈论圣光，谈论生，谈论死……$b$b还谈论暗影的本质。$b$b她的异端至今仍玷污着那片土地。但如果你要去那里，务必小心；她的追随者从来不少，而审判庭从未将他们一网打尽……', '', '回到莫罗伊那里，汇报你关于前任女修道院长及其罪行的发现。', 161703, 161704, 161713, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '已找到隐藏路径', '已发现废墟庄园', '已直面误入歧途的神学家', ''),
(1660005, 2, 6, 3, 9, 0, 0, 0, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '顺流而下的威胁', '击败潜伏在废墟塔楼中的迪菲亚，并削减瀑布上方、绳索桥对岸的暗井鱼人。', '我需要……帮助。$b$b<士兵的声音沙哑，因痛苦而哽咽。每一次皱眉都像一道新伤。>$b$b我奉命去寻找鱼人村落，消除他们的威胁。但如你所见，这条路对我并不友好。更糟的是：通往上游河流的唯一道路，正好穿过那座塔楼。$b$b<他虚弱地朝那座隐约可见的废墟建筑点了点头。>$b$b但你……你也许能完成我未能做到的事。$b$b解决盘踞在塔楼里的迪菲亚，削减瀑布上方的鱼人，你就是在帮我一个大忙，整个王国都会感谢你。', '', '回到受伤的守卫那里。', 161736, 161716, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '迪菲亚掠夺者已击杀', '暗井鱼人已击杀', '', ''),
(1660036, 2, 6, 3, 9, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '神谕神像', '从游荡在暗井泉的鱼人先知身上收集三个先知的神谕宝珠。', '<在剧烈死亡的痉挛与抽搐之后，鱼人瘫倒在湿润的泥土中，一颗球体滚落下来，停在了你的靴边。>$b$b<仔细一看，你意识到那根本不是什么普通珠宝；那是一颗眼球。它光滑的表面映出模糊的影像，与周围的世界并不相符。就好像……就好像它在向你展示尚未发生之事。>$b$b<也许你应该击倒其他先知，检查它们那怪异而失明的眼睛。>', '', '在修道院找个人分享你的发现。', 0, 0, 0, 0, 0, 0, 0, 0, 559160, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, '', '', '', ''),
(1660038, 2, -1, 3, 9, 0, 2, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 559176, 1, 559177, 1, 559178, 1, 559179, 1, 559180, 1, 559181, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '我们中最悲伤者', '在秘密审判庭地牢中击败被诅咒的监察官。', '他是火焰饥饿的奴隶，总是要求吞噬更多书籍。当再没有亵渎之言可烧时，他们便转向了神圣的典籍。$b$b火焰在他空洞的眼窝中燃烧；再也没有眼泪可流。$b$b唯有死亡才能让被诅咒的监察官解脱……', '', '回到阿尔玛修女那里。', 161712, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '')
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`), `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`), `QuestInfoID` = VALUES(`QuestInfoID`), `SuggestedGroupNum` = VALUES(`SuggestedGroupNum`), `RequiredFactionId1` = VALUES(`RequiredFactionId1`), `RequiredFactionId2` = VALUES(`RequiredFactionId2`), `RequiredFactionValue1` = VALUES(`RequiredFactionValue1`), `RequiredFactionValue2` = VALUES(`RequiredFactionValue2`), `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`), `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`), `RewardDisplaySpell` = VALUES(`RewardDisplaySpell`), `RewardSpell` = VALUES(`RewardSpell`), `RewardHonor` = VALUES(`RewardHonor`), `RewardKillHonor` = VALUES(`RewardKillHonor`), `StartItem` = VALUES(`StartItem`), `Flags` = VALUES(`Flags`), `RequiredPlayerKills` = VALUES(`RequiredPlayerKills`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`), `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`), `RewardItem3` = VALUES(`RewardItem3`), `RewardAmount3` = VALUES(`RewardAmount3`), `RewardItem4` = VALUES(`RewardItem4`), `RewardAmount4` = VALUES(`RewardAmount4`), `ItemDrop1` = VALUES(`ItemDrop1`), `ItemDropQuantity1` = VALUES(`ItemDropQuantity1`), `ItemDrop2` = VALUES(`ItemDrop2`), `ItemDropQuantity2` = VALUES(`ItemDropQuantity2`), `ItemDrop3` = VALUES(`ItemDrop3`), `ItemDropQuantity3` = VALUES(`ItemDropQuantity3`), `ItemDrop4` = VALUES(`ItemDrop4`), `ItemDropQuantity4` = VALUES(`ItemDropQuantity4`), `RewardChoiceItemID1` = VALUES(`RewardChoiceItemID1`), `RewardChoiceItemQuantity1` = VALUES(`RewardChoiceItemQuantity1`), `RewardChoiceItemID2` = VALUES(`RewardChoiceItemID2`), `RewardChoiceItemQuantity2` = VALUES(`RewardChoiceItemQuantity2`), `RewardChoiceItemID3` = VALUES(`RewardChoiceItemID3`), `RewardChoiceItemQuantity3` = VALUES(`RewardChoiceItemQuantity3`), `RewardChoiceItemID4` = VALUES(`RewardChoiceItemID4`), `RewardChoiceItemQuantity4` = VALUES(`RewardChoiceItemQuantity4`), `RewardChoiceItemID5` = VALUES(`RewardChoiceItemID5`), `RewardChoiceItemQuantity5` = VALUES(`RewardChoiceItemQuantity5`), `RewardChoiceItemID6` = VALUES(`RewardChoiceItemID6`), `RewardChoiceItemQuantity6` = VALUES(`RewardChoiceItemQuantity6`), `POIContinent` = VALUES(`POIContinent`), `POIx` = VALUES(`POIx`), `POIy` = VALUES(`POIy`), `POIPriority` = VALUES(`POIPriority`), `RewardTitle` = VALUES(`RewardTitle`), `RewardTalents` = VALUES(`RewardTalents`), `RewardArenaPoints` = VALUES(`RewardArenaPoints`), `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`), `RewardFactionOverride1` = VALUES(`RewardFactionOverride1`), `RewardFactionID2` = VALUES(`RewardFactionID2`), `RewardFactionValue2` = VALUES(`RewardFactionValue2`), `RewardFactionOverride2` = VALUES(`RewardFactionOverride2`), `RewardFactionID3` = VALUES(`RewardFactionID3`), `RewardFactionValue3` = VALUES(`RewardFactionValue3`), `RewardFactionOverride3` = VALUES(`RewardFactionOverride3`), `RewardFactionID4` = VALUES(`RewardFactionID4`), `RewardFactionValue4` = VALUES(`RewardFactionValue4`), `RewardFactionOverride4` = VALUES(`RewardFactionOverride4`), `RewardFactionID5` = VALUES(`RewardFactionID5`), `RewardFactionValue5` = VALUES(`RewardFactionValue5`), `RewardFactionOverride5` = VALUES(`RewardFactionOverride5`), `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`), `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`), `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`), `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`), `RequiredNpcOrGo4` = VALUES(`RequiredNpcOrGo4`), `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`), `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`), `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredNpcOrGoCount4` = VALUES(`RequiredNpcOrGoCount4`), `RequiredItemId1` = VALUES(`RequiredItemId1`), `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemId3` = VALUES(`RequiredItemId3`), `RequiredItemId4` = VALUES(`RequiredItemId4`), `RequiredItemId5` = VALUES(`RequiredItemId5`), `RequiredItemId6` = VALUES(`RequiredItemId6`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`), `RequiredItemCount2` = VALUES(`RequiredItemCount2`), `RequiredItemCount3` = VALUES(`RequiredItemCount3`), `RequiredItemCount4` = VALUES(`RequiredItemCount4`), `RequiredItemCount5` = VALUES(`RequiredItemCount5`), `RequiredItemCount6` = VALUES(`RequiredItemCount6`), `ObjectiveText1` = VALUES(`ObjectiveText1`), `ObjectiveText2` = VALUES(`ObjectiveText2`), `ObjectiveText3` = VALUES(`ObjectiveText3`), `ObjectiveText4` = VALUES(`ObjectiveText4`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (1660000, 1660001, 1660002, 1660003, 1660004, 1660005, 1660036, 1660038);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `PrevQuestID`, `SpecialFlags`)
VALUES
(1660000, 0, 0, 0, 0),
(1660001, 0, 0, 1660000, 0),
(1660002, 0, 0, 1660001, 0),
(1660003, 0, 0, 1660002, 0),
(1660004, 0, 0, 1660003, 0),
(1660005, 0, 0, 0, 0),
(1660036, 0, 0, 0, 0),
(1660038, 0, 0, 1660002, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (1660000, 1660001, 1660002, 1660003, 1660004, 1660005, 1660036, 1660038);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES
(1660000, '难道是我姐姐派你来的？$B$B我已经告诉过她现在不是好时机；不过说实话，应付她从来就没有好时机。$B$B总之，我正有个发现……让我完全沉浸其中。也许你有兴趣搭把手？'),
(1660001, '那么，我们这儿有什么？$B$B<莫罗伊急切地检查你带来的书页。>$B$B这填补了一些空白：那位被指控为异端的女修道院长受到了审判庭的审判并被逐出教会。难怪教会想把整件事从记录中抹去。他们居然忘了烧掉这本书，简直是奇迹。$B$B这不禁让人好奇，她究竟做了什么才招致这样的惩罚，对吧？'),
(1660002, '道路已封闭，凡人。$B$B地牢是亡者的家园，而亡者使之如此。$B$B生时为狱卒，死后为囚徒……我们所有人，都是她诅咒的受害者。$B$B道路已封闭。'),
(1660003, '诅咒……$B$B道路已经打开。我能感觉到；一道温暖的光芒在召唤我的灵魂前往他处。$B$B<女祭司看起来比之前更加清醒，更加有意识。>$B$B我曾被称为阿尔玛修女，北郡修道院的女祭司。$B$B你下来这里寻求知识。你不是第一个。但我相信你会是最后一个。$B$B很好。我会告诉你关于西蒂斯的事。'),
(1660004, '<莫罗伊专注地听着你的叙述。>$B$B他们说笔胜于剑，而西蒂斯……名字起得真贴切。它的意思是“渴望”。从你告诉我的来看，她是一个渴望真理与知识的女人。$B$B我可不认为那是罪过。$B$B这是我的计划，$N：我会和我姐姐一起回去，向母亲告别，然后在回修道院的路上，我会去你提到的那个地方看看，就是西蒂斯举行她最大胆集会的所在。$B$B“除了无知，别无黑暗。”我感谢你的警告，但在揭开真相之前，我的心无法安宁……无论你提到的风险有多大。'),
(1660005, '你做到了……<他喘着气。>$B$B我如此自豪地穿着这身军装，却不得不求助于军队之外的人，这让我感到羞愧。$B$B本该是我的职责去完成这件事，但如你所见，我连一瘸一拐地走回修道院的力气都没有了。$B$B暴风城欠你一声感谢，$C……我也是。'),
(1660036, '<牧师专注地听着你叙述事情的经过。>$B$B一个有趣的发现。$B$B说来奇怪……我们归于其名下的几乎每一位曾见过异象的圣人都患有某种形式的失明。$B$B无论如何<他把鱼人的眼睛扔进废料桶>只有圣光才知道未来会怎样。$B$B无论你以为从这些异端生物身上看到了什么，那都不过是欺骗。鱼人是对人类精神的侮辱。你最好把这好奇心收起来。'),
(1660038, '若无人满足其欲望，火焰无法永远燃烧。$B$B杀了他，你就解放了他。现在火焰只能满足于舔舐他的骨头，直到两者都化为尘土与灰烬。$B$B但这些房间所藏的不止尘土与灰烬……选择你的奖励吧，凡人。');

DELETE FROM `quest_request_items` WHERE `ID` IN (1660000, 1660001, 1660002, 1660003, 1660004, 1660005, 1660036, 1660038);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`)
VALUES
(1660000, ''),
(1660001, '你找到那些书页了吗？'),
(1660002, '道路已封闭……'),
(1660003, '道路依旧封闭，凡人……$B$B一场永恒的灵魂暗夜。'),
(1660004, '有什么发现吗？'),
(1660005, '别担心我；我无法跟随，但我仍能坚守阵地。'),
(1660036, '我能帮你什么吗，孩子？'),
(1660038, '你是否已赐予监察官死亡与自由？');

-- ---------------------------------------------------------------------------
-- 5. Who offers and who takes them back
-- ---------------------------------------------------------------------------
DELETE FROM `creature_queststarter` WHERE `quest` IN (1660000, 1660001, 1660002, 1660003, 1660004, 1660005, 1660036, 1660038);
INSERT INTO `creature_queststarter` (`id`, `quest`)
VALUES
(161700, 1660000),
(161701, 1660001),
(161701, 1660002),
(161702, 1660003),
(161702, 1660004),
(161705, 1660005),
(161702, 1660038);

DELETE FROM `creature_questender` WHERE `quest` IN (1660000, 1660001, 1660002, 1660003, 1660004, 1660005, 1660036, 1660038);
INSERT INTO `creature_questender` (`id`, `quest`)
VALUES
(161701, 1660000),
(161701, 1660001),
(161702, 1660002),
(161702, 1660003),
(161701, 1660004),
(161705, 1660005),
(161844, 1660036),
(161702, 1660038);

-- ---------------------------------------------------------------------------
-- 6. Loot
-- ---------------------------------------------------------------------------
DELETE FROM `creature_loot_template` WHERE `Entry` = 161717;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(161717, 559159, 0, 100, 0, 1, 0, 1, 1, '飞升计划北郡：暗井鱼人先知掉落神谕神像，可开启任务1660036（itemcache startquest）'),
(161717, 559160, 0, 100, 1, 1, 0, 1, 1, '飞升计划北郡：暗井鱼人先知掉落先知的神谕宝珠（creaturecache questItem1）');

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (2300500, 2300503, 2300504, 2300505, 2300517);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(2300500, 559130, 0, 100, 1, 1, 0, 1, 1, '飞升计划北郡：遗失的书页 I'),
(2300503, 559131, 0, 100, 1, 1, 0, 1, 1, '飞升计划北郡：遗失的书页 II'),
(2300504, 559132, 0, 100, 1, 1, 0, 1, 1, '飞升计划北郡：遗失的书页 III'),
(2300505, 559133, 0, 100, 1, 1, 0, 1, 1, '飞升计划北郡：遗失的书页 IV'),
(2300517, 559154, 0, 100, 0, 1, 0, 1, 1, '飞升计划北郡：遗失的书页 VI，可阅读的书页，无任务需要');

DELETE FROM `creature_questitem` WHERE `CreatureEntry` = 161717;
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`)
VALUES
(161717, 0, 559160);

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry` IN (2300500, 2300503, 2300504, 2300505, 2300517);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`)
VALUES
(2300500, 0, 559130),
(2300503, 0, 559131),
(2300504, 0, 559132),
(2300505, 0, 559133);

DELETE FROM `page_text` WHERE `ID` IN (50009, 50011, 50012, 50013);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`)
VALUES
(50009, '<岁月并未善待这本书，这一页上留下了岁月的痕迹。>$b$b“……因此，女修道院长被传唤至审判庭，这是大主教法奥的直接命令，她过去已经与他发生过不止一次冲突。”', 0),
(50011, '<岁月并未善待这本书，这一页上留下了岁月的痕迹。>$b$b“……当然，北郡的历史浸透着鲜血。已经决定，那座古老的审判庭地牢，虽然几乎未能保存下来，将作为审判我们那误入歧途的女修道院长的法庭。”', 0),
(50012, '<岁月并未善待这本书，这一页上留下了岁月的痕迹。>$b$b“……选择了谨慎行事。只需想象一下，如果消息传开，将会引起怎样的轩然大波，以及教会将面临怎样的猜疑：<北郡女修道院长，接受审判庭审判，被指控为异端并逐出教会。>”', 0),
(50013, '<岁月并未善待这本书，这一页上留下了岁月的痕迹。>$b$b“那个古老的村庄大部分仍是废墟。我认为，部落在这个山谷中所作所为的阴影仍然压在这些石头上。无论如何，这个地方很理想。女修道院长将被带到村庄，然后通过其中一座房子的地窖，被带入审判庭地牢，在那里接受审判。当然，我们已经知道判决：逐出教会。”', 0);

-- ---------------------------------------------------------------------------
-- 7. Spawns
-- ---------------------------------------------------------------------------
DELETE FROM `creature` WHERE `guid` IN (9001000, 9001001, 9001002, 9001003, 9001004, 9001005, 9001006, 9001007, 9001008, 9001009, 9001010, 9001011, 9001012, 9001013, 9001014, 9001015, 9001016, 9001017, 9001018, 9001019, 9001020, 9001021, 9001022, 9001023, 9001024, 9001025, 9001026, 9001027, 9001028, 9001029, 9001030, 9001031, 9001032, 9001033, 9001034, 9001035, 9001036, 9001037, 9001038, 9001039, 9001040, 9001041, 9001044, 9001045, 9001046, 9001047, 9001048, 9001049, 9001050, 9001051, 9001052, 9001053, 9001054, 9001055, 9001056, 9001057, 9001058, 9001059, 9001060, 9001061, 9001062, 9001063, 9001064, 9001065, 9001069, 9001073, 9001075, 9001076, 9001077, 9001078, 9001079, 9001080, 9001081, 9001082, 9001083, 9001084, 9001085, 9001086, 9001087);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9001000, 161701, 0, 0, 0, 1, 1, 0, -8900.59, -197.321, 81.941, 2.98, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, QuestSuperTrack 8641 turn-in point, inside the abbey at the bookshelf, reading'),
(9001001, 161700, 0, 0, 0, 1, 1, 0, -8896.2, -221.6, 80.406, 1.75, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, outside the abbey east wall calling for her brother, on the ground'),
(9001002, 161712, 0, 0, 0, 1, 1, 0, -8577.25, -258.368, 53.724, 1.22, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, QuestSuperTrack 8715 objective point, dungeon library beside the burning books'),
(9001003, 161716, 0, 0, 0, 1, 1, 0, -8528, -509.5, 147.358, 1.09, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, on the rock under the pool-corner hut, facing the pool'),
(9001004, 161716, 0, 0, 0, 1, 1, 0, -8534, -515, 144.671, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, path under the rock outcrop'),
(9001005, 161716, 0, 0, 0, 1, 1, 0, -8541, -510.5, 143.822, 1.571, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, shore in front of the first hut, facing the water'),
(9001006, 161716, 0, 0, 0, 1, 1, 0, -8545, -521, 145.03, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, lane between the shore huts and the back hut'),
(9001007, 161716, 0, 0, 0, 1, 1, 0, -8526.109, -492, 141.04205, 2.580434, 300, 4, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: placement read back from the game, in the spring pool'),
(9001008, 161716, 0, 0, 0, 1, 1, 0, -8564.5, -515.5, 144, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, waterline beside the small west hut'),
(9001009, 161716, 0, 0, 0, 1, 1, 0, -8572, -516, 144.46, 1.571, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, west end of the hut row at the shore, facing the water'),
(9001010, 161716, 0, 0, 0, 1, 1, 0, -8549.5, -529, 146.851, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, south of the back hut'),
(9001011, 161716, 0, 0, 0, 1, 1, 0, -8605, -498, 144.878, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, upper river, bank below the village'),
(9001012, 161716, 0, 0, 0, 1, 1, 0, -8614, -502, 148.831, 1.571, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, upper river, on the bank rise watching the water'),
(9001013, 161717, 0, 0, 0, 1, 1, 0, -8555.5, -523, 145.46, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, roaming the torch-lit huts'),
(9001014, 161717, 0, 0, 0, 1, 1, 0, -8592, -514.5, 146.686, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, roaming by the dead mule at the south huts'),
(9001015, 161717, 0, 0, 0, 1, 1, 0, -8631, -506, 144.304, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, upper river, roaming the bank toward the falls'),
(9001016, 161736, 0, 0, 0, 1, 1, 0, -8809.3, -385.3, 75.289, 3.83, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, ruined tower, hall floor by the bookshelf, facing into the hall'),
(9001017, 161736, 0, 0, 0, 1, 1, 0, -8822.3, -396.3, 75.289, 5.3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, ruined tower, hall floor at the inn table, facing it'),
(9001018, 161736, 0, 0, 0, 1, 1, 0, -8807.6, -391.4, 94.606, 3, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, ruined tower, on the spiral ramp landing, looking down the stairwell'),
(9001019, 161736, 0, 0, 0, 1, 1, 0, -8814, -396.1, 110.378, 5.86, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, ruined tower, roof by the supply sacks at the head of the rope bridge'),
(9001020, 161736, 0, 0, 0, 1, 1, 0, -8801.3, -402.3, 75.283, 0, 300, 12, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, ruined tower, patrolling the yard by the supply sacks'),
(9001021, 161736, 0, 0, 0, 1, 1, 0, -8831.3, -379.3, 75.283, 0, 300, 12, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, ruined tower, patrolling the south-west yard'),
(9001022, 161707, 0, 0, 0, 1, 1, 0, -8813.5, -287, 76.168, 4.97, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, inside the ruined south house between the grain sacks and the broken bed'),
(9001023, 161707, 0, 0, 0, 1, 1, 0, -8814, -301, 75.855, 5.74, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, inside the ruined south house by the crates beside the small table'),
(9001024, 161707, 0, 0, 0, 1, 1, 0, -8784, -295.5, 75.341, 2.68, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, inside the ruined north house under the table and chairs'),
(9001025, 161707, 0, 0, 0, 1, 1, 0, -8776.5, -296, 75.302, 2.16, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, north-east corner of the ruined north house by the jar'),
(9001026, 161707, 0, 0, 0, 1, 1, 0, -8831, -304, 74.118, 0.44, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, yard behind the ruined south house inside the broken fence corner'),
(9001027, 161707, 0, 0, 0, 1, 1, 0, -8800, -320.5, 70.52, 1.571, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, on the river dock among the crates and jars at its south end'),
(9001028, 161707, 0, 0, 0, 1, 1, 0, -8790, -276, 78.001, 6.11, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, north yard between the jail and the ruined north house by the leafless tree'),
(9001029, 161707, 0, 0, 0, 1, 1, 0, -8825.5, -318.5, 72.7, 4.712, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, river bank south of the dock by the lakeside bench and lantern'),
(9001030, 161707, 0, 0, 0, 1, 1, 0, -8811, -313, 71.436, 0, 300, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, west river bank below the ruined house, out of the river'),
(9001031, 161707, 0, 0, 0, 1, 1, 0, -8781, -321, 70.247, 0, 300, 10, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, on the river dock, out of the river'),
(9001032, 161707, 0, 0, 0, 1, 1, 0, -8756, -296, 66.522, 1.14, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, jail cellar, south end by the chained skeleton and rubble'),
(9001033, 161707, 0, 0, 0, 1, 1, 0, -8752, -260, 66.522, 4.8, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Old Northshire Village, jail cellar, north end by the second chained skeleton'),
(9001034, 161713, 0, 0, 0, 1, 1, 0, -8605.526, -568.5942, 145.11581, 1.1814015, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: placement read back from the game, ruined estate, top of the waterfall'),
(9001035, 161714, 0, 0, 0, 1, 1, 0, -8775.58, -278.45, 80.4, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: derived placement, at the Dungeon Door, credits the cellar entrance'),
(9001036, 161703, 0, 0, 0, 1, 1, 0, -8649, -479, 141.757, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: inferred placement, hidden path up to the falls'),
(9001037, 161704, 0, 0, 0, 1, 1, 0, -8574, -491, 140.506, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: inferred placement, ruined estate, credits the discovery'),
(9001038, 161715, 0, 0, 0, 1, 1, 0, -8644, -398, 55.2, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: inferred placement, dungeon interior, journal credit'),
(9001039, 161824, 0, 0, 0, 1, 1, 0, -8638.85, -404.45, 55.2, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: derived placement, dungeon interior, at the Abbess''s Staff'),
(9001040, 161825, 0, 0, 0, 1, 1, 0, -8635, -399, 55.2, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: inferred placement, dungeon interior, idol credit'),
(9001041, 161826, 0, 0, 0, 1, 1, 0, -8646, -408, 55.2, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: inferred placement, dungeon interior, jewel credit'),
(9001044, 161716, 0, 0, 0, 1, 1, 0, -8562, -530, 145.565, 1.571, 300, 5, 0, 80, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Forge: spawned in game'),
(9001045, 161702, 0, 0, 0, 1, 1, 0, -8748.82, -282.872, 66.522, 2.97, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: sourced placement, QuestSuperTrack 8648 turn-in point, the jail cellar below the hatch, facing the stairs'),
(9001046, 161705, 0, 0, 0, 1, 1, 0, -8852.27, -368.923, 70.334, 5.76, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: sourced placement, QuestSuperTrack 8694 turn-in point, sitting on the river bank facing the ruined tower'),
(9001047, 161716, 0, 0, 0, 1, 1, 0, -8580, -512, 144.561, 1.571, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, at the shore in front of the south huts, facing the water'),
(9001048, 161716, 0, 0, 0, 1, 1, 0, -8584, -525, 146.455, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, meadow behind the south huts'),
(9001049, 161716, 0, 0, 0, 1, 1, 0, -8575, -538, 145.211, 0, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, south edge under the tree canopy'),
(9001050, 161716, 0, 0, 0, 1, 1, 0, -8588, -541, 145.647, 0, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, south edge under the second tree canopy'),
(9001051, 161716, 0, 0, 0, 1, 1, 0, -8527, -528, 146.249, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, north-east corner below the cliff'),
(9001052, 161716, 0, 0, 0, 1, 1, 0, -8627, -504, 146.864, 1.571, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, upper river, on the rock at the river bend, watching the water'),
(9001053, 161716, 0, 0, 0, 1, 1, 0, -8641, -507, 144.802, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, upper river, bank upstream of the falls'),
(9001054, 161716, 0, 0, 0, 1, 1, 0, -8655, -502, 144.347, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, upper river, bank below the ridge path'),
(9001055, 161716, 0, 0, 0, 1, 1, 0, -8595, -530, 145.43, 0, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, meadow south of the south huts'),
(9001056, 161716, 0, 0, 0, 1, 1, 0, -8670, -493, 146.513, 2.22, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, upper river, bank above the falls, looking down the falls'),
(9001057, 161717, 0, 0, 0, 1, 1, 0, -8531, -523, 144.928, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, foot of the rock outcrop by the pool'),
(9001058, 161717, 0, 0, 0, 1, 1, 0, -8540, -532, 145.017, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, east meadow'),
(9001059, 161717, 0, 0, 0, 1, 1, 0, -8600, -521, 146.095, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, between the village and the river bank'),
(9001060, 161717, 0, 0, 0, 1, 1, 0, -8567, -536, 145.553, 0, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, south meadow'),
(9001061, 161717, 0, 0, 0, 1, 1, 0, -8601.5, -510, 147.318, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, upper river, bank top below the village'),
(9001062, 161717, 0, 0, 0, 1, 1, 0, -8645, -514, 147.243, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, upper river, slope above the bank'),
(9001063, 161717, 0, 0, 0, 1, 1, 0, -8584, -534, 145.555, 0, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, meadow south of the south huts'),
(9001064, 161717, 0, 0, 0, 1, 1, 0, -8575, -523, 145.392, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Shadewell village, meadow west of the hut row'),
(9001065, 161717, 0, 0, 0, 1, 1, 0, -8611, -519, 145.603, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, slope between the village and the river bank'),
(9001069, 161736, 0, 0, 0, 1, 1, 0, -8815.5, -384.4, 104.795, 3.66, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, ruined tower, guarding the top of the ramp where the hidden path begins'),
(9001073, 161736, 0, 0, 0, 1, 1, 0, -8840.5, -391, 75.283, 2.06, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, ruined tower, south edge of the yard watching the riverside approach'),
(9001075, 161708, 0, 0, 0, 1, 1, 0, -8727, -268, 62.256, 3.93, 300, 4, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, Secret Inquisitorial Dungeon, west bay of the first chamber below the cellar stair, facing the stair'),
(9001076, 161708, 0, 0, 0, 1, 1, 0, -8699, -296, 57.991, 1.571, 300, 4, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon, second chamber beside the chained skeleton on its east wall'),
(9001077, 161708, 0, 0, 0, 1, 1, 0, -8678, -302, 53.724, 1.571, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon, east cell of the south wing by the chained skeleton and the barrels'),
(9001078, 161708, 0, 0, 0, 1, 1, 0, -8679, -257, 53.724, 4.712, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon, west cell of the south wing by the iron maiden'),
(9001079, 161708, 0, 0, 0, 1, 1, 0, -8602, -262, 53.738, 4.06, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon hall, among the broken court seats facing the judges'' dais'),
(9001080, 161708, 0, 0, 0, 1, 1, 0, -8615, -282, 56.706, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon hall, on the judges'' dais beside the idol''s footlocker, facing its stairs'),
(9001081, 161708, 0, 0, 0, 1, 1, 0, -8630, -290, 53.768, 0.63, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon hall, south of the dais by the sunken rubble pit, facing the idol'),
(9001082, 161708, 0, 0, 0, 1, 1, 0, -8654, -322, 53.724, 1.571, 300, 3, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon hall, in the torture alcove among the coffin, rack and iron maiden beside the jewel'),
(9001083, 161708, 0, 0, 0, 1, 1, 0, -8606, -235, 53.724, 4.712, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon hall, among the coffins stacked at its west wall'),
(9001084, 161708, 0, 0, 0, 1, 1, 0, -8628, -345, 53.726, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon, mouth of the library gallery, facing the hall'),
(9001085, 161708, 0, 0, 0, 1, 1, 0, -8628, -388, 53.727, 1.571, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, library gallery, in the old court between its two busts'),
(9001086, 161708, 0, 0, 0, 1, 1, 0, -8632, -404, 53.728, 1.571, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, library gallery, guarding the Abbess''s Staff, facing the way in'),
(9001087, 161708, 0, 0, 0, 1, 1, 0, -8580, -302, 53.724, 3.142, 300, 5, 0, 1, 0, 1, 0, 0, 0, '', NULL, 0, 'CoA Northshire: hand placement, dungeon, north-east reading room between the round table and the bookshelves');

DELETE FROM `gameobject` WHERE `guid` IN (7910000, 7910001, 7910002, 7910003, 7910004, 7910005, 7910006, 7910007, 7910008, 7910009, 7910010, 7910011, 7910012, 7910013);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `Comment`)
VALUES
(7910000, 2300500, 0, 0, 0, 1, 1, -8912.93, -209.89, 82.99, 2.6, 0, 0, 0.963558, 0.267499, 30, 100, 1, '', 'CoA Northshire: observed atlas position for Lost Page I'),
(7910001, 2300517, 0, 0, 0, 1, 1, -8912.76, -208.82, 82.99, 5.45, 0, 0, 0.404647, -0.914473, 30, 100, 1, '', 'CoA Northshire: observed atlas position for Lost Page VI'),
(7910002, 2300501, 0, 0, 0, 1, 1, -8775.58, -278.45, 79.17, 3.141593, 0, 0, 1, 0, 120, 100, 1, '', 'CoA Northshire: hand placement, observed atlas position for Dungeon Door, turned to cover the stairwell opening'),
(7910003, 2300521, 0, 0, 0, 1, 1, -8638.85, -404.45, 53.93, 1.2, 0, 0, 0.564642, 0.825336, 120, 100, 1, '', 'CoA Northshire: placement read back from the game, Abbess''s Staff'),
(7910004, 96001, 0, 0, 0, 1, 1, -8906.66, -705.67, 70.67, 4.1, 0, 0, 0.887362, -0.461073, 120, 100, 1, '', 'CoA Northshire: observed atlas position for Smudged Note'),
(7910005, 2300503, 0, 0, 0, 1, 1, -8857.02, -187.281, 90.383, 0, 0, 0, 0, 1, 30, 100, 1, '', 'CoA Northshire: QuestSuperTrack 8643 position for Lost Page II, on the upper library floor'),
(7910006, 2300504, 0, 0, 0, 1, 1, -8881.75, -182.758, 82.27, 0, 0, 0, 0, 1, 30, 100, 1, '', 'CoA Northshire: placement read back from the game, Lost Page III'),
(7910007, 2300505, 0, 0, 0, 1, 1, -8857.35, -185.58, 83.119, 0, 0, 0, 0, 1, 30, 100, 1, '', 'CoA Northshire: QuestSuperTrack 8645 position for Lost Page IV, on the library desk'),
(7910008, 2300520, 0, 0, 0, 1, 1, -8575.76, -253.217, 53.723, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Northshire: QuestSuperTrack 8650 position for the Abbess’ Journal, in the burning books by the Censor'),
(7910009, 2300522, 0, 0, 0, 1, 1, -8619.05, -278.116, 57.693, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Northshire: QuestSuperTrack 8652 position for the Heretical Idol, on the footlocker on the table'),
(7910010, 2300523, 0, 0, 0, 1, 1, -8658.67, -318.016, 53.725, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Northshire: QuestSuperTrack 8653 position for the Jewel, beside the barrel in the dungeon hall'),
(7910011, 685237, 0, 0, 0, 1, 1, -8613.6, -565.5, 145.001, 2.094, 0, 0, 0.865927, 0.500171, 120, 100, 1, '', 'CoA Northshire: placement read back from the game, Grappling Hook Rope'),
(7910012, 685237, 0, 0, 0, 1, 1, -8602.55, -580, 145.72, 3.142, 0, 0, 1, -0.000204, 120, 100, 1, '', 'CoA Northshire: placement read back from the game, Grappling Hook Rope'),
(7910013, 685237, 0, 0, 0, 1, 1, -8600, -564, 146.19, 0, 0, 0, 0, 1, 120, 100, 1, '', 'CoA Northshire: placement read back from the game, Grappling Hook Rope');

-- ---------------------------------------------------------------------------
-- 8. The Wayward Theologian
-- ---------------------------------------------------------------------------
-- He melees, casts Shadow Bolt at his target and Shadowfury, a 5 second cast that stuns everyone within
-- 8 yards of him for 3 seconds. Every 30-60 seconds while unshielded he casts Dark Reality (4 seconds,
-- interruptible). When it completes he takes Shadow Shield (all damage taken -100%) and stands channelling
-- (rooted, no melee or spells) while a portal opens on each
-- raised deck of the ruins around him and one image steps onto each, rooted, casting Shadow Bolt or meleeing;
-- killing all three removes the shield and closes the portals, and the cycle can repeat. A rope by each deck
-- lifts players up without leaving combat. Repeat intervals follow the observed
-- casts (Shadowfury 5-32 s, Dark Reality 29-64 s); first casts and the Shadow Bolt pace are INFERRED. An
-- evade or his death clears the shield, portals, images and counter. Engaging him credits the ruined
-- estate, for a player who reached it without crossing the ridge trigger; his death credits players
-- within 30 yards.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (161713, 161904, 161908, 161909) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(161713, 0, 0, 0, 0, 1, 100, 0, 2000, 4000, 5000, 8000, 0, 0, 11, 256737, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - In combat, unshielded - Cast Shadow Bolt on his target'),
(161713, 0, 1, 0, 0, 1, 100, 0, 8000, 12000, 5000, 32000, 0, 0, 11, 256486, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - In combat, unshielded - Cast Shadowfury around himself'),
(161713, 0, 2, 0, 0, 1, 100, 0, 25000, 30000, 30000, 60000, 0, 0, 11, 256762, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - In combat, unshielded - Cast Dark Reality'),
(161713, 0, 3, 4, 8, 0, 100, 0, 256762, 0, 0, 0, 0, 0, 11, 256763, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - On Dark Reality completed - Cast Shadow Shield'),
(161713, 0, 4, 29, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Set phase 2 (shielded)'),
(161713, 0, 29, 30, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 103, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Root'),
(161713, 0, 30, 31, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Stop chasing'),
(161713, 0, 31, 32, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Stop melee'),
(161713, 0, 32, 100, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 468, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Channel while shielded'),
(161713, 0, 100, 101, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 161908, 8, 0, 0, 0, 0, 8, 0, 0, 0, 0, -8616, -573, 149.653, 0.399, 'Wayward Theologian - Linked - Open a portal on the south deck by the street lamp'),
(161713, 0, 101, 102, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 161904, 5, 0, 0, 0, 0, 8, 0, 0, 0, 0, -8616, -573, 149.653, 0.399, 'Wayward Theologian - Linked - Summon an image on the south deck by the street lamp'),
(161713, 0, 102, 103, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 161909, 8, 0, 0, 0, 0, 8, 0, 0, 0, 0, -8601.5, -585.8, 150.301, 1.801, 'Wayward Theologian - Linked - Open a portal on the east deck'),
(161713, 0, 103, 104, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 161904, 5, 0, 0, 0, 0, 8, 0, 0, 0, 0, -8601.5, -585.8, 150.301, 1.801, 'Wayward Theologian - Linked - Summon an image on the east deck'),
(161713, 0, 104, 105, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 161908, 8, 0, 0, 0, 0, 8, 0, 0, 0, 0, -8595.5, -568, 150.806, 3.2, 'Wayward Theologian - Linked - Open a portal on the north deck'),
(161713, 0, 105, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 161904, 5, 0, 0, 0, 0, 8, 0, 0, 0, 0, -8595.5, -568, 150.806, 3.2, 'Wayward Theologian - Linked - Summon an image on the north deck'),
(161713, 0, 9, 0, 0, 1, 100, 0, 15000, 20000, 60000, 75000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - In combat, unshielded - Say mercy'),
(161713, 0, 10, 0, 82, 0, 100, 0, 161904, 0, 0, 0, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - On image died - Add 1 to counter 1'),
(161713, 0, 11, 12, 77, 0, 100, 0, 1, 3, 0, 0, 0, 0, 28, 256763, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - On every image dead - Remove Shadow Shield'),
(161713, 0, 12, 13, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 63, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Reset counter 1'),
(161713, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Set phase 1 (unshielded)'),
(161713, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 204, 161908, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Close Portal 01'),
(161713, 0, 15, 33, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 204, 161909, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Close Portal 02'),
(161713, 0, 33, 34, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 103, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Unroot'),
(161713, 0, 34, 35, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Chase again'),
(161713, 0, 35, 36, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Melee again'),
(161713, 0, 36, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - End the channel'),
(161713, 0, 16, 17, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 256763, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - On evade - Remove Shadow Shield'),
(161713, 0, 17, 18, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 204, 161904, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Despawn the images'),
(161713, 0, 18, 19, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 204, 161908, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Close Portal 01'),
(161713, 0, 19, 20, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 204, 161909, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Close Portal 02'),
(161713, 0, 20, 37, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 63, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Reset counter 1'),
(161713, 0, 37, 38, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 103, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Unroot'),
(161713, 0, 38, 39, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Chase again'),
(161713, 0, 39, 40, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Melee again'),
(161713, 0, 40, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - End the channel'),
(161713, 0, 41, 42, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 256763, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - On reset - Remove Shadow Shield'),
(161713, 0, 42, 43, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Set phase 1 (unshielded)'),
(161713, 0, 43, 44, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 63, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Reset counter 1'),
(161713, 0, 44, 45, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 103, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Unroot'),
(161713, 0, 45, 46, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Chase again'),
(161713, 0, 46, 47, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Melee again'),
(161713, 0, 47, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - End the channel'),
(161713, 0, 21, 22, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 161704, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - On aggro - Credit the ruined estate'),
(161713, 0, 22, 23, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Set phase 1 (unshielded)'),
(161713, 0, 23, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Say pull'),
(161713, 0, 24, 25, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 161713, 0, 0, 0, 0, 0, 18, 30, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - On death - Credit the confrontation to players within 30 yards'),
(161713, 0, 25, 26, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 204, 161904, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Despawn the images'),
(161713, 0, 26, 27, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 204, 161908, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Close Portal 01'),
(161713, 0, 27, 28, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 204, 161909, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Close Portal 02'),
(161713, 0, 28, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian - Linked - Say death'),
(161904, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 103, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian image - On summoned - Root on its deck'),
(161904, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian image - Linked - Never chase'),
(161904, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 25, 60, 1, 0, 0, 0, 0, 0, 0, 'Wayward Theologian image - Linked - Attack the closest player within 60 yards'),
(161904, 0, 3, 0, 0, 0, 100, 0, 0, 1000, 5000, 5500, 0, 0, 11, 256738, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian image - In combat - Cast Shadow Bolt on its target'),
(161908, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 256761, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian Portal 01 - On summoned - Cast Portal'),
(161909, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 256761, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wayward Theologian Portal 02 - On summoned - Cast Portal');

-- ---------------------------------------------------------------------------
-- 9. Discovery and purify credit
-- ---------------------------------------------------------------------------
-- The cellar entrance credits a player who comes within 12 yards of the marker at the Dungeon Door. The
-- hidden path and the ruined estate are CoA's own client area triggers 6135 (the top of the ruined
-- tower's ramp) and 6136 (the ridge above the falls), at QuestSuperTrack 8654 and 8655; the client
-- reports them only when the server knows them. Each relic credits the player who uses it.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (161714, 161703, 161704) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(161714, 0, 0, 0, 10, 0, 100, 0, 1, 12, 1000, 1000, 1, 0, 33, 161714, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '[KC] Dungeon Entrance - OOC LOS player within 12 yards - Credit the cellar entrance');

DELETE FROM `areatrigger` WHERE `entry` IN (6135, 6136);
INSERT INTO `areatrigger` (`entry`, `map`, `x`, `y`, `z`, `radius`, `length`, `width`, `height`, `orientation`)
VALUES
(6135, 0, -8815.1, -384.625, 104.795, 0, 5, 5, 5, 0),
(6136, 0, -8706.04, -506.372, 154.213, 0, 10, 10, 5, 0);

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (6135, 6136);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`)
VALUES
(6135, 'SmartTrigger'),
(6136, 'SmartTrigger');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (6135, 6136) AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(6135, 2, 0, 0, 46, 0, 100, 0, 6135, 0, 0, 0, 0, 0, 33, 161703, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Areatrigger 6135 - On trigger - Credit the hidden path'),
(6136, 2, 0, 0, 46, 0, 100, 0, 6136, 0, 0, 0, 0, 0, 33, 161704, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Areatrigger 6136 - On trigger - Credit the ruined estate');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2300520, 2300521, 2300522, 2300523) AND `source_type` = 1;
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_coa_abbess_relic_prayer';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(256701, 'spell_coa_abbess_relic_prayer'),
(256726, 'spell_coa_abbess_relic_prayer');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `SourceEntry` IN (2300520, 2300521, 2300522, 2300523);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(30, 1, 2300520, 0, 0, 48, 0, 1660003, 0, 1, 1, 'Hide the journal once purified'),
(30, 1, 2300520, 0, 0, 8, 0, 1660003, 0, 0, 1, 'Keep the journal hidden after the reward'),
(30, 1, 2300521, 0, 0, 48, 0, 1660003, 1, 1, 1, 'Hide the staff once purified'),
(30, 1, 2300521, 0, 0, 8, 0, 1660003, 0, 0, 1, 'Keep the staff hidden after the reward'),
(30, 1, 2300522, 0, 0, 48, 0, 1660003, 2, 1, 1, 'Hide the idol once purified'),
(30, 1, 2300522, 0, 0, 8, 0, 1660003, 0, 0, 1, 'Keep the idol hidden after the reward'),
(30, 1, 2300523, 0, 0, 48, 0, 1660003, 3, 1, 1, 'Hide the jewel once purified'),
(30, 1, 2300523, 0, 0, 8, 0, 1660003, 0, 0, 1, 'Keep the jewel hidden after the reward');

-- Looting a Lost Page summons one Living Heresy (DESIGN). Each rope lifts its user onto its deck.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2300500, 2300503, 2300504, 2300505, 2300517) AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(2300500, 1, 0, 0, 70, 0, 100, 1, 2, 0, 0, 0, 0, 0, 12, 161711, 4, 60000, 0, 0, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost Page I - On looted, once per spawn - Summon a Living Heresy at the looter'),
(2300503, 1, 0, 0, 70, 0, 100, 1, 2, 0, 0, 0, 0, 0, 12, 161711, 4, 60000, 0, 0, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost Page II - On looted, once per spawn - Summon a Living Heresy at the looter'),
(2300504, 1, 0, 0, 70, 0, 100, 1, 2, 0, 0, 0, 0, 0, 12, 161711, 4, 60000, 0, 0, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost Page III - On looted, once per spawn - Summon a Living Heresy at the looter'),
(2300505, 1, 0, 0, 70, 0, 100, 1, 2, 0, 0, 0, 0, 0, 12, 161711, 4, 60000, 0, 0, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost Page IV - On looted, once per spawn - Summon a Living Heresy at the looter'),
(2300517, 1, 0, 0, 70, 0, 100, 1, 2, 0, 0, 0, 0, 0, 12, 161711, 4, 60000, 0, 0, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost Page VI - On looted, once per spawn - Summon a Living Heresy at the looter');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-7910011, -7910012, -7910013) AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 161711 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(161711, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 25, 15, 1, 0, 0, 0, 0, 0, 0, 'Living Heresy - On summoned - Attack the closest player within 15 yards');

-- His lines are INFERRED: no source records any speech or voice for him, so they carry no sound.
DELETE FROM `creature_text` WHERE `CreatureID` = 161713;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `comment`)
VALUES
(161713, 0, 0, '你是为西蒂斯而来的，对吧？那你已经走得太远了……接下来要发生的事，我很抱歉。', 12, 100, '误入歧途的神学家 - 拉怪（推断）'),
(161713, 1, 0, '我很抱歉。真的。但与你会走上的黑暗道路相比，你的死亡反倒是一种仁慈。', 12, 100, '误入歧途的神学家 - 战斗中盾牌阶段之间（推断）'),
(161713, 2, 0, '我求你……不要说出她的名字……不要读她的话……她的哲学……会要了你的命……', 12, 100, '误入歧途的神学家 - 死亡（推断）');

-- ---------------------------------------------------------------------------
-- 10. Bianca and the injured guard
-- ---------------------------------------------------------------------------
-- Bianca's yell is CoA's archived locale text; the guard's greeting is npccache 62631.
DELETE FROM `creature_text` WHERE `CreatureID` = 161700;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `comment`)
VALUES
(161700, 0, 0, '莫罗伊，我知道你在里面！我们没时间了。母亲也没时间了！出来，你这个无赖！', 14, 100, '比安卡·斯帕达 - 呼唤她的兄弟');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 161700 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(161700, 0, 0, 0, 10, 0, 100, 0, 2, 40, 60000, 120000, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bianca Spada - OOC LOS player within 40 yards - Yell for Moroi');

DELETE FROM `npc_text` WHERE `ID` IN (62631);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `Probability0`)
VALUES
(62631, '<士兵喘息着，拳头勉强攥住剑柄。他的手臂无力地垂着，肩膀被一支仍插在伤口上的箭杆彻底穿透。>$b$b北郡山谷本该是个安静的驻地……他们说，把我派驻到这里是“运气好”！$b$b<他把苦涩啐到地上，低吼道：>$b$b去他的。我不能死在这里。', '<士兵喘息着，拳头勉强攥住剑柄。他的手臂无力地垂着，肩膀被一支仍插在伤口上的箭杆彻底穿透。>$b$b北郡山谷本该是个安静的驻地……他们说，把我派驻到这里是“运气好”！$b$b<他把苦涩啐到地上，低吼道：>$b$b去他的。我不能死在这里。', 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (62631);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(62631, 62631);
