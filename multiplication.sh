#!/bin/bash

echo -e "Multiplication of entered numbers\n"

read -p "Enter a number : " val1

echo 


read -p "Enter another number : " val2

echo

read -sn1 -p "Press any key to see the answer......."

let answer=$val1*$val2

echo

echo "$answer"