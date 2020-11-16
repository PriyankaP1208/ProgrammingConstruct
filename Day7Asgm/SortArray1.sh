#!/bin/bash
RANDOM=$$
array=()
count=0
for i in `seq 10`
do
        a=$((10+RANDOM%999))
        array[ $count ]=$a
         ((count++))
done
len=${#array[@]}
echo "${array[@]}"
max_num=0
min_num=${array[0]}
sec_minnum=0
sec_maxnum=0
for((i=0; i<$len; i++))
do
         if [[ ${array[i]} -lt $min_num ]]
        then
                sec_minnum=$min_num
                min_num=${array[i]}
                elif [ ${array[i]} -le $sec_minnum ] && [ ${array[i]}!=$min_num ]
                then
                                sec_minnum=${array[i]}
                                elif [ ${array[i]} -gt $max_num ]
                         then
                                        sec_maxnum=$max_num
                                        max_num=${array[i]}
                                 elif [ ${array[i]} -gt $sec_maxnum ] && [ ${array[i]}!=max_num ]
                                 then
                                 sec_maxnum=${array[i]}
    fi
done
echo "Second minimum number:$sec_minnum"
echo "Second max number:$sec_maxnum"
