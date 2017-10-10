#!/bin/bash -e
echo Enter number to check perfect or not
read x
i=1
sum=0
while [ $i -le $x ]
do
if [ `expr $x % $i` -eq 0 ]
then
sum=`expr $sum + $i`
fi
i=`expr $i + 1`
done
sum=`expr $sum / 2`
if [ $sum -eq $x ]
then
echo Number is perfect
else 
echo Number is not perfect
fi
