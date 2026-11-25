# Localization drift checks

`tools/zh_drift.py` audits the Chinese patches in `data/sql/updates/pending_db_*`
against the sources they were generated from. It exists because a translation can
survive the English string that justified it: when upstream rewrites a tooltip, a
patch that still carries the old wording silently keeps the old numbers.

    python -B tools/zh_drift.py --limit 50
    python -B tools/zh_drift.py --json

The default root is `data/sql`; `--root` narrows the scan. Exit status is 1 when a
finding exists and 0 when the audited scope is clean.

## What it reports

| Finding | Meaning |
| --- | --- |
| `占位符不一致` | The Chinese string has a different multiset of `$d`/`$s1`/`${...}`/`%s` tokens than the English string it translates. |
| `硬编码数值` | The English string has placeholders but the Chinese one has none, so a scaled value became a frozen number. |
| `数字可能过时` | The Chinese string contains a number the English one does not have while both lost their placeholders; usually a translated old value. |
| `超长` | The text exceeds the column limit of the target table (`spell_dbc` name 100, description 550, `item_template.description` 1024). |
| `同一 ID 多条译文` | Two pending patches write different Chinese text for the same row; only file-name ordering decides which one wins. |

`orphan_rows` counts translated rows that no SQL in the scan provides in English.
That is expected for data generated from the client DBC instead of a patch, so it is
reported as a count and never as a failure.

## The stale-translation check is not assessed

Detecting "upstream changed the English string, the guard no longer matches" needs a
current world database dump to compare against. The summary therefore prints
`dump_stale_check  NOT ASSESSED — NO DATA（未接入世界库 dump 比对）`. A run without a
dump must not be reported as proof that no stale translation exists; it only proves
that the audited scope has no placeholder, length or duplicate-row drift.

To assess it, compare the guard literals of a patch (`WHERE a.x = m.src` /
`WHERE x = 'english'`) with the same row in an export of the live database. A guard
that no longer matches is a patch that silently stopped applying.

## When to run it

Run it after every upstream merge, before committing the localization batch: the
merge is exactly when English sources change underneath existing Chinese text. The
2026-11-24 Felsworn merge is the reference case — `802678` was rewritten from a fixed
54 points to `${($d*1000/$T1)*($802678m1+$802678ppl1+$SP*.05)}` while the pending
patch still said `造成（54 + 30% 法术强度）点暗影烈焰伤害`.

`tools/test_zh_drift.py` covers the parser, the placeholder grammar and the finding
classification; `tools/verify_all.py --stages source` runs it with the other Python
tests.
