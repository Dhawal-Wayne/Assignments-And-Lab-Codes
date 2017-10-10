BEGIN{
count=0;
}
{
count=count+$2;
}
END{
print count," is the marks obtained";
avg=count/5;
print avg," is average obtained"
}
