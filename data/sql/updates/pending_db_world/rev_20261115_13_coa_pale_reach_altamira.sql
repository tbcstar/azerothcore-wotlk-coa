-- Necrotic Witch Altamira (164432): best-effort look from hJ8SxNXfQZM 05:18 (blue troll woman, high blue hair,
-- bare arms, purple robe with ragged hem and gold shoulder trim) in place of the black ice troll male body.
-- Lines from realm footage: the harem yell on aggro, Scream louder near half health, the death say, and the
-- other three yells heard away from her fights (on a player kill here).
UPDATE `creature_template_model` SET `CreatureDisplayID` = 1479 WHERE `CreatureID` = 164432 AND `Idx` = 0;

DELETE FROM `creature_display_preset` WHERE (`entry`, `display_id`) IN ((164432, 1479));
INSERT INTO `creature_display_preset` (`entry`, `display_id`, `race`, `gender`, `class`, `skin`, `face`, `hair`,
    `haircolor`, `facialhair`, `guild_id`, `item_head`, `item_shoulders`, `item_body`, `item_chest`, `item_waist`,
    `item_legs`, `item_feet`, `item_wrists`, `item_hands`, `item_back`, `item_tabard`) VALUES
(164432, 1479, 8, 1, 8, 23, 0, 3, 6, 0, 0, 0, 0, 0, 14909, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_text` WHERE `CreatureID` = 164432;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`,
    `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(164432, 0, 0, '啊，暗夜之友送来的礼物。我的后宫又添灵魂了！', 14, 0, 100, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - Aggro'),
(164432, 1, 0, '死在墓里，倒真是合适……', 14, 0, 100, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - Killed Player'),
(164432, 1, 1, '沉睡之父正等着你呢！', 14, 0, 100, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - Killed Player'),
(164432, 1, 2, '我要把你的骨头加进我的藏骨堂！', 14, 0, 100, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - Killed Player'),
(164432, 2, 0, '叫得再响些！为我叫！', 14, 0, 100, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - 50% HP'),
(164432, 3, 0, '我感觉到了……他的……牙齿……啊啊啊！', 12, 0, 100, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - Death');

DELETE FROM `smart_scripts` WHERE (`entryorguid`,`source_type`) IN ((164432,0));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(164432, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - On Aggro - Yell Line 0'),
(164432, 0, 1, 0, 5, 0, 100, 0, 5000, 5000, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - On Killed Player - Yell Line 1'),
(164432, 0, 2, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - Between 0-50% Health - Yell Line 2 (No Repeat)'),
(164432, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Necrotic Witch Altamira - On Death - Say Line 3');
