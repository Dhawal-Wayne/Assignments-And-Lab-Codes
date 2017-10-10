#!/bin/bash
echo Enter file
read file
echo Enter word to be searched
read word
v=`grep -c $word $file`
echo -e "Number of lines in which \"$word\" has occured is $v"
