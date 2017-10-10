#!/bin/bash
echo Enter the user name
read x
who| grep $x>/dev/null
if [ $? -eq 0 ];then
echo User is logged in 
v="`who -w|grep $x|awk '{print $2;exit}'`"
if [ $v = "+" ] 
then
echo You can send him message
else 
echo You cant send him message
fi
else 
echo User is not logged in
fi
