-- A supertrack arrow is drawn per objective, and only objectives with a world
-- target can carry one. The quest therefore tracks the three kills as well as
-- the hides, which is how base quests are shaped.
UPDATE `quest_template`
SET `RequiredNpcOrGo1` = 9916214, `RequiredNpcOrGoCount1` = 1,
    `RequiredNpcOrGo2` = 9916212, `RequiredNpcOrGoCount2` = 1,
    `RequiredNpcOrGo3` = 9916213, `RequiredNpcOrGoCount3` = 1,
    `ObjectiveText1` = '尼萨罗斯已被击杀',
    `ObjectiveText2` = '风暴之牙已被击杀',
    `ObjectiveText3` = '瓦尔莎拉已被击杀',
    `ObjectiveText4` = '兽皮已交回'
WHERE `ID` IN (9916201, 9916211);
