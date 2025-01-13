#!/bin/bash

a=$1
TIMESTAMP=$(date +%Y-%m-%d)

if [ $a -eq 100 ]
then
    echo "value of a is 100"
else
    echo "entered value is not 100.... $1"
    exit 1
    echo "exited"
fi

echo "timestamp is $TIMESTAMP"