#!/bin/bash
awk -F "~" '{if($NF!="") print $2 " once said, \"" $1 "\""}' ./quotes.txt