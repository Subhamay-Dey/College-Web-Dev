#!/bin/bash
# Script to count lines, words, and characters in a file

echo -n "Enter the filename: "
read FILENAME

# Check if the file exists
if [ ! -f "$FILENAME" ]; then
    echo "Error: File '$FILENAME' not found."
    exit 1
fi

COUNTS=$(wc "$FILENAME")

echo -e "\nFull count output (Lines, Words, Characters, Filename):"
echo "$COUNTS"

LINES=$(wc -l < "$FILENAME")
WORDS=$(wc -w < "$FILENAME")
CHARS=$(wc -m < "$FILENAME")

echo -e "\n--- Individual Counts ---"
echo "Lines: $LINES"
echo "Words: $WORDS"
echo "Characters: $CHARS"