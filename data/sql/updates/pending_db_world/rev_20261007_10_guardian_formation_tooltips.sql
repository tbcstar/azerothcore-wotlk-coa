-- Every learnable Guardian ability that Spell.dbc column 24 (CasterAuraSpell)
-- gates behind a formation, republished with the requirement its tooltip never
-- had (#6742, #6743, #6744, #6745, #6746, #6748).
--
-- 504151 Knight's Calling, 800313 Brace, 500168 Raise Shield and 802283 Bastion
-- carry CasterAuraSpell 800317 (Tower Formation); 806220 Linebreaker and the
-- Advance and Hammer of Kings chains carry 803130 (Line Formation); the Battle
-- Rush, Spear Throw and Net Throw chains carry 803417 (Assault Formation).
-- Core enforces that field in Spell::CheckCasterAuras, so the abilities really
-- are unusable outside their formation - but the client renders no tooltip line
-- for CasterAuraSpell, and Stances/StancesNot are 0 on every spell published
-- here, so nothing told the player. Reporters of six separate issues hit the
-- same wall.
--
-- Four spells carrying the same field are left out because no client renders
-- their description: 707722 Turn The Blade 'Disarm' is cast by the server
-- itself (AscensionGuardianEvents.cpp), and 500746 Advance 'Stun', 803939 Hold
-- the Line 'SLS' and 802309 Net Throw 'Test' are unlearnable helper and test
-- ranks whose text duplicates the real ranks published below. 500746 is also
-- the only spell in the family that carries Stances bits (196608), so leaving
-- it out is what makes the sentence above true of every row here.
--
-- The repository already publishes this shape of requirement: the Runeshroud
-- runes in rev_20261003_00_coa_palm_sigil_runeshroud_tooltip.sql carry
-- '$?a500288[|cffffffff][|cffff3232]Requires Runeshroud|r' ahead of their own
-- text, white while the aura is up and red while it is not. Every row below
-- uses that prefix with the formation's own aura id and name, both read out of
-- the client's spell data rather than typed in.
--
-- The description body of each row is the client's own text, byte for byte;
-- only the requirement line is added. The client's Spell.dbc cannot be edited
-- from this repository, and AscensionCompat already streams these rows to the
-- client as SMSG_PATCH_SPELL, so no code change is involved.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (300927, 500168, 500170, 500257, 500463, 501546, 501547, 501548, 503127, 503128, 503129, 503130, 503131, 503132, 503133, 503134, 503344, 503345, 503346, 503347, 503348, 503349, 503350, 503351, 504151, 504693, 572142, 572143, 572144, 572145, 572146, 572147, 572821, 707170, 800313, 802188, 802197, 802198, 802283, 802304, 803132, 803830, 803895, 806220);
INSERT INTO `coa_client_spell_description` (`ID`,`Description`) VALUES
(300927,'$?a800317[|cffffffff][|cffff3232]需要塔盾阵型|r\r\n举起你的盾牌，反射在 $d 内对你施放的下一个有害法术。\r\n\r\n激活期间，被法术击中会恢复 $500493s1 点能量。'),
(500168,'$?a800317[|cffffffff][|cffff3232]需要塔盾阵型|r\r\n举起你的盾牌，使你的格挡几率$?s92105[ $s1%][]和格挡值提高$?s92105[$500613s1%][$s1%]，持续 $d。\r\n\r\n激活期间，格挡一次攻击会恢复 $500493s1 点能量。'),
(500170,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n移动速度提高 $s3%，免疫移动限制效果，并且 $d 内无法停止移动。\r\n\r\n短暂延迟后，你可以再次施放该技能践踏地面，对附近敌人造成 ${$m1+0+$AP*0.1} 点物理伤害。若未再次施放，你将在持续时间结束时践踏。'),
(500257,'$?a800317[|cffffffff][|cffff3232]需要塔盾阵型|r\r\n举起盾牌挑战你的目标，嘲讽他们 $d。'),
(500463,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n向敌人投掷一柄巨大的长矛，造成 ${$m1+0+$AP*0.665} 点物理伤害，并使任何治疗的效果降低 $804572s1%，持续 $804572d。'),
(501546,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n冲锋一个敌人，造成 ${$m2+0+$AP*0.09996} 点物理伤害并使其昏迷 $d。'),
(501547,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n冲锋一个敌人，造成 ${$m2+0+$AP*0.09996} 点物理伤害并使其昏迷 $d。'),
(501548,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n冲锋一个敌人，造成 ${$m2+0+$AP*0.09996} 点物理伤害并使其昏迷 $d。'),
(503127,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n|cff66ccff授予激励|r\r\n猛击地面，对附近敌人造成 ${$m1+0+$AP*0.4} 点物理伤害，受防御等级加成$?s572714[，并使他们的施法速度降低 $572714s1%，持续 $572714d][]。\r\n\r\n对受 |cffffffff线列阵型|r 影响的敌人造成 $803131s2% 额外伤害。'),
(503128,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n|cff66ccff授予激励|r\r\n猛击地面，对附近敌人造成 ${$m1+0+$AP*0.4} 点物理伤害，受防御等级加成$?s572714[，并使他们的施法速度降低 $572714s1%，持续 $572714d][]。\r\n\r\n对受 |cffffffff线列阵型|r 影响的敌人造成 $803131s2% 额外伤害。'),
(503129,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n|cff66ccff授予激励|r\r\n猛击地面，对附近敌人造成 ${$m1+0+$AP*0.4} 点物理伤害，受防御等级加成$?s572714[，并使他们的施法速度降低 $572714s1%，持续 $572714d][]。\r\n\r\n对受 |cffffffff线列阵型|r 影响的敌人造成 $803131s2% 额外伤害。'),
(503130,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n|cff66ccff授予激励|r\r\n猛击地面，对附近敌人造成 ${$m1+0+$AP*0.4} 点物理伤害，受防御等级加成$?s572714[，并使他们的施法速度降低 $572714s1%，持续 $572714d][]。\r\n\r\n对受 |cffffffff线列阵型|r 影响的敌人造成 $803131s2% 额外伤害。'),
(503131,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n|cff66ccff授予激励|r\r\n猛击地面，对附近敌人造成 ${$m1+0+$AP*0.4} 点物理伤害，受防御等级加成$?s572714[，并使他们的施法速度降低 $572714s1%，持续 $572714d][]。\r\n\r\n对受 |cffffffff线列阵型|r 影响的敌人造成 $803131s2% 额外伤害。'),
(503132,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n|cff66ccff授予激励|r\r\n猛击地面，对附近敌人造成 ${$m1+0+$AP*0.4} 点物理伤害，受防御等级加成$?s572714[，并使他们的施法速度降低 $572714s1%，持续 $572714d][]。\r\n\r\n对受 |cffffffff线列阵型|r 影响的敌人造成 $803131s2% 额外伤害。'),
(503133,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n|cff66ccff授予激励|r\r\n猛击地面，对附近敌人造成 ${$m1+0+$AP*0.4} 点物理伤害，受防御等级加成$?s572714[，并使他们的施法速度降低 $572714s1%，持续 $572714d][]。\r\n\r\n对受 |cffffffff线列阵型|r 影响的敌人造成 $803131s2% 额外伤害。'),
(503134,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n|cff66ccff授予激励|r\r\n猛击地面，对附近敌人造成 ${$m1+0+$AP*0.4} 点物理伤害，受防御等级加成$?s572714[，并使他们的施法速度降低 $572714s1%，持续 $572714d][]。\r\n\r\n对受 |cffffffff线列阵型|r 影响的敌人造成 $803131s2% 额外伤害。'),
(503344,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n移动速度提高 $s3%，免疫移动限制效果，并且 $d 内无法停止移动。\r\n\r\n短暂延迟后，你可以再次施放该技能践踏地面，对附近敌人造成 ${$m1+0+$AP*0.1} 点物理伤害。若未再次施放，你将在持续时间结束时践踏。'),
(503345,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n移动速度提高 $s3%，免疫移动限制效果，并且 $d 内无法停止移动。\r\n\r\n短暂延迟后，你可以再次施放该技能践踏地面，对附近敌人造成 ${$m1+0+$AP*0.1} 点物理伤害。若未再次施放，你将在持续时间结束时践踏。'),
(503346,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n移动速度提高 $s3%，免疫移动限制效果，并且 $d 内无法停止移动。\r\n\r\n短暂延迟后，你可以再次施放该技能践踏地面，对附近敌人造成 ${$m1+0+$AP*0.1} 点物理伤害。若未再次施放，你将在持续时间结束时践踏。'),
(503347,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n移动速度提高 $s3%，免疫移动限制效果，并且 $d 内无法停止移动。\r\n\r\n短暂延迟后，你可以再次施放该技能践踏地面，对附近敌人造成 ${$m1+0+$AP*0.1} 点物理伤害。若未再次施放，你将在持续时间结束时践踏。'),
(503348,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n移动速度提高 $s3%，免疫移动限制效果，并且 $d 内无法停止移动。\r\n\r\n短暂延迟后，你可以再次施放该技能践踏地面，对附近敌人造成 ${$m1+0+$AP*0.1} 点物理伤害。若未再次施放，你将在持续时间结束时践踏。'),
(503349,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n移动速度提高 $s3%，免疫移动限制效果，并且 $d 内无法停止移动。\r\n\r\n短暂延迟后，你可以再次施放该技能践踏地面，对附近敌人造成 ${$m1+0+$AP*0.1} 点物理伤害。若未再次施放，你将在持续时间结束时践踏。'),
(503350,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n移动速度提高 $s3%，免疫移动限制效果，并且 $d 内无法停止移动。\r\n\r\n短暂延迟后，你可以再次施放该技能践踏地面，对附近敌人造成 ${$m1+0+$AP*0.1} 点物理伤害。若未再次施放，你将在持续时间结束时践踏。'),
(503351,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n移动速度提高 $s3%，免疫移动限制效果，并且 $d 内无法停止移动。\r\n\r\n短暂延迟后，你可以再次施放该技能践踏地面，对附近敌人造成 ${$m1+0+$AP*0.1} 点物理伤害。若未再次施放，你将在持续时间结束时践踏。'),
(504151,'$?a800317[|cffffffff][|cffff3232]需要塔盾阵型|r\r\n拥抱你的使命，恢复 $s1% 的最大生命值和能量，每 $t1 秒重复一次，持续 $d。'),
(504693,'$?a800317[|cffffffff][|cffff3232]需要塔盾阵型|r\r\n移除并免疫迷惑和瘫痪效果，持续 $d，并恢复 $s2% 的最大生命值。'),
(572142,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n向敌人投掷一柄巨大的长矛，造成 ${$m1+0+$AP*0.665} 点物理伤害，并使任何治疗的效果降低 $804572s1%，持续 $804572d。'),
(572143,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n向敌人投掷一柄巨大的长矛，造成 ${$m1+0+$AP*0.665} 点物理伤害，并使任何治疗的效果降低 $804572s1%，持续 $804572d。'),
(572144,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n向敌人投掷一柄巨大的长矛，造成 ${$m1+0+$AP*0.665} 点物理伤害，并使任何治疗的效果降低 $804572s1%，持续 $804572d。'),
(572145,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n向敌人投掷一柄巨大的长矛，造成 ${$m1+0+$AP*0.665} 点物理伤害，并使任何治疗的效果降低 $804572s1%，持续 $804572d。'),
(572146,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n向敌人投掷一柄巨大的长矛，造成 ${$m1+0+$AP*0.665} 点物理伤害，并使任何治疗的效果降低 $804572s1%，持续 $804572d。'),
(572147,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n向敌人投掷一柄巨大的长矛，造成 ${$m1+0+$AP*0.665} 点物理伤害，并使任何治疗的效果降低 $804572s1%，持续 $804572d。'),
(572821,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n演奏一曲令人痛苦的旋律，造成 ${$m2+0+$AP*.42} 点魔法伤害，并使 $a1 码内敌人受到的所有治疗效果降低 $s1%，持续 $d。\r\n\r\n此外，你在 $572820d 内的下一个 |cffffffff歌谣|r 不消耗资源，并造成 $572820s2% 额外伤害。'),
(707170,'$?a800317[|cffffffff][|cffff3232]需要塔盾阵型|r\r\n招架 $d 内对你进行的下一次攻击。以此方式成功招架攻击会缴械敌人的近战武器，持续 $707722d。'),
(800313,'$?a800317[|cffffffff][|cffff3232]需要塔盾阵型|r\r\n巩固你的防御，使你受到的所有伤害降低 $s1%，并免疫昏迷效果，持续 $d。'),
(802188,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n你自动招架对你进行的下一次攻击。持续 5 次攻击或 $d。\r\n\r\n当你消耗一层充能时，你对攻击者造成 ${$m2+0} 点伤害，并恢复 ${$501535m1+$501535ppl1+$AP*1} 点生命值。'),
(802197,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n冲锋一个敌人，造成 ${$m2+0+$AP*0.09996} 点物理伤害并使其昏迷 $d。'),
(802198,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n立即摆脱任何定身或减速效果，并免疫移动减速效果，持续 $d。'),
(802283,'$?a800317[|cffffffff][|cffff3232]需要塔盾阵型|r\r\n举起你的盾牌，引领 $a1 码内的盟友，使他们的承受伤害降低 $s1%，持续 $d。'),
(802304,'$?a803417[|cffffffff][|cffff3232]需要突击阵型|r\r\n向敌人投掷一张加重网，将其定身 $d。激活期间，目标无法闪避攻击。'),
(803132,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n|cff66ccff授予激励|r\r\n猛击地面，对附近敌人造成 ${$m1+0+$AP*0.4} 点物理伤害，受防御等级加成$?s572714[，并使他们的施法速度降低 $572714s1%，持续 $572714d][]。\r\n\r\n对受 |cffffffff线列阵型|r 影响的敌人造成 $803131s2% 额外伤害。'),
(803830,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n命令附近盟友坚守阵线，使他们免疫瘫痪、迷惑、击退和抓取效果，持续 $d。'),
(803895,'$?a800317[|cffffffff][|cffff3232]需要塔盾阵型|r\r\n冲向一名盟友，拦截对其进行的下一次近战攻击，并使你对下一次攻击进行暴击格挡。持续 $d。'),
(806220,'$?a803130[|cffffffff][|cffff3232]需要线列阵型|r\r\n以巨大力量猛击敌人，摧毁任何伤害吸收或伤害免疫效果，并使他们的护甲降低 $s1%，持续 $d。');
