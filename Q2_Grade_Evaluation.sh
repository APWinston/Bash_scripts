#!/bin/bash


read -p "Enter your numeric grade (0-100): " grade

if [ "$grade" -ge 90 ] && [ "$grade" -le 100 ]; then
    echo "A"
elif [ "$grade" -ge 80 ]; then
    echo "B"
elif [ "$grade" -ge 70 ]; then
    echo "C"
elif [ "$grade" -ge 60 ]; then
    echo "D"
elif [ "$grade" -ge 0 ]; then
    echo "F"
else
    echo "Invalid grade"
fi
