#!/bin/bash
echo Enter size of array
read n
echo Enter array elements
i=0
while [ $i -lt $n ];do
read a[$i];i=`echo $i+1|bc`
done
i=0;j=0
while [ $i -lt $n ];do
j=0
while [ $j -lt $n ];do
if [ ${a[$j]} -lt ${a[$i]} ]; then
temp=${a[$i]}
a[$i]=${a[$j]}
a[$j]=$temp
fi
j=`echo $j+1|bc`
done
i=`echo $i+1|bc`
done
echo ${a[0]} is largest 
