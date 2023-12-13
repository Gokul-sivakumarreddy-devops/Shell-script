#!/bin/bash

ID=$(id -u)

VALIDATE() 
{

if [ $1 -ne 0 ]     #$? --> if success, it has 0, if failed not zero
   then
     echo "ERROR: $2... Installation failed"
     exit 1
   else
      echo "$2...Installation is successful"
fi      
}


if [ $ID -ne 0 ]
  then 
    echo "ERROR: user do not have root access"
    exit 1
  else
     echo "user has root access"

fi    # fi means reverse of if, indicating condition end

sudo yum install mysql -y   
VALIDATE $? "Installing MySQL"
sudo yum install git -y
VALIDATE $? "Installing Git"

