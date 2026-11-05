-- Terminology pass: the world data still spells a few class and item terms
-- with an outdated rendering. Each statement is idempotent.
SET @@SESSION.`innodb_lock_wait_timeout` = 600;

UPDATE `creature_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `subname` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`subname`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `subname` LIKE '%血锻%'
    OR `subname` LIKE '%亡灵法师%'
    OR `subname` LIKE '%时光法师%'
    OR `subname` LIKE '%太阳牧师%'
    OR `subname` LIKE '%符文宗师%'
    OR `subname` LIKE '%剧剧毒术士%'
    OR `subname` LIKE '%火焰法师%'
);

UPDATE `creature_template_locale`
SET
    `Name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Title` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Title`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `Name` LIKE '%血锻%'
    OR `Name` LIKE '%亡灵法师%'
    OR `Name` LIKE '%时光法师%'
    OR `Name` LIKE '%太阳牧师%'
    OR `Name` LIKE '%符文宗师%'
    OR `Name` LIKE '%剧剧毒术士%'
    OR `Name` LIKE '%火焰法师%'
    OR `Title` LIKE '%血锻%'
    OR `Title` LIKE '%亡灵法师%'
    OR `Title` LIKE '%时光法师%'
    OR `Title` LIKE '%太阳牧师%'
    OR `Title` LIKE '%符文宗师%'
    OR `Title` LIKE '%剧剧毒术士%'
    OR `Title` LIKE '%火焰法师%'
);

