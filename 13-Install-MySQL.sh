#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
  then 
    echo "ERROR: user do not have root access"
   else
     echo "user has root access"

sudo yum install mysql -y

fi
      