#!/bin/bash
if [ $# -ge 1 ];then
for num in "$@"
do
echo Reverse of $num is
echo $num|rev
done
else 
echo No arguments passed
fi
