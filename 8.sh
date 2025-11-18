4.---Shell Script to Find the Largest of Three Numbers

#!/bin/bash
echo -n "Enter three numbers: "
read A B C

if [ $A -ge $B ] && [ $A -ge $C ]; then
    echo "$A is the largest number."
elif [ $B -ge $A ] && [ $B -ge $C ]; then
    echo "$B is the largest number."
else 
    echo "$C is the largest number."
fi