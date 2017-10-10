#!/bin/bash
echo Enter Employee name
read name
echo Name $name > ./emp.dat
echo Enter Employee number
read  num
echo Number $num >>./emp.dat
echo Enter Basic salary
read sal
echo Basic Salary $sal>>./emp.dat
var=`echo $sal*18/100|bc`
if [ $var -gt 5000 ];then
hra=$var
else
hra=550
fi
echo HRA $hra>>./emp.dat
da=`echo 0.35*$sal|bc`
pf=`echo 0.13*$sal|bc`
it=`echo $sal*0.14|bc`
ta=`echo $sal*0.1|bc`
echo DA $da>>./emp.dat
echo PF $pf>>./emp.dat
echo IT $it>>./emp.dat
echo TA $ta>>./emp.dat
gross=`echo $sal+$da+$ta|bc`
net=`echo $gross-$pf-$it|bc`
echo NET-Salary $net>>./emp.dat
echo Gross-Salary $gross>>./emp.dat
cat emp.dat