UPDATE `item_template_locale`
SET
    `Name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `Name` LIKE '%血锻%'
    OR `Name` LIKE '%亡灵法师%'
    OR `Name` LIKE '%时光法师%'
    OR `Name` LIKE '%太阳牧师%'
    OR `Name` LIKE '%符文宗师%'
    OR `Name` LIKE '%剧剧毒术士%'
    OR `Name` LIKE '%火焰法师%'
    OR `Description` LIKE '%血锻%'
    OR `Description` LIKE '%亡灵法师%'
    OR `Description` LIKE '%时光法师%'
    OR `Description` LIKE '%太阳牧师%'
    OR `Description` LIKE '%符文宗师%'
    OR `Description` LIKE '%剧剧毒术士%'
    OR `Description` LIKE '%火焰法师%'
);

UPDATE `npc_text`
SET
    `text0_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text0_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text0_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text0_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text1_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text1_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text1_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text1_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text2_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text2_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text2_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text2_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text3_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text3_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text3_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text3_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text4_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text4_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text4_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text4_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text5_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text5_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text5_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text5_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text6_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text6_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text6_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text6_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text7_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text7_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `text7_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`text7_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `text0_0` LIKE '%血锻%'
    OR `text0_0` LIKE '%亡灵法师%'
    OR `text0_0` LIKE '%时光法师%'
    OR `text0_0` LIKE '%太阳牧师%'
    OR `text0_0` LIKE '%符文宗师%'
    OR `text0_0` LIKE '%剧剧毒术士%'
    OR `text0_0` LIKE '%火焰法师%'
    OR `text0_1` LIKE '%血锻%'
    OR `text0_1` LIKE '%亡灵法师%'
    OR `text0_1` LIKE '%时光法师%'
    OR `text0_1` LIKE '%太阳牧师%'
    OR `text0_1` LIKE '%符文宗师%'
    OR `text0_1` LIKE '%剧剧毒术士%'
    OR `text0_1` LIKE '%火焰法师%'
    OR `text1_0` LIKE '%血锻%'
    OR `text1_0` LIKE '%亡灵法师%'
    OR `text1_0` LIKE '%时光法师%'
    OR `text1_0` LIKE '%太阳牧师%'
    OR `text1_0` LIKE '%符文宗师%'
    OR `text1_0` LIKE '%剧剧毒术士%'
    OR `text1_0` LIKE '%火焰法师%'
    OR `text1_1` LIKE '%血锻%'
    OR `text1_1` LIKE '%亡灵法师%'
    OR `text1_1` LIKE '%时光法师%'
    OR `text1_1` LIKE '%太阳牧师%'
    OR `text1_1` LIKE '%符文宗师%'
    OR `text1_1` LIKE '%剧剧毒术士%'
    OR `text1_1` LIKE '%火焰法师%'
    OR `text2_0` LIKE '%血锻%'
    OR `text2_0` LIKE '%亡灵法师%'
    OR `text2_0` LIKE '%时光法师%'
    OR `text2_0` LIKE '%太阳牧师%'
    OR `text2_0` LIKE '%符文宗师%'
    OR `text2_0` LIKE '%剧剧毒术士%'
    OR `text2_0` LIKE '%火焰法师%'
    OR `text2_1` LIKE '%血锻%'
    OR `text2_1` LIKE '%亡灵法师%'
    OR `text2_1` LIKE '%时光法师%'
    OR `text2_1` LIKE '%太阳牧师%'
    OR `text2_1` LIKE '%符文宗师%'
    OR `text2_1` LIKE '%剧剧毒术士%'
    OR `text2_1` LIKE '%火焰法师%'
    OR `text3_0` LIKE '%血锻%'
    OR `text3_0` LIKE '%亡灵法师%'
    OR `text3_0` LIKE '%时光法师%'
    OR `text3_0` LIKE '%太阳牧师%'
    OR `text3_0` LIKE '%符文宗师%'
    OR `text3_0` LIKE '%剧剧毒术士%'
    OR `text3_0` LIKE '%火焰法师%'
    OR `text3_1` LIKE '%血锻%'
    OR `text3_1` LIKE '%亡灵法师%'
    OR `text3_1` LIKE '%时光法师%'
    OR `text3_1` LIKE '%太阳牧师%'
    OR `text3_1` LIKE '%符文宗师%'
    OR `text3_1` LIKE '%剧剧毒术士%'
    OR `text3_1` LIKE '%火焰法师%'
    OR `text4_0` LIKE '%血锻%'
    OR `text4_0` LIKE '%亡灵法师%'
    OR `text4_0` LIKE '%时光法师%'
    OR `text4_0` LIKE '%太阳牧师%'
    OR `text4_0` LIKE '%符文宗师%'
    OR `text4_0` LIKE '%剧剧毒术士%'
    OR `text4_0` LIKE '%火焰法师%'
    OR `text4_1` LIKE '%血锻%'
    OR `text4_1` LIKE '%亡灵法师%'
    OR `text4_1` LIKE '%时光法师%'
    OR `text4_1` LIKE '%太阳牧师%'
    OR `text4_1` LIKE '%符文宗师%'
    OR `text4_1` LIKE '%剧剧毒术士%'
    OR `text4_1` LIKE '%火焰法师%'
    OR `text5_0` LIKE '%血锻%'
    OR `text5_0` LIKE '%亡灵法师%'
    OR `text5_0` LIKE '%时光法师%'
    OR `text5_0` LIKE '%太阳牧师%'
    OR `text5_0` LIKE '%符文宗师%'
    OR `text5_0` LIKE '%剧剧毒术士%'
    OR `text5_0` LIKE '%火焰法师%'
    OR `text5_1` LIKE '%血锻%'
    OR `text5_1` LIKE '%亡灵法师%'
    OR `text5_1` LIKE '%时光法师%'
    OR `text5_1` LIKE '%太阳牧师%'
    OR `text5_1` LIKE '%符文宗师%'
    OR `text5_1` LIKE '%剧剧毒术士%'
    OR `text5_1` LIKE '%火焰法师%'
    OR `text6_0` LIKE '%血锻%'
    OR `text6_0` LIKE '%亡灵法师%'
    OR `text6_0` LIKE '%时光法师%'
    OR `text6_0` LIKE '%太阳牧师%'
    OR `text6_0` LIKE '%符文宗师%'
    OR `text6_0` LIKE '%剧剧毒术士%'
    OR `text6_0` LIKE '%火焰法师%'
    OR `text6_1` LIKE '%血锻%'
    OR `text6_1` LIKE '%亡灵法师%'
    OR `text6_1` LIKE '%时光法师%'
    OR `text6_1` LIKE '%太阳牧师%'
    OR `text6_1` LIKE '%符文宗师%'
    OR `text6_1` LIKE '%剧剧毒术士%'
    OR `text6_1` LIKE '%火焰法师%'
    OR `text7_0` LIKE '%血锻%'
    OR `text7_0` LIKE '%亡灵法师%'
    OR `text7_0` LIKE '%时光法师%'
    OR `text7_0` LIKE '%太阳牧师%'
    OR `text7_0` LIKE '%符文宗师%'
    OR `text7_0` LIKE '%剧剧毒术士%'
    OR `text7_0` LIKE '%火焰法师%'
    OR `text7_1` LIKE '%血锻%'
    OR `text7_1` LIKE '%亡灵法师%'
    OR `text7_1` LIKE '%时光法师%'
    OR `text7_1` LIKE '%太阳牧师%'
    OR `text7_1` LIKE '%符文宗师%'
    OR `text7_1` LIKE '%剧剧毒术士%'
    OR `text7_1` LIKE '%火焰法师%'
)
    AND `ID` <> 2527;

