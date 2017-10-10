#!/bin/bash
echo Enter Directory path
read x
ls $x >/dev/null
if [ $? -eq 0 ];then
echo Number of files `ls $x|wc -l`
else
echo File path is invalid or file doesnot exist
fi
