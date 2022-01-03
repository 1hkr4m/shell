n=5
arr=(343 45 42 3 45)

echo "Original arra is: ${arr[*]}";

for (( i = 0; i < $n-1; i++))
do
	for (( j = 0;  j <$n-1-$i; j++))
	do
		if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
		then
			temp=${arr[j]};
			arr[$j]=${arr[$j+1]};
			arr[$j+1]=$temp;
			flag=1;
		fi
	done
done

echo "Array in sorted order :"
echo ${arr[*]}
