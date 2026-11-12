-- Ideals Are Poison (175035): the five clue lines from rev_20261027_27 were written for the port; they now read as on
-- the live realm (DuWTvw19xtg_003556, 003632, 003708, 003740, 003756 and i5vATMYui0I_010612, 010916).
-- The footprints clue breaks after its second sentence there, which keeps it on screen.
UPDATE `creature_text` SET `Text` = '缠在灌木上的温热毛皮。折断的枝条似乎表明，这里曾有过一阵突然而猛烈的动作。' WHERE `CreatureID` = 164511 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `Text` = '一条穿过灌丛的临时小径。好几处的草皮都被掀了起来。' WHERE `CreatureID` = 164511 AND `GroupID` = 1 AND `ID` = 0;
UPDATE `creature_text` SET `Text` = '一面被遗弃的破损盾牌。上面几乎没长苔藓，说明它躺在这里的时间并不长。' WHERE `CreatureID` = 164511 AND `GroupID` = 2 AND `ID` = 0;
UPDATE `creature_text` SET `Text` = '一串混乱难辨的脚印。它们彼此汇聚、分离，又围着对方绕出圈圈。\n干掉的泥浆把这幕情景定了格；你运气不错，雨水还没把它冲掉。' WHERE `CreatureID` = 164511 AND `GroupID` = 3 AND `ID` = 0;
UPDATE `creature_text` SET `Text` = '这血可能属于任何动物。纯属巧合。可有什么在告诉你，这是那两兄弟之一的血。' WHERE `CreatureID` = 164511 AND `GroupID` = 4 AND `ID` = 0;
