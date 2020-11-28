#! /bin/bash
# numbers.sh
# Peter Smith

echo "Enter a positive number: "

read NUMBER

while echo "$NUMBER" | egrep -v "^[1-9][0-9]*$" > /dev/null 2>&1
do
    echo "You must enter a positive number!"
    echo "Enter a positive number: "
    read NUMBER
done

N=1

while [ "$N" -le "$NUMBER" ]
do
    if [ $((N%2)) -eq 0 ]
    then
        echo "$N Even"
    else
        echo "$N Odd"
    fi
    N=$((N+1))
done

