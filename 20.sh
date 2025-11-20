#!/bin/bash
---Script to print the Fibonacci series up to N terms

echo -n "Enter the number of terms for the Fibonacci series: "
read TERMS

if [ $TERMS -le 0 ]; then
    echo "Number of terms must be positive."
    exit 1
fi

A=0
B=1
SERIES="$A"

if [ $TERMS -eq 1 ]; then
    echo "Fibonacci Series (1 term): $SERIES"
    exit 0
fi

SERIES="$A $B"
echo -n "Fibonacci Series ($TERMS terms): $SERIES"

for (( I=3; I<=TERMS; I++ )); do

    C=$((A + B))

    echo -n " $C"

    A=$B
    B=$C
done

echo ""