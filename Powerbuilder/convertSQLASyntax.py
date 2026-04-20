"""
convertSQLASyntax.py
---------------------
Batch-converts SQLA-specific SQL syntax to T-SQL within the retrieve= blocks
of PowerBuilder .srd source files.

Conversions performed:
  1. IF <cond> THEN ... ELSE ... ENDIF  ->  CASE WHEN <cond> THEN ... ELSE ... END
     (handles nesting: inner ELSE IF becomes ELSE CASE WHEN ... END)
  2. IFNULL(x, null_val, notnull_val)   ->  CASE WHEN (x) IS NULL THEN (null_val) ELSE (notnull_val) END
     (3-argument form only; 2-argument IFNULL/ISNULL is already valid in MSSQL)
  3. ||  ->  +   (string concatenation)
  4. length(x)  ->  LEN(x)
  5. locate(source, pattern)  ->  CHARINDEX(pattern, source)  (args reversed)

Only modifies retrieve= SQL blocks — all other PowerBuilder expression attributes
(compute=, text=, etc.) are left untouched.

Usage:
  python convertSQLASyntax.py                # all .srd files in llPrep/
  python convertSQLASyntax.py <filepath>     # single file
"""

import re
import os
import sys

SCAN_DIR = os.path.join(os.path.dirname(__file__), 'llPrep')


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def _parse_call_args(sql, pos):
    """Parse comma-separated function arguments starting at pos (right after
    the opening parenthesis).  Handles nested parens and quoted strings.
    Returns (list_of_arg_strings, index_after_closing_paren)."""
    depth = 1
    args = []
    buf = []
    i = pos
    in_sq = False   # inside single-quoted string
    while i < len(sql):
        c = sql[i]
        if in_sq:
            buf.append(c)
            if c == "'":
                # peek for escaped quote ''
                if i + 1 < len(sql) and sql[i + 1] == "'":
                    buf.append("'")
                    i += 2
                    continue
                in_sq = False
        elif c == "'":
            in_sq = True
            buf.append(c)
        elif c == '(':
            depth += 1
            buf.append(c)
        elif c == ')':
            depth -= 1
            if depth == 0:
                args.append(''.join(buf).strip())
                return args, i + 1
            else:
                buf.append(c)
        elif c == ',' and depth == 1:
            args.append(''.join(buf).strip())
            buf = []
        else:
            buf.append(c)
        i += 1
    # unterminated — return what we have
    args.append(''.join(buf).strip())
    return args, i


def replace_ifnull3(sql):
    """Replace 3-arg ifnull(x, y, z) with CASE WHEN (x) IS NULL THEN (y) ELSE (z) END.
    2-arg IFNULL is left untouched (MSSQL ISNULL is a compatible synonym)."""
    pat = re.compile(r'\bifnull\s*\(', re.IGNORECASE)
    result = []
    i = 0
    while i < len(sql):
        m = pat.search(sql, i)
        if not m:
            result.append(sql[i:])
            break
        result.append(sql[i:m.start()])
        args, end = _parse_call_args(sql, m.end())
        if len(args) == 3:
            x, null_val, notnull_val = args
            result.append(
                f'CASE WHEN ({x}) IS NULL THEN ({null_val}) ELSE ({notnull_val}) END'
            )
        else:
            # 2-arg or unexpected — leave intact
            result.append(sql[m.start():end])
        i = end
    return ''.join(result)


def replace_concat_pipes(sql):
    """Replace || string concatenation with +.
    Skips occurrences inside single-quoted string literals."""
    result = []
    i = 0
    in_sq = False
    while i < len(sql):
        c = sql[i]
        if in_sq:
            result.append(c)
            if c == "'" and i + 1 < len(sql) and sql[i + 1] == "'":
                result.append("'")
                i += 2
                continue
            elif c == "'":
                in_sq = False
        elif c == "'":
            in_sq = True
            result.append(c)
        elif sql[i:i+2] == '||':
            result.append('+')
            i += 2
            continue
        else:
            result.append(c)
        i += 1
    return ''.join(result)


def replace_length(sql):
    """Replace SQLA length(x) with SQL Server LEN(x)."""
    return re.sub(r'\blength\s*\(', 'LEN(', sql, flags=re.IGNORECASE)


def replace_today(sql):
    """Replace SQLA today() with SQL Server GETDATE()."""
    return re.sub(r'\btoday\s*\(\s*\)', 'GETDATE()', sql, flags=re.IGNORECASE)


