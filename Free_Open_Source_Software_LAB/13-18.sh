#!/bin/bash
declare -a filearr
i=0
if [ $# -gt 1 ]
then
for f in "$@"
do 
ls $f>/dev/null
if [ $? -ne 0 ]
then
echo $f is not found
exit
fi
done
maxfile=$1
max=` du -k $1|cut -f1`
count=0
temp=0
for file in "$@"
do
temp=`du -k $file|cut -f1`
if [ $temp -gt $max ]
then
max=$temp
maxfile=$file
fi
done
for file in "$@"
do
if [ $max -eq `du -k $file|cut -f1` ]
then
filearr[$i]=$file
i=`echo $i+1|bc`
fi
done
if [ $max -eq `du -k ${filearr[0]}|cut -f1` ]
then
echo ${filearr[*]} have maximum size from given inputs
fi
elif [ $# -eq 1 ];then
echo Pass atleast 2 fiels to be compared
else
echo No arguments are passsed
fi
