#!/bin/bash

file=$1
# Part a)
wc -c $file | awk '{print "Size of " $2 " is " $1 " bytes"}'

# Part b)
wc -l $file | awk '{print "There are " $1 " lines in " $2}'

#Part c)
wc -w $file | awk '{print $2 " contains " $1 " words"}'

#Part d)
awk '{print "Line number " NR " - Count of words: " NF; count++}' $file

#Part e)
cat $file | tr 'A-Z0-9' 'a-z ' | tr -d '.,~-;' | tr -s ' ' | tr ' ' '\n' | sort | uniq -c | awk '{if($1>1) print $2 " - " $1}'