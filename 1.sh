cal [month] [year]
cal 10 2025 - calender of desired month, year.

#!/bin/bash
# This is a simple script
echo "Hello, World!"

--Read command 
#!/bin/bash
echo -n "Enter your name: "
read user_name
echo "Hello, $user_name!"

# !/bin/bash
echo -n "Enter your firstname and lastname: "
read firstname lastname
echo "First Name: $firstname"
echo "Last Name: $lastname"


#!/bin/bash
# The '-n' flag in echo keeps the cursor on the same line.
echo -n "Please enter your name: "
# Read the user's input into a variable called 'name'
read name
echo "Hello, $name! Welcome to UNIX."

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