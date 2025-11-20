#!/bin/bash
# Script to calculate the sum of digits of a number

echo -n "Enter an integer: "
read NUM
N=$NUM # Store original number for output

SUM=0
TEMP=$NUM # Use a temporary variable for calculation

# Loop continues as long as the temporary number is greater than 0
while [ $TEMP -gt 0 ]; do
    
    # 1. Extract the last digit (remainder when divided by 10)
    DIGIT=$((TEMP % 10))
    
    # 2. Add the digit to the sum
    SUM=$((SUM + DIGIT))
    
    # 3. Reduce the number (integer division by 10)
    TEMP=$((TEMP / 10))

done

echo "The sum of digits of $N is: $SUM"