#!/bin/bash

---Script to display the multiplication table

echo -n "Enter a number for the multiplication table: "
read NUM

echo "--- Multiplication Table for $NUM (up to 10) ---"

for (( I=1; I<=10; I++ )); do

    RESULT=$((NUM * I))
    
    echo "$NUM x $I = $RESULT"
done