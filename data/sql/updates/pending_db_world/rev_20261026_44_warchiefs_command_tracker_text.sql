-- The quest tracker text of two Warchief's Command call board quests still named their Cataclysm destinations.
-- It now matches the quest log text and the NPC that ends each quest.
UPDATE `quest_template` SET `QuestCompletionLog` = '向灰谷佐拉姆加前哨站的米苏瓦报到。' WHERE `ID` = 14231;
UPDATE `quest_template` SET `QuestCompletionLog` = '向贫瘠之地棘齿城的梅博克·米兹里克斯报到。' WHERE `ID` = 14233;
