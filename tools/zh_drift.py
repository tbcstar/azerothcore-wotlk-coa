from __future__ import annotations

import argparse
import io
import json
import re
import sys
from collections import defaultdict
from pathlib import Path

ZH_PREFIXES = ('zz', 'zzz')
KEY_COLUMNS = ('id', 'entry', 'guid', 'id1')
TEXT_TABLES = {
    'coa_client_spell_description': ('Description', 'ToolTip'),
    'spell_dbc': ('Name_Lang_enUS', 'NameSubtext_Lang_enUS', 'Description_Lang_enUS', 'AuraDescription_Lang_enUS'),
    'acore_string': ('content_default',),
    'npc_text': None,
    'page_text': ('text',),
    'item_template': ('name', 'description'),
    'creature_template': ('name', 'subname'),
    'quest_template': ('Title', 'Details', 'Objectives', 'OfferRewardText', 'RequestItemsText', 'EndText'),
}
LENGTH_LIMITS = {
    ('spell_dbc', 'Name_Lang_enUS'): 100,
    ('spell_dbc', 'NameSubtext_Lang_enUS'): 100,
    ('spell_dbc', 'Description_Lang_enUS'): 550,
    ('item_template', 'description'): 1024,
    ('item_template', 'name'): 100,
    ('creature_template', 'name'): 100,
}
PLACEHOLDER = re.compile(r'\$\{[^}]*\}|\$<[^>]*>|\$\d*[A-Za-z]\d*|%[0-9.]*[sdifu]|\{\}|%\.\d+f')
NUMBER = re.compile(r'(?<![\w$.])-?\d+(?:\.\d+)?(?![\w.])')
CJK = re.compile(r'[\u4e00-\u9fff]')
INSERT_HEADER = re.compile(r'INSERT\s+INTO\s+`(\w+)`\s*\(([^)]*)\)\s*VALUES', re.I)
COLUMN_LIST = re.compile(r'`(\w+)`')
UNION_PAIR = re.compile(r"SELECT\s+('(?:[^']|'')*')\s+AS\s+`?\w+`?\s*,\s*('(?:[^']|'')*')\s+AS\s+`?\w+`?", re.I)
SET_TARGET = re.compile(r'SET\s+`?a`?\.`?(\w+)`?\s*=\s*`?m`?\.`?(\w+)`?', re.I)
SQL_STRING = re.compile(r"'(?:[^']|'')*'", re.S)


def unquote(literal):
    return literal[1:-1].replace("''", "'")


def read_text(path):
    with io.open(path, encoding='utf-8', errors='replace', newline='') as handle:
        return handle.read()


def split_statements(text):
    statements = []
    current = []
    in_string = False
    index = 0
    while index < len(text):
        char = text[index]
        if in_string:
            current.append(char)
            if char == "'":
                if index + 1 < len(text) and text[index + 1] == "'":
                    current.append("'")
                    index += 2
                    continue
                in_string = False
        elif char == "'":
            in_string = True
            current.append(char)
        elif char == ';':
            statements.append(''.join(current))
            current = []
        else:
            current.append(char)
        index += 1
    if ''.join(current).strip():
        statements.append(''.join(current))
    return statements


def split_tuple(text):
    parts = []
    current = []
    in_string = False
    index = 0
    while index < len(text):
        char = text[index]
        if in_string:
            current.append(char)
            if char == "'":
                if index + 1 < len(text) and text[index + 1] == "'":
                    current.append("'")
                    index += 2
                    continue
                in_string = False
        elif char == "'":
            in_string = True
            current.append(char)
        elif char == ',':
            parts.append(''.join(current).strip())
            current = []
        else:
            current.append(char)
        index += 1
    parts.append(''.join(current).strip())
    return parts


