BEGIN{
max=0;
}
{
nf=1;
while(nf<=NF)
{
if(max<length($nf))
{
max=length($nf);i=$nf;
}
nf+=1;
}
}
END{
print  i," is the word and its length is ",max
}
