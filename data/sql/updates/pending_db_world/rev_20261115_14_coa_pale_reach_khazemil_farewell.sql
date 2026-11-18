-- The Farewell Ceremony: Patriarch Khazemil (164455) speaks his eulogy before "Khazemil informed" (RIEMlZSgbQw
-- 08:52:31-08:53:02); Bishop Beorn (164454) gains his missing "His fist..." line and his footage spacing
-- (MD0GT_RsHQs 01:58:00-01:58:30). Both start about 1 s after the gossip closes and credit 2 s after the last line.
DELETE FROM `creature_text` WHERE `CreatureID` IN (164454, 164455);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`,
    `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(164454, 0, 0, '我们在此聚集，向丹卡扎德的勇士霍尔多尔·石拳的灵魂告别。', 12, 0, 100, 0, 0, 0, 0, 0, 'Bishop Beorn - Farewell Ceremony sermon'),
(164454, 1, 0, '他的拳头或许坚如磐石，心却轻若鸿毛。', 12, 0, 100, 0, 0, 0, 0, 0, 'Bishop Beorn - Farewell Ceremony sermon'),
(164454, 2, 0, '因此，正如圣光将他的灵魂托举至苍穹之巅，我们亦献上祈祷，与他同行。', 12, 0, 100, 0, 0, 0, 0, 0, 'Bishop Beorn - Farewell Ceremony sermon'),
(164454, 3, 0, '越过痛苦与悲伤。去往那处唯有极乐与安宁之地。', 12, 0, 100, 0, 0, 0, 0, 0, 'Bishop Beorn - Farewell Ceremony sermon'),
(164454, 4, 0, '蒙圣光恩典，他已与神圣合为一体。', 12, 0, 100, 0, 0, 0, 0, 0, 'Bishop Beorn - Farewell Ceremony sermon'),
(164455, 0, 0, '霍尔多尔，汉戈尔之子，霍纳戈尔之孙。你配得上石拳这个姓氏的传承。', 12, 0, 100, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Farewell Ceremony eulogy'),
(164455, 1, 0, '你的后继者为你哀悼。你的先祖在父辈的殿堂里张开双臂迎接你，有朝一日我们也将在那里重聚。', 12, 0, 100, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Farewell Ceremony eulogy'),
(164455, 2, 0, '活着的人会珍藏对你的记忆，直到他们生命的尽头，直到世界的尽头……', 12, 0, 100, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Farewell Ceremony eulogy'),
(164455, 3, 0, '或者，直到创造我们的造物主归来，为生者与死者一同锻造新的身躯。', 12, 0, 100, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Farewell Ceremony eulogy'),
(164455, 4, 0, '在那之前，霍尔多尔，汉戈尔之子，霍纳戈尔之孙。愿你的传承长存。', 12, 0, 100, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Farewell Ceremony eulogy');

DELETE FROM `smart_scripts` WHERE (`entryorguid`,`source_type`) IN ((16445400,9),(164455,0),(16445500,9));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(16445400, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bishop Beorn - Sermon - Say Line 0'),
(16445400, 9, 1, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bishop Beorn - Sermon - Say Line 1'),
(16445400, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bishop Beorn - Sermon - Say Line 2'),
(16445400, 9, 3, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bishop Beorn - Sermon - Say Line 3'),
(16445400, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bishop Beorn - Sermon - Say Line 4'),
(16445400, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, 0, 33, 164454, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bishop Beorn - Sermon - Credit Beorn informed'),
(164455, 0, 0, 0, 62, 0, 100, 0, 100711, 0, 0, 0, 0, 0, 33, 164455, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - On Gossip Option 0 - Credit Creed of the Pantheon'),
(164455, 0, 1, 0, 62, 0, 100, 0, 100711, 1, 0, 0, 0, 0, 33, 164534, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - On Gossip Option 1 - Credit tenets of the Creed'),
(164455, 0, 2, 3, 62, 0, 100, 0, 100711, 2, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - On Gossip Option 2 - Close Gossip'),
(164455, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 80, 16445500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Linked - Run Farewell Ceremony eulogy'),
(16445500, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Eulogy - Say Line 0'),
(16445500, 9, 1, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Eulogy - Say Line 1'),
(16445500, 9, 2, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Eulogy - Say Line 2'),
(16445500, 9, 3, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Eulogy - Say Line 3'),
(16445500, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Eulogy - Say Line 4'),
(16445500, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, 0, 33, 164455, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Patriarch Khazemil - Eulogy - Credit Khazemil informed');
