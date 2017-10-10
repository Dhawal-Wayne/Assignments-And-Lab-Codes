#/bin/bash
echo Enter table needed
read a
echo Table of $a is
y=1
while [ $y -le 10 ]
do
echo $a x $y =`expr $y \* $a`
y=`expr $y + 1`
done
