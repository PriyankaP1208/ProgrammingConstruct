echo "Enter number:"
read n
count=0
flag=0
for ((i=2; i<$n; i++));
do
        if [ `expr $n % $i` -eq 0 ];
        then
                flag=1
                for ((j=2; j<=`expr $i / 2`; j++));
                do
                        if [ `expr $i % $j` -eq 0 ];
                        then
                                flag=0
                                break;
                        fi
                done
                if [ $flag -eq 1 ]
                then
                      echo "$i"
                fi
        fi
done