-- Hero (class 10) on top of the Hero base of rev_1790611408872048168: auto attack on the first action button,
-- the defenses and every armor and weapon proficiency. The Wildcard starting spells and weapons are granted on a
-- Wildcard Hero's first login (AscensionWildcard GiveStartingKit), so Freepick Heroes keep their kit.
START TRANSACTION;
DELETE FROM `playercreateinfo_action` WHERE `class` = 10;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT `race`, 10, 0, 6603, 0 FROM `playercreateinfo` WHERE `class` = 10;

-- Heroes wear every armor type and wield every weapon type.
DELETE FROM `playercreateinfo_spell_custom` WHERE `racemask` = 0 AND `classmask` = 512;
INSERT INTO `playercreateinfo_spell_custom` (`racemask`, `classmask`, `Spell`, `Note`) VALUES
(0, 512, 6603, '英雄：自动攻击'),
(0, 512, 81, '英雄：闪避'),
(0, 512, 3127, '英雄：招架'),
(0, 512, 107, '英雄：格挡'),
(0, 512, 674, '英雄：双武器'),
(0, 512, 3018, '英雄：射击'),
(0, 512, 2764, '英雄：投掷'),
(0, 512, 5019, '英雄：魔杖'),
(0, 512, 196, '英雄：单手斧'),
(0, 512, 197, '英雄：双手斧'),
(0, 512, 198, '英雄：单手锤'),
(0, 512, 199, '英雄：双手锤'),
(0, 512, 200, '英雄：长柄武器'),
(0, 512, 201, '英雄：单手剑'),
(0, 512, 202, '英雄：双手剑'),
(0, 512, 227, '英雄：法杖'),
(0, 512, 264, '英雄：弓'),
(0, 512, 266, '英雄：枪械'),
(0, 512, 1180, '英雄：匕首'),
(0, 512, 2567, '英雄：投掷武器'),
(0, 512, 5009, '英雄：魔杖'),
(0, 512, 5011, '英雄：弩'),
(0, 512, 15590, '英雄：拳套武器'),
(0, 512, 9078, '英雄：布甲'),
(0, 512, 9077, '英雄：皮甲'),
(0, 512, 8737, '英雄：锁甲'),
(0, 512, 750, '英雄：板甲'),
(0, 512, 9116, '英雄：盾牌');

DELETE FROM `playercreateinfo_item` WHERE `race` = 0 AND `class` = 10;
COMMIT;
