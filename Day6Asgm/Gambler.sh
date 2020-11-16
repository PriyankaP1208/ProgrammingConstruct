#!/bin/bash
money=100
loss=0
wins=0
i=1
while [[ $money -ne 200 && $money -ne 0 ]]
do
        no=$(($RANDOM%2+1))
        luck=$(($RANDOM%2+1))
        if [ $luck -eq $no ]
        then
                money=$(( $money + $i ))
                ((wins++))
                echo -e "WON  "
        else
                money=$(( $money - $i ))
                ((loss++))
                echo -e "LOST  "
        fi
done
echo "won $wins"
echo "lose $loss"
