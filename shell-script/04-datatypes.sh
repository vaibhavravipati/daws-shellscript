#!/bin/bash

a=1
b=2
c=3

sum=$((${a}+${b}))
echo "exit status is $?"

sum1=$(($1 + $2))
echo "exit status is $?"

echo "sum is $sum, sum1 is $sum1"