#!/bin/bash
echo Enter Name of employee
read name
echo Enter Basic Salary of employee
read sal
if [ $sal -lt 1500 ]
then
hra=`echo $sal*10/100|bc`
da=`echo $sal*90/100|bc`
fi
if [ $sal -ge 1500 ] 
then
hra=500
da=`echo $sal*98/100|bc`
fi
gross=`echo $sal+$hra+$da|bc`
echo Gross-Salary of $name is $gross
