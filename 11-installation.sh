#!/bin/bash

USERID=$(id -u)

#echo "$USERID"

if [ $USERID -ne 0 ]
then 
    echo "Pleaase run this script with root priviliges"
    exit 1

fi

dnf list installed gitt

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install"
    dnf install gitt -y
    if [ $? -ne 0 ]
    then
        echo " Git insatllation not successful.. check it"
        exit 1
    else
        echo "Git insatllation successfull "
    fi
else
    echo "Git is already installed , nothing to do"

fi


