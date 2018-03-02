#!/bin/bash

# Short script to check if file exists or not
# Accepts a single argument

# checks for presence of an argument
if [[ $# -eq 0 ]] ; then
    echo -e "\nWait.. No filename specified\n"
    echo -e "Usage $(basename $0) <filename>\n"
    exit 1
fi

check=$( file $1 | cut -d " " -f2 )

filename=$1

case $check in
    ASCII )
        echo -e "\n File $filename is a plain text file"
    ;;
    BOURNE-Again )
        echo -e "\n File $filename is a script file"
    ;;
    ELF )
        echo -e "\n File $filename is an executable file"
    ;;
    * )
        echo -e "\nGuess I am having a bad day, I dont know that file type"
    ;;
esac
