#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
  then 
    echo "ERROR: user do not have root access"
    exit 1
   else
     echo "user has root access"

     fi    # fi means reverse of if, indicating condition end

sudo yum install mysql123 -y

if [ $? -ne 0 ]     #$? --> if success, it has 0, if failed not zero
   then
     echo "ERROR: MySQL installation failed"
     exit 1
   else
      echo "MySQL installation successfully installed"


fi  
      