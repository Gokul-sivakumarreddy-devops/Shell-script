#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE() 
{

if [ $1 -ne 0 ]     #$? --> if success, it has 0, if failed not zero
   then
     echo "ERROR :  $2... $R Installation failed $N"
     exit 1
   else
      echo "$2... $G Installation is successful $N"
fi      
}

if [ $ID -ne 0 ]
  then 
    echo "$R ERROR: user do not have root access $N"
    exit 1
  else
     echo "$G you are a root user $N"

fi    # fi means reverse of if, indicating condition end

sudo yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing MySQL"
sudo yum install git -y &>> $LOGFILE
VALIDATE $? "Installing Git" 

