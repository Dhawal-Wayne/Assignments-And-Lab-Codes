#!/bin/bash
if [ $# -eq 2 ] ;then
ls $1 $2 >/dev/null
if [ $? -eq 0 ]
then
cmp $1 $2 >/dev/null
if [ $? -eq 0 ]
then
echo 2 files are same deleting 2nd file
rm $2
else
echo 
echo They are differnt so keeping them both as it is
fi
else 
echo One of the input file does not exist
fi
else
echo Two arguments must be passed
fi