def tuples_of(statement, start):
    tuples = []
    depth = 0
    in_string = False
    current = []
    index = start
    while index < len(statement):
        char = statement[index]
        if in_string:
            current.append(char)
            if char == "'":
                if index + 1 < len(statement) and statement[index + 1] == "'":
                    current.append("'")
                    index += 2
                    continue
                in_string = False
        elif char == "'":
            in_string = True
            current.append(char)
        elif char == '(':
            if depth == 0:
                current = []
            else:
                current.append(char)
            depth += 1
        elif char == ')':
            depth -= 1
            if depth == 0:
                tuples.append(''.join(current))
            else:
                current.append(char)
        elif depth > 0:
            current.append(char)
        index += 1
    return tuples


def is_translation(path):
    return path.name.startswith(ZH_PREFIXES)


def parse_inserts(statement):
    match = INSERT_HEADER.search(statement)
    if not match:
        return None
    table = match.group(1).lower()
    columns = COLUMN_LIST.findall(match.group(2))
    if not columns:
        return None
    rows = []
    for raw in tuples_of(statement, match.end()):
        values = split_tuple(raw)
        if len(values) != len(columns):
            continue
        rows.append((table, dict(zip(columns, values))))
    return table, rows


def parse_pairs(statement):
    target = SET_TARGET.search(statement)
    if not target or 'UNION ALL' not in statement.upper():
        return []
    pairs = []
    for match in UNION_PAIR.finditer(statement):
        source = unquote(match.group(1))
        target_text = unquote(match.group(2))
        pairs.append((target.group(1), source, target_text))
    return pairs


def key_value(row):
    lowered = {name.lower(): value for name, value in row.items()}
    for column in KEY_COLUMNS:
        if column in lowered:
            raw = lowered[column]
            match = re.fullmatch(r'-?\d+', raw)
            if match:
                return int(raw)
    return None


def placeholders(text):
    return sorted(PLACEHOLDER.findall(text))


def numbers(text):
    return sorted(set(NUMBER.findall(PLACEHOLDER.sub(' ', text))))


def is_chinese(text):
    return bool(CJK.search(text))


def collect(root, paths=None):
    sources = defaultdict(dict)
    translations = []
    pairs = []
    if paths is not None:
        files = [Path(path) for path in paths]
    else:
        files = sorted(Path(root).rglob('*.sql'))
    for path in files:
        try:
            text = read_text(path)
        except OSError:
            continue
        if not CJK.search(text) and not is_translation(path):
            continue
        for statement in split_statements(text):
            parsed = parse_inserts(statement)
            if parsed:
                table, rows = parsed
                if table not in TEXT_TABLES:
                    continue
                for _, row in rows:
                    identifier = key_value(row)
                    if identifier is None:
                        continue
                    texts = {name: unquote(value) for name, value in row.items() if value.startswith("'")}
                    if is_translation(path):
                        translations.append((str(path), table, identifier, texts))
                    else:
                        original = {name: value for name, value in texts.items() if not is_chinese(value)}
                        if original:
                            previous = sources[table].get(identifier, {})
                            previous.update(original)
                            sources[table][identifier] = previous
            if is_translation(path):
                for column, source, target in parse_pairs(statement):
                    pairs.append((str(path), column, source, target))
    return sources, translations, pairs


def columns_for(table, values):
    allowed = TEXT_TABLES.get(table)
    if allowed is None:
        return [name for name in values if is_chinese(values[name])]
    return [name for name in values if name in allowed]


def mismatch_kind(source, target):
    expected = placeholders(source)
    actual = placeholders(target)
    if expected == actual:
        return None
    if expected and not actual:
        return '硬编码数值'
    return '占位符不一致'


def check_pairs(pairs):
    findings = []
    for path, column, source, target in pairs:
        kind = mismatch_kind(source, target)
        if kind:
            findings.append((kind, path, column, source, '源串占位符 %s，译文 %s' % (placeholders(source), placeholders(target))))
        stale = [number for number in numbers(target) if number not in numbers(source)]
        if stale and placeholders(source) and not placeholders(target):
            findings.append(('数字可能过时', path, column, source, '译文含源串没有的数字 %s' % stale))
    return findings


