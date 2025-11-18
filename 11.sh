6.---Shell script to display all prime numbers between 1 and 50.

#!/bin/bash

echo "Prime numbers between 1 and 50:"
PRIME_LIST=""

for ((i=2; i<=50; i++)); do
    NUM=0
    for ((j=1; j<=i; j++)); do
        if [ $((i % j)) -eq 0 ]; then
            NUM=$((NUM + 1))
        fi
    done
        if [ $NUM -eq 2 ]; then 
            PRIME_LIST="$PRIME_LIST $i"
        fi
done
echo "Prime numbers:$PRIME_LIST"