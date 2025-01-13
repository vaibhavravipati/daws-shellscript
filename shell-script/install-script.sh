#!/bin/bash

USERID=$(id -u)

echo "USERID is $USERID"

VALIDATE(){
    if [ $USERID -ne 0 ]
    then
        echo "Not a super user.. Should be sudo user to execute"
        exit 100
    fi
    }

VALIDATE
dnf list installed mysqld
echo "exit status is $?"

