-- DB update 2026_07_15_01 -> 2026_07_15_02
--
DELETE FROM `gossip_menu_option` WHERE `MenuID` = 6626 AND `OptionID` = 0;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`) VALUES
(6626, 0, 0, '请告诉我那句暗语……', 0, 0, 0, 0, 0, 0, 0, '', 0);
