-- Rounds drawn before the ZHCN translation stored the house entry under its
-- English display name. Normalise that value so the winner ledger reads in one
-- language.
UPDATE `coa_lottery_winner`
SET `winner_name` = '贸易亲王加里维克斯'
WHERE `winner_name` = 'Trade Prince Gallywix';
