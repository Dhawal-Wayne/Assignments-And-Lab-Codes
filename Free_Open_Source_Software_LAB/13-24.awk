BEGIN{
FS="[AEIOUaeiou]";
c=0;
}
/[AEIOUaeiou]/{
c+=NF-1;
}
END{
print c," number of vowels are present in the input file";
}
