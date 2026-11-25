from __future__ import annotations

import argparse
import datetime
import io
import os
import subprocess
import sys
import time

NO_DATA = 'NOT ASSESSED — NO DATA'

COLUMNS = [
    'timestamp',
    'uptime_s',
    'rss_mb',
    'threads_connected',
    'queries_per_s',
    'innodb_deadlocks',
    'aborted_clients',
    'online_characters',
    'random_bots',
]


def run(command, timeout=30):
    try:
        completed = subprocess.run(command, shell=True, capture_output=True, timeout=timeout)
    except (OSError, subprocess.SubprocessError):
        return None
    if completed.returncode != 0:
        return None
    return completed.stdout.decode('utf-8', 'replace')


def mysql_scalar(mysql, statement, database=None):
    prefix = mysql if not database else '%s %s' % (mysql, database)
    output = run('%s -e %s' % (prefix, quote(statement)))
    if output is None:
        return NO_DATA
    values = [line.strip() for line in output.splitlines() if line.strip()]
    return values[0] if values else NO_DATA


def mysql_status(mysql, name, database=None):
    value = mysql_scalar(mysql, "SHOW GLOBAL STATUS LIKE '%s'" % name, database)
    if value == NO_DATA:
        return NO_DATA
    parts = value.split('\t')
    return parts[1].strip() if len(parts) > 1 else NO_DATA


def quote(statement):
    return '"%s"' % statement.replace('"', '\\"')


def read_rss_mb(pid):
    try:
        with io.open('/proc/%d/status' % pid, encoding='utf-8', errors='replace') as handle:
            for line in handle:
                if line.startswith('VmRSS:'):
                    return '%.1f' % (int(line.split()[1]) / 1024.0)
    except (OSError, ValueError):
        return NO_DATA
    return NO_DATA


def resolve_pid(service, pid_file):
    if pid_file:
        try:
            with io.open(pid_file, encoding='utf-8', errors='replace') as handle:
                return int(handle.read().strip())
        except (OSError, ValueError):
            return None
    if service:
        output = run('systemctl show -p MainPID --value %s' % service)
        if output and output.strip().isdigit() and output.strip() != '0':
            return int(output.strip())
    return None


def to_int(value):
    return int(value) if value != NO_DATA and value.isdigit() else None


def sample(arguments, previous):
    pid = resolve_pid(arguments.service, arguments.pid_file)
    row = {'timestamp': datetime.datetime.now().strftime('%Y-%m-%dT%H:%M:%S')}
    row['uptime_s'] = mysql_status(arguments.mysql, 'Uptime')
    row['rss_mb'] = read_rss_mb(pid) if pid else NO_DATA
    row['threads_connected'] = mysql_status(arguments.mysql, 'Threads_connected')
    queries = to_int(mysql_status(arguments.mysql, 'Queries'))
    uptime = to_int(row['uptime_s'])
    if previous and queries is not None and previous.get('queries') is not None:
        delta_queries = queries - previous['queries']
        delta_seconds = uptime - previous.get('uptime', uptime) if uptime is not None else 0
        row['queries_per_s'] = '%.1f' % (delta_queries / delta_seconds) if delta_seconds > 0 else NO_DATA
    else:
        row['queries_per_s'] = NO_DATA
    row['innodb_deadlocks'] = mysql_status(arguments.mysql, 'Innodb_deadlocks')
    row['aborted_clients'] = mysql_status(arguments.mysql, 'Aborted_clients')
    row['online_characters'] = mysql_scalar(arguments.mysql, 'SELECT COUNT(*) FROM characters WHERE online = 1',
                                            arguments.characters_db)
    row['random_bots'] = mysql_scalar(
        arguments.mysql,
        'SELECT COUNT(*) FROM characters c JOIN playerbots_account_type t ON t.account_id = c.account '
        'WHERE t.account_type = 1 AND c.online = 1',
        arguments.characters_db)
    state = {'queries': queries, 'uptime': uptime}
    return row, state


def format_row(row):
    return '\t'.join(str(row.get(column, NO_DATA)) for column in COLUMNS)


def main(argv=None):
    parser = argparse.ArgumentParser(description='按固定周期采样 worldserver 与 MySQL 的长跑指标。')
    parser.add_argument('--mysql', default='mysql --defaults-file=/etc/mysql/debian.cnf', help='mysql 客户端命令行前缀')
    parser.add_argument('--characters-db', default='acore_characters', help='角色库名')
    parser.add_argument('--service', default='', help='systemd 服务名，用于定位 worldserver 进程')
    parser.add_argument('--pid-file', default='', help='直接指定 worldserver 的 pid 文件')
    parser.add_argument('--out', default='', help='追加写入的 TSV 文件；省略时输出到标准输出')
    parser.add_argument('--interval', type=float, default=300.0, help='采样间隔秒数，默认 300')
    parser.add_argument('--count', type=int, default=1, help='采样次数，0 表示一直采')
    arguments = parser.parse_args(argv)

    target = io.open(arguments.out, 'a', encoding='utf-8', newline='') if arguments.out else sys.stdout
    try:
        if arguments.out and target.tell() == 0:
            target.write('\t'.join(COLUMNS) + '\n')
        state = None
        index = 0
        while arguments.count == 0 or index < arguments.count:
            row, state = sample(arguments, state)
            target.write(format_row(row) + '\n')
            target.flush()
            index += 1
            if arguments.count == 0 or index < arguments.count:
                time.sleep(arguments.interval)
    finally:
        if arguments.out:
            target.close()
    return 0


if __name__ == '__main__':
    sys.exit(main())
