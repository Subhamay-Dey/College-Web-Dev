#!/bin/bash

---Script to calculate the sum of digits of a number

echo -n "Enter an integer: "
read NUM
N=$NUM

SUM=0
TEMP=$NUM

while [ $TEMP -gt 0 ]; do

    DIGIT=$((TEMP % 10))
    SUM=$((SUM + DIGIT))
    TEMP=$((TEMP / 10))

done

echo "The sum of digits of $N is: $SUM"