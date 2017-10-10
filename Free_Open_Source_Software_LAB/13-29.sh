#!/bin/bash
echo Enter String
read str
spcount=0
echo $str>.str
echo Number of vovels = $(grep -o [aeiou] .str|wc -l)
echo Number of blanck spaces = $(grep -o "\s\+" .str|wc -l)
echo Number of consonants = $(grep -o [bcdfghjklmnpqrstvwxyz] .str|wc -l)
echo Number of number =$(grep -o [0-9] .str|wc -l)
echo Number of special characters =$(grep -o [\!-\/\:-\@\[-\`\{-\~] .str|wc -l)
rm .str
