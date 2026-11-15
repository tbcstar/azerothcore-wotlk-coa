-- Juju Injection (503608 rank 1, 503609 rank 2) raised Agility and Intellect, which leaves the Spirit specialization
-- Brewing with nothing to multiply, and the Spirit Warden Idol buff (503775) raised Spirit only, which leaves the
-- Agility specialization Shadowhunting with nothing to multiply. The core now adds Spirit to Juju Injection and
-- Agility to the buff, with the same percent (AscensionWitchDoctorCompletion.cpp). The client keeps the old effects
-- and texts in Spell.dbc, so the talent descriptions and the buff's aura text are rewritten here. Spirit Warden
-- itself (503774) only carries the talent text, which names the buff's percent through $503775s1.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (503608, 503609, 503774, 503775);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(503608, '使你的敏捷、智力和精神提高 $s1%。', NULL),
(503609, '使你的敏捷、智力和精神提高 $s1%。', NULL),
(503774, '召唤 |cFFFFFFFF神像|r 现在会使你的精神和敏捷提高 $503775s1%，持续 $503775d。', NULL),
(503775, '', '精神和敏捷提高 ${$w1}%。');
