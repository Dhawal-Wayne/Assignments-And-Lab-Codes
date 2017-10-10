#!/bin/bash
echo Enter name of the student 
read name;echo Name=$name>stu.dat
echo Enter roll-number of student
read num;echo Roll-Number=$num>>stu.dat
echo Enter marks
echo Maths
read m
echo Physics
read p
echo Chemistry
read c
echo English
read e
echo Hindi
read h
total=`echo $e+$h+$p+$c+$m|bc`
avg=`echo  $total/5 |bc`
echo Total=$total>>stu.dat
echo Average=$avg>>stu.dat
if [ $avg -ge 80 ];then
echo A grade;echo Grade=A>>stu.dat
elif [ $avg -lt 80 -a $avg -ge 70 ];then
echo B grade;echo Grade=B>>stu.dat
elif [ $avg -lt 70 -a $avg -ge 60 ];then
echo C grade;echo Grade=c>>stu.dat
elif [ $avg -lt 60 -a $avg -ge 50 ]; then
echo D grade;echo Grade=D>>stu.dat
elif [ $avg -lt 50 -a $avg -ge 40 ] ; then
echo E grade;echo Grade=E>>stu.dat
else
echo F grade;echo Grade=F>>stu.dat
fi

