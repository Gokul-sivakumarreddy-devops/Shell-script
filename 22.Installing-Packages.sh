#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
  then 
    echo -e "$R ERROR: user do not have root access $N"
    exit 1
  else
     echo -e "$G you are a root user $N"

fi

echo "All arguments passed : $@"
 