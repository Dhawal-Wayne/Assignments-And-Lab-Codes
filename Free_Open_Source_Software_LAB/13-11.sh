#!/bin/bash
echo Enter array to search
declare -a a
read -a a;
n=${#a[*]}
echo Enter Seacrh key
read key
count=0
for ((i=0 ; i<n ; i++)); do
if [ $key -eq ${a[$i]} ];then
count=1;echo break statement executed;break;echo This will not be printed
else
echo continue statement executed;continue;echo This will not be printed
fi
done
if [ $count -eq 1 ];then
echo Number found
else
echo Number not found
fi
