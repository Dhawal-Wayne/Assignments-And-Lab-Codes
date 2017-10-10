#!/bin/bash -e
echo Options
echo 1 Copy
echo 2 Remove/Delete
echo 3 Rename
echo 4 Linking
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
echo Source file is not present
fi;;
2)
echo Enter file to remove
read srce
ls $srce>/dev/null
if [ $? -eq 0 ]
then
rm $srce
fi;;
3)
echo Enter name of file to be renamed.
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
echo Enter name of file to be linked
read srce
ls $srce > /dev/null
if [ $? -eq 0 ];then
echo Enter destination path
read dest
echo Creating hard link
ln -i $srce $dest
else 
echo File is not present
fi;;
*)
echo Invalid option entered;;
esac
