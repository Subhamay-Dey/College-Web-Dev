#&& (AND):
mkdir my_dir && cd my_dir

#|| (OR):
grep "error" app.log || echo "No errors found."


--Script to Check File Existence
#!/bin/bash
file_to_check="report.txt"
# [ -f "$file_to_check" ] is a command that succeeds if the file exists.
# 1. If it succeeds, the && part runs.
# 2. If it fails, the && part is skipped and the || part runs.
[ -f "$file_to_check" ] && echo "$file_to_check exists." || echo "$file_to_check does NOT exist."