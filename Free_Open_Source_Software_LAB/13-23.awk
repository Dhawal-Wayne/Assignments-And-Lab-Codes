BEGIN{
count=0;
}
{
count=count+$2;
if($2<35)
print "Student failed in ",$1;
else
print "Student passed in ",$1;
}
END{
avg=count/5;
if (avg <35)
print "Student failed as per the percentage and his percentage is ",avg;
else
print "Student passed as per the percentage and his percentage is ",avg
}
