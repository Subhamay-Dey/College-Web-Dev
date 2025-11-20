#!/bin/bash

echo -n "Enter a string: "
read INPUT_STRING

CLEAN_STRING=$(echo "$INPUT_STRING" | tr -d '[:space:]') 

REVERSED_STRING=$(echo "$CLEAN_STRING" | rev)

echo "Original: $CLEAN_STRING"
echo "Reversed: $REVERSED_STRING"

if [ "$CLEAN_STRING" = "$REVERSED_STRING" ]; then
    echo "The string **is a Palindrome**."
else
    echo "The string **is NOT a Palindrome**."
fi