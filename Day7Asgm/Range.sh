#!/bin/bash
for (( n=1; n<=100; n++ ))
do
        if [ `expr $n % 11` -eq 0 ]
        then
                echo "$n"
        fi
done