UPDATE `npc_text_locale`
SET
    `Text0_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text0_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text0_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text0_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text1_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text1_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text1_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text1_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text2_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text2_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text2_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text2_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text3_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text3_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text3_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text3_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text4_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text4_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text4_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text4_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text5_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text5_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text5_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text5_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text6_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text6_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text6_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text6_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text7_0` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text7_0`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Text7_1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text7_1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `Text0_0` LIKE '%血锻%'
    OR `Text0_0` LIKE '%亡灵法师%'
    OR `Text0_0` LIKE '%时光法师%'
    OR `Text0_0` LIKE '%太阳牧师%'
    OR `Text0_0` LIKE '%符文宗师%'
    OR `Text0_0` LIKE '%剧剧毒术士%'
    OR `Text0_0` LIKE '%火焰法师%'
    OR `Text0_1` LIKE '%血锻%'
    OR `Text0_1` LIKE '%亡灵法师%'
    OR `Text0_1` LIKE '%时光法师%'
    OR `Text0_1` LIKE '%太阳牧师%'
    OR `Text0_1` LIKE '%符文宗师%'
    OR `Text0_1` LIKE '%剧剧毒术士%'
    OR `Text0_1` LIKE '%火焰法师%'
    OR `Text1_0` LIKE '%血锻%'
    OR `Text1_0` LIKE '%亡灵法师%'
    OR `Text1_0` LIKE '%时光法师%'
    OR `Text1_0` LIKE '%太阳牧师%'
    OR `Text1_0` LIKE '%符文宗师%'
    OR `Text1_0` LIKE '%剧剧毒术士%'
    OR `Text1_0` LIKE '%火焰法师%'
    OR `Text1_1` LIKE '%血锻%'
    OR `Text1_1` LIKE '%亡灵法师%'
    OR `Text1_1` LIKE '%时光法师%'
    OR `Text1_1` LIKE '%太阳牧师%'
    OR `Text1_1` LIKE '%符文宗师%'
    OR `Text1_1` LIKE '%剧剧毒术士%'
    OR `Text1_1` LIKE '%火焰法师%'
    OR `Text2_0` LIKE '%血锻%'
    OR `Text2_0` LIKE '%亡灵法师%'
    OR `Text2_0` LIKE '%时光法师%'
    OR `Text2_0` LIKE '%太阳牧师%'
    OR `Text2_0` LIKE '%符文宗师%'
    OR `Text2_0` LIKE '%剧剧毒术士%'
    OR `Text2_0` LIKE '%火焰法师%'
    OR `Text2_1` LIKE '%血锻%'
    OR `Text2_1` LIKE '%亡灵法师%'
    OR `Text2_1` LIKE '%时光法师%'
    OR `Text2_1` LIKE '%太阳牧师%'
    OR `Text2_1` LIKE '%符文宗师%'
    OR `Text2_1` LIKE '%剧剧毒术士%'
    OR `Text2_1` LIKE '%火焰法师%'
    OR `Text3_0` LIKE '%血锻%'
    OR `Text3_0` LIKE '%亡灵法师%'
    OR `Text3_0` LIKE '%时光法师%'
    OR `Text3_0` LIKE '%太阳牧师%'
    OR `Text3_0` LIKE '%符文宗师%'
    OR `Text3_0` LIKE '%剧剧毒术士%'
    OR `Text3_0` LIKE '%火焰法师%'
    OR `Text3_1` LIKE '%血锻%'
    OR `Text3_1` LIKE '%亡灵法师%'
    OR `Text3_1` LIKE '%时光法师%'
    OR `Text3_1` LIKE '%太阳牧师%'
    OR `Text3_1` LIKE '%符文宗师%'
    OR `Text3_1` LIKE '%剧剧毒术士%'
    OR `Text3_1` LIKE '%火焰法师%'
    OR `Text4_0` LIKE '%血锻%'
    OR `Text4_0` LIKE '%亡灵法师%'
    OR `Text4_0` LIKE '%时光法师%'
    OR `Text4_0` LIKE '%太阳牧师%'
    OR `Text4_0` LIKE '%符文宗师%'
    OR `Text4_0` LIKE '%剧剧毒术士%'
    OR `Text4_0` LIKE '%火焰法师%'
    OR `Text4_1` LIKE '%血锻%'
    OR `Text4_1` LIKE '%亡灵法师%'
    OR `Text4_1` LIKE '%时光法师%'
    OR `Text4_1` LIKE '%太阳牧师%'
    OR `Text4_1` LIKE '%符文宗师%'
    OR `Text4_1` LIKE '%剧剧毒术士%'
    OR `Text4_1` LIKE '%火焰法师%'
    OR `Text5_0` LIKE '%血锻%'
    OR `Text5_0` LIKE '%亡灵法师%'
    OR `Text5_0` LIKE '%时光法师%'
    OR `Text5_0` LIKE '%太阳牧师%'
    OR `Text5_0` LIKE '%符文宗师%'
    OR `Text5_0` LIKE '%剧剧毒术士%'
    OR `Text5_0` LIKE '%火焰法师%'
    OR `Text5_1` LIKE '%血锻%'
    OR `Text5_1` LIKE '%亡灵法师%'
    OR `Text5_1` LIKE '%时光法师%'
    OR `Text5_1` LIKE '%太阳牧师%'
    OR `Text5_1` LIKE '%符文宗师%'
    OR `Text5_1` LIKE '%剧剧毒术士%'
    OR `Text5_1` LIKE '%火焰法师%'
    OR `Text6_0` LIKE '%血锻%'
    OR `Text6_0` LIKE '%亡灵法师%'
    OR `Text6_0` LIKE '%时光法师%'
    OR `Text6_0` LIKE '%太阳牧师%'
    OR `Text6_0` LIKE '%符文宗师%'
    OR `Text6_0` LIKE '%剧剧毒术士%'
    OR `Text6_0` LIKE '%火焰法师%'
    OR `Text6_1` LIKE '%血锻%'
    OR `Text6_1` LIKE '%亡灵法师%'
    OR `Text6_1` LIKE '%时光法师%'
    OR `Text6_1` LIKE '%太阳牧师%'
    OR `Text6_1` LIKE '%符文宗师%'
    OR `Text6_1` LIKE '%剧剧毒术士%'
    OR `Text6_1` LIKE '%火焰法师%'
    OR `Text7_0` LIKE '%血锻%'
    OR `Text7_0` LIKE '%亡灵法师%'
    OR `Text7_0` LIKE '%时光法师%'
    OR `Text7_0` LIKE '%太阳牧师%'
    OR `Text7_0` LIKE '%符文宗师%'
    OR `Text7_0` LIKE '%剧剧毒术士%'
    OR `Text7_0` LIKE '%火焰法师%'
    OR `Text7_1` LIKE '%血锻%'
    OR `Text7_1` LIKE '%亡灵法师%'
    OR `Text7_1` LIKE '%时光法师%'
    OR `Text7_1` LIKE '%太阳牧师%'
    OR `Text7_1` LIKE '%符文宗师%'
    OR `Text7_1` LIKE '%剧剧毒术士%'
    OR `Text7_1` LIKE '%火焰法师%'
)
    AND `ID` <> 2527;

UPDATE `page_text`
SET
    `Text` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `Text` LIKE '%血锻%'
    OR `Text` LIKE '%亡灵法师%'
    OR `Text` LIKE '%时光法师%'
    OR `Text` LIKE '%太阳牧师%'
    OR `Text` LIKE '%符文宗师%'
    OR `Text` LIKE '%剧剧毒术士%'
    OR `Text` LIKE '%火焰法师%'
);

UPDATE `page_text_locale`
SET
    `Text` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Text`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `Text` LIKE '%血锻%'
    OR `Text` LIKE '%亡灵法师%'
    OR `Text` LIKE '%时光法师%'
    OR `Text` LIKE '%太阳牧师%'
    OR `Text` LIKE '%符文宗师%'
    OR `Text` LIKE '%剧剧毒术士%'
    OR `Text` LIKE '%火焰法师%'
);

