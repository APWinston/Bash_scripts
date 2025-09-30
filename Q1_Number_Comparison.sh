#!/bin/bash


read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

if [ "$num1" -eq "$num2" ]; then
    echo "The numbers are equal"
elif [ "$num1" -gt "$num2" ]; then
    echo "The first number is greater"
else
    echo "The second number is greater"
fi
