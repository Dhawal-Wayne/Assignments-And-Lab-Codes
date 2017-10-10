#!/bin/bash -e
if [ $# -eq 3 ];then
total=`cat $1|wc -l`
size=`echo $3-$2+1|bc`
if [ $2 -le $total -a $3 -le $total ];then
`cat -n $1|head -$3|tail -$size >.temp`
cat .temp
elif [ $2 -gt $total ];then
echo Start line is out of bound
else
echo Endline is out of bound
fi
else
echo Pass file\(with path\) as 1st argument start line as 2nd argument end line as 3rd argument
fi
