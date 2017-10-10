#!/bin/bash
if [ $# -ge 1 ]
then
echo Enter string so that lines containing them can be deleted
read str
for file in "$@"
do
grep -wv $str $file>.temp
cat .temp>$file
done
else
echo No arguments are passed 
fi
