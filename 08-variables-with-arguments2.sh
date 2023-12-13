#!/bin/bash

echo "Please enter your username"

read -s USERNAME        # The value entered above will be automatically atteched to USERNAME variable
                        # -s --> do not echo input coming from a terminal


echo "Please enter your password"
read -s PASSWORD
echo "User password is : $PASSWORD"

echo "User name is : $USERNAME, Password is : $PASSWORD" # I am priting just for validation, you should not print username  and passwords in scripts


