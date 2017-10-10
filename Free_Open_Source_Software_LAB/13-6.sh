#!/bin/bash -e
echo Options
echo 1 Copy
echo 2 Edit
echo 3 Rename
echo 4 Delete
read o
case $o in
1)
echo Enter file source to copy with exact path
read srce
ls $srce >/dev/null
if [ $? -eq 0 ];then
echo Enter Destination file
read dest
cp $srce $dest
else 
echo
echo Enterd file is not present
fi;;
2)
echo Enter file source to edit
echo If not present file will be created based on permission available for you
read srce
nano $srce;;
3)
echo Enter name of file to b edit along with its path
read srce
ls $srce >/dev/null
if [ $? -eq 0 ];then
echo Enter final name of file with path
read dest
mv $srce $dest
else 
echo File is not found s
fi;;
4)
echo Enter name of file to be deleted
read srce
ls $srce > /dev/null
if [ $? -eq 0 ];then
rm $srce
else 
echo File is not present
fi;;
*)
echo Invalid option entered;;
esac
