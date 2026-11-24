-- CoA: localize default chat channel names to zhCN (character DB)
-- Paired with the client-side ChatChannels.dbc override in patch-ZZZZZ.mpq.
-- Statements are idempotent: older Chinese names written by previous revisions are
-- folded into the current ones, so the update keeps working on an already-localized DB.
-- Clients cache the old names; leave them once (/chatleave Trade) or delete
-- WTF\Account\<account>\chat-cache.txt so the client rejoins with the new names.

UPDATE `channels` SET `name` = '飞升' WHERE `name` IN ('Ascension', '升天');
UPDATE `channels` SET `name` = '新手' WHERE `name` = 'Newcomers';
UPDATE `channels` SET `name` = '交易' WHERE `name` = 'Trade';
UPDATE `channels` SET `name` = '组队' WHERE `name` = 'LookingForGroup';
UPDATE `channels` SET `name` = '公会招募' WHERE `name` = 'GuildRecruitment';
UPDATE `channels` SET `name` = '区域' WHERE `name` IN ('Zone', 'Zone - %s');

UPDATE `channels_rights` SET `name` = '飞升' WHERE `name` IN ('Ascension', '升天');
UPDATE `channels_rights` SET `name` = '新手' WHERE `name` = 'Newcomers';
UPDATE `channels_rights` SET `name` = '交易' WHERE `name` = 'Trade';
UPDATE `channels_rights` SET `name` = '组队' WHERE `name` = 'LookingForGroup';
UPDATE `channels_rights` SET `name` = '公会招募' WHERE `name` = 'GuildRecruitment';
UPDATE `channels_rights` SET `name` = '区域' WHERE `name` IN ('Zone', 'Zone - %s');
