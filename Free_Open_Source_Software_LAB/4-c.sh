#!/bin/bash
echo Enter file
read file
awk 'BEGIN{print "Enter the word to be searched";getline srch<"-";count=0;}/'$srch'/{count+=1;}
END{print count,"is number of times word has occured in the file";}' $file
