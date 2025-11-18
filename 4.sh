---Script to Check if File is Readable
#!/bin/bash
# We will check the file provided as the first argument ($1)
filename="$1"
if [ -z "$filename" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi
# Use the 'test' command with the -r flag
if [ -r "$filename" ]; then
  echo "The file '$filename' is readable."
else
  echo "The file '$filename' is NOT readable or does not exist."
fi