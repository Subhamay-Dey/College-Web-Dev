---script to check if a number is prime or not

#!/bin/bash

echo -n "Enter a number: "
read num

NUM=0

if [ $num -eq 0 ]; then
    echo "0 is not a prime number."
elif [ $num -lt 0 ]; then 
    echo "Negative numbers are not prime."
else 
    for ((i=1; i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            NUM=$((NUM + 1))
        fi
    done
        if [ $NUM -eq 2 ]; then 
            echo "$num is a prime number."
        else 
            echo "$num is not a prime number."
        fi
fi