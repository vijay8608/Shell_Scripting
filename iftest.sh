#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo -e "\nWait.. you didnt enter any arguments\n"
    echo -e "Usage $(basename $0) <arg1> <arg2> ..... <argn>\n"
    exit 1
fi

echo -e "You will see this only if arguments are specified"