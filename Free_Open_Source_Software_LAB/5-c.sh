#!/bin/bash
echo Enter UserID
read uid
who|grep $uid>/dev/null
if [ $? -eq 0 ];then
strh=`who|grep $uid|awk '{print $4}'|awk 'BEGIN{FS=":"}{print $1;exit;}'`
prh=`date "+%H"`
strm=`who|grep $uid|awk '{print $4}'|awk 'BEGIN{FS=":"}{print $2;exit;}'`
prm=`date "+%M"`
m=`echo $prm-$strm|bc`
if [ $m -le 0 ];then
prh=`echo $prh-1|bc`
hrs=`echo $prh-$strh|bc`
min=`echo $prm-$strm+60|bc`
else
min=`echo $prm-$strm|bc`
hrs=`echo $prh-$strh|bc`
fi
echo User $uid is logged in for $hrs hours and $min minutes
else
echo User is not logged in
fi
