-- ============================================================
-- 魔兽世界数据库汉化 SQL（14项核心表）
-- 适用：AzerothCore / TrinityCore 3.3.5
-- 前提：数据库已存在 *_locale 表且已填充 zhCN 数据
-- 执行方式：直接在数据库中运行
-- ============================================================

-- 1. 生物模板 creature_template
UPDATE `creature_template` ct
JOIN `creature_template_locale` ctl ON ct.`entry` = ctl.`entry`
SET ct.`name`    = IFNULL(ctl.`name`, ct.`name`),
    ct.`subname` = IFNULL(ctl.`subname`, ct.`subname`)
WHERE ctl.`locale` = 'zhCN';

-- 2. 物品模板 item_template
UPDATE `item_template` it
JOIN `item_template_locale` itl ON it.`entry` = itl.`entry`
SET it.`name`        = IFNULL(itl.`name`, it.`name`),
    it.`description` = IFNULL(itl.`description`, it.`description`)
WHERE itl.`locale` = 'zhCN';

-- 3. 任务模板 quest_template
UPDATE `quest_template` qt
JOIN `quest_template_locale` qtl ON qt.`ID` = qtl.`ID`
SET qt.`LogTitle`     = IFNULL(qtl.`Title`, qt.`LogTitle`),
    qt.`LogDescription` = IFNULL(qtl.`LogDescription`, qt.`LogDescription`),
    qt.`QuestDescription` = IFNULL(qtl.`QuestDescription`, qt.`QuestDescription`),
    qt.`AreaDescription` = IFNULL(qtl.`AreaDescription`, qt.`AreaDescription`),
    qt.`QuestCompletionLog` = IFNULL(qtl.`QuestCompletionLog`, qt.`QuestCompletionLog`)
WHERE qtl.`locale` = 'zhCN';

-- 4. 游戏对象模板 gameobject_template
UPDATE `gameobject_template` gt
JOIN `gameobject_template_locale` gtl ON gt.`entry` = gtl.`entry`
SET gt.`name`           = IFNULL(gtl.`name`, gt.`name`),
    gt.`castBarCaption` = IFNULL(gtl.`castBarCaption`, gt.`castBarCaption`)
WHERE gtl.`locale` = 'zhCN';

-- 5. NPC 对话文本 npc_text
UPDATE `npc_text` nt
JOIN `npc_text_locale` ntl ON nt.`ID` = ntl.`ID`
SET nt.`text0_0` = IFNULL(ntl.`text0_0`, nt.`text0_0`),
    nt.`text0_1` = IFNULL(ntl.`text0_1`, nt.`text0_1`),
    nt.`text1_0` = IFNULL(ntl.`text1_0`, nt.`text1_0`),
    nt.`text1_1` = IFNULL(ntl.`text1_1`, nt.`text1_1`)
WHERE ntl.`locale` = 'zhCN';

-- 6. 闲聊菜单选项 gossip_menu_option
UPDATE `gossip_menu_option` gmo
JOIN `gossip_menu_option_locale` gmol ON gmo.`MenuID` = gmol.`MenuID` AND gmo.`OptionID` = gmol.`OptionID`
SET gmo.`OptionText` = IFNULL(gmol.`OptionText`, gmo.`OptionText`)
WHERE gmol.`locale` = 'zhCN';

-- 7. 任务奖励文本（通过 quest_template 的 RewardText 字段）
UPDATE `quest_template` qt
JOIN `quest_template_locale` qtl ON qt.`ID` = qtl.`ID`
SET qt.`RewardText` = IFNULL(qtl.`RewardText`, qt.`RewardText`)
WHERE qtl.`locale` = 'zhCN';

-- 8. 生物对话文本 creature_text
UPDATE `creature_text` ct
JOIN `creature_text_locale` ctl ON ct.`CreatureID` = ctl.`CreatureID` AND ct.`GroupID` = ctl.`GroupID` AND ct.`ID` = ctl.`ID`
SET ct.`Text` = IFNULL(ctl.`Text`, ct.`Text`)
WHERE ctl.`locale` = 'zhCN';

-- 9. 物品套装名称 item_set_names
UPDATE `item_set_names` isn
JOIN `item_set_names_locale` isnl ON isn.`entry` = isnl.`entry`
SET isn.`name` = IFNULL(isnl.`name`, isn.`name`)
WHERE isnl.`locale` = 'zhCN';

-- 10. 成就奖励 achievement_reward
UPDATE `achievement_reward` ar
JOIN `achievement_reward_locale` arl ON ar.`ID` = arl.`ID`
SET ar.`Subject` = IFNULL(arl.`Subject`, ar.`Subject`),
    ar.`Text`    = IFNULL(arl.`Text`, ar.`Text`)
WHERE arl.`locale` = 'zhCN';

-- 11. 广播文本 broadcast_text
UPDATE `broadcast_text` bt
JOIN `broadcast_text_locale` btl ON bt.`ID` = btl.`ID`
SET bt.`MaleText`   = IFNULL(btl.`MaleText`, bt.`MaleText`),
    bt.`FemaleText` = IFNULL(btl.`FemaleText`, bt.`FemaleText`)
WHERE btl.`locale` = 'zhCN';

-- 12. 声望奖励文本（通过 quest_template 的 OfferRewardText 字段）
UPDATE `quest_template` qt
JOIN `quest_template_locale` qtl ON qt.`ID` = qtl.`ID`
SET qt.`OfferRewardText` = IFNULL(qtl.`OfferRewardText`, qt.`OfferRewardText`)
WHERE qtl.`locale` = 'zhCN';

-- 13. 页面文本 page_text
UPDATE `page_text` pt
JOIN `page_text_locale` ptl ON pt.`ID` = ptl.`ID`
SET pt.`text` = IFNULL(ptl.`text`, pt.`text`)
WHERE ptl.`locale` = 'zhCN';

-- 14. 法术名称（通过 spell_template 或 spell_dbc，视核心版本而定）
-- 注意：部分核心使用 spell_dbc 表，部分使用 spell_template
UPDATE `spell_template` st
JOIN `spell_template_locale` stl ON st.`entry` = stl.`entry`
SET st.`name`          = IFNULL(stl.`name`, st.`name`),
    st.`nameSubtext`   = IFNULL(stl.`nameSubtext`, st.`nameSubtext`),
    st.`description`   = IFNULL(stl.`description`, st.`description`),
    st.`auraDescription` = IFNULL(stl.`auraDescription`, st.`auraDescription`)
WHERE stl.`locale` = 'zhCN';