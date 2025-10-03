#!/bin/bash
# Script to count words, characters, and lines of a file

# Check if a filename is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE=$1

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' does not exist."
    exit 1
fi

# Count words, characters, and lines
lines=$(wc -l < "$FILE")
words=$(wc -w < "$FILE")
chars=$(wc -m < "$FILE")

echo "File: $FILE"
echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"

