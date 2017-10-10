#!/bin/bash
c=0
while [ $c -eq 0 ]
do
stty -echo
echo Enter a password to lock the terminal
read passwrd
echo Re-Enter the password
read passwrd2
if [ "$passwrd" = "$passwrd2" ];then
echo Terminal is loocked
echo Enter password to unlock it
read epasswrd
until [ "$epasswrd" = "$passwrd" ]
do
echo Wrong password entered
read epasswrd
stty echo
c=1
done
if [ "$epasswrd" == "$passwrd" ];then
echo Password matched hence unlocking the terminal
c=1
stty echo
fi
else
echo Password mis-match re-enter password
fi
done