UPDATE `gossip_menu_option`
SET
    `OptionText` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`OptionText`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `BoxText` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`BoxText`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `OptionText` LIKE '%血锻%'
    OR `OptionText` LIKE '%亡灵法师%'
    OR `OptionText` LIKE '%时光法师%'
    OR `OptionText` LIKE '%太阳牧师%'
    OR `OptionText` LIKE '%符文宗师%'
    OR `OptionText` LIKE '%剧剧毒术士%'
    OR `OptionText` LIKE '%火焰法师%'
    OR `BoxText` LIKE '%血锻%'
    OR `BoxText` LIKE '%亡灵法师%'
    OR `BoxText` LIKE '%时光法师%'
    OR `BoxText` LIKE '%太阳牧师%'
    OR `BoxText` LIKE '%符文宗师%'
    OR `BoxText` LIKE '%剧剧毒术士%'
    OR `BoxText` LIKE '%火焰法师%'
);

UPDATE `quest_template`
SET
    `LogTitle` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`LogTitle`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `LogDescription` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`LogDescription`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `QuestDescription` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`QuestDescription`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `AreaDescription` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`AreaDescription`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `QuestCompletionLog` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`QuestCompletionLog`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `ObjectiveText1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`ObjectiveText1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `ObjectiveText2` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`ObjectiveText2`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `ObjectiveText3` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`ObjectiveText3`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `ObjectiveText4` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`ObjectiveText4`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `LogTitle` LIKE '%血锻%'
    OR `LogTitle` LIKE '%亡灵法师%'
    OR `LogTitle` LIKE '%时光法师%'
    OR `LogTitle` LIKE '%太阳牧师%'
    OR `LogTitle` LIKE '%符文宗师%'
    OR `LogTitle` LIKE '%剧剧毒术士%'
    OR `LogTitle` LIKE '%火焰法师%'
    OR `LogDescription` LIKE '%血锻%'
    OR `LogDescription` LIKE '%亡灵法师%'
    OR `LogDescription` LIKE '%时光法师%'
    OR `LogDescription` LIKE '%太阳牧师%'
    OR `LogDescription` LIKE '%符文宗师%'
    OR `LogDescription` LIKE '%剧剧毒术士%'
    OR `LogDescription` LIKE '%火焰法师%'
    OR `QuestDescription` LIKE '%血锻%'
    OR `QuestDescription` LIKE '%亡灵法师%'
    OR `QuestDescription` LIKE '%时光法师%'
    OR `QuestDescription` LIKE '%太阳牧师%'
    OR `QuestDescription` LIKE '%符文宗师%'
    OR `QuestDescription` LIKE '%剧剧毒术士%'
    OR `QuestDescription` LIKE '%火焰法师%'
    OR `AreaDescription` LIKE '%血锻%'
    OR `AreaDescription` LIKE '%亡灵法师%'
    OR `AreaDescription` LIKE '%时光法师%'
    OR `AreaDescription` LIKE '%太阳牧师%'
    OR `AreaDescription` LIKE '%符文宗师%'
    OR `AreaDescription` LIKE '%剧剧毒术士%'
    OR `AreaDescription` LIKE '%火焰法师%'
    OR `QuestCompletionLog` LIKE '%血锻%'
    OR `QuestCompletionLog` LIKE '%亡灵法师%'
    OR `QuestCompletionLog` LIKE '%时光法师%'
    OR `QuestCompletionLog` LIKE '%太阳牧师%'
    OR `QuestCompletionLog` LIKE '%符文宗师%'
    OR `QuestCompletionLog` LIKE '%剧剧毒术士%'
    OR `QuestCompletionLog` LIKE '%火焰法师%'
    OR `ObjectiveText1` LIKE '%血锻%'
    OR `ObjectiveText1` LIKE '%亡灵法师%'
    OR `ObjectiveText1` LIKE '%时光法师%'
    OR `ObjectiveText1` LIKE '%太阳牧师%'
    OR `ObjectiveText1` LIKE '%符文宗师%'
    OR `ObjectiveText1` LIKE '%剧剧毒术士%'
    OR `ObjectiveText1` LIKE '%火焰法师%'
    OR `ObjectiveText2` LIKE '%血锻%'
    OR `ObjectiveText2` LIKE '%亡灵法师%'
    OR `ObjectiveText2` LIKE '%时光法师%'
    OR `ObjectiveText2` LIKE '%太阳牧师%'
    OR `ObjectiveText2` LIKE '%符文宗师%'
    OR `ObjectiveText2` LIKE '%剧剧毒术士%'
    OR `ObjectiveText2` LIKE '%火焰法师%'
    OR `ObjectiveText3` LIKE '%血锻%'
    OR `ObjectiveText3` LIKE '%亡灵法师%'
    OR `ObjectiveText3` LIKE '%时光法师%'
    OR `ObjectiveText3` LIKE '%太阳牧师%'
    OR `ObjectiveText3` LIKE '%符文宗师%'
    OR `ObjectiveText3` LIKE '%剧剧毒术士%'
    OR `ObjectiveText3` LIKE '%火焰法师%'
    OR `ObjectiveText4` LIKE '%血锻%'
    OR `ObjectiveText4` LIKE '%亡灵法师%'
    OR `ObjectiveText4` LIKE '%时光法师%'
    OR `ObjectiveText4` LIKE '%太阳牧师%'
    OR `ObjectiveText4` LIKE '%符文宗师%'
    OR `ObjectiveText4` LIKE '%剧剧毒术士%'
    OR `ObjectiveText4` LIKE '%火焰法师%'
)
    AND `ID` <> 1017;

