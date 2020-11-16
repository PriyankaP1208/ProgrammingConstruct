#!/bin/bash
sum=0
for((i=0;i<5;i++))
do
no[$i]=$(($RANDOM%100+1))
done
echo "number generated are"
for((i=0;i<5;i++))
do
echo ${no[$i]}
done
sum=0
for i in ${no[@]}
do
        sum=`expr $sum + $i`
done
echo "sum of numbers is $sum"

avg=`expr $sum / 5`
echo "Average of numbers is $avg"
