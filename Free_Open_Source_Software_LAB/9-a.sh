#!/bin/bash
for file in `ls`
do 
if [ -x $file -a -r $file -a -w $file ]
then
echo $file has read,write and execute permission for the user
fi
done