UPDATE `quest_template_locale`
SET
    `Title` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Title`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Details` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Details`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Objectives` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Objectives`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `EndText` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`EndText`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `CompletedText` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`CompletedText`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `ObjectiveText1` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`ObjectiveText1`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `ObjectiveText2` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`ObjectiveText2`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `ObjectiveText3` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`ObjectiveText3`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `ObjectiveText4` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`ObjectiveText4`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `Title` LIKE '%血锻%'
    OR `Title` LIKE '%亡灵法师%'
    OR `Title` LIKE '%时光法师%'
    OR `Title` LIKE '%太阳牧师%'
    OR `Title` LIKE '%符文宗师%'
    OR `Title` LIKE '%剧剧毒术士%'
    OR `Title` LIKE '%火焰法师%'
    OR `Details` LIKE '%血锻%'
    OR `Details` LIKE '%亡灵法师%'
    OR `Details` LIKE '%时光法师%'
    OR `Details` LIKE '%太阳牧师%'
    OR `Details` LIKE '%符文宗师%'
    OR `Details` LIKE '%剧剧毒术士%'
    OR `Details` LIKE '%火焰法师%'
    OR `Objectives` LIKE '%血锻%'
    OR `Objectives` LIKE '%亡灵法师%'
    OR `Objectives` LIKE '%时光法师%'
    OR `Objectives` LIKE '%太阳牧师%'
    OR `Objectives` LIKE '%符文宗师%'
    OR `Objectives` LIKE '%剧剧毒术士%'
    OR `Objectives` LIKE '%火焰法师%'
    OR `EndText` LIKE '%血锻%'
    OR `EndText` LIKE '%亡灵法师%'
    OR `EndText` LIKE '%时光法师%'
    OR `EndText` LIKE '%太阳牧师%'
    OR `EndText` LIKE '%符文宗师%'
    OR `EndText` LIKE '%剧剧毒术士%'
    OR `EndText` LIKE '%火焰法师%'
    OR `CompletedText` LIKE '%血锻%'
    OR `CompletedText` LIKE '%亡灵法师%'
    OR `CompletedText` LIKE '%时光法师%'
    OR `CompletedText` LIKE '%太阳牧师%'
    OR `CompletedText` LIKE '%符文宗师%'
    OR `CompletedText` LIKE '%剧剧毒术士%'
    OR `CompletedText` LIKE '%火焰法师%'
    OR `ObjectiveText1` LIKE '%血锻%'
    OR `ObjectiveText1` LIKE '%亡灵法师%'
    OR `ObjectiveText1` LIKE '%时光法师%'
    OR `ObjectiveText1` LIKE '%太阳牧师%'
    OR `ObjectiveText1` LIKE '%符文宗师%'
    OR `ObjectiveText1` LIKE '%剧剧毒术士%'
    OR `ObjectiveText1` LIKE '%火焰法师%'
    OR `ObjectiveText2` LIKE '%血锻%'
    OR `ObjectiveText2` LIKE '%亡灵法师%'
    OR `ObjectiveText2` LIKE '%时光法师%'
    OR `ObjectiveText2` LIKE '%太阳牧师%'
    OR `ObjectiveText2` LIKE '%符文宗师%'
    OR `ObjectiveText2` LIKE '%剧剧毒术士%'
    OR `ObjectiveText2` LIKE '%火焰法师%'
    OR `ObjectiveText3` LIKE '%血锻%'
    OR `ObjectiveText3` LIKE '%亡灵法师%'
    OR `ObjectiveText3` LIKE '%时光法师%'
    OR `ObjectiveText3` LIKE '%太阳牧师%'
    OR `ObjectiveText3` LIKE '%符文宗师%'
    OR `ObjectiveText3` LIKE '%剧剧毒术士%'
    OR `ObjectiveText3` LIKE '%火焰法师%'
    OR `ObjectiveText4` LIKE '%血锻%'
    OR `ObjectiveText4` LIKE '%亡灵法师%'
    OR `ObjectiveText4` LIKE '%时光法师%'
    OR `ObjectiveText4` LIKE '%太阳牧师%'
    OR `ObjectiveText4` LIKE '%符文宗师%'
    OR `ObjectiveText4` LIKE '%剧剧毒术士%'
    OR `ObjectiveText4` LIKE '%火焰法师%'
)
    AND `ID` <> 1017;

UPDATE `spell_dbc`
SET
    `Name_Lang_enUS` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Name_Lang_enUS`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `NameSubtext_Lang_enUS` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`NameSubtext_Lang_enUS`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `Description_Lang_enUS` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Description_Lang_enUS`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `AuraDescription_Lang_enUS` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`AuraDescription_Lang_enUS`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `Name_Lang_enUS` LIKE '%血锻%'
    OR `Name_Lang_enUS` LIKE '%亡灵法师%'
    OR `Name_Lang_enUS` LIKE '%时光法师%'
    OR `Name_Lang_enUS` LIKE '%太阳牧师%'
    OR `Name_Lang_enUS` LIKE '%符文宗师%'
    OR `Name_Lang_enUS` LIKE '%剧剧毒术士%'
    OR `Name_Lang_enUS` LIKE '%火焰法师%'
    OR `NameSubtext_Lang_enUS` LIKE '%血锻%'
    OR `NameSubtext_Lang_enUS` LIKE '%亡灵法师%'
    OR `NameSubtext_Lang_enUS` LIKE '%时光法师%'
    OR `NameSubtext_Lang_enUS` LIKE '%太阳牧师%'
    OR `NameSubtext_Lang_enUS` LIKE '%符文宗师%'
    OR `NameSubtext_Lang_enUS` LIKE '%剧剧毒术士%'
    OR `NameSubtext_Lang_enUS` LIKE '%火焰法师%'
    OR `Description_Lang_enUS` LIKE '%血锻%'
    OR `Description_Lang_enUS` LIKE '%亡灵法师%'
    OR `Description_Lang_enUS` LIKE '%时光法师%'
    OR `Description_Lang_enUS` LIKE '%太阳牧师%'
    OR `Description_Lang_enUS` LIKE '%符文宗师%'
    OR `Description_Lang_enUS` LIKE '%剧剧毒术士%'
    OR `Description_Lang_enUS` LIKE '%火焰法师%'
    OR `AuraDescription_Lang_enUS` LIKE '%血锻%'
    OR `AuraDescription_Lang_enUS` LIKE '%亡灵法师%'
    OR `AuraDescription_Lang_enUS` LIKE '%时光法师%'
    OR `AuraDescription_Lang_enUS` LIKE '%太阳牧师%'
    OR `AuraDescription_Lang_enUS` LIKE '%符文宗师%'
    OR `AuraDescription_Lang_enUS` LIKE '%剧剧毒术士%'
    OR `AuraDescription_Lang_enUS` LIKE '%火焰法师%'
);

UPDATE `coa_client_spell_description`
SET
    `Description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `Description` LIKE '%血锻%'
    OR `Description` LIKE '%亡灵法师%'
    OR `Description` LIKE '%时光法师%'
    OR `Description` LIKE '%太阳牧师%'
    OR `Description` LIKE '%符文宗师%'
    OR `Description` LIKE '%剧剧毒术士%'
    OR `Description` LIKE '%火焰法师%'
);

