#!/bin/bash

USERID=$(id -u)

echo "USERID is $USERID"

VALIDATE_USER(){
    if [ $USERID -ne 0 ]
    then
        echo "Not a super user.. Should be sudo user to execute"
        exit 100
    fi
    }

VALIDATE_PACKAGE()
{
    if [ $? -ne 0 ]
    then
        echo "Installation $1... FAILURE"
    else
        echo "Installation $1... SUCCESS"
    fi
}


VALIDATE_USER
dnf list installed mysqld

if [ $? -ne 0 ]
    then
        dnf install mysql-server -y
        VALIDATE_PACKAGE "mysql-server"
    else
        echo "Already installed mysql-server"
fi

