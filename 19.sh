#!/bin/bash
---Script to check file permissions

echo -n "Enter the filename to check: "
read FILENAME

# Check if the file exists at all
if [ ! -e "$FILENAME" ]; then
    echo "Error: File '$FILENAME' does not exist."
    exit 1
fi

echo "--- Permissions Check for $FILENAME ---"

# Check Readability
if [ -r "$FILENAME" ]; then
    echo "✅ Readable: YES"
else
    echo "❌ Readable: NO"
fi

# Check Writability
if [ -w "$FILENAME" ]; then
    echo "✅ Writable: YES"
else
    echo "❌ Writable: NO"
fi

# Check Executability
if [ -x "$FILENAME" ]; then
    echo "✅ Executable: YES"
else
    echo "❌ Executable: NO"
fi