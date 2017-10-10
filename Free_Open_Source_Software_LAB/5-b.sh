#!/bin/bash
if [ $# -eq 1 ];then
for $file in "$@"
do
ls|grep $file>/dev/null
if [ $? -eq 0 ];then
echo $file is present in current directory
if [ -f $file ];then
cat $file|tr a-z A-Z
else
echo $file is not readable
fi
else
echo $file is not present in curret directory
fi
done
else
echo No arguments passed
fi

