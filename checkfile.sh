#!/bin/bash

# Short script to check if file exists or not
# Accepts a single argument

# checks for presence of an argument
if [[ $# -eq 0 ]] ; then
    echo -e "\nWait.. you didnt enter any arguments\n"
    echo -e "Usage $(basename $0) <arg1> <arg2> ..... <argn>\n"
    exit 1
fi

filename=$1

if [ -e $filename ] ; then
    echo -e "\n$filename exists\n"
else
    echo -e "\n $filename does not exist in the mentioned path\n"
fi
