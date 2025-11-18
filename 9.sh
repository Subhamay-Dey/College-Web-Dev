5.---Shell Script to Calculate Factorial of a Number

#!/bin/bash

echo -n "Enter a number: "
read NUM

FACTORIAL=1

if [ $NUM -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
elif [ $NUM -eq 0 ]; then
    echo "The factorial of 0 is 1."
fi

for ((i = 1; i <= NUM; i++)); do
    FACTORIAL= $((FACTORIAL * i))
done

echo "The factorial of $NUM is: $FACTORIAL"