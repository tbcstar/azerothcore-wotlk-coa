-- Battle Drums (803683) summons gameobject 9000117 three times. The client gameobject cache records it as
-- display 1032401 (7tr_tauren_drumsmall01) named 'Battle Drum'; 7217 is the stock orc voodoo drum.
UPDATE `gameobject_template` SET `displayId` = 1032401, `name` = '战鼓' WHERE `entry` = 9000117;
