#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total sum is : $SUM"

echo "How many arguments passed : $#"
echo "Total number of arguments : $@"
echo "Script name : $0"