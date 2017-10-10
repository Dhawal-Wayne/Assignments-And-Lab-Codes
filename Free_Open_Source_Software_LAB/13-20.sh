#!/bin/bash
echo Enter length of array
read n
echo Enter array elements
x=0
while [ $n -gt $x ]
do 
read aval
a[$x]=$aval
x=`echo $x+1|bc`
done
i=0;j=0
while [ $i -lt $n ] ;do
j=0
while [ $j -lt $i ] ;do
if [ ${a[$j]} -gt ${a[$i]} ]; then
temp=${a[$i]}
a[$i]=${a[$j]}
a[$j]=$temp
fi
j=`echo $j+1|bc`
done
i=`echo $i+1|bc`
done
echo Sorted order is
echo ${a[*]}
