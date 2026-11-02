-- CoA Tanaris: the 15 quests rev_20261101_30_coa_tanaris_restore.sql restores had no progress or completion text,
-- so their turn-in windows opened empty. The client quest cache does not store them, and SUB, AscensionDB/Exiles,
-- CoA Tavern, the addons and Descension have none. The live lines below come from a live stream (YouTube
-- rEaTnfr2Ke4): the progress and completion texts of Sea Giant Fantasy 255036, Battery Salvage 255055 and Power
-- From Storms 255056, the completion texts of Nothing to Declare 255037 and Contractual Concern 982257, and the
-- progress text of Smoke on the Water 255048. Words the stream overlay hides are reconstructed: "hell" in the
-- progress text of 255036, "Snazzy" in the completion text of 255037, whose opening sentence the stream never
-- shows and is left out, and "Oh" and "sent ya," in the completion text of 982257. Every other text is a
-- placeholder, newly written to match its quest's description and giver until the original line is found: both
-- texts of 255028, 255029, 255041, 909041, 909042 and 982258, the completion texts of 255040, 255042, 909040 and
-- 255048, and the progress text of 255037. The Informant 255040, The Informant - Bloodsail's Ally 255042, Emergency
-- Measures 909040 and Contractual Concern 982257 have nothing to collect and get no progress text.

DELETE FROM `quest_request_items` WHERE `ID` IN (255028, 255029, 255036, 255037, 255041, 255048, 255055, 255056, 909041, 909042, 982258);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(255028, 0, 0, '怎么样？那条纳迦还在山脊后面游来游去吗，$r？', 0),
(255029, 0, 0, '你把沙带来了吗，$r？你每耽搁一刻，时间就从我们手中溜走。', 0),
(255036, 0, 0, '就算被拖到地狱里去它当然还能用。你难道不知道地精科技除了可靠就没别的了吗？！', 0),
(255037, 0, 0, '你正站在我的港口里，所以我希望你是带着好消息来的。斯纳兹的货送到对的人手里了吗？', 0),
(255041, 0, 0, '你有那家制革厂的消息吗，$N？说吧。', 0),
(255048, 0, 0, '你拿到我的雪茄货了吗？', 0),
(255055, 0, 0, '<你得先消灭那条云端翔龙，才能好好看看这块电池。>', 0),
(255056, 0, 0, '找到什么了吗？', 0),
(909041, 0, 0, '你找到了吗？一本真正的日记？不是伪造的。我会知道的，$N。', 0),
(909042, 0, 0, '沙丘下的地面仍在颤抖。它们仍在进食。', 0),
(982258, 0, 0, '沙子仍在呼唤。你面对过那个漩涡了吗？', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (255028, 255029, 255036, 255037, 255040, 255041, 255042, 255048, 255055, 255056, 909040, 909041, 909042, 982257, 982258);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(255028, 0, 0, 0, 0, 0, 0, 0, 0, '一条会说话、只想不被打扰的纳迦？只要它别进我的水域、别靠近我的炼金师，它想唱水手小调就随它去。$B$B干得好，$r。来，这是你应得的。', 0),
(255029, 0, 0, 0, 0, 0, 0, 0, 0, '是的……我能感觉到其中流动的时间。这仅仅是个开始，但这是我的人民长久以来从未有过的希望。$B$B接受我的感激吧，$r，还有这份谢礼。', 0),
(255036, 0, 0, 0, 0, 0, 0, 0, 0, '好。和你做生意很愉快！$B$B很高兴你是那种懂事的人，既然我们的说法一致，我想我们就没问题了。', 0),
(255037, 0, 0, 0, 0, 0, 0, 0, 0, '斯纳兹已经跟我说了。谁知道他这么擅长杀海巨人？幸好他在那儿救了你的小命，是吧？$B$B总之，干得好。也许有一天你会成为优秀的水手。或者是码头工人，不确定，追随你的梦想吧，孩子。', 0),
(255040, 0, 0, 0, 0, 0, 0, 0, 0, '<阿尔文瞥了一眼你手中的日志，脸色顿时煞白。>$B$B你从哪儿弄来的？小声点。我们像讲道理的人一样谈谈。', 0),
(255041, 0, 0, 0, 0, 0, 0, 0, 0, '一个血帆间谍就在我的港口里，在我眼皮底下经营制革厂！你为藏宝海湾立了大功，$N。热砂港财团不会忘记。', 0),
(255042, 0, 0, 0, 0, 0, 0, 0, 0, '聪明的选择。这是答应你的金币。你从没见过那本日志，我也从没见过你。', 0),
(255048, 0, 0, 0, 0, 0, 0, 0, 0, '这才像话！干燥、新鲜，一根都不少。你都快习惯有用了，孩子。来，这是你的辛苦费。', 0),
(255055, 0, 0, 0, 0, 0, 0, 0, 0, '<仔细检查后，电池噼啪作响的能量似乎快要耗尽了。很可能它的电荷被你刚击败的生物吸收了。以这种状态，伦塔尔恐怕用它做不了什么。>', 0),
(255056, 0, 0, 0, 0, 0, 0, 0, 0, '这东西在飞艇里？！我不知道它充的是什么，但我从没见过这样的电池。它非常强大，其实还有点不稳定，但我能控制住它。$B$B这是你的报酬，我得把它拿给我的工程师们。', 0),
(909040, 0, 0, 0, 0, 0, 0, 0, 0, '比尔吉兹尔的订单，是吧？给加基森送水，马上办。行行行，我这就把木桶运起来。谢谢你一路把它拖到这儿来。', 0),
(909041, 0, 0, 0, 0, 0, 0, 0, 0, '是真的！看看这字迹、盐渍，还有那些小涂鸦……天哪。$B$B这太棒了，$N。真的。当然是为了研究。拿着这个，你完全配得上。', 0),
(909042, 0, 0, 0, 0, 0, 0, 0, 0, '空洞渐渐安静下来。沙丘现在呼吸得更轻松了。$B$B你做了该做的事。拿着这个，记住沙漠会记得那些保护它的人。', 0),
(982257, 0, 0, 0, 0, 0, 0, 0, 0, '哦天哪，你在找我？还是泽贝尔派你来的，这可不好，不不不，这真是太糟了。$B$B我发誓我没有偷懒。是那些该死的海巨人，它们变得凶暴还偷走了我该死的无线电！拜托，你得理解！', 0),
(982258, 0, 0, 0, 0, 0, 0, 0, 0, '它还是温的，正如我说的那样。再拿一会儿……感受它在流动。沙漠通过它在说话。$B$B谢谢你，$N。', 0);
