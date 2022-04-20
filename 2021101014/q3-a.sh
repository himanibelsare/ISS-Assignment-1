#!/bin/bash

read filename

wc -c "$filename" | awk '{print $1}'

wc "$filename" | awk -F " " '{print $1}'

wc "$filename" | awk -F" " '{print $2}'

awk ' BEGIN { FS=""; RS="\n" } { print "Line:", NR, "-", "Word Count:", NF } ' "$filename"

declare -a arr
declare -a rparr

count=0
flag=0

while read line; do
    for word in ${line[@]}; do
        flag=0
        for (( i=0; i < ${#arr[@]}; i++)); do
            if [ "${arr[$i]}" == "$word" ] ; then
                (( rparr[i]++ ))
                flag=1
            fi
        done
        if [ $flag -eq 0 ]; then
            arr+=($word)
            rparr+=(1)
        fi
    done
done <"quotes.txt"

echo {arr[@]}

for i in "${#rparr[@]}"; do
    if [[ "${rparr[$i]}" != 1 ]]; then
        echo "word: " $arr[$i] "-" "Count of repitition: " $rparr[$i]
    fi
done

