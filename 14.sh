#!/bin/bash

echo -n "Enter a year (e.g., 2024): "
read YEAR

if [ $((YEAR % 400)) -eq 0 ]; then
    echo "$YEAR is a **Leap Year**."

elif [ $((YEAR % 4)) -eq 0 ] && [ $((YEAR % 100)) -ne 0 ]; then
    echo "$YEAR is a **Leap Year**."
else
    echo "$YEAR is **NOT a Leap Year**."
fi