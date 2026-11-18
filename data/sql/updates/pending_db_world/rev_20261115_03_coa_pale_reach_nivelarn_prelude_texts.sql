-- Nivelarn prelude (175131-175137) progress and completion texts: the realm's English originals recorded by the
-- AscensionES addon (pEN/cEN); <hic> tags it strips are restored where the gap shows. 175136 and 175137 have no
-- objectives and no progress text.
DELETE FROM `quest_request_items` WHERE `ID` IN (175131, 175132, 175133, 175134, 175135);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(175131, 0, 0, '<一张撕破的纸片，湿漉漉地半埋在雪里。>', 0),
(175132, 1, 0, '有事？<嗝>。我……能帮你点什么吗？', 0),
(175133, 1, 0, '牦牛那边怎么样了？', 0),
(175134, 1, 0, '办完了？<嗝>。好。好，啊。', 0),
(175135, 1, 0, '这么说，是山地人队长基尔达派你来的？', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (175131, 175132, 175133, 175134, 175135, 175136, 175137);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175131, 0, 0, 0, 0, 0, 0, 0, 0, '<一份加密文件；字面看起来只是字母与空格的随机组合，与你所知的任何语言或方言都不相符。>$B$B<从周围的痕迹判断，这里显然就是伏击者的营地；他们撤离时不得不匆忙拆毁了它。>', 0),
(175132, 1, 0, 0, 0, 0, 0, 0, 0, '你……你不是旅店老板派来的吧？$B$B<戈林认真地听你讲述；至少是一个醉汉所能做到的认真。>$B$B那么说，他确实派你来了，而且还不是为了他的钱。好。好。让我看看那份文件；它总不至于……不至于……那么难破。', 0),
(175133, 1, 0, 0, 0, 0, 0, 0, 0, '你手脚真快！太快了！<嗝>。早知道这样，我就多托你办几件事了。$B$B算了，我快翻完了。就给我一小会儿，我要把这份译文再核对一遍……', 0),
(175134, 1, 0, 0, 0, 0, 0, 0, 0, '<戈林的脸颊一下子涨得通红，随即放声大笑。>$B$B我……<嗝>，我快翻完了。嗯……', 0),
(175135, 1, 0, 0, 0, 0, 0, 0, 0, '朋友，你为铁炉堡立下了无法估量的功劳。$B$B伏击者听命于丹卡扎德，不过是印证了今后我们的外交工作有多么要紧。$B$B只要我和我的表亲携手，就能促成铁炉堡与这座城市重归于好；这正是矮人一族迫切需要的。$B$B以我的荣誉起誓，即便有暗中算计我们的黑手，我们也一定会成功。', 0),
(175136, 1, 0, 0, 0, 0, 0, 0, 0, '我猜你是随使团一起来的。$B$B<丹卡扎德的领主从浓密杂乱的眉毛下打量你，那目光透着不近人情的威严，仿佛世间烦扰都与他无关。>$B$B省掉你那些藏着话的指控吧。萨加斯参议员遭遇的伏击只是一场不幸的巧合；这座城里任何有荣誉感的矮人，都绝不会密谋杀害自己的同胞。', 0),
(175137, 1, 0, 0, 0, 0, 0, 0, 0, '<巴格沃夫听完你的话，带着军人式的、务实的急躁点了点头。>$B$B我明白了。不用再说。丹卡扎德向来是个安静的去处，一处避难所。可近来，这座城市一场危机接着一场危机：$B$B霜鬃巨魔入侵国王之路；黑铁矮人的侵扰与破坏……还有你参与护送的车队，引出了那场政治地震。$B$B活计和麻烦一样多。问题是：你担得起吗？', 0);

-- Bitter Legacy of the War (175131): the corpse's raid-boss whisper ran off the screen as one line; the centre-screen
-- frame does not wrap, so the text breaks between sentences.
DELETE FROM `creature_text` WHERE `CreatureID` = 164377 AND `GroupID` = 0 AND `ID` = 0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(164377, 0, 0, '<一名矮人的尸体，衣饰与勋章无不合乎铁炉堡使节的身份。\n奇怪的是，所有尸体都属于外交使团成员。\n难道没有一个伏击者死去？那么，车队其余的幸存者又是怎么逃走的？>', 42, 0, 100, 0, 0, 0, 0, 0, 'Ironforge Diplomatic - corpse inspected');
