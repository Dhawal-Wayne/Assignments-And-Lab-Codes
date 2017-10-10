#!/bin/bash
if [ $# -eq 1 ]
then
echo Person logged in these intervals in this month
last -w $1>.log
cat .log|grep $1
rm .log
elif [ $# -ge 1 ]
then
echo Only one argument is to be passed 
else
echo No argumnets passed
fi 
