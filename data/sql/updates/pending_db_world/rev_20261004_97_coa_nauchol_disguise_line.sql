-- Sage Nauchol sizes up the player he dresses in the Grimtotem Disguise for Death and Justice (1660033).
DELETE FROM `creature_text` WHERE `CreatureID` = 161819 AND `GroupID` = 0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(161819, 0, 0, '你看起来几乎像我们中的一员了。是的。这样就行……只要你的态度不暴露你。记住：抬起下巴，眼里充满傲慢！', 12, 0, 100, 0, 0, 0, 0, 0, 'Sage Nauchol - Grimtotem Disguise given');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 161819 AND `source_type` = 0 AND `id` = 4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(161819, 0, 4, 0, 62, 0, 100, 0, 932450, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sage Nauchol - On Gossip Option 0 Selected - Say Line 0');
