#!/bin/bash

USERID=$(id -u)

#echo "$USERID"

if [ $USERID -ne 0 ]
then 
    echo "Pleaase run this script with root priviliges"

fi

dnf install git -y


