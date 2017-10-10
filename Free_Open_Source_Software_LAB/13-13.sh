#!/bin/bash
count=0
for file in `ls`
do
if [ `du -k $file|cut -f1` -eq 0 ]
then
count=`echo $count+1|bc`
echo $file is of size zero so removing it
rm $file
fi
done
if [ $count -eq 0 ]
then
echo No zero sized files in this directory
fi
