# Long-run observation

A worldserver that is healthy at minute 5 can still leak, drift or starve at hour 6.
`tools/soak_sample.py` records the same small set of numbers on a fixed cadence so a
run can be judged from a table instead of from memory.

    python -B tools/soak_sample.py --service worldserver --out soak.tsv --interval 300 --count 0

The sampler appends one tab-separated row per sample and writes the header once.
`--count 0` keeps sampling until it is stopped; `--interval` is in seconds.

## Columns

| Column | Source | What a bad run looks like |
| --- | --- | --- |
| `uptime_s` | `SHOW GLOBAL STATUS LIKE 'Uptime'` | Resets without a planned restart, so the run restarted itself. |
| `rss_mb` | `/proc/<pid>/status` `VmRSS` | Rises steadily with a flat player count (leak, not load). |
| `threads_connected` | `Threads_connected` | Grows and never returns to baseline after a burst (sessions not closing). |
| `queries_per_s` | `Queries` delta over `Uptime` delta | Climbs while the player count is flat (a poller got faster or a loop is unbounded). |
| `innodb_deadlocks` | `Innodb_deadlocks` | Any increase means a statement pair still orders its rows differently. |
| `aborted_clients` | `Aborted_clients` | Increases with no network incident (a handler is dropping connections). |
| `online_characters` | `characters WHERE online = 1` | Stays higher than the visible population (ghost sessions). |
| `random_bots` | `playerbots_account_type.account_type = 1` joined to online characters | Falls below the configured band while the world stays online. |

`queries_per_s` needs two samples; the first row prints `NOT ASSESSED — NO DATA` in
that column on purpose.

## Missing input is not a pass

Every column is filled from a probe. When a probe is unavailable — no `mysql` client,
no `/proc` (Windows), no pid, a query that fails — the cell reads
`NOT ASSESSED — NO DATA`. It is never written as `0`, blank or a plausible default,
because a zero reads like a healthy measurement and hides the missing source.

The same rule applies when the table is summarized: a run whose sampler failed is
reported as "not assessed", not as "no regressions found". Only sampled data can
carry a verdict.

## Reading a run

Judge four symptom classes, each with its own evidence:

1. **Memory growth** — `rss_mb` slope over at least six samples with a flat
   `online_characters`. A step change at a fixed time is an allocation in a path that
   runs on a timer; a steady climb is usually a cache without an eviction.
2. **Performance drift** — `queries_per_s` or tick time rising at constant population.
   Correlate with the playerbot count: bots dominate query volume.
3. **State accumulation** — `threads_connected`, `online_characters` and
   `aborted_clients` not returning to baseline after a burst.
4. **Content exhaustion** — pools, spawns or auction stock draining to zero; compare
   the table against the population curve rather than against a fixed target.

Record the sampling window, the change under test and the exact command line with the
table. A table without its window cannot be compared to the next run.

`tools/test_soak_sample.py` covers the no-data behaviour and the row format;
`tools/verify_all.py --stages source` runs it with the other Python tests.