def replace_locate(sql):
    """Replace SQLA locate(source, pattern) with SQL Server CHARINDEX(pattern, source).
    SQLA LOCATE(str_to_search, pattern) — args are reversed vs SQL Server CHARINDEX."""
    pat = re.compile(r'\blocate\s*\(', re.IGNORECASE)
    result = []
    i = 0
    while i < len(sql):
        m = pat.search(sql, i)
        if not m:
            result.append(sql[i:])
            break
        result.append(sql[i:m.start()])
        args, end = _parse_call_args(sql, m.end())
        if len(args) >= 2:
            source  = args[0]
            pattern = args[1]
            extra   = ', ' + ', '.join(args[2:]) if len(args) > 2 else ''
            result.append(f'CHARINDEX({pattern}, {source}{extra})')
        else:
            result.append(sql[m.start():end])
        i = end
    return ''.join(result)


def replace_string_func(sql):
    """Replace SQLA string(x) with SQL Server CAST(x AS VARCHAR(50)).
    SQLA string() converts a value to its string representation."""
    pat = re.compile(r'\bstring\s*\(', re.IGNORECASE)
    result = []
    i = 0
    while i < len(sql):
        m = pat.search(sql, i)
        if not m:
            result.append(sql[i:])
            break
        result.append(sql[i:m.start()])
        args, end = _parse_call_args(sql, m.end())
        if args:
            result.append(f'CAST({args[0]} AS VARCHAR(50))')
        else:
            result.append(sql[m.start():end])
        i = end
    return ''.join(result)


def replace_if_then_endif(sql):
    """Replace SQLA IF...THEN...ELSE...ENDIF with T-SQL CASE WHEN...THEN...ELSE...END.
    Works for both flat and nested IF blocks.
    The naive token-level substitution produces valid nested CASE expressions:
      IF a THEN x ELSE IF b THEN y ELSE z ENDIF ENDIF
      => CASE WHEN a THEN x ELSE CASE WHEN b THEN y ELSE z END END
    """
    # Replace 'if' not immediately followed by '(' (avoids PB expression if() calls like if(cond,a,b))
    # Note: 'if (cond) then' with a space IS valid SQL and should be converted.
    sql = re.sub(r'\bif\b(?!\()', 'CASE WHEN', sql, flags=re.IGNORECASE)
    # 'then' and 'else' keywords stay as-is — they are valid in CASE expressions
    sql = re.sub(r'\bendif\b', 'END', sql, flags=re.IGNORECASE)
    return sql


def transform_sql(sql):
    sql = replace_ifnull3(sql)
    sql = replace_string_func(sql)
    sql = replace_if_then_endif(sql)
    sql = replace_concat_pipes(sql)
    sql = replace_length(sql)
    sql = replace_locate(sql)
    sql = replace_today(sql)
    return sql


# ---------------------------------------------------------------------------
# File processing
# ---------------------------------------------------------------------------

def count_line_diffs(a, b):
    a_lines = a.split('\n')
    b_lines = b.split('\n')
    # compare line-by-line up to the shorter length, count differing lines
    diffs = sum(1 for x, y in zip(a_lines, b_lines) if x != y)
    diffs += abs(len(a_lines) - len(b_lines))
    return diffs


def process_file(filepath):
    print(f"Reading: {filepath}")

    with open(filepath, 'r', encoding='utf-16', errors='replace') as f:
        content = f.read()

    retrieve_pattern = re.compile(
        r'(retrieve=")(.*?)(?<!~)(")',
        re.DOTALL | re.IGNORECASE
    )

    matches = list(retrieve_pattern.finditer(content))
    if not matches:
        print("  No retrieve block found, skipping.")
        return

    offset = 0
    new_content = content
    total_changes = 0

    for i, match in enumerate(matches):
        start = match.start(2) + offset
        end   = match.end(2)   + offset
        original_sql = new_content[start:end]
        transformed  = transform_sql(original_sql)

        changes = count_line_diffs(original_sql, transformed)
        total_changes += changes
        if changes:
            print(f"  Block {i+1}: {changes} line(s) changed")

        new_content = new_content[:start] + transformed + new_content[end:]
        offset += len(transformed) - len(original_sql)

    if total_changes == 0:
        print("  No changes needed.")
        return

    backup = filepath + '.bak'
    with open(backup, 'w', encoding='utf-16') as f:
        f.write(content)
    print(f"  Backup: {backup}")

    with open(filepath, 'w', encoding='utf-16') as f:
        f.write(new_content)
    print(f"  Done.   {filepath}")


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------

if __name__ == '__main__':
    if len(sys.argv) >= 2:
        process_file(sys.argv[1])
    else:
        files = [f for f in sorted(os.listdir(SCAN_DIR))
                 if f.lower().endswith('.srd')]
        print(f"Processing {len(files)} .srd file(s) in {SCAN_DIR}")
        print()
        for fname in files:
            process_file(os.path.join(SCAN_DIR, fname))
        print()
        print("All done.")
