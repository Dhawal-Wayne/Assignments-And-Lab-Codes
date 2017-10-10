#!/bin/bash
if [ $# -ge 1 ]
then
for st2 in "$@"
do
rst2=`echo $st2|rev`
if [ $rst2 = $st2 ]
then
echo \"$st2\" String is palindrome 
else 
echo \"$st2\" String is not a palindrome
fi
done
else
echo No arguments passed
fi
