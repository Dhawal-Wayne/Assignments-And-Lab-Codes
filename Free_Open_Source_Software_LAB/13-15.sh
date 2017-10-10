#!/bin/bash -e
if [ $# -ge 1 ]
then
for num in "$@"
do
echo $num
r1=$num
count=0
cube=0
while [ $r1 -gt 0 ];
do
r=`expr $r1 % 10 `
cube=`echo $r*$r*$r|bc`
count=`echo $cube + $count|bc`
r1=`echo $r1 / 10|bc`
done
if [ $count -eq $num ]
then
echo $num is amstrong number
else 
echo $num is not amstrong number
fi
done
else 
echo No arguments passed
fi
