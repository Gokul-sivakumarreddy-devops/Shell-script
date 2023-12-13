#!/bin/bash

NUMBER=$1

if [$NUMBER -ge 100]
then
   echo "Give number $NUMBER is greater than 100"
else
   echo "Give number $NUMBER is less than 100"
fi
