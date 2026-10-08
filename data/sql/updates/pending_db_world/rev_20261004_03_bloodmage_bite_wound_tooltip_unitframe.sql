-- Bite Wound (706654) also carries a separate DBC ToolTip[enUS] string that the
-- client uses for the unit-frame debuff tooltip: "…equal to ${$532612w1}%…".
-- The 3.3.5 client cannot resolve that hidden server-side spell either, so the
-- debuff tooltip kept rendering 0% after the Description override. The stream
-- now supports an optional ToolTip override per spell; publish the same
-- resolved text here.
ALTER TABLE `coa_client_spell_description` ADD COLUMN `ToolTip` TEXT NULL AFTER `Description`;

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (706654);
INSERT INTO `coa_client_spell_description` (`ID`,`Description`,`ToolTip`) VALUES
(706654,'对目标进行自动攻击造成伤害时，现在会为你恢复相当于所造成伤害 50% 的生命值。','对目标进行自动攻击造成伤害时，现在会为你恢复相当于所造成伤害 50% 的生命值。');
