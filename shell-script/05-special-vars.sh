#!/bin/bash

arg1=$1
arg2=$2
arg3=$3

echo "script name is $0"
echo "args are $1, $2, $3"
echo "total args are $@"
echo "no of args are $#"
echo "last ran processid is $$"
echo "last ran background processid is $!"
echo "exit status code is $?"
echo "username is $USER"
echo "pwd is $PWD"
echo "home directory of current user is $HOME"