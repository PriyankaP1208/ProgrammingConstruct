#!/bin/bash
echo "Enter range1"
read n1
echo "Enter range2"
read n2
count=0
for ((i=n1; i<=n2; i++))
do
        count=0
        for ((j=2; j<i; j++))
        do
                if [ $(($i%$j)) -eq 0 ]
                then
                        count=1
                        break
                fi
        done
if [ $count -eq 0 ]
then
        echo "$i"
fi
done
