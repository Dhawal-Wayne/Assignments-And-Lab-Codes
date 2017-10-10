#!/bin/bash
if  [ $# -eq 1 ]
then
if [ -x $1 ]
then
perm=1
fi
if [ -r $1 ]
then
perm=4
fi
if [ -w $1 ]
then
perm=2
fi
if [ -r $1 -a -w $1 ]
then
perm=6
fi
if [ $perm -eq 1 ]
then
echo Executable
elif [ $perm -eq 2 ];then
echo Writable
elif [ $perm -eq 4 ];then
echo Readable
elif [ $perm -eq 6 ];then
echo Readable and Executable
fi
else 
echo Invalid input
fi
