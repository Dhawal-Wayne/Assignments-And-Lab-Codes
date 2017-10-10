#!/bin/bash
if [ $# -ge 1 ];then
for num in "$@"
do
product=1;
i=1
while [ $i -le $num ]
do
product=`echo $product*$i|bc`
i=`echo $i+1 |bc`
done
echo Factorial value of $num is $product
done
else 
echo No arguments passed
fi
