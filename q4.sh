#!/bin/bash
arr=($@)
size=$#

for((i=0; i<size-1; i++))
do
for((j=1; j<size-i; j++))
do
    if [ ${arr[j-1]} -gt ${arr[j]} ]
    then
    temp=${arr[j-1]}
    arr[j-1]=${arr[j]}
    arr[j]=${temp}
    fi
done
done
echo ${arr[*]}