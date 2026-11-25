from __future__ import annotations

import argparse
import io
import os
import stat
import subprocess
import sys
from pathlib import Path

HOOKS = ('pre-commit', 'pre-push', 'post-merge')
MARKER = 'dsh-managed-hook'
SOURCE = Path(__file__).resolve().parent / 'git_hooks'


def repository_root():
    result = subprocess.run(['git', 'rev-parse', '--show-toplevel'], capture_output=True, text=True)
    if result.returncode != 0:
        raise SystemExit('not inside a git repository: %s' % result.stderr.strip())
    return Path(result.stdout.strip())


def hooks_directory(root):
    result = subprocess.run(['git', 'rev-parse', '--git-path', 'hooks'], cwd=root, capture_output=True, text=True)
    if result.returncode != 0:
        raise SystemExit('cannot resolve the hooks directory: %s' % result.stderr.strip())
    path = Path(result.stdout.strip())
    return path if path.is_absolute() else (root / path)


def render(source):
    body = io.open(source, encoding='utf-8', newline='\n').read().rstrip('\n')
    shebang, separator, rest = body.partition('\n')
    return '%s\n# %s: installed by tools/install_git_hooks.py, do not edit here\n%s\n' % (
        shebang, MARKER, rest if separator else '')


def install(root, force):
    directory = hooks_directory(root)
    directory.mkdir(parents=True, exist_ok=True)
    written = []
    for name in HOOKS:
        target = directory / name
        body = render(SOURCE / name)
        if target.exists() and MARKER not in io.open(target, encoding='utf-8', errors='replace').read() and not force:
            print('skip %s: an unmanaged hook exists (use --force)' % target)
            continue
        io.open(target, 'w', encoding='utf-8', newline='\n').write(body)
        mode = os.stat(target).st_mode
        os.chmod(target, mode | stat.S_IXUSR | stat.S_IXGRP | stat.S_IXOTH)
        written.append(target)
    return written


def check(root):
    directory = hooks_directory(root)
    issues = []
    for name in HOOKS:
        target = directory / name
        if not target.exists():
            issues.append('%s missing' % name)
            continue
        if MARKER not in io.open(target, encoding='utf-8', errors='replace').read():
            issues.append('%s is not managed by this installer' % name)
            continue
        expected = render(SOURCE / name)
        if io.open(target, encoding='utf-8', errors='replace').read() != expected:
            issues.append('%s differs from tools/git_hooks/%s' % (name, name))
    return issues


def main(argv=None):
    parser = argparse.ArgumentParser(description='Install the repository git hooks that gate SQL boundaries, pushes and merges.')
    parser.add_argument('--check', action='store_true', help='report whether the installed hooks match tools/git_hooks')
    parser.add_argument('--force', action='store_true', help='replace hooks this installer did not write')
    arguments = parser.parse_args(argv)
    root = repository_root()
    if arguments.check:
        issues = check(root)
        for issue in issues:
            print(issue)
        return 1 if issues else 0
    for target in install(root, arguments.force):
        print('installed %s' % target)
    return 0


if __name__ == '__main__':
    sys.exit(main())
