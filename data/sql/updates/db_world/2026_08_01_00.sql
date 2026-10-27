-- DB update 2026_07_31_02 -> 2026_08_01_00
--
UPDATE `creature_template` SET `npcflag` = 3 WHERE (`entry` IN (28070, 31366));

DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 9669);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(9669, 37476, 0, '布莱恩，那将是我们的荣幸！', 27614, 1, 1, 0, 0, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 9670);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(9670, 36142, 0, '走吧布莱恩，历史课到此为止！', 27616, 1, 1, 0, 0, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 10206);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(10206, 36412, 0, '这个以后有的是时间，布莱恩，我们得赶紧动身！', 33002, 1, 1, 0, 0, 0, 0, '', 0, 0);

DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 10012);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(10012, 36236, 0, '我们和你一起，布莱恩！打开它！', 31547, 1, 1, 0, 0, 0, 0, '', 0, 0);

-- Summon Groups. They have the same position, yes
DELETE FROM `creature_summon_groups` WHERE `summonerId` = 28070 AND `summonerType` = 0;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`, `Comment`) VALUES
(28070, 0, 0, 27983, 943.0883, 401.3776, 206.16098, 3.804817676544189453, 6, 20000, 'Halls of Stone Tribunal - Dark Rune Protector Group'),
(28070, 0, 0, 27983, 943.0883, 401.3776, 206.16098, 3.804817676544189453, 6, 20000, 'Halls of Stone Tribunal - Dark Rune Protector Group'),
(28070, 0, 0, 27983, 943.0883, 401.3776, 206.16098, 3.804817676544189453, 6, 20000, 'Halls of Stone Tribunal - Dark Rune Protector Group'),
(28070, 0, 1, 27984, 967.0001, 376.83203, 206.16098, 3.804817676544189453, 6, 20000, 'Halls of Stone Tribunal - Dark Rune Stormcaller Group'),
(28070, 0, 1, 27984, 967.0001, 376.83203, 206.16098, 3.804817676544189453, 6, 20000, 'Halls of Stone Tribunal - Dark Rune Stormcaller Group'),
(28070, 0, 2, 27985, 964.302, 381.94174, 206.16098, 3.857177734375, 6, 20000, 'Halls of Stone Tribunal - Golem Custodian Group');

-- CreatureText
DELETE FROM `creature_text` WHERE (`CreatureID` = 28070);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(28070, 0, 0, '这才叫挣你的饭钱！', 14, 0, 100, 0, 0, 14244, 30525, 0, 'brann SAY_KILL_1'),
(28070, 0, 1, '继续；就往那边走！', 14, 0, 100, 0, 0, 14245, 30526, 0, 'brann SAY_KILL_2'),
(28070, 0, 2, '继续，别停。人人都有份杀个痛快！', 14, 0, 100, 0, 0, 14246, 0, 0, 'brann SAY_KILL_3'),
(28070, 1, 0, '我浑身都散架了……可能……撑不住了。', 14, 0, 100, 0, 0, 14257, 28121, 0, 'brann SAY_LOW_HEALTH'),
(28070, 2, 0, '还不行……还没——', 14, 0, 100, 0, 0, 14258, 30522, 0, 'brann SAY_DEATH'),
(28070, 3, 0, '我已经尽全力了！', 14, 0, 100, 0, 0, 14260, 30562, 0, 'brann SAY_PLAYER_DEATH_1'),
(28070, 3, 1, '愿圣光保佑你！', 14, 0, 100, 0, 0, 14261, 30563, 0, 'brann SAY_PLAYER_DEATH_2'),
(28070, 3, 2, '希望这一切都值得！', 14, 0, 100, 0, 0, 14262, 30564, 0, 'brann SAY_PLAYER_DEATH_3'),
(28070, 4, 0, '该去要些答案了！我们这就开始吧！', 14, 0, 100, 0, 0, 14259, 30561, 0, 'brann SAY_ESCORT_START'),
(28070, 5, 0, '别担心！老布莱恩给你撑腰！把那台金属怪物缠住，我去试试能不能说服这台机器帮咱们！', 14, 0, 100, 0, 0, 14274, 31555, 0, 'brann SAY_SPAWN_DWARF'),
(28070, 6, 0, '这比之前棘手一点……哦，该死——来了！', 14, 0, 100, 0, 0, 14275, 27589, 0, 'brann SAY_SPAWN_TROGG'),
(28070, 7, 0, '以玛多兰之名，那到底是什么造成的？哦！等等：我快搞定了……', 14, 0, 100, 0, 0, 14276, 27590, 0, 'brann SAY_SPAWN_OOZE'),
(28070, 8, 0, '哈，成了！援兵马上就到！尝尝这个，你这发光的铁疙瘩！', 14, 0, 100, 0, 0, 14277, 27591, 0, 'brann SAY_SPAWN_EARTHEN'),
(28070, 9, 0, '花点时间和我一起品味这一刻。很快……一切都会揭晓。好了，我们开始吧！', 14, 0, 100, 4, 0, 14247, 30523, 0, 'brann SAY_EVENT_INTRO_1'),
(28070, 10, 0, '现在睁大眼睛盯着！我两下就能搞定这——', 14, 0, 100, 432, 0, 14248, 30552, 0, 'brann SAY_EVENT_INTRO_2'),
(28070, 11, 0, '哦，听起来不太妙。我们可能有一两个麻烦……', 14, 0, 100, 1, 0, 14249, 30553, 0, 'brann SAY_EVENT_A_1'),
(28070, 12, 0, '啊，你想来硬的？那正合我意！', 14, 0, 100, 0, 0, 14250, 30554, 0, 'brann SAY_EVENT_A_3'),
(28070, 13, 0, '再等几分钟我就——', 14, 0, 100, 0, 0, 14251, 30555, 0, 'brann SAY_EVENT_B_1'),
(28070, 14, 0, '加剧了？那好消息是什么？', 14, 0, 100, 0, 0, 14252, 30556, 0, 'brann SAY_EVENT_B_3'),
(28070, 15, 0, '原来问题在那儿？现在我有进展了……', 14, 0, 100, 0, 0, 14253, 30557, 0, 'brann SAY_EVENT_C_1'),
(28070, 16, 0, '等等！只要我说了算，谁都不会被净化！', 14, 0, 100, 0, 0, 14254, 30558, 0, 'brann SAY_EVENT_C_3'),
(28070, 17, 0, '哈！老套的魔法手指终于成功了！现在我们来看看——', 14, 0, 100, 0, 0, 14255, 30559, 0, 'brann SAY_EVENT_D_1'),
(28070, 18, 0, '净化？不不不不不……我把它放哪儿了——啊，这个应该管用……', 14, 0, 100, 0, 0, 14256, 30560, 0, 'brann SAY_EVENT_D_3'),
(28070, 19, 0, '提问？你以为我在这儿干嘛，喝茶吃饼干？快说吧！', 14, 0, 100, 0, 0, 14263, 30565, 0, 'brann SAY_EVENT_END_01'),
(28070, 20, 0, '告诉我矮人是怎么来的，从头说起！', 14, 0, 100, 0, 0, 14264, 30566, 0, 'brann SAY_EVENT_END_02'),
(28070, 21, 0, '对，对……我知道土灵是用石头做出来塑造世界深处区域的。但那些异常呢？矩阵不稳定之类的？', 14, 0, 100, 0, 0, 14265, 30567, 0, 'brann SAY_EVENT_END_04'),
(28070, 22, 0, '死灵什么什么的——说人话，行不行？', 14, 0, 100, 0, 0, 14266, 30568, 0, 'brann SAY_EVENT_END_06'),
(28070, 23, 0, '上古之神，嗯？所以他们用这个血肉诅咒击中了土灵……然后呢？', 14, 0, 100, 0, 0, 14267, 30577, 0, 'brann SAY_EVENT_END_08'),
(28070, 24, 0, '要是他们杀了上古之神，艾泽拉斯早就被毁了……', 14, 0, 100, 0, 0, 14268, 30578, 0, 'brann SAY_EVENT_END_10'),
(28070, 25, 0, '什么守护者？', 14, 0, 100, 0, 0, 14269, 30579, 0, 'brann SAY_EVENT_END_12'),
(28070, 26, 0, '埃希尔与瓦尼尔……好吧，所以意志熔炉开始制造新的土灵……但那些旧的土灵怎么了？', 14, 0, 100, 0, 0, 14270, 30580, 0, 'brann SAY_EVENT_END_14'),
(28070, 27, 0, '等等！埃希尔和瓦尼尔打起来了？为什么？', 14, 0, 100, 0, 0, 14271, 30581, 0, 'brann SAY_EVENT_END_16'),
(28070, 28, 0, '这个「洛肯」听起来是个恶角色。真高兴我们不用再担心他那种人了。那么……如果我理解得没错，最初的土灵最终从这种停滞中醒来，而那时那什么不稳定已经把他们都变成了真正的矮人。或者至少……是矮人的祖先。', 14, 0, 100, 0, 0, 14272, 30582, 0, 'brann SAY_EVENT_END_18'),
(28070, 29, 0, '好吧，这下……信息量可真大。我需要点时间消化这些。谢谢你。', 14, 0, 100, 0, 0, 14273, 30583, 0, 'brann SAY_EVENT_END_20'),
(28070, 30, 0, '洛肯？！这可真够麻烦的……我们也许收拾了铁矮人，但我敢打赌别处还有一台机器在造一大批铁维库人！', 14, 0, 100, 1, 0, 14278, 28591, 0, 'brann SAY_VICTORY_SJONNIR_1'),
(28070, 31, 0, '我会用熔炉成批造出土灵来守卫……但我们最大的挑战还在：找到并阻止洛肯！', 14, 0, 100, 1, 0, 14279, 30584, 0, 'brann SAY_VICTORY_SJONNIR_2'),
(28070, 32, 0, '我想该看看入口附近那扇门后面有什么了。我要悄悄溜过去，安安静静的。到门口跟我碰头，我带我们进去。', 14, 0, 100, 0, 0, 0, 31660, 0, 'brann SAY_ENTRANCE_MEET');

-- Abedneum (30899) creature_text
DELETE FROM `creature_text` WHERE (`CreatureID` = 30899);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(30899, 0, 0, '警告：未识别生命形态模式。档案处理已终止。继续干扰将招致定点回应。', 14, 0, 100, 0, 0, 13765, 29561, 0, 'abedneum SAY_WARNING'),
(30899, 1, 0, '危急威胁指数。虚空分析已转移。启动净化协议。', 14, 0, 100, 0, 0, 13767, 29577, 0, 'abedneum SAY_CRITICAL'),
(30899, 2, 0, '警报：安全故障保险已解除。开始记忆清除并……', 14, 0, 100, 0, 0, 13768, 29579, 0, 'abedneum SAY_FAILSAFE'),
(30899, 3, 0, '系统上线。已识别生命形态模式。欢迎，布兰布兰赞。提问？', 14, 0, 100, 0, 0, 13769, 29580, 0, 'abedneum SAY_ONLINE'),
(30899, 4, 0, '正在读取史前数据……已获取。起初，土灵被创造出来是为了——', 14, 0, 100, 0, 0, 13770, 30611, 0, 'abedneum SAY_LORE_1'),
(30899, 5, 0, '正在读取……在其发展周期的早期阶段，艾泽拉斯遭到寄生性亡魂共生体的感染。', 14, 0, 100, 0, 0, 13771, 30612, 0, 'abedneum SAY_LORE_2'),
(30899, 6, 0, '代号：上古之神。上古之神使包括土灵在内的所有系统失去防御能力，以便进行同化。这种矩阵失稳被称作血肉诅咒。失稳效应随时间推移而加剧。', 14, 0, 100, 0, 0, 13772, 30613, 0, 'abedneum SAY_LORE_3'),
(30899, 7, 0, '已确认，布兰布兰赞。会话终止。', 14, 0, 100, 0, 0, 13773, 30614, 0, 'abedneum SAY_SESSION_END');

-- Kaddrak (30898) creature_text
DELETE FROM `creature_text` WHERE (`CreatureID` = 30898);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(30898, 0, 0, '安全漏洞正在发生。历史档案分析已转至低优先级队列。反制措施已启动。', 14, 0, 100, 0, 0, 13756, 29575, 0, 'kaddrak SAY_SECURITY'),
(30898, 1, 0, '正在读取……造物主前来根除共生感染。评估显示上古之神的侵染已转为恶性。切除寄生体将导致宿主损失——', 14, 0, 100, 0, 0, 13757, 30603, 0, 'kaddrak SAY_LORE_1'),
(30898, 2, 0, '正确。造物主中和了寄生威胁，并将其封存在宿主体内。意志熔炉与其他系统被设立以创造新的土灵。防护措施已实施，守护者已被任命。', 14, 0, 100, 0, 0, 13758, 30604, 0, 'kaddrak SAY_LORE_2'),
(30898, 3, 0, '代号：埃希尔与瓦尼尔。或者用通俗说法，风暴巨人与大地巨人。哨兵洛肯被指定为至尊。龙族守护者被任命以监视艾泽拉斯的演化。', 14, 0, 100, 0, 0, 13759, 30605, 0, 'kaddrak SAY_LORE_3');

-- Marnak (30897) creature_text
DELETE FROM `creature_text` WHERE (`CreatureID` = 30897);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(30897, 0, 0, '威胁指数超过阈值。天体档案已中止。安全等级已提高。', 14, 0, 100, 0, 0, 13761, 29576, 0, 'marnak SAY_THREAT'),
(30897, 1, 0, '有更多背景信息与你的查询相关：在埃希尔与瓦尼尔爆发全面战争之后——', 14, 0, 100, 0, 0, 13762, 30606, 0, 'marnak SAY_LORE_1'),
(30897, 2, 0, '未知。数据显示，引发全球战争的起因来自首席指定者洛肯，他中和了所有剩余的埃希尔与瓦尼尔，从而终止了冲突。随后，首席指定者洛肯启动了数个种子种族的停滞状态，包括土灵、巨人和维库人，将他们安置在指定的收容设施中。', 14, 0, 100, 0, 0, 13763, 30607, 0, 'marnak SAY_LORE_2'),
(30897, 3, 0, '基本上是对的。', 14, 0, 100, 0, 0, 13764, 30608, 0, 'marnak SAY_LORE_3');

-- The escort no longer runs on ScriptedEscortAI, the old script_waypoint path is dead
DELETE FROM `script_waypoint` WHERE `entry` = 28070;

DELETE FROM `waypoint_data` WHERE `id` IN (280701, 280702);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `move_type`) VALUES
-- Escort
(280701, 1 , 1062.9545, 475.52713, 207.73082, NULL, 1),
(280701, 2 , 1051.7512, 474.38412, 208.46428, NULL, 1),
(280701, 3 , 1038.5206, 470.5408, 207.74431 , NULL, 1),
(280701, 4 , 1025.4148, 461.32217, 207.71443, NULL, 1),
(280701, 5 , 1013.8148, 450.56674, 207.71445, NULL, 1),
(280701, 6 , 998.8864, 437.2246, 207.36806  , NULL, 1),
(280701, 7 , 988.21234, 424.72006, 207.41689, NULL, 1),
(280701, 8 , 981.52594, 420.01965, 205.98004, NULL, 1),
(280701, 9 , 973.29675, 421.35568, 205.98004, NULL, 1),
(280701, 10, 961.14746, 421.33258, 205.98004, NULL, 1),
(280701, 11, 951.749, 416.0841, 205.98004   , NULL, 1),
(280701, 12, 944.52466, 406.57574, 205.98004, NULL, 1),
(280701, 13, 945.35394, 395.39194, 205.98003, NULL, 1),
(280701, 14, 946.6389, 386.1174, 205.98001  , NULL, 1),
(280701, 15, 939.6467, 375.48926, 207.41608 , NULL, 1),
-- Fight Start
(280702, 1, 1304.24, 667.208, 189.5993, NULL, 1),
(280702, 2, 1308.33, 666.755, 189.5994, NULL, 1);
