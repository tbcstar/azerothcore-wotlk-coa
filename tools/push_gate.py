from __future__ import annotations

import argparse
import io
import json
import re
import subprocess
import sys
from pathlib import Path

BASELINE = Path(__file__).resolve().parent / 'git_hooks' / 'known_failures.txt'
REPORT_LINE = re.compile(r'VERIFY ALL:\s*([A-Z]+)\s+(\S+)')


def load_baseline(path):
    if not Path(path).exists():
        return set()
    names = set()
    with io.open(path, encoding='utf-8') as handle:
        for line in handle:
            line = line.strip()
            if line and not line.startswith('#'):
                names.add(line.replace('\\', '/'))
    return names


def read_report(path):
    with io.open(path, encoding='utf-8') as handle:
        document = json.load(handle)
    stage = (document.get('stages') or {}).get('source') or {}
    commands = ((stage.get('summary') or {}).get('failed_commands') or [])
    return document.get('status'), {str(name).replace('\\', '/') for name in commands}


def run_verification(python, base):
    command = [python, '-B', 'tools/verify_all.py', '--stages', 'source', '--base', base]
    result = subprocess.run(command, capture_output=True, text=True, encoding='utf-8', errors='replace')
    output = (result.stdout or '') + (result.stderr or '')
    match = REPORT_LINE.search(output)
    report = match.group(2) if match else ''
    return result.returncode, report, output


def main(argv=None):
    parser = argparse.ArgumentParser(description='Block a push unless source verification only fails on the recorded baseline.')
    parser.add_argument('--base', default='origin/main', help='revision the sources are compared against')
    parser.add_argument('--report', default='', help='evaluate an existing report instead of running the checks')
    parser.add_argument('--baseline', default=str(BASELINE), help='file listing the environment-specific failures')
    arguments = parser.parse_args(argv)
    known = load_baseline(arguments.baseline)
    if arguments.report:
        report = arguments.report
    else:
        code, report, output = run_verification(sys.executable, arguments.base)
        if code == 0:
            print('[push-gate] source verification passed')
            return 0
        if not report:
            sys.stderr.write(output[-4000:])
            print('[push-gate] source verification failed and produced no report; push blocked')
            return 1
    status, failures = read_report(report)
    unknown = sorted(failures - known)
    if status == 'passed' or not unknown:
        if failures:
            print('[push-gate] %d failure(s), all recorded as environment-specific: %s' % (len(failures), ', '.join(sorted(failures))))
        return 0
    print('[push-gate] source verification failed with unexpected suites; push blocked')
    for name in unknown:
        print('[push-gate]   %s' % name)
    print('[push-gate] report: %s' % report)
    return 1


if __name__ == '__main__':
    sys.exit(main())
