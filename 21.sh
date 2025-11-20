#!/bin/bash
---Script to find the Greatest Common Divisor (GCD) using the Euclidean Algorithm

echo "Enter two numbers:"
read A B

if [ $A -le 0 ] || [ $B -le 0 ]; then
    echo "Numbers must be positive integers."
    exit 1
fi

ORIG_A=$A
ORIG_B=$B

while [ $B -ne 0 ]; do

    REMAINDER=$((A % B))

    A=$B

    B=$REMAINDER

done

echo "The GCD of $ORIG_A and $ORIG_B is: $A"