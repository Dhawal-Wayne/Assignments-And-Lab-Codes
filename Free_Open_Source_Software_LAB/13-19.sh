#!/bin/bash
v=`date "+%H"`
if [ $v -ge 0 -a $v -lt 12 ]
then
echo Good Morning 
fi
if [ $v -ge 12 -a $v -lt 15 ]
then
echo Good Afternoon
fi
if [ $v -ge 15 -a $v -lt 19 ]
then
echo Good Evening
fi
if [ $v -ge 19 -a $v -lt 24 ]
then
echo Good Night
fi
