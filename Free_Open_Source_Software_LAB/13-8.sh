#!/bin/bash
if [ $# -gt 0 ];then
for num in "$@"
do
echo Fibonacci series for first $num are
f1=0
f2=1
i=1
echo $f1 
echo $f2
num=`echo $num-2|bc`
while [ $i -le $num ];do
f3=`echo $f1+$f2|bc`
f1=$f2
f2=$f3
i=`echo $i+1|bc`
echo $f3
done
done
else
echo No argumnets passed
fi
