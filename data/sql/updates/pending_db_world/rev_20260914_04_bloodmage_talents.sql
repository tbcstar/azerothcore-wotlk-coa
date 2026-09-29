-- Vampiric Pools retains native level-scaled base damage and health leech.
DELETE FROM `spell_bonus_data` WHERE `entry` = 806311;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(806311, 1, 0, 0, 0, '血法师 - 吸血鬼之池：100% 法术强度');
