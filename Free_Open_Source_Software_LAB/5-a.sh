#!/bin/bash
if [ $# -gt 0 ]
then
if [ $# -eq 1 ]
then
ls $1>/dev/null
if [ $? -eq 0 ]; then
if [ -d $1 ];then
echo It is Directory
elif [ -f $1 ];then
echo It is a file
else 
echo Its is something else
fi
else 
echo File doesnot exist
fi
else
echo Only one argument has to be passed
fi
else
echo No arguments are passed
fi 
