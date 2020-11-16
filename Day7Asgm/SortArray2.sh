#!/bin/bash
for ((i=0; i<10; i++))
do
        nos[$i]=$(($RANDOM%1000+1))
done
echo "Numbers are:"
for((i=0; i<10; i++))
do
        echo ${nos[$i]}
done
for((i=0; i<=$((${#nos[@]} - 2)); ++i))
do
        for((j=((i + 1)); j<=$((${#nos[@]}-1)); ++j))
        do
                if [[ ${nos[i]} -gt ${nos[j]} ]];
                then
                        temp="${nos[i]}"
                        nos[i]="${nos[j]}"
                        nos[j]="$temp"
                fi
        done
done
echo "Array in sorted order:"
echo ${nos[*]}
echo "2nd smallest number is: ${nos[1]}"
echo "2nd largest number is: ${nos[8]}"
