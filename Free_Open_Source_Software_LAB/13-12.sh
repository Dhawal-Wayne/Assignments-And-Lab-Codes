#!/bin/bash
echo Option
echo 1 Working directory path
echo 2 Today\'s Date
echo 3 Logged in
echo 4 Quit menu
echo Enter your Option
read o
case $o in
1)
echo Working Directory is $(pwd);;
2)
date "+%D is date";;
3)
echo People logged on system are 
who|sort|cut -c1-19;;
4)
echo Exiting
exit;;
*)
echo Invalid option;;
esac
