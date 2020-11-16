#!/bin/bash
declare -A Dice
Dice=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0);
larg=0
while [ True ]
do
        ran=$(($RANDOM % 6 + 1))
        ((Dice[$ran]++))
        if [ "${Dice[$ran]}" -eq 10 ]
    then
        large=$ran;
        break
    fi
done
for key in "${!Dice[@]}"
do
        echo "$key : ${Dice[$key]}";
done
len=${#Dice[@]}

small=${Dice[1]}
greatest=${Dice[0]}
for key in "${!Dice[@]}"
do
    if [[ ${Dice[$key]} -lt $small ]];
    then
        small=${Dice[$key]}

    elif [[ ${Dice[$key]} -gt $greatest ]];
    then
        greatest=${Dice[$key]}
    fi
done

echo "The number that reached minimum times occured is: $small"
echo "the number that reached maximum times occured is: $greatest"
