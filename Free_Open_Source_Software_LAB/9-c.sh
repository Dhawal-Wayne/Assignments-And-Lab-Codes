#!/bin/bash
echo Enter string
read str
echo Options available 
echo 1 To extract substring 
echo 2 To find length of sub-string
read o
case $o in
1)
echo Enter start and end index of string to extract sub-string
read strt end
strt=`echo $strt-1|bc`
echo Sub-String=${str:$strt:$end};;
2)
echo Length of string is ${#str};;
*)
echo Invalid option;;
esac
