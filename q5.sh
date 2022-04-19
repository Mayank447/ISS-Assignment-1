#!/bin/bash

# Part a)
read -p "Enter a string: " string_input
echo $string_input | rev

# Part b)
echo $string_input | rev > temp.txt
cat temp.txt | tr 'a-zA-Z' 'b-zaB-ZA'
rm temp.txt

# Part c)
read -p "Enter a string: " str
len=${#str}
echo -n ${str:0:len/2} | rev
echo ${str:len/2:len}