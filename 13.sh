#!/bin/bash
# Script to display the reverse of a given string

echo -n "Enter a string: "
read INPUT_STRING

REVERSED_STRING_REV=$(echo "$INPUT_STRING" | rev)

echo "Reversed string (using 'rev'): $REVERSED_STRING_REV"

LEN=${#INPUT_STRING}
REVERSED_LOOP=""

for (( i=$LEN-1; i>=0; i-- )); do
    # Extract one character at a time, starting from the end
    CHAR=${INPUT_STRING:$i:1} 
    REVERSED_LOOP="${REVERSED_LOOP}${CHAR}"
done

echo "Reverse (using loop): $REVERSED_LOOP"