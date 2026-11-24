-- CoA: put the packet-flood watch on the opcodes a hacked client abuses (world DB)
-- `antidos_opcode_policies` is read by WorldGlobals::LoadAntiDosOpcodePolicies and applied per
-- opcode in WorldSession::DosProtection::EvaluateOpcode. The shipped rows punish floods with
-- Policy = 1 (Kick); the hot cheating vectors below have no row at all, so they are unthrottled.
-- This patch adds them with Policy = 3 (Log): every exceeding packet is written to Server.log as
-- "AntiDOS: ... flooding packet (opc: ...)" and nothing is kicked or banned, so one week of real
-- traffic shows whether the limits below are wrong before anybody gets punished.
-- After that week, either keep the rows as they are or switch the ones that stayed quiet to
-- Policy = 2 (Ban) with the statement at the bottom, and set PacketSpoof.BanMode /
-- PacketSpoof.BanDuration in worldserver.conf to match.
-- MaxAllowedCount is per world second, which is why these limits are far above normal play.

DELETE FROM `antidos_opcode_policies` WHERE `Opcode` IN (
    171, 172, 264, 267, 268, 269, 273, 302, 317, 321, 322, 349, 350, 351, 373, 434, 439, 568, 582, 598, 672);

INSERT INTO `antidos_opcode_policies` (`Opcode`, `Policy`, `MaxAllowedCount`) VALUES
    (171, 3, 60),   -- CMSG_USE_ITEM
    (172, 3, 30),   -- CMSG_OPEN_ITEM
    (264, 3, 60),   -- CMSG_AUTOSTORE_LOOT_ITEM
    (267, 3, 60),   -- CMSG_AUTOSTORE_BAG_ITEM
    (268, 3, 60),   -- CMSG_SWAP_ITEM
    (269, 3, 60),   -- CMSG_SWAP_INV_ITEM
    (273, 3, 30),   -- CMSG_DESTROYITEM
    (302, 3, 60),   -- CMSG_CAST_SPELL
    (317, 3, 120),  -- CMSG_SET_SELECTION
    (321, 3, 60),   -- CMSG_ATTACKSWING
    (322, 3, 60),   -- CMSG_ATTACKSTOP
    (349, 3, 60),   -- CMSG_LOOT
    (350, 3, 30),   -- CMSG_LOOT_MONEY
    (351, 3, 30),   -- CMSG_LOOT_RELEASE
    (373, 3, 60),   -- CMSG_PET_ACTION
    (434, 3, 10),   -- CMSG_TRAINER_BUY_SPELL
    (439, 3, 10),   -- CMSG_BANKER_ACTIVATE
    (568, 3, 30),   -- CMSG_SEND_MAIL
    (582, 3, 60),   -- CMSG_MAIL_TAKE_ITEM
    (598, 3, 30),   -- CMSG_AUCTION_SELL_ITEM
    (672, 3, 30);   -- CMSG_LOOT_ROLL

-- Enforce later, per opcode, once the log shows a clean week:
-- UPDATE `antidos_opcode_policies` SET `Policy` = 2 WHERE `Opcode` IN (302, 171);
-- .reload config does not re-read this table; restart worldserver after editing it.
