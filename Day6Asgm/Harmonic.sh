#!/bin/bash
echo "Enter No:"
read n
h=1
for((i=2;i<=n;i++))
do
a=$(awk 'BEGIN{print  1 / '$i'}')
h=$(awk 'BEGIN{print '$h' + '$a'}')
done
echo "$h"

