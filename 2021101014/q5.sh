#!/bin/bash

read string

echo $string | rev

echo $string | rev | tr a-zA-Z b-yaB-YA 

# echo $string | rev | tr "0-9a-z" "1-9a-z_"

n=${#string}

half=$((n/2))
half2=$((half+1))



a=`echo -n "$string" | cut -b 1-$half | rev`

b=`echo -n "$string" | cut -b $half2-$n`

echo $a$b


