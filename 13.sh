#!/bin/bash
# Script to display the reverse of a given string

echo -n "Enter a string: "
read INPUT_STRING

REVERSED_STRING_REV=$(echo "$INPUT_STRING" | rev)

echo "Reversed string (using 'rev'): $REVERSED_STRING_REV"