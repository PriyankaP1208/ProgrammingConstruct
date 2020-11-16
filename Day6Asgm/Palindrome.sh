echo "Enter two numbers:"
for((i=0;i<=1;i++))
do
        read n
        nos[$i]=$n
done

ispalindrome()
{
for((i=0;i<=1;i++))
{
        n=${nos[i]}
        sd=0
        rev=""
        on=$n
        while [[ $n -gt 0 ]]
        do
                sd=$(( $n % 10 ))
                n=$(( $n / 10 ))
                rev=$( echo ${rev}${sd} )
        done
        if [ $on -eq $rev ];
        then
                echo "$on is palindrome"
        else
                echo "$on is NOT palindrome"
        fi

}
}
