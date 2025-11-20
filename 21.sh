#!/bin/bash
# Script to find the Greatest Common Divisor (GCD) using the Euclidean Algorithm

echo "Enter two numbers:"
read A B

# Ensure A and B are positive (Euclidean algorithm requirement)
if [ $A -le 0 ] || [ $B -le 0 ]; then
    echo "Numbers must be positive integers."
    exit 1
fi

# Store original values for output
ORIG_A=$A
ORIG_B=$B

# Loop continues as long as B is not zero
while [ $B -ne 0 ]; do
    
    # 1. Calculate the remainder (R) of A divided by B
    REMAINDER=$((A % B))
    
    # 2. Assign B to A (A becomes the old divisor)
    A=$B
    
    # 3. Assign R to B (B becomes the remainder)
    B=$REMAINDER

done

# When the loop finishes, A holds the GCD
echo "The GCD of $ORIG_A and $ORIG_B is: $A"