#!/bin/bash
---Script to check if a number is positive, negative, or zero

echo -n "Enter a number: "
read NUM

if [ $NUM -gt 0 ]; then
    echo "The number $NUM is **Positive**."

elif [ $NUM -lt 0 ]; then
    echo "The number $NUM is **Negative**."

else
    echo "The number $NUM is **Zero**."
fi