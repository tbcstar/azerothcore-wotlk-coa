-- CoA: localize default chat channel names to zhCN (character DB)
-- Paired with the client-side ChatChannels.dbc override in patch-ZZZZZ.mpq.
-- The two sides must match byte for byte: the client sends the channel name from
-- ChatChannels.dbc and the server looks it up in `channels` by name, so an English
-- server row plus a Chinese client row makes the message get dropped silently.
--
-- Statements are idempotent: older Chinese names written by previous revisions are
-- folded into the current ones, so the update keeps working on an already-localized DB.
--
-- Zone channels are deliberately NOT renamed: their name is built per zone at runtime
-- (the "Zone - %s" pattern), they already work with the localized client table, and
-- renaming the template row would only break the join.
--
-- Clients cache the old names; delete
-- WTF\Account\<account>\<realm>\<character>\chat-cache.txt so the client rejoins
-- with the new names.

UPDATE `channels` SET `name` = '飞升' WHERE `name` IN ('Ascension', '升天');
UPDATE `channels` SET `name` = '新手' WHERE `name` = 'Newcomers';
UPDATE `channels` SET `name` = '交易' WHERE `name` = 'Trade';
UPDATE `channels` SET `name` = '组队' WHERE `name` = 'LookingForGroup';
UPDATE `channels` SET `name` = '公会招募' WHERE `name` = 'GuildRecruitment';

UPDATE `channels_rights` SET `name` = '飞升' WHERE `name` IN ('Ascension', '升天');
UPDATE `channels_rights` SET `name` = '新手' WHERE `name` = 'Newcomers';
UPDATE `channels_rights` SET `name` = '交易' WHERE `name` = 'Trade';
UPDATE `channels_rights` SET `name` = '组队' WHERE `name` = 'LookingForGroup';
UPDATE `channels_rights` SET `name` = '公会招募' WHERE `name` = 'GuildRecruitment';
