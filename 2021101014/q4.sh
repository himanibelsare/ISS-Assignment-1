#!/bin/bash

file="quotes.txt"

read -p "enter input: "  string


IFS=',' read -a arr <<< "$string"

# echo ${arr[*]}

for ((i = 0; i<${#arr[@]}; i++))
do
    
    for((j = 0; j<${#arr[@]}-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[((j+1))]}  
            arr[((j+1))]=$temp
        fi
    done
done

echo ${arr[*]}
