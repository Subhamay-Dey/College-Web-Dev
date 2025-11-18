2.---if-then-else

#!/bin/bash
MARKS=85

if [ $MARKS -ge 90 ]; then
    echo "Grade A+"
elif [ $MARKS -ge 80 ]; then
    echo "Grade A"
else
    echo "Grade B or lower"
fi