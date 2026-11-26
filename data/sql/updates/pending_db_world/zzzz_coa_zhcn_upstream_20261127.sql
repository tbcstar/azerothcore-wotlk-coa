-- Chinese text for the 2026-11-27 upstream merge: the Will of Soggoth world boss, his heralds, the Forgotten Avatar
-- chain, the Unstable Chronoglass and the Portable Party Platter toy. Every statement keeps the English source as a
-- guard, so a rerun does nothing and a later upstream rewording leaves the row alone.
START TRANSACTION;

UPDATE `creature_template` SET `name` = '索戈斯之愿'
    WHERE `entry` = 978077 AND `name` = 'The Will of Soggoth';
UPDATE `creature_template` SET `name` = '柯尔拉·暮光先驱者'
    WHERE `entry` = 64606 AND `name` = 'Corla, Herald of Twilight';
UPDATE `creature_template` SET `name` = '高阶女祭司阿兹尔'
    WHERE `entry` = 64607 AND `name` = 'High Priestess Azil';
UPDATE `creature_template` SET `name` = '德拉加·暗燃者'
    WHERE `entry` = 64608 AND `name` = 'Drahga Shadowburner';
UPDATE `creature_template` SET `name` = '被遗忘的化身'
    WHERE `entry` = 501004 AND `name` = 'Forgotten Avatar';
UPDATE `creature_template` SET `name` = '被遗忘的化身'
    WHERE `entry` = 501005 AND `name` = 'Forgotten Avatar';
UPDATE `creature_template` SET `name` = '基雷维莱'
    WHERE `entry` = 501008 AND `name` = 'Kire''velai';
UPDATE `creature_template` SET `name` = '不稳定的时光棱镜'
    WHERE `entry` = 506015 AND `name` = 'Unstable Chronoglass';
UPDATE `creature_template` SET `name` = '便携式派对拼盘', `subname` = '糕点推广员'
    WHERE `entry` = 11000400 AND `name` = 'Portable Party Platter';

UPDATE `item_template` SET `name` = '便携式派对拼盘'
    WHERE `entry` = 9707200 AND `name` = 'Portable Party Platter';

UPDATE `npc_text` SET `text0_0` = '神龛似乎察觉到了你的存在，当你把手按在它的表面、准备与它的力量共鸣时。',
    `text0_1` = '神龛似乎察觉到了你的存在，当你把手按在它的表面、准备与它的力量共鸣时。'
    WHERE `ID` = 978077
      AND `text0_0` = 'The shrine seems to notice your presence as you place your hand on its surface to attune to its power.';
UPDATE `npc_text` SET `text0_0` = '各式美味点心摆在你面前。请取一份，但记得留些给别人！',
    `text0_1` = '各式美味点心摆在你面前。请取一份，但记得留些给别人！'
    WHERE `ID` = 9990600
      AND `text0_0` = 'A variety of tasty treats are presented in front of you. Please take one, but leave some to share!';

UPDATE `creature_text` SET `Text` = '嘿。'
    WHERE `CreatureID` = 501004 AND `GroupID` = 0 AND `ID` = 0 AND `Text` = 'Heh.';
UPDATE `creature_text` SET `Text` = '你看起来不太乐意见到我呀。别这样，笑一个嘛……'
    WHERE `CreatureID` = 501004 AND `GroupID` = 1 AND `ID` = 0
      AND `Text` = 'You don''t seem happy to see me. Come on now. You should smile...';
UPDATE `creature_text` SET `Text` = '哦，你肯定一头雾水。我是谁？我在这儿做什么？这个嘛……'
    WHERE `CreatureID` = 501004 AND `GroupID` = 2 AND `ID` = 0
      AND `Text` = 'Oh, you must be so confused. Who am I? What am I doing here? Well...';
UPDATE `creature_text` SET `Text` = '我就是那个在夜色中行走的怪物。'
    WHERE `CreatureID` = 501005 AND `GroupID` = 0 AND `ID` = 0
      AND `Text` = 'I''m the monster that walks in the night.';
UPDATE `creature_text` SET `Text` = '你本该继续被遗忘。'
    WHERE `CreatureID` = 501008 AND `GroupID` = 0 AND `ID` = 0
      AND `Text` = 'You should have stayed forgotten.';
UPDATE `creature_text` SET `Text` = '阴影……记得……'
    WHERE `CreatureID` = 501008 AND `GroupID` = 1 AND `ID` = 0
      AND `Text` = 'The shadow... remembers...';

COMMIT;
