-- #10287: Stormflow's description reads "... and deals 0% increased damage" with Unbridled Flow (578299).
-- The text quotes $567557s3, a hidden Stormflow aura whose effect 2 has BasePoints -1 / DieSides 1 (0).
-- The bonus the server applies (stormbringer_unbridled_flow) is Unbridled Flow's own effect 0 amount,
-- $578299s1 (15%). Every Stormflow rank (567555, 572861-572867) carries the same text; only that token
-- changes. AscensionCompat streams these rows to the client, no Spell.dbc patch needed.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (567555, 572861, 572862, 572863, 572864, 572865, 572866, 572867);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`) VALUES
(567555, '|cffcc99ff消耗20点静电|r\r\n引导一道风暴光束射向敌人，在$d内造成${($d*1000/$T1)*($m1+0+$SP*.2)}点冰霜伤害，受你的法术急速加成。\r\n\r\n$?s560020[|cFFFFFFFF卤水|r][|cffffffff震击|r]可在引导期间瞬发$?s578299[，并造成$578299s1%的额外伤害][]。'),
(572861, '|cffcc99ff消耗20点静电|r\r\n引导一道风暴光束射向敌人，在$d内造成${($d*1000/$T1)*($m1+0+$SP*.2)}点冰霜伤害，受你的法术急速加成。\r\n\r\n$?s560020[|cFFFFFFFF卤水|r][|cffffffff震击|r]可在引导期间瞬发$?s578299[，并造成$578299s1%的额外伤害][]。'),
(572862, '|cffcc99ff消耗20点静电|r\r\n引导一道风暴光束射向敌人，在$d内造成${($d*1000/$T1)*($m1+0+$SP*.2)}点冰霜伤害，受你的法术急速加成。\r\n\r\n$?s560020[|cFFFFFFFF卤水|r][|cffffffff震击|r]可在引导期间瞬发$?s578299[，并造成$578299s1%的额外伤害][]。'),
(572863, '|cffcc99ff消耗20点静电|r\r\n引导一道风暴光束射向敌人，在$d内造成${($d*1000/$T1)*($m1+0+$SP*.2)}点冰霜伤害，受你的法术急速加成。\r\n\r\n$?s560020[|cFFFFFFFF卤水|r][|cffffffff震击|r]可在引导期间瞬发$?s578299[，并造成$578299s1%的额外伤害][]。'),
(572864, '|cffcc99ff消耗20点静电|r\r\n引导一道风暴光束射向敌人，在$d内造成${($d*1000/$T1)*($m1+0+$SP*.2)}点冰霜伤害，受你的法术急速加成。\r\n\r\n$?s560020[|cFFFFFFFF卤水|r][|cffffffff震击|r]可在引导期间瞬发$?s578299[，并造成$578299s1%的额外伤害][]。'),
(572865, '|cffcc99ff消耗20点静电|r\r\n引导一道风暴光束射向敌人，在$d内造成${($d*1000/$T1)*($m1+0+$SP*.2)}点冰霜伤害，受你的法术急速加成。\r\n\r\n$?s560020[|cFFFFFFFF卤水|r][|cffffffff震击|r]可在引导期间瞬发$?s578299[，并造成$578299s1%的额外伤害][]。'),
(572866, '|cffcc99ff消耗20点静电|r\r\n引导一道风暴光束射向敌人，在$d内造成${($d*1000/$T1)*($m1+0+$SP*.2)}点冰霜伤害，受你的法术急速加成。\r\n\r\n$?s560020[|cFFFFFFFF卤水|r][|cffffffff震击|r]可在引导期间瞬发$?s578299[，并造成$578299s1%的额外伤害][]。'),
(572867, '|cffcc99ff消耗20点静电|r\r\n引导一道风暴光束射向敌人，在$d内造成${($d*1000/$T1)*($m1+0+$SP*.2)}点冰霜伤害，受你的法术急速加成。\r\n\r\n$?s560020[|cFFFFFFFF卤水|r][|cffffffff震击|r]可在引导期间瞬发$?s578299[，并造成$578299s1%的额外伤害][]。');
