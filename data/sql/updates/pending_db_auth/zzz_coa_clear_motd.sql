-- The login screen shows whatever these tables hold, and the upstream defaults
-- advertise the framework instead of this realm. Leaving both tables empty hides
-- the message box for every realm and locale.
DELETE FROM `motd`;
DELETE FROM `motd_localized`;
