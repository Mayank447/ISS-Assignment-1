#!/bin/bash

#part a)
sed '/^$/d' quotes.txt

#part b)
awk '{if(!seen[$0]++ && $NF!="") print $0}' quotes.txt > q1b.txt
rm quotes.txt
mv q1b.txt quotes.txt