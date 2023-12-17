#!/bin/bash

set -e

ls -l
text example.txt
echo "before wrong command"
lsfff
echo "after wrong command"
cd /tmp
cd /home/centos