1.---Whether a given number is even or odd.

#!/bin/bash
echo -n "Enter an integer: "
read NUM

if [$((NUM % 2)) -eq 0]; then
    echo "$NUM is an even number."
else 
    echo "$NUM is an odd number."
fi