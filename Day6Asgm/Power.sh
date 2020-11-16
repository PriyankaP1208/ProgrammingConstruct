#!/bin/bash -x
echo "Entered number: $1";
a=$1
b=256
for (( i=1; i<=$a; i++ ))
do
        while [[ $c -le $b ]]
        do
                c=$((2**i));
                echo "$c"
                break
        done
done
