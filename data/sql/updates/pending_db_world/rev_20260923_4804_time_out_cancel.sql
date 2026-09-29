DELETE FROM `spell_linked_spell`
WHERE `spell_trigger` IN (-802229, -803896, -803897) AND `spell_effect` = -802228 AND `type` = 0;

INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-802229, -802228, 0, '暂停！等级 1 - 当主光环被移除时移除停滞'),
(-803896, -802228, 0, '暂停！等级 2 - 当主光环被移除时移除停滞'),
(-803897, -802228, 0, '暂停！等级 3 - 当主光环被移除时移除停滞');
