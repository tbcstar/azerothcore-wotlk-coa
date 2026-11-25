import io
import sys
import tempfile
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import zh_drift


class PlaceholderTests(unittest.TestCase):
    def test_break_tokens_do_not_swallow_words(self):
        self.assertEqual(zh_drift.placeholders('a$B$BAre b'), ['$B', '$B'])

    def test_spell_prefixed_and_formula_tokens(self):
        text = 'deals ${$m1+$SP*.3} over $d and $123456s2'
        self.assertEqual(zh_drift.placeholders(text), ['$123456s2', '$d', '${$m1+$SP*.3}'])

    def test_numbers_ignore_placeholders_and_colors(self):
        self.assertEqual(zh_drift.numbers('deals ${2*3} in |cff00ff00red|r for 4 sec'), ['4'])


class MismatchTests(unittest.TestCase):
    def test_missing_placeholders_reported(self):
        self.assertEqual(zh_drift.mismatch_kind('deals $d damage', '造成伤害'), '硬编码数值')

    def test_matching_placeholders_pass(self):
        self.assertIsNone(zh_drift.mismatch_kind('deals $d damage', '在 $d 内造成伤害'))


class PairTests(unittest.TestCase):
    def test_join_update_pairs(self):
        statement = (
            "UPDATE `item_template` AS `a`\n"
            "JOIN (SELECT 'Teaches Purify.' AS `src`, '教你纯净' AS `dst` UNION ALL "
            "SELECT 'Old' AS `src`, '旧' AS `dst`) AS `m` ON `m`.`src` = `a`.`description`\n"
            "SET `a`.`description` = `m`.`dst`;"
        )
        pairs = zh_drift.parse_pairs(statement)
        self.assertEqual([(column, source, target) for column, source, target in pairs],
                         [('description', 'Teaches Purify.', '教你纯净'), ('description', 'Old', '旧')])


class CollectTests(unittest.TestCase):
    def test_conflicting_translations_are_reported(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            io.open(root / 'zz_a.sql', 'w', encoding='utf-8', newline='').write(
                "DELETE FROM `coa_client_spell_description` WHERE `ID` = 1;\n"
                "INSERT INTO `coa_client_spell_description` (`ID`, `Description`) VALUES (1, '一次');\n")
            io.open(root / 'zz_b.sql', 'w', encoding='utf-8', newline='').write(
                "DELETE FROM `coa_client_spell_description` WHERE `ID` = 1;\n"
                "INSERT INTO `coa_client_spell_description` (`ID`, `Description`) VALUES (1, '两次');\n")
            sources, translations, pairs = zh_drift.collect(root)
            findings, _, _ = zh_drift.check_rows(sources, translations)
            kinds = [finding[0] for finding in findings]
            self.assertEqual(kinds, ['同一 ID 多条译文'])

    def test_chinese_rows_are_not_used_as_source(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            io.open(root / 'rev_1.sql', 'w', encoding='utf-8', newline='').write(
                "INSERT INTO `coa_client_spell_description` (`ID`, `Description`) VALUES (1, '一次');\n")
            io.open(root / 'zz_c.sql', 'w', encoding='utf-8', newline='').write(
                "DELETE FROM `coa_client_spell_description` WHERE `ID` = 1;\n"
                "INSERT INTO `coa_client_spell_description` (`ID`, `Description`) VALUES (1, '一次');\n")
            sources, translations, pairs = zh_drift.collect(root)
            self.assertEqual(sources, {})
            findings, _, _ = zh_drift.check_rows(sources, translations)
            self.assertEqual(findings, [])


if __name__ == '__main__':
    unittest.main()
