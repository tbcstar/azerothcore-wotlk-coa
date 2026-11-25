import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import soak_sample


class SampleTests(unittest.TestCase):
    def setUp(self):
        self.original = soak_sample.run

    def tearDown(self):
        soak_sample.run = self.original

    def build_arguments(self):
        return soak_sample.argparse.Namespace(
            mysql='mysql',
            characters_db='acore_characters',
            service='',
            pid_file='',
        )

    def test_missing_mysql_reports_no_data(self):
        soak_sample.run = lambda command, timeout=30: None
        row, state = soak_sample.sample(self.build_arguments(), None)
        for column in ('uptime_s', 'threads_connected', 'innodb_deadlocks', 'online_characters', 'random_bots'):
            self.assertEqual(row[column], soak_sample.NO_DATA)
        self.assertIsNone(state['queries'])

    def test_query_rate_uses_consecutive_samples(self):
        outputs = {
            "SHOW GLOBAL STATUS LIKE 'Uptime'": 'Uptime\t100\n',
            "SHOW GLOBAL STATUS LIKE 'Queries'": 'Queries\t1000\n',
        }
        soak_sample.run = lambda command, timeout=30: outputs.get(command.split('-e ')[-1].strip('"'), 'Threads_connected\t7\n')
        row, state = soak_sample.sample(self.build_arguments(), None)
        self.assertEqual(row['threads_connected'], '7')
        self.assertEqual(row['queries_per_s'], soak_sample.NO_DATA)
        self.assertEqual(state['queries'], 1000)

    def test_row_follows_column_order(self):
        row = {column: str(index) for index, column in enumerate(soak_sample.COLUMNS)}
        self.assertEqual(soak_sample.format_row(row), '\t'.join(str(i) for i in range(len(soak_sample.COLUMNS))))

    def test_missing_row_still_prints_no_data(self):
        self.assertEqual(soak_sample.format_row({}).count(soak_sample.NO_DATA), len(soak_sample.COLUMNS))


if __name__ == '__main__':
    unittest.main()
