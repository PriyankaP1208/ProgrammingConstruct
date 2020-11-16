#!/bin/bash
echo "Enter a year"
read year
echo Entered year is : $year
d=`expr $year % 4`
if [ $d -eq 0 ]
then echo "$year is a leap year"
else echo "$year is not a leap year"
fi

