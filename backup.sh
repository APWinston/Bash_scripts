#!/bin/bash
# Backup Script: Creates a timestamped backup of a file

# Check if a file is given
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file=$1

# Check if file exists
if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

# Create timestamp (YYYYMMDD_HHMMSS)
timestamp=$(date +"%Y%m%d_%H%M%S")

# Get file name and extension
filename=$(basename -- "$file")
backup="${filename}_backup_${timestamp}"

# Copy file to backup
cp "$file" "$backup"

if [ $? -eq 0 ]; then
    echo "Backup created: $backup"
else
    echo "Backup failed!"
fi

