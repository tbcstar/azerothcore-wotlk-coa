-- CoA: localize default chat channel names to zhCN (character DB)
-- Must be paired with the client-side ChatChannels.dbc override in patch-ZH.mpq.
-- Clients keep the old English names in their chat cache; leave those channels once
-- (/chatleave Trade) so the client rejoins under the new names.

UPDATE `channels` SET `name` = '交易'          WHERE `name` = 'Trade';
UPDATE `channels` SET `name` = '组队'          WHERE `name` = 'LookingForGroup';
UPDATE `channels` SET `name` = '公会招募'      WHERE `name` = 'GuildRecruitment';
UPDATE `channels` SET `name` = '新手'          WHERE `name` = 'Newcomers';
UPDATE `channels` SET `name` = '飞升'          WHERE `name` = 'Ascension';

UPDATE `channels_rights` SET `name` = '交易'     WHERE `name` = 'Trade';
UPDATE `channels_rights` SET `name` = '组队'     WHERE `name` = 'LookingForGroup';
UPDATE `channels_rights` SET `name` = '公会招募' WHERE `name` = 'GuildRecruitment';
UPDATE `channels_rights` SET `name` = '新手'     WHERE `name` = 'Newcomers';
UPDATE `channels_rights` SET `name` = '飞升'     WHERE `name` = 'Ascension';