def check_source_conflicts(pairs):
    findings = []
    grouped = defaultdict(lambda: defaultdict(set))
    for path, column, source, target in pairs:
        if is_chinese(target):
            grouped[(column, source)][target].add(path)
    for (column, source), targets in grouped.items():
        if len(targets) < 2:
            continue
        paths = sorted({path for owners in targets.values() for path in owners})
        findings.append(('同一英文多译', paths[0], column, source,
                         '%d 种译文：%s' % (len(targets), '；'.join('%s（%s）' % (text[:40], Path(p).name)
                                                                    for text, owners in sorted(targets.items())
                                                                    for p in sorted(owners)[:1]))))
    return findings


def check_rows(sources, translations):
    findings = []
    orphans = 0
    compared = 0
    conflicts = defaultdict(lambda: defaultdict(set))
    for path, table, identifier, texts in translations:
        reference = sources.get(table, {}).get(identifier)
        for column in columns_for(table, texts):
            text = texts[column]
            conflicts[(table, identifier, column)][text].add(path)
            limit = LENGTH_LIMITS.get((table, column))
            if limit and len(text) > limit:
                findings.append(('超长', path, column, text[:60], '%d 字符 > %d' % (len(text), limit)))
            if not reference or column not in reference:
                if sources.get(table):
                    orphans += 1
                continue
            compared += 1
            kind = mismatch_kind(reference[column], text)
            if kind:
                findings.append((kind, path, column, reference[column][:80],
                                 '源串占位符 %s，译文 %s' % (placeholders(reference[column]), placeholders(text))))
            stale = [number for number in numbers(text) if number not in numbers(reference[column])]
            if stale and placeholders(reference[column]) and not placeholders(text):
                findings.append(('数字可能过时', path, column, reference[column][:80], '译文含源串没有的数字 %s' % stale))
    for (table, identifier, column), values in conflicts.items():
        if len(values) > 1:
            paths = sorted({path for owners in values.values() for path in owners})
            findings.append(('同一 ID 多条译文', paths[0], column, '%s#%s' % (table, identifier),
                             '%d 份不同译文，文件：%s' % (len(values), '、'.join(Path(path).name for path in paths))))
    return findings, orphans, compared



def main(argv=None):
    parser = argparse.ArgumentParser(description='检查 pending 汉化补丁与上游源串的漂移（占位符、数字、超长、孤儿键）。')
    parser.add_argument('--root', default='data/sql', help='扫描根目录，默认 data/sql')
    parser.add_argument('--json', action='store_true', help='输出 JSON')
    parser.add_argument('--limit', type=int, default=200, help='最多打印条数')
    parser.add_argument('--paths', nargs='*', default=None, help='只检查这些 SQL 文件（默认扫描整个 --root）')
    arguments = parser.parse_args(argv)
    sources, translations, pairs = collect(arguments.root, arguments.paths)
    pair_findings = check_pairs(pairs) + check_source_conflicts(pairs)
    row_findings, orphans, compared = check_rows(sources, translations)
    findings = pair_findings + row_findings
    summary = {
        'pairs': len(pairs),
        'translated_rows': len(translations),
        'compared_rows': compared,
        'orphan_rows': orphans,
        'findings': len(findings),
        'pair_source': 'PASSED' if not pair_findings else '%d 处' % len(pair_findings),
        'row_source': 'PASSED' if not row_findings else '%d 处' % len(row_findings),
        'orphan_source': 'PASSED' if not orphans else '%d 行' % orphans,
        'dump_stale_check': 'NOT ASSESSED — NO DATA（未接入世界库 dump 比对）',
    }
    if arguments.json:
        print(json.dumps({'summary': summary, 'findings': findings[:arguments.limit]}, ensure_ascii=False, indent=2))
        return 1 if findings else 0
    for name, value in summary.items():
        print('%-18s %s' % (name, value))
    for kind, path, column, source, note in findings[:arguments.limit]:
        print('[%s] %s %s | %s | %s' % (kind, path, column, source, note))
    if len(findings) > arguments.limit:
        print('... 另有 %d 条未显示（用 --limit 提高）' % (len(findings) - arguments.limit))
    return 1 if findings else 0


if __name__ == '__main__':
    sys.exit(main())
