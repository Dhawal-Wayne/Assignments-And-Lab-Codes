#!/bin/ksh
echo Enter size of arry
read n
echo Enter array in ascending order
i=0
while [ $i -lt $n ];do
read b[$i]
i=`echo $i+1|bc`
done
echo Enter a number to search
read x
l=0
h=`echo $n-1|bc`
while [ $l -le $h ]
do
mido=`echo $l+$h|bc`
mid=`echo $mido/2|bc`
if [ $x -eq ${b[$mid]} ]
then
echo Found at $(echo $mid+1|bc)
break
elif [ $x -lt ${b[$mid]} ]
then
h=`echo $mid-1|bc`
elif [ $x -gt ${b[$mid]} ]
then
l=`echo $mid+1|bc`
fi
done
if [ $l -gt $h ]
then
echo Number not found
fi
