#!/bin/bash
if [ $# -gt 0 ] ; then
if [ $# -eq 2 ];then
i=1
result=1
while [ $i -le $2 ]
do
result=`echo $result*$1|bc`
i=`echo $i+1|bc`
done
echo $1 raised to power of $2 is $result
else 
echo Number of arguments that must be passed must be two
fi 
else
echo No argumnets passed
fi
