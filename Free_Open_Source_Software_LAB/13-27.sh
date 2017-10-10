#!/bin/bash
echo Enter size of array
read n
echo Enter the values
i=0
while [ $i -lt $n ];do
read a[$i]
i=`echo $i+1|bc`
done
min=0
i=0
n1=`echo $n-1|bc`
while [ $i -lt $n1 ];do
j=`echo $i+1|bc`
while [ $j -lt $n ]
do
min=$j
if [ ${a[$min]} -lt ${a[$i]} ]
then
k=${a[$i]}
a[$i]=${a[$min]}
a[$min]=$k
fi
j=`echo $j+1|bc`
done
i=`echo $i+1|bc`
done
echo Sorted order is
echo ${a[*]}