UPDATE `playercreateinfo_item`
SET
    `Note` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`Note`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `Note` LIKE '%血锻%'
    OR `Note` LIKE '%亡灵法师%'
    OR `Note` LIKE '%时光法师%'
    OR `Note` LIKE '%太阳牧师%'
    OR `Note` LIKE '%符文宗师%'
    OR `Note` LIKE '%剧剧毒术士%'
    OR `Note` LIKE '%火焰法师%'
);

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 0 AND 99999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 100000 AND 199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 200000 AND 299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 300000 AND 399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 400000 AND 499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 500000 AND 599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 600000 AND 699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 700000 AND 799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 800000 AND 899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 900000 AND 999999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1000000 AND 1099999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1100000 AND 1199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1200000 AND 1299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1300000 AND 1399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1400000 AND 1499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1500000 AND 1599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1600000 AND 1699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1700000 AND 1799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1800000 AND 1899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 1900000 AND 1999999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2000000 AND 2099999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2100000 AND 2199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2200000 AND 2299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2300000 AND 2399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2400000 AND 2499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2500000 AND 2599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2600000 AND 2699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2700000 AND 2799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2800000 AND 2899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 2900000 AND 2999999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3000000 AND 3099999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3100000 AND 3199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3200000 AND 3299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3300000 AND 3399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3400000 AND 3499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3500000 AND 3599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3600000 AND 3699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3700000 AND 3799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3800000 AND 3899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 3900000 AND 3999999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4000000 AND 4099999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4100000 AND 4199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4200000 AND 4299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4300000 AND 4399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4400000 AND 4499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4500000 AND 4599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4600000 AND 4699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4700000 AND 4799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4800000 AND 4899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 4900000 AND 4999999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5000000 AND 5099999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5100000 AND 5199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5200000 AND 5299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5300000 AND 5399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5400000 AND 5499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5500000 AND 5599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5600000 AND 5699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5700000 AND 5799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5800000 AND 5899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 5900000 AND 5999999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6000000 AND 6099999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6100000 AND 6199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6200000 AND 6299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6300000 AND 6399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6400000 AND 6499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6500000 AND 6599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6600000 AND 6699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6700000 AND 6799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6800000 AND 6899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 6900000 AND 6999999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7000000 AND 7099999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7100000 AND 7199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7200000 AND 7299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7300000 AND 7399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7400000 AND 7499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7500000 AND 7599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7600000 AND 7699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7700000 AND 7799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7800000 AND 7899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 7900000 AND 7999999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8000000 AND 8099999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8100000 AND 8199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8200000 AND 8299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8300000 AND 8399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8400000 AND 8499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8500000 AND 8599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8600000 AND 8699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8700000 AND 8799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8800000 AND 8899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 8900000 AND 8999999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9000000 AND 9099999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9100000 AND 9199999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9200000 AND 9299999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9300000 AND 9399999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9400000 AND 9499999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9500000 AND 9599999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9600000 AND 9699999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9700000 AND 9799999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9800000 AND 9899999;

UPDATE `item_template`
SET
    `name` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`name`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师'),
    `description` = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(`description`, '血锻', '血铸'), '亡灵法师', '死灵法师'), '时光法师', '时光术士'), '太阳牧师', '太阳祭司'), '符文宗师', '符文大师'), '剧剧毒术士', '剧毒术士'), '火焰法师', '炎术师')
WHERE (
    `name` LIKE '%血锻%'
    OR `name` LIKE '%亡灵法师%'
    OR `name` LIKE '%时光法师%'
    OR `name` LIKE '%太阳牧师%'
    OR `name` LIKE '%符文宗师%'
    OR `name` LIKE '%剧剧毒术士%'
    OR `name` LIKE '%火焰法师%'
    OR `description` LIKE '%血锻%'
    OR `description` LIKE '%亡灵法师%'
    OR `description` LIKE '%时光法师%'
    OR `description` LIKE '%太阳牧师%'
    OR `description` LIKE '%符文宗师%'
    OR `description` LIKE '%剧剧毒术士%'
    OR `description` LIKE '%火焰法师%'
)
    AND `entry` BETWEEN 9900000 AND 9999999;
