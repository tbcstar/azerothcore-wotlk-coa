-- One indexed pass replaces 668 single-row UPDATEs on `item_template`.`description`.
UPDATE `item_template` AS `a`
JOIN (
    SELECT 'Unlocks the opportunity to switch to Specialization C and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 C 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CC and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CC 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCL and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCL 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCLI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCLI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCLII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCLII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCLIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCLIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCLIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCLIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXL and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXL 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXLI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXLI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXLII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXLII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXLIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXLIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXLIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXLIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXLIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXLIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXLV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXLV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXLVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXLVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXLVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXLVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXLVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXLVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CCXXXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CCXXXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CL and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CL 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CLXXXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CLXXXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXC and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXC 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXCI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXCI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXCII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXCII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXCIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXCIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXCIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXCIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXCIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXCIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXCV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXCV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXCVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXCVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXCVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXCVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXCVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXCVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXL and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXL 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXLI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXLI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXLII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXLII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXLIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXLIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXLIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXLIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXLIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXLIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXLV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXLV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXLVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXLVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXLVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXLVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXLVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXLVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization CXXXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 CXXXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization L and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 L 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization LXXXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 LXXXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XC and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XC 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XCI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XCI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XCII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XCII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XCIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XCIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XCIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XCIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XCIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XCIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XCV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XCV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XCVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XCVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XCVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XCVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XCVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XCVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XL and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XL 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XLI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XLI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XLII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XLII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XLIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XLIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XLIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XLIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XLIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XLIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XLV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XLV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XLVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XLVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XLVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XLVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XLVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XLVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXXI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXXI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXXII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXXII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXXIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXXIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXXIV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXXIV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXXIX and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXXIX 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXXV and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXXV 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXXVI and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXXVI 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXXVII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXXVII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Unlocks the opportunity to switch to Specialization XXXVIII and unlocks an additional Mystic Enchanting Specialization. This only affects the character using it.' AS `src`, '解锁切换至专精 XXXVIII 的机会，并额外解锁一个神秘附魔专精。仅对使用它的角色生效。' AS `dst`
    UNION ALL SELECT 'Will grant you: A Quick Death' AS `src`, '将为你提供：快速死亡' AS `dst`
    UNION ALL SELECT 'Will grant you: Ace up your Sleeve' AS `src`, '将为你提供：杀手锏' AS `dst`
    UNION ALL SELECT 'Will grant you: Adumbral Companion' AS `src`, '将为你提供：幽影同伴' AS `dst`
    UNION ALL SELECT 'Will grant you: Adumbral Conjurer' AS `src`, '将为你提供：幽影咒术师' AS `dst`
    UNION ALL SELECT 'Will grant you: Against All Odds' AS `src`, '将为你提供：力挽狂澜' AS `dst`
    UNION ALL SELECT 'Will grant you: Aggravated Burns' AS `src`, '将为你提供：加剧燃烧' AS `dst`
    UNION ALL SELECT 'Will grant you: Aimed Explosive Shot' AS `src`, '将为你提供：定向爆炸射击' AS `dst`
    UNION ALL SELECT 'Will grant you: Alembic' AS `src`, '将为你提供：萃取' AS `dst`
    UNION ALL SELECT 'Will grant you: Amal\'thazad\'s Curse' AS `src`, '将为你提供：阿曼萨加德的诅咒' AS `dst`
    UNION ALL SELECT 'Will grant you: Ambidextrous' AS `src`, '将为你提供：左右开弓' AS `dst`
    UNION ALL SELECT 'Will grant you: Amplify Shadows' AS `src`, '将为你提供：增幅暗影' AS `dst`
    UNION ALL SELECT 'Will grant you: Arcane Displacement' AS `src`, '将为你提供：奥术位移' AS `dst`
    UNION ALL SELECT 'Will grant you: Arcane Infusion' AS `src`, '将为你提供：奥术灌注' AS `dst`
    UNION ALL SELECT 'Will grant you: Arcane Motes' AS `src`, '将为你提供：奥术微粒' AS `dst`
    UNION ALL SELECT 'Will grant you: Arcane Synergy' AS `src`, '将为你提供：奥术协同' AS `dst`
    UNION ALL SELECT 'Will grant you: Armor of Faith' AS `src`, '将为你提供：信仰之甲' AS `dst`
    UNION ALL SELECT 'Will grant you: Arrows of Fire' AS `src`, '将为你提供：火焰之箭' AS `dst`
    UNION ALL SELECT 'Will grant you: Assuaging Shadows' AS `src`, '将为你提供：平息暗影' AS `dst`
    UNION ALL SELECT 'Will grant you: Atonement' AS `src`, '将为你提供：赎罪' AS `dst`
    UNION ALL SELECT 'Will grant you: Avatar of Earth' AS `src`, '将为你提供：大地的化身' AS `dst`
    UNION ALL SELECT 'Will grant you: Avatar of Lightning' AS `src`, '将为你提供：闪电化身' AS `dst`
    UNION ALL SELECT 'Will grant you: Baleful Hammer' AS `src`, '将为你提供：恶意之锤' AS `dst`
    UNION ALL SELECT 'Will grant you: Battering Ram' AS `src`, '将为你提供：攻城锤' AS `dst`
    UNION ALL SELECT 'Will grant you: Battle Cultist: Firebrand' AS `src`, '将为你提供：战斗信徒：火印' AS `dst`
    UNION ALL SELECT 'Will grant you: Battle Fervor' AS `src`, '将为你提供：战斗狂热' AS `dst`
    UNION ALL SELECT 'Will grant you: Battlemage' AS `src`, '将为你提供：战斗法师' AS `dst`
    UNION ALL SELECT 'Will grant you: Bear Attack' AS `src`, '将为你提供：巨熊出击' AS `dst`
    UNION ALL SELECT 'Will grant you: Benevolent Crusader' AS `src`, '将为你提供：仁慈十字军' AS `dst`
    UNION ALL SELECT 'Will grant you: Bible Belter' AS `src`, '将为你提供：圣经歌手' AS `dst`
    UNION ALL SELECT 'Will grant you: Big Brain Big Muscles' AS `src`, '将为你提供：大块头有大智慧' AS `dst`
    UNION ALL SELECT 'Will grant you: Biting Cold' AS `src`, '将为你提供：刺骨之寒' AS `dst`
    UNION ALL SELECT 'Will grant you: Black Flames' AS `src`, '将为你提供：黑色烈焰' AS `dst`
    UNION ALL SELECT 'Will grant you: Blademaster' AS `src`, '将为你提供：剑圣' AS `dst`
    UNION ALL SELECT 'Will grant you: Blades of Blood' AS `src`, '将为你提供：流血之刃' AS `dst`
    UNION ALL SELECT 'Will grant you: Blaze' AS `src`, '将为你提供：炽燃' AS `dst`
    UNION ALL SELECT 'Will grant you: Blaze Ward' AS `src`, '将为你提供：烈焰结界' AS `dst`
    UNION ALL SELECT 'Will grant you: Blazing Determination' AS `src`, '将为你提供：炽热意志' AS `dst`
    UNION ALL SELECT 'Will grant you: Blessing of the Divines' AS `src`, '将为你提供：圣洁祝福' AS `dst`
    UNION ALL SELECT 'Will grant you: Blind Rage' AS `src`, '将为你提供：盲目之怒' AS `dst`
    UNION ALL SELECT 'Will grant you: Blood Drinker' AS `src`, '将为你提供：饮血者' AS `dst`
    UNION ALL SELECT 'Will grant you: Blood Rain' AS `src`, '将为你提供：血雨' AS `dst`
    UNION ALL SELECT 'Will grant you: Blood and Guts' AS `src`, '将为你提供：开膛破肚' AS `dst`
    UNION ALL SELECT 'Will grant you: Blooming Growth' AS `src`, '将为你提供：绽放生长' AS `dst`
    UNION ALL SELECT 'Will grant you: Blunt Force Trauma' AS `src`, '将为你提供：钝器创伤' AS `dst`
    UNION ALL SELECT 'Will grant you: Boomer' AS `src`, '将为你提供：布默' AS `dst`
    UNION ALL SELECT 'Will grant you: Booming Thunder' AS `src`, '将为你提供：雷霆轰鸣' AS `dst`
    UNION ALL SELECT 'Will grant you: Bountiful Gift' AS `src`, '将为你提供：丰盈的馈赠' AS `dst`
    UNION ALL SELECT 'Will grant you: Bountiful Holy Wrath' AS `src`, '将为你提供：丰裕神圣愤怒' AS `dst`
    UNION ALL SELECT 'Will grant you: Bright Lights' AS `src`, '将为你提供：明亮之光' AS `dst`
    UNION ALL SELECT 'Will grant you: Bulwark' AS `src`, '将为你提供：壁垒' AS `dst`
    UNION ALL SELECT 'Will grant you: Burst of Thorns' AS `src`, '将为你提供：荆棘爆裂' AS `dst`
    UNION ALL SELECT 'Will grant you: By Fire Be Purged' AS `src`, '将为你提供：让火焰净化一切' AS `dst`
    UNION ALL SELECT 'Will grant you: Calculated Demolition' AS `src`, '将为你提供：精算破坏' AS `dst`
    UNION ALL SELECT 'Will grant you: Cauterizing Fire' AS `src`, '将为你提供：灼烧火焰' AS `dst`
    UNION ALL SELECT 'Will grant you: Centered' AS `src`, '将为你提供：心神专注' AS `dst`
    UNION ALL SELECT 'Will grant you: Channeled Rage' AS `src`, '将为你提供：引导之怒' AS `dst`
    UNION ALL SELECT 'Will grant you: Chaos Manifesting' AS `src`, '将为你提供：混乱显现' AS `dst`
    UNION ALL SELECT 'Will grant you: Charged Up' AS `src`, '将为你提供：充能完毕' AS `dst`
    UNION ALL SELECT 'Will grant you: Chilling Blows' AS `src`, '将为你提供：冰冷打击' AS `dst`
    UNION ALL SELECT 'Will grant you: Cleanse In Flames' AS `src`, '将为你提供：烈焰净化' AS `dst`
    UNION ALL SELECT 'Will grant you: Clear Mind' AS `src`, '将为你提供：节能集中' AS `dst`
    UNION ALL SELECT 'Will grant you: Cloudburst' AS `src`, '将为你提供：云爆' AS `dst`
    UNION ALL SELECT 'Will grant you: Coax to Darkness' AS `src`, '将为你提供：黑暗引诱' AS `dst`
    UNION ALL SELECT 'Will grant you: Cold Break' AS `src`, '将为你提供：寒冰破碎' AS `dst`
    UNION ALL SELECT 'Will grant you: Collective Conscious' AS `src`, '将为你提供：集体意志' AS `dst`
    UNION ALL SELECT 'Will grant you: Compound Power' AS `src`, '将为你提供：复合之力' AS `dst`
    UNION ALL SELECT 'Will grant you: Consecrated Strikes' AS `src`, '将为你提供：圣化打击' AS `dst`
    UNION ALL SELECT 'Will grant you: Conservation' AS `src`, '将为你提供：节约' AS `dst`
    UNION ALL SELECT 'Will grant you: Consumed by Fire' AS `src`, '将为你提供：吞噬火焰' AS `dst`
    UNION ALL SELECT 'Will grant you: Contagious' AS `src`, '将为你提供：传染性' AS `dst`
    UNION ALL SELECT 'Will grant you: Controlled Blast' AS `src`, '将为你提供：控制爆炸' AS `dst`
    UNION ALL SELECT 'Will grant you: Controlled Burn' AS `src`, '将为你提供：可控燃烧' AS `dst`
    UNION ALL SELECT 'Will grant you: Controlled Explosion' AS `src`, '将为你提供：可控爆炸' AS `dst`
    UNION ALL SELECT 'Will grant you: Controlled Storm' AS `src`, '将为你提供：控制风暴' AS `dst`
    UNION ALL SELECT 'Will grant you: Controlled Typhoon' AS `src`, '将为你提供：控制的台风' AS `dst`
    UNION ALL SELECT 'Will grant you: Convert or Burn' AS `src`, '将为你提供：转化或燃烧' AS `dst`
    UNION ALL SELECT 'Will grant you: Corrupted Church' AS `src`, '将为你提供：腐化教会' AS `dst`
    UNION ALL SELECT 'Will grant you: Cosmic Reprisal' AS `src`, '将为你提供：宇宙复仇' AS `dst`
    UNION ALL SELECT 'Will grant you: Counterpoise' AS `src`, '将为你提供：制衡' AS `dst`
    UNION ALL SELECT 'Will grant you: Counterproductive' AS `src`, '将为你提供：适得其反' AS `dst`
    UNION ALL SELECT 'Will grant you: Covering Crown' AS `src`, '将为你提供：回春之冠' AS `dst`
    UNION ALL SELECT 'Will grant you: Coward\'s Bane' AS `src`, '将为你提供：懦夫克星' AS `dst`
    UNION ALL SELECT 'Will grant you: Crackling Thunder' AS `src`, '将为你提供：爆裂雷霆' AS `dst`
    UNION ALL SELECT 'Will grant you: Crazy Cultist' AS `src`, '将为你提供：疯狂术士' AS `dst`
    UNION ALL SELECT 'Will grant you: Creative Destruction' AS `src`, '将为你提供：创造毁灭' AS `dst`
    UNION ALL SELECT 'Will grant you: Crimson Champion' AS `src`, '将为你提供：猩红冠军' AS `dst`
    UNION ALL SELECT 'Will grant you: Critical Cycles' AS `src`, '将为你提供：致命循环' AS `dst`
    UNION ALL SELECT 'Will grant you: Cryotherapist' AS `src`, '将为你提供：冰冻医师' AS `dst`
    UNION ALL SELECT 'Will grant you: Cumulonimbus' AS `src`, '将为你提供：积雨云' AS `dst`
    UNION ALL SELECT 'Will grant you: Dancer in the Dark' AS `src`, '将为你提供：黑暗舞者' AS `dst`
    UNION ALL SELECT 'Will grant you: Dancing Flames' AS `src`, '将为你提供：舞动烈焰' AS `dst`
    UNION ALL SELECT 'Will grant you: Dark Arrow' AS `src`, '将为你提供：黑暗之箭' AS `dst`
    UNION ALL SELECT 'Will grant you: Dark Operation' AS `src`, '将为你提供：黑暗行动' AS `dst`
    UNION ALL SELECT 'Will grant you: Dark Surgeon' AS `src`, '将为你提供：黑暗军医' AS `dst`
    UNION ALL SELECT 'Will grant you: Darting Shadows' AS `src`, '将为你提供：疾驰阴影' AS `dst`
    UNION ALL SELECT 'Will grant you: Deadly Aim' AS `src`, '将为你提供：致命瞄准' AS `dst`
    UNION ALL SELECT 'Will grant you: Deadly Indoctrination' AS `src`, '将为你提供：致命教化' AS `dst`
    UNION ALL SELECT 'Will grant you: Death or Glory' AS `src`, '将为你提供：死亡或荣耀' AS `dst`
    UNION ALL SELECT 'Will grant you: Deathbringer' AS `src`, '将为你提供：死亡使者' AS `dst`
    UNION ALL SELECT 'Will grant you: Defensive Magic' AS `src`, '将为你提供：防御魔法' AS `dst`
    UNION ALL SELECT 'Will grant you: Demonic Influence' AS `src`, '将为你提供：恶魔统御' AS `dst`
    UNION ALL SELECT 'Will grant you: Demonic Mind' AS `src`, '将为你提供：恶魔心智' AS `dst`
    UNION ALL SELECT 'Will grant you: Demonic Synergy' AS `src`, '将为你提供：恶魔协同' AS `dst`
    UNION ALL SELECT 'Will grant you: Deranged Druid' AS `src`, '将为你提供：狂乱德鲁伊' AS `dst`
    UNION ALL SELECT 'Will grant you: Desperation' AS `src`, '将为你提供：绝望时刻' AS `dst`
    UNION ALL SELECT 'Will grant you: Deviant' AS `src`, '将为你提供：离经叛道' AS `dst`
    UNION ALL SELECT 'Will grant you: Direct Command' AS `src`, '将为你提供：直接命令' AS `dst`
    UNION ALL SELECT 'Will grant you: Divine Purpose' AS `src`, '将为你提供：神圣意志' AS `dst`
    UNION ALL SELECT 'Will grant you: Do The Stance Dance' AS `src`, '将为你提供：姿态舞' AS `dst`
    UNION ALL SELECT 'Will grant you: Dominant Word: Shield' AS `src`, '将为你提供：统御真言：盾' AS `dst`
    UNION ALL SELECT 'Will grant you: Double Agent' AS `src`, '将为你提供：双倍间谍' AS `dst`
    UNION ALL SELECT 'Will grant you: Double Down' AS `src`, '将为你提供：双管齐下' AS `dst`
    UNION ALL SELECT 'Will grant you: Down For The Count' AS `src`, '将为你提供：倒地不起' AS `dst`
    UNION ALL SELECT 'Will grant you: Draconic Druid' AS `src`, '将为你提供：龙族德鲁伊' AS `dst`
    UNION ALL SELECT 'Will grant you: Dragon Knight' AS `src`, '将为你提供：龙骑士' AS `dst`
    UNION ALL SELECT 'Will grant you: Druid of Rot: Call Fungarians' AS `src`, '将为你提供：腐化德鲁伊：召唤真菌人' AS `dst`
    UNION ALL SELECT 'Will grant you: Druid of the Night' AS `src`, '将为你提供：夜之德鲁伊' AS `dst`
    UNION ALL SELECT 'Will grant you: Druidic Rites' AS `src`, '将为你提供：德鲁伊仪式' AS `dst`
    UNION ALL SELECT 'Will grant you: Drunken Brawler' AS `src`, '将为你提供：醉拳大师' AS `dst`
    UNION ALL SELECT 'Will grant you: Duck Hunting' AS `src`, '将为你提供：猎鸭?' AS `dst`
    UNION ALL SELECT 'Will grant you: Duelist' AS `src`, '将为你提供：决斗者' AS `dst`
    UNION ALL SELECT 'Will grant you: Dusk Knight' AS `src`, '将为你提供：黄昏骑士' AS `dst`
    UNION ALL SELECT 'Will grant you: Earth\'s Blessing' AS `src`, '将为你提供：大地祝福' AS `dst`
    UNION ALL SELECT 'Will grant you: Eccentric Elementalist' AS `src`, '将为你提供：古怪元素萨' AS `dst`
    UNION ALL SELECT 'Will grant you: Echoed Incinerate' AS `src`, '将为你提供：回响烧尽' AS `dst`
    UNION ALL SELECT 'Will grant you: Eldritch Knight' AS `src`, '将为你提供：恐怖骑士' AS `dst`
    UNION ALL SELECT 'Will grant you: Embracing Shadows' AS `src`, '将为你提供：拥抱暗影' AS `dst`
    UNION ALL SELECT 'Will grant you: Empyreal Arcanist' AS `src`, '将为你提供：天界奥术师' AS `dst`
    UNION ALL SELECT 'Will grant you: Endless Agony' AS `src`, '将为你提供：无尽痛苦' AS `dst`
    UNION ALL SELECT 'Will grant you: Endless Void' AS `src`, '将为你提供：无尽虚空' AS `dst`
    UNION ALL SELECT 'Will grant you: Enforcer' AS `src`, '将为你提供：执行者' AS `dst`
    UNION ALL SELECT 'Will grant you: Envenomed' AS `src`, '将为你提供：淬毒' AS `dst`
    UNION ALL SELECT 'Will grant you: Eternal Water' AS `src`, '将为你提供：永恒之水' AS `dst`
    UNION ALL SELECT 'Will grant you: Ethereal Form' AS `src`, '将为你提供：虚无形态' AS `dst`
    UNION ALL SELECT 'Will grant you: Evergreen' AS `src`, '将为你提供：常青' AS `dst`
    UNION ALL SELECT 'Will grant you: Everlasting Summons' AS `src`, '将为你提供：永恒召唤' AS `dst`
    UNION ALL SELECT 'Will grant you: Evoker' AS `src`, '将为你提供：魔导师' AS `dst`
    UNION ALL SELECT 'Will grant you: Exponential Spell Reflections' AS `src`, '将为你提供：多重法术反射' AS `dst`
    UNION ALL SELECT 'Will grant you: Expunge' AS `src`, '将为你提供：抹除' AS `dst`
    UNION ALL SELECT 'Will grant you: Faerie Swarm' AS `src`, '将为你提供：精灵虫群' AS `dst`
    UNION ALL SELECT 'Will grant you: Faith Rekindled' AS `src`, '将为你提供：重燃信仰' AS `dst`
    UNION ALL SELECT 'Will grant you: Faithful Flex' AS `src`, '将为你提供：信仰坚毅' AS `dst`
    UNION ALL SELECT 'Will grant you: Fancy Footwork' AS `src`, '将为你提供：华丽的脚步' AS `dst`
    UNION ALL SELECT 'Will grant you: Fearing Fire' AS `src`, '将为你提供：恐惧之火' AS `dst`
    UNION ALL SELECT 'Will grant you: Felborne' AS `src`, '将为你提供：邪能之躯' AS `dst`
    UNION ALL SELECT 'Will grant you: Feral Gnasher' AS `src`, '将为你提供：野性獠牙' AS `dst`
    UNION ALL SELECT 'Will grant you: Festering Wound' AS `src`, '将为你提供：溃烂伤口' AS `dst`
    UNION ALL SELECT 'Will grant you: Fetch Me Their Bones!' AS `src`, '将为你提供：取骨来见！' AS `dst`
    UNION ALL SELECT 'Will grant you: Fey-born' AS `src`, '将为你提供：妖精后裔' AS `dst`
    UNION ALL SELECT 'Will grant you: Field Surgeon' AS `src`, '将为你提供：战地军医' AS `dst`
    UNION ALL SELECT 'Will grant you: Fiery Barrage' AS `src`, '将为你提供：炽热弹幕' AS `dst`
    UNION ALL SELECT 'Will grant you: Fiery Escape' AS `src`, '将为你提供：炽焰逃脱' AS `dst`
    UNION ALL SELECT 'Will grant you: Final Shield' AS `src`, '将为你提供：最终护盾' AS `dst`
    UNION ALL SELECT 'Will grant you: Fire Bug' AS `src`, '将为你提供：火焰虫' AS `dst`
    UNION ALL SELECT 'Will grant you: Fire Fire Fireball' AS `src`, '将为你提供：火火火球术' AS `dst`
    UNION ALL SELECT 'Will grant you: Fire Storm' AS `src`, '将为你提供：火焰风暴' AS `dst`
    UNION ALL SELECT 'Will grant you: Fire Walk With Me' AS `src`, '将为你提供：与我共行火焰' AS `dst`
    UNION ALL SELECT 'Will grant you: Fire and Ice' AS `src`, '将为你提供：冰火同源' AS `dst`
    UNION ALL SELECT 'Will grant you: Fired Up' AS `src`, '将为你提供：引燃' AS `dst`
    UNION ALL SELECT 'Will grant you: Fist of Reckoning' AS `src`, '将为你提供：清算之拳' AS `dst`
    UNION ALL SELECT 'Will grant you: Flame Blood' AS `src`, '将为你提供：烈焰之血' AS `dst`
    UNION ALL SELECT 'Will grant you: Flame On!' AS `src`, '将为你提供：烈焰燃烧！' AS `dst`
    UNION ALL SELECT 'Will grant you: Flame Surge' AS `src`, '将为你提供：烈焰涌动' AS `dst`
    UNION ALL SELECT 'Will grant you: Flamekeeper' AS `src`, '将为你提供：烈焰守护者' AS `dst`
    UNION ALL SELECT 'Will grant you: Flash of Adrenaline' AS `src`, '将为你提供：冲动飞驰' AS `dst`
    UNION ALL SELECT 'Will grant you: Fleeting Shadow' AS `src`, '将为你提供：瞬息之影' AS `dst`
    UNION ALL SELECT 'Will grant you: Focal Point' AS `src`, '将为你提供：焦点' AS `dst`
    UNION ALL SELECT 'Will grant you: Focused Burst' AS `src`, '将为你提供：集中连射' AS `dst`
    UNION ALL SELECT 'Will grant you: Forked Lightning' AS `src`, '将为你提供：分叉闪电' AS `dst`
    UNION ALL SELECT 'Will grant you: Foul Play' AS `src`, '将为你提供：卑鄙行径' AS `dst`
    UNION ALL SELECT 'Will grant you: Freezing Strike' AS `src`, '将为你提供：冰封打击' AS `dst`
    UNION ALL SELECT 'Will grant you: Frigid Crusader' AS `src`, '将为你提供：严寒十字军' AS `dst`
    UNION ALL SELECT 'Will grant you: Frigid Darkness' AS `src`, '将为你提供：寒冷黑暗' AS `dst`
    UNION ALL SELECT 'Will grant you: Frost Lich' AS `src`, '将为你提供：冰霜巫妖' AS `dst`
    UNION ALL SELECT 'Will grant you: Frost Reaver' AS `src`, '将为你提供：冰霜掠夺' AS `dst`
    UNION ALL SELECT 'Will grant you: Frost Reserve' AS `src`, '将为你提供：冰霜储备' AS `dst`
    UNION ALL SELECT 'Will grant you: Frostbite' AS `src`, '将为你提供：冰霜之咬' AS `dst`
    UNION ALL SELECT 'Will grant you: Frozen Crusade' AS `src`, '将为你提供：冻结征伐' AS `dst`
    UNION ALL SELECT 'Will grant you: Frozen Mind' AS `src`, '将为你提供：冰冻意志' AS `dst`
    UNION ALL SELECT 'Will grant you: Frugal Disposition' AS `src`, '将为你提供：节俭性格' AS `dst`
    UNION ALL SELECT 'Will grant you: Garden of Growth' AS `src`, '将为你提供：生长花园' AS `dst`
    UNION ALL SELECT 'Will grant you: Glacial Companion' AS `src`, '将为你提供：冰川同伴' AS `dst`
    UNION ALL SELECT 'Will grant you: Good Fortune' AS `src`, '将为你提供：好运连连' AS `dst`
    UNION ALL SELECT 'Will grant you: Graceful Prayer' AS `src`, '将为你提供：恩赐祷言' AS `dst`
    UNION ALL SELECT 'Will grant you: Group Think' AS `src`, '将为你提供：群策群力' AS `dst`
    UNION ALL SELECT 'Will grant you: Grove Corruptor' AS `src`, '将为你提供：丛林腐化者' AS `dst`
    UNION ALL SELECT 'Will grant you: Groveborn' AS `src`, '将为你提供：丛林孕育' AS `dst`
    UNION ALL SELECT 'Will grant you: Growing Corruption' AS `src`, '将为你提供：腐蚀蔓延' AS `dst`
    UNION ALL SELECT 'Will grant you: Growing Light' AS `src`, '将为你提供：圣光成长' AS `dst`
    UNION ALL SELECT 'Will grant you: Growing Rage' AS `src`, '将为你提供：怒气渐长' AS `dst`
    UNION ALL SELECT 'Will grant you: Guardians of the Grove' AS `src`, '将为你提供：丛林守卫' AS `dst`
    UNION ALL SELECT 'Will grant you: Hailstorm' AS `src`, '将为你提供：冰雹风暴' AS `dst`
    UNION ALL SELECT 'Will grant you: Hallowed Flames' AS `src`, '将为你提供：神圣烈焰' AS `dst`
    UNION ALL SELECT 'Will grant you: Harbinger of Flame' AS `src`, '将为你提供：烈焰预兆' AS `dst`
    UNION ALL SELECT 'Will grant you: Harnessed Energy' AS `src`, '将为你提供：驾驭能量' AS `dst`
    UNION ALL SELECT 'Will grant you: Healing Garden' AS `src`, '将为你提供：治愈花园' AS `dst`
    UNION ALL SELECT 'Will grant you: Heavyweight' AS `src`, '将为你提供：重压' AS `dst`
    UNION ALL SELECT 'Will grant you: Here Comes The Big One' AS `src`, '将为你提供：大招来了' AS `dst`
    UNION ALL SELECT 'Will grant you: Higher Power' AS `src`, '将为你提供：至高之力' AS `dst`
    UNION ALL SELECT 'Will grant you: Hoarfrost' AS `src`, '将为你提供：霜寒斩' AS `dst`
    UNION ALL SELECT 'Will grant you: Holy Ascension' AS `src`, '将为你提供：神圣飞升' AS `dst`
    UNION ALL SELECT 'Will grant you: Holy Chains' AS `src`, '将为你提供：神圣锁链' AS `dst`
    UNION ALL SELECT 'Will grant you: Holy Ground' AS `src`, '将为你提供：神圣之地' AS `dst`
    UNION ALL SELECT 'Will grant you: Holy Magics' AS `src`, '将为你提供：神圣魔法' AS `dst`
    UNION ALL SELECT 'Will grant you: Holy Radiance' AS `src`, '将为你提供：神圣烈光' AS `dst`
    UNION ALL SELECT 'Will grant you: Holy Servitude' AS `src`, '将为你提供：神圣侍奉' AS `dst`
    UNION ALL SELECT 'Will grant you: Holy Spirit' AS `src`, '将为你提供：神圣之魂' AS `dst`
    UNION ALL SELECT 'Will grant you: Holy Supernova' AS `src`, '将为你提供：超级神圣新星' AS `dst`
    UNION ALL SELECT 'Will grant you: Hot Hands' AS `src`, '将为你提供：手感发烫' AS `dst`
    UNION ALL SELECT 'Will grant you: I Have The High Ground' AS `src`, '将为你提供：居高临下' AS `dst`
    UNION ALL SELECT 'Will grant you: Ice Age' AS `src`, '将为你提供：冰河时代' AS `dst`
    UNION ALL SELECT 'Will grant you: Ice Barrage' AS `src`, '将为你提供：寒冰弹幕' AS `dst`
    UNION ALL SELECT 'Will grant you: Ice Lash' AS `src`, '将为你提供：冰霜猛击' AS `dst`
    UNION ALL SELECT 'Will grant you: Ice Warden' AS `src`, '将为你提供：寒冰守卫' AS `dst`
    UNION ALL SELECT 'Will grant you: Ice the Burn' AS `src`, '将为你提供：冰冻燃烧' AS `dst`
    UNION ALL SELECT 'Will grant you: Icebound Arcanist' AS `src`, '将为你提供：冰缚奥术师' AS `dst`
    UNION ALL SELECT 'Will grant you: Icy Conjuror' AS `src`, '将为你提供：冰冷咒术师' AS `dst`
    UNION ALL SELECT 'Will grant you: Icy Magics' AS `src`, '将为你提供：冰冷魔法' AS `dst`
    UNION ALL SELECT 'Will grant you: Icy Seraph' AS `src`, '将为你提供：冰冷炽天使' AS `dst`
    UNION ALL SELECT 'Will grant you: Illusionist' AS `src`, '将为你提供：幻术师' AS `dst`
    UNION ALL SELECT 'Will grant you: Impending Doom' AS `src`, '将为你提供：末日降临' AS `dst`
    UNION ALL SELECT 'Will grant you: In Flames, My Sweet Shadow' AS `src`, '将为你提供：烈焰，我的甜蜜暗影' AS `dst`
    UNION ALL SELECT 'Will grant you: In For the Kill' AS `src`, '将为你提供：痛下杀手' AS `dst`
    UNION ALL SELECT 'Will grant you: In the Zone' AS `src`, '将为你提供：抗魔领域' AS `dst`
    UNION ALL SELECT 'Will grant you: Incompatible' AS `src`, '将为你提供：冰火不容' AS `dst`
    UNION ALL SELECT 'Will grant you: Indomitable' AS `src`, '将为你提供：不屈不挠' AS `dst`
    UNION ALL SELECT 'Will grant you: Inducing Trauma' AS `src`, '将为你提供：诱发创伤' AS `dst`
    UNION ALL SELECT 'Will grant you: Inescapable Roots' AS `src`, '将为你提供：束缚根须' AS `dst`
    UNION ALL SELECT 'Will grant you: Infused Gems' AS `src`, '将为你提供：注能宝石' AS `dst`
    UNION ALL SELECT 'Will grant you: Insatiable' AS `src`, '将为你提供：贪得无厌' AS `dst`
    UNION ALL SELECT 'Will grant you: Into Darkness' AS `src`, '将为你提供：进入黑暗' AS `dst`
    UNION ALL SELECT 'Will grant you: Jab Cross' AS `src`, '将为你提供：组合拳' AS `dst`
    UNION ALL SELECT 'Will grant you: Jack of All Trades' AS `src`, '将为你提供：万事通' AS `dst`
    UNION ALL SELECT 'Will grant you: Judge, Jury, Executioner' AS `src`, '将为你提供：法官、陪审团、刽子手' AS `dst`
    UNION ALL SELECT 'Will grant you: Just Warming Up' AS `src`, '将为你提供：热身开始' AS `dst`
    UNION ALL SELECT 'Will grant you: Kindle for the Fire' AS `src`, '将为你提供：燃火之引' AS `dst`
    UNION ALL SELECT 'Will grant you: Languish' AS `src`, '将为你提供：萎靡' AS `dst`
    UNION ALL SELECT 'Will grant you: Leftovers' AS `src`, '将为你提供：残渣' AS `dst`
    UNION ALL SELECT 'Will grant you: Lightning Discharge' AS `src`, '将为你提供：闪电释放' AS `dst`
    UNION ALL SELECT 'Will grant you: Lightning Mastery' AS `src`, '将为你提供：闪电掌握' AS `dst`
    UNION ALL SELECT 'Will grant you: Lightning Strikes Twice' AS `src`, '将为你提供：双重雷击' AS `dst`
    UNION ALL SELECT 'Will grant you: Lights Out' AS `src`, '将为你提供：熄灯' AS `dst`
    UNION ALL SELECT 'Will grant you: Lingering Death' AS `src`, '将为你提供：死亡萦绕' AS `dst`
    UNION ALL SELECT 'Will grant you: Locust Ranger' AS `src`, '将为你提供：蝗灾游侠' AS `dst`
    UNION ALL SELECT 'Will grant you: Low Tide' AS `src`, '将为你提供：低潮' AS `dst`
    UNION ALL SELECT 'Will grant you: Lucifur' AS `src`, '将为你提供：路西法' AS `dst`
    UNION ALL SELECT 'Will grant you: Lunar Spirits' AS `src`, '将为你提供：月光之灵' AS `dst`
    UNION ALL SELECT 'Will grant you: Lurking Shadow' AS `src`, '将为你提供：潜伏暗影' AS `dst`
    UNION ALL SELECT 'Will grant you: Mana Fiend' AS `src`, '将为你提供：法力恶魔' AS `dst`
    UNION ALL SELECT 'Will grant you: Mana Leech' AS `src`, '将为你提供：法力吸取' AS `dst`
    UNION ALL SELECT 'Will grant you: Martial Crescendo' AS `src`, '将为你提供：武术强化' AS `dst`
    UNION ALL SELECT 'Will grant you: Mass Hysteria' AS `src`, '将为你提供：群体癫狂' AS `dst`
    UNION ALL SELECT 'Will grant you: Mass Slow' AS `src`, '将为你提供：群体减速' AS `dst`
    UNION ALL SELECT 'Will grant you: Master of Arms' AS `src`, '将为你提供：武器大师' AS `dst`
    UNION ALL SELECT 'Will grant you: Master of Shadows' AS `src`, '将为你提供：暗影大师' AS `dst`
    UNION ALL SELECT 'Will grant you: Mending Hands' AS `src`, '将为你提供：治愈之手' AS `dst`
    UNION ALL SELECT 'Will grant you: Mending Tide' AS `src`, '将为你提供：修葺之潮' AS `dst`
    UNION ALL SELECT 'Will grant you: Mindful Violence' AS `src`, '将为你提供：心灵暴力' AS `dst`
    UNION ALL SELECT 'Will grant you: Molten Earth' AS `src`, '将为你提供：熔岩之地' AS `dst`
    UNION ALL SELECT 'Will grant you: Molten Mind' AS `src`, '将为你提供：熔岩意志' AS `dst`
    UNION ALL SELECT 'Will grant you: Munitions Expert' AS `src`, '将为你提供：弹药专家' AS `dst`
    UNION ALL SELECT 'Will grant you: Mystic Companion' AS `src`, '将为你提供：神秘同伴' AS `dst`
    UNION ALL SELECT 'Will grant you: Natural Aberrator' AS `src`, '将为你提供：自然畸变者' AS `dst`
    UNION ALL SELECT 'Will grant you: Natural Disaster' AS `src`, '将为你提供：自然灾害' AS `dst`
    UNION ALL SELECT 'Will grant you: Naturally Strong' AS `src`, '将为你提供：天生蛮力' AS `dst`
    UNION ALL SELECT 'Will grant you: Nature\'s Fervor' AS `src`, '将为你提供：自然狂热' AS `dst`
    UNION ALL SELECT 'Will grant you: New Moon' AS `src`, '将为你提供：新月' AS `dst`
    UNION ALL SELECT 'Will grant you: Niflheim' AS `src`, '将为你提供：死亡国度' AS `dst`
    UNION ALL SELECT 'Will grant you: Nimble Mind' AS `src`, '将为你提供：敏锐思维' AS `dst`
    UNION ALL SELECT 'Will grant you: Nocturnal Predator' AS `src`, '将为你提供：夜行猛兽' AS `dst`
    UNION ALL SELECT 'Will grant you: Northern Winds' AS `src`, '将为你提供：北风' AS `dst`
    UNION ALL SELECT 'Will grant you: On the Hunt' AS `src`, '将为你提供：狩猎' AS `dst`
    UNION ALL SELECT 'Will grant you: One With The Hunt' AS `src`, '将为你提供：猎杀一体' AS `dst`
    UNION ALL SELECT 'Will grant you: One With The Light' AS `src`, '将为你提供：与光合一' AS `dst`
    UNION ALL SELECT 'Will grant you: One with the Forest' AS `src`, '将为你提供：融入森林' AS `dst`
    UNION ALL SELECT 'Will grant you: Overflow' AS `src`, '将为你提供：能量溢出' AS `dst`
    UNION ALL SELECT 'Will grant you: Overheating' AS `src`, '将为你提供：過熱' AS `dst`
    UNION ALL SELECT 'Will grant you: Overloaded Froststorm' AS `src`, '将为你提供：过载冰霜风暴' AS `dst`
    UNION ALL SELECT 'Will grant you: Pack Alpha' AS `src`, '将为你提供：领导狼群' AS `dst`
    UNION ALL SELECT 'Will grant you: Paratrooper' AS `src`, '将为你提供：空降兵' AS `dst`
    UNION ALL SELECT 'Will grant you: Pendulum' AS `src`, '将为你提供：钟摆' AS `dst`
    UNION ALL SELECT 'Will grant you: Perforation' AS `src`, '将为你提供：贯穿' AS `dst`
    UNION ALL SELECT 'Will grant you: Perilous Pain' AS `src`, '将为你提供：险恶之痛' AS `dst`
    UNION ALL SELECT 'Will grant you: Permafrost' AS `src`, '将为你提供：永冻' AS `dst`
    UNION ALL SELECT 'Will grant you: Pestilence' AS `src`, '将为你提供：瘟疫同化' AS `dst`
    UNION ALL SELECT 'Will grant you: Pestilent Opportunist' AS `src`, '将为你提供：疫病投机者' AS `dst`
    UNION ALL SELECT 'Will grant you: Pious Strikes' AS `src`, '将为你提供：虔诚打击' AS `dst`
    UNION ALL SELECT 'Will grant you: Plague Bearer' AS `src`, '将为你提供：瘟疫熊人' AS `dst`
    UNION ALL SELECT 'Will grant you: Power Overwhelming' AS `src`, '将为你提供：势不可挡' AS `dst`
    UNION ALL SELECT 'Will grant you: Power of Generosity' AS `src`, '将为你提供：慷慨之力' AS `dst`
    UNION ALL SELECT 'Will grant you: Predator\'s Wrath' AS `src`, '将为你提供：猛兽之怒' AS `dst`
    UNION ALL SELECT 'Will grant you: Prepare for Shatter' AS `src`, '将为你提供：碎冰就绪' AS `dst`
    UNION ALL SELECT 'Will grant you: Prepared Ritual' AS `src`, '将为你提供：完备仪式' AS `dst`
    UNION ALL SELECT 'Will grant you: Primal Frenzy' AS `src`, '将为你提供：野性狂乱' AS `dst`
    UNION ALL SELECT 'Will grant you: Primalist' AS `src`, '将为你提供：仪祭师' AS `dst`
    UNION ALL SELECT 'Will grant you: Primordial Fury' AS `src`, '将为你提供：原生之怒' AS `dst`
    UNION ALL SELECT 'Will grant you: Prison Tactics' AS `src`, '将为你提供：监狱战术' AS `dst`
    UNION ALL SELECT 'Will grant you: Prophet of Wrath' AS `src`, '将为你提供：愤怒先知' AS `dst`
    UNION ALL SELECT 'Will grant you: Providing for Nature' AS `src`, '将为你提供：自然馈赠' AS `dst`
    UNION ALL SELECT 'Will grant you: Psychic Barrage' AS `src`, '将为你提供：心灵弹幕' AS `dst`
    UNION ALL SELECT 'Will grant you: Psychic Influence' AS `src`, '将为你提供：心灵支配' AS `dst`
    UNION ALL SELECT 'Will grant you: Punisher' AS `src`, '将为你提供：惩罚者' AS `dst`
    UNION ALL SELECT 'Will grant you: Pure Shadow' AS `src`, '将为你提供：原生暗影' AS `dst`
    UNION ALL SELECT 'Will grant you: Purgation' AS `src`, '将为你提供：涤罪' AS `dst`
    UNION ALL SELECT 'Will grant you: Purification By Light' AS `src`, '将为你提供：圣光净化' AS `dst`
    UNION ALL SELECT 'Will grant you: Quick Burn' AS `src`, '将为你提供：快速燃烧' AS `dst`
    UNION ALL SELECT 'Will grant you: Rain of Arrows' AS `src`, '将为你提供：箭雨' AS `dst`
    UNION ALL SELECT 'Will grant you: Raising Hell' AS `src`, '将为你提供：地狱再起' AS `dst`
    UNION ALL SELECT 'Will grant you: Razor Claws' AS `src`, '将为你提供：锋锐利爪' AS `dst`
    UNION ALL SELECT 'Will grant you: Razor-sharp Claws' AS `src`, '将为你提供：锋锐之爪' AS `dst`
    UNION ALL SELECT 'Will grant you: Ready, Set, Go!' AS `src`, '将为你提供：整装待发！' AS `dst`
    UNION ALL SELECT 'Will grant you: Rebirth Through Fire' AS `src`, '将为你提供：火焰中的重生' AS `dst`
    UNION ALL SELECT 'Will grant you: Recklessness' AS `src`, '将为你提供：鲁莽' AS `dst`
    UNION ALL SELECT 'Will grant you: Refilling the Well' AS `src`, '将为你提供：补充泉水' AS `dst`
    UNION ALL SELECT 'Will grant you: Relentless Laceration' AS `src`, '将为你提供：无情割伤' AS `dst`
    UNION ALL SELECT 'Will grant you: Repartee' AS `src`, '将为你提供：巧击' AS `dst`
    UNION ALL SELECT 'Will grant you: Restorative Medicine' AS `src`, '将为你提供：滋补医疗' AS `dst`
    UNION ALL SELECT 'Will grant you: Return to the Light' AS `src`, '将为你提供：回归神圣' AS `dst`
    UNION ALL SELECT 'Will grant you: Righteous Flames' AS `src`, '将为你提供：正义烈焰' AS `dst`
    UNION ALL SELECT 'Will grant you: Righteous Zealot' AS `src`, '将为你提供：正义狂热者' AS `dst`
    UNION ALL SELECT 'Will grant you: Roots of The Forest' AS `src`, '将为你提供：森林根须' AS `dst`
    UNION ALL SELECT 'Will grant you: Rush of Blood' AS `src`, '将为你提供：血之急冲' AS `dst`
    UNION ALL SELECT 'Will grant you: Sacred Unity' AS `src`, '将为你提供：神圣联结' AS `dst`
    UNION ALL SELECT 'Will grant you: Savagery' AS `src`, '将为你提供：野性' AS `dst`
    UNION ALL SELECT 'Will grant you: Sawed Off Barrel' AS `src`, '将为你提供：锯口枪管' AS `dst`
    UNION ALL SELECT 'Will grant you: Scorched Earth' AS `src`, '将为你提供：焦土' AS `dst`
    UNION ALL SELECT 'Will grant you: Seeds of Flame' AS `src`, '将为你提供：烈焰之种' AS `dst`
    UNION ALL SELECT 'Will grant you: Seething Flames' AS `src`, '将为你提供：沸腾烈焰' AS `dst`
    UNION ALL SELECT 'Will grant you: Sentinel of the Grove' AS `src`, '将为你提供：丛林哨兵' AS `dst`
    UNION ALL SELECT 'Will grant you: Shadow Arrow' AS `src`, '将为你提供：影箭' AS `dst`
    UNION ALL SELECT 'Will grant you: Shadow Propellant' AS `src`, '将为你提供：暗影推进' AS `dst`
    UNION ALL SELECT 'Will grant you: Shadow Strikes' AS `src`, '将为你提供：暗影连击' AS `dst`
    UNION ALL SELECT 'Will grant you: Shaken' AS `src`, '将为你提供：惊恐' AS `dst`
    UNION ALL SELECT 'Will grant you: Shatter' AS `src`, '将为你提供：碎冰' AS `dst`
    UNION ALL SELECT 'Will grant you: Shield of Wrath' AS `src`, '将为你提供：愤怒之盾' AS `dst`
    UNION ALL SELECT 'Will grant you: Shroud of Concealment' AS `src`, '将为你提供：隐匿斗篷' AS `dst`
    UNION ALL SELECT 'Will grant you: Sinister Flurry' AS `src`, '将为你提供：邪恶乱舞' AS `dst`
    UNION ALL SELECT 'Will grant you: Skull Crusher' AS `src`, '将为你提供：碎颅者' AS `dst`
    UNION ALL SELECT 'Will grant you: Slow Down for Boom' AS `src`, '将为你提供：爆炸减速' AS `dst`
    UNION ALL SELECT 'Will grant you: Smoldering Companion' AS `src`, '将为你提供：冒烟同伴' AS `dst`
    UNION ALL SELECT 'Will grant you: Sniper' AS `src`, '将为你提供：狙击手' AS `dst`
    UNION ALL SELECT 'Will grant you: Social Distancing' AS `src`, '将为你提供：社交距离' AS `dst`
    UNION ALL SELECT 'Will grant you: Soul Restoration' AS `src`, '将为你提供：灵魂恢复' AS `dst`
    UNION ALL SELECT 'Will grant you: Soul Siphon' AS `src`, '将为你提供：灵魂虹吸' AS `dst`
    UNION ALL SELECT 'Will grant you: Soul of The Warden' AS `src`, '将为你提供：守望者之魂' AS `dst`
    UNION ALL SELECT 'Will grant you: Soulbender' AS `src`, '将为你提供：灵魂塑者' AS `dst`
    UNION ALL SELECT 'Will grant you: Spartan Kick' AS `src`, '将为你提供：斯巴达脚踢' AS `dst`
    UNION ALL SELECT 'Will grant you: Spell Slinger' AS `src`, '将为你提供：法术投掷' AS `dst`
    UNION ALL SELECT 'Will grant you: Spellhammer' AS `src`, '将为你提供：法术之锤' AS `dst`
    UNION ALL SELECT 'Will grant you: Spirit Dash' AS `src`, '将为你提供：灵魂冲刺' AS `dst`
    UNION ALL SELECT 'Will grant you: Spirit of the Forest' AS `src`, '将为你提供：森林之灵' AS `dst`
    UNION ALL SELECT 'Will grant you: Spring Thaw' AS `src`, '将为你提供：春雪初融' AS `dst`
    UNION ALL SELECT 'Will grant you: Spring of Life' AS `src`, '将为你提供：生命之泉' AS `dst`
    UNION ALL SELECT 'Will grant you: Stay Frosty' AS `src`, '将为你提供：维持冰冷' AS `dst`
    UNION ALL SELECT 'Will grant you: Stoic Druid' AS `src`, '将为你提供：坚韧德鲁伊' AS `dst`
    UNION ALL SELECT 'Will grant you: Stormhammer' AS `src`, '将为你提供：風暴之錘' AS `dst`
    UNION ALL SELECT 'Will grant you: Stupefied' AS `src`, '将为你提供：目瞪口呆' AS `dst`
    UNION ALL SELECT 'Will grant you: Suffocating Roots' AS `src`, '将为你提供：窒息根须' AS `dst`
    UNION ALL SELECT 'Will grant you: Sunder Soul' AS `src`, '将为你提供：破甲灵魂' AS `dst`
    UNION ALL SELECT 'Will grant you: Sunfire' AS `src`, '将为你提供：阳炎术' AS `dst`
    UNION ALL SELECT 'Will grant you: Sunrider' AS `src`, '将为你提供：烈阳骑士' AS `dst`
    UNION ALL SELECT 'Will grant you: Swashbuckler: Flurry of Blows' AS `src`, '将为你提供：暴徒：乱舞打击' AS `dst`
    UNION ALL SELECT 'Will grant you: Swashbuckler: Matched Blows' AS `src`, '将为你提供：暴徒：势均力敌' AS `dst`
    UNION ALL SELECT 'Will grant you: Swashbuckler: Shocktrooper' AS `src`, '将为你提供：暴徒：震击兵' AS `dst`
    UNION ALL SELECT 'Will grant you: Swift Justice' AS `src`, '将为你提供：迅捷审判' AS `dst`
    UNION ALL SELECT 'Will grant you: Sword and Thunder' AS `src`, '将为你提供：剑与雷霆' AS `dst`
    UNION ALL SELECT 'Will grant you: TIMBERRR' AS `src`, '将为你提供：树众' AS `dst`
    UNION ALL SELECT 'Will grant you: Taste of Success' AS `src`, '将为你提供：成功气息' AS `dst`
    UNION ALL SELECT 'Will grant you: Temple Guardian' AS `src`, '将为你提供：神殿守护者' AS `dst`
    UNION ALL SELECT 'Will grant you: The Bad Shepherd' AS `src`, '将为你提供：牧羊恶人' AS `dst`
    UNION ALL SELECT 'Will grant you: The Dark Magician' AS `src`, '将为你提供：黑暗法师' AS `dst`
    UNION ALL SELECT 'Will grant you: The Natural Order' AS `src`, '将为你提供：自然秩序' AS `dst`
    UNION ALL SELECT 'Will grant you: Thermal Shock' AS `src`, '将为你提供：热力震慑' AS `dst`
    UNION ALL SELECT 'Will grant you: Thermal Trauma' AS `src`, '将为你提供：热能创伤' AS `dst`
    UNION ALL SELECT 'Will grant you: Thief of Fate' AS `src`, '将为你提供：命运窃贼' AS `dst`
    UNION ALL SELECT 'Will grant you: Throw Weapon' AS `src`, '将为你提供：投掷武器' AS `dst`
    UNION ALL SELECT 'Will grant you: Thundering Blow' AS `src`, '将为你提供：雷霆轰击' AS `dst`
    UNION ALL SELECT 'Will grant you: Tidecaller' AS `src`, '将为你提供：唤潮者' AS `dst`
    UNION ALL SELECT 'Will grant you: Tides of Battle' AS `src`, '将为你提供：战潮' AS `dst`
    UNION ALL SELECT 'Will grant you: Time Warp' AS `src`, '将为你提供：时间扭曲' AS `dst`
    UNION ALL SELECT 'Will grant you: Titanic Mutilate' AS `src`, '将为你提供：泰坦毁伤' AS `dst`
    UNION ALL SELECT 'Will grant you: Tools of War' AS `src`, '将为你提供：战争工具' AS `dst`
    UNION ALL SELECT 'Will grant you: Tooth and Nail' AS `src`, '将为你提供：全力以赴' AS `dst`
    UNION ALL SELECT 'Will grant you: Total Eclipse' AS `src`, '将为你提供：交蚀究极体' AS `dst`
    UNION ALL SELECT 'Will grant you: Totem Master: Fire' AS `src`, '将为你提供：图腾大师：火焰' AS `dst`
    UNION ALL SELECT 'Will grant you: Transcendental Embrace' AS `src`, '将为你提供：超凡之拥' AS `dst`
    UNION ALL SELECT 'Will grant you: Transference of Guilt' AS `src`, '将为你提供：罪恶转移' AS `dst`
    UNION ALL SELECT 'Will grant you: Tundra Walker' AS `src`, '将为你提供：冰原行者' AS `dst`
    UNION ALL SELECT 'Will grant you: Turning Tides' AS `src`, '将为你提供：激流逆转' AS `dst`
    UNION ALL SELECT 'Will grant you: Twilight' AS `src`, '将为你提供：暮光' AS `dst`
    UNION ALL SELECT 'Will grant you: Twisted Mind' AS `src`, '将为你提供：扭曲心灵' AS `dst`
    UNION ALL SELECT 'Will grant you: Umbral Scion' AS `src`, '将为你提供：幽影子嗣' AS `dst`
    UNION ALL SELECT 'Will grant you: Unbounded Deathbringer' AS `src`, '将为你提供：无尽死亡使者' AS `dst`
    UNION ALL SELECT 'Will grant you: Unbounded Drain Life' AS `src`, '将为你提供：无尽吸取生命' AS `dst`
    UNION ALL SELECT 'Will grant you: Unbounded Drain Mana' AS `src`, '将为你提供：无尽吸取法力' AS `dst`
    UNION ALL SELECT 'Will grant you: Unbounded Drain Soul' AS `src`, '将为你提供：无尽吸取灵魂' AS `dst`
    UNION ALL SELECT 'Will grant you: Unbounded Mind Flay' AS `src`, '将为你提供：无尽精神鞭笞' AS `dst`
    UNION ALL SELECT 'Will grant you: Unbounded Spell Slinger' AS `src`, '将为你提供：无尽法术投掷' AS `dst`
    UNION ALL SELECT 'Will grant you: Unchained' AS `src`, '将为你提供：挣脱桎梏' AS `dst`
    UNION ALL SELECT 'Will grant you: Undaunted' AS `src`, '将为你提供：无所畏惧' AS `dst`
    UNION ALL SELECT 'Will grant you: Unfurling Time' AS `src`, '将为你提供：延展时间' AS `dst`
    UNION ALL SELECT 'Will grant you: Unrelenting Wrath' AS `src`, '将为你提供：无情之怒' AS `dst`
    UNION ALL SELECT 'Will grant you: Unstable Evocation' AS `src`, '将为你提供：动荡唤醒' AS `dst`
    UNION ALL SELECT 'Will grant you: Unstable Void' AS `src`, '将为你提供：不稳定的虚空' AS `dst`
    UNION ALL SELECT 'Will grant you: Unstoppable Force' AS `src`, '将为你提供：无坚不摧之力' AS `dst`
    UNION ALL SELECT 'Will grant you: Upper Hand' AS `src`, '将为你提供：上风' AS `dst`
    UNION ALL SELECT 'Will grant you: Ursoc\'s Blessing' AS `src`, '将为你提供：乌索克的祝福' AS `dst`
    UNION ALL SELECT 'Will grant you: Viking' AS `src`, '将为你提供：维京' AS `dst`
    UNION ALL SELECT 'Will grant you: Void Eruption' AS `src`, '将为你提供：虚空爆发' AS `dst`
    UNION ALL SELECT 'Will grant you: Void-touched' AS `src`, '将为你提供：虚空之触' AS `dst`
    UNION ALL SELECT 'Will grant you: Voltaic Companion' AS `src`, '将为你提供：带电同伴' AS `dst`
    UNION ALL SELECT 'Will grant you: Wacky Wizardry' AS `src`, '将为你提供：古怪法师' AS `dst`
    UNION ALL SELECT 'Will grant you: Waking Nightmare' AS `src`, '将为你提供：噩梦乍醒' AS `dst`
    UNION ALL SELECT 'Will grant you: Wanding' AS `src`, '将为你提供：魔杖攻击' AS `dst`
    UNION ALL SELECT 'Will grant you: War Mage' AS `src`, '将为你提供：战争法师' AS `dst`
    UNION ALL SELECT 'Will grant you: Warcry' AS `src`, '将为你提供：战斗呐喊' AS `dst`
    UNION ALL SELECT 'Will grant you: Ward of Light' AS `src`, '将为你提供：圣光结界' AS `dst`
    UNION ALL SELECT 'Will grant you: Weapon Command' AS `src`, '将为你提供：武器号令' AS `dst`
    UNION ALL SELECT 'Will grant you: What We Do in the Shadows' AS `src`, '将为你提供：暗中行动' AS `dst`
    UNION ALL SELECT 'Will grant you: Whispers of the Old Gods' AS `src`, '将为你提供：古神低语' AS `dst`
    UNION ALL SELECT 'Will grant you: White Walker' AS `src`, '将为你提供：白行者' AS `dst`
    UNION ALL SELECT 'Will grant you: Wiccan Ways' AS `src`, '将为你提供：巫术之道' AS `dst`
    UNION ALL SELECT 'Will grant you: Wild Felfire' AS `src`, '将为你提供：狂野邪火' AS `dst`
    UNION ALL SELECT 'Will grant you: Wild Wrath' AS `src`, '将为你提供：狂野愤怒' AS `dst`
    UNION ALL SELECT 'Will grant you: Wingman' AS `src`, '将为你提供：副手' AS `dst`
    UNION ALL SELECT 'Will grant you: Winter Solstice' AS `src`, '将为你提供：冬至' AS `dst`
    UNION ALL SELECT 'Will grant you: Witch Burning' AS `src`, '将为你提供：焚烧女巫' AS `dst`
    UNION ALL SELECT 'Will grant you: Words of Healing' AS `src`, '将为你提供：治疗真言' AS `dst`
    UNION ALL SELECT 'Will grant you: Zany Zealot' AS `src`, '将为你提供：疯狂牧师' AS `dst`
    UNION ALL SELECT 'Will grant you: Zephyr' AS `src`, '将为你提供：和风' AS `dst`
) AS `m` ON `m`.`src` = `a`.`description`
SET `a`.`description` = `m`.`dst`;
