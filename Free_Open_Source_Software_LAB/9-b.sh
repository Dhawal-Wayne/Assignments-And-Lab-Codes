#!/bin/bash
echo Enter filename
read file
ls $file>/dev/null
if [ $? -eq 0 ] ;then
echo Enter name to be searched 
read key
echo The word $key occured $(grep -wo "$key" $file|wc -l) times
else 
echo File doesnot exist
fi
