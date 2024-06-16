#!/bin/bash

# Check if the par2 command is available
if ! command -v par2 &> /dev/null
then
    echo "par2 could not be found. Please install it first."
    read -n 1 -s -r -p "Press any key to close the terminal..."
    exit 1
fi

# Prompt the user for the folder path
read -p "Enter the folder path: " SOURCE_DIR

# Check if the provided directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Directory $SOURCE_DIR does not exist."
    read -n 1 -s -r -p "Press any key to close the terminal..."
    exit 1
fi

# Create .par2 files for each file in the directory
par2 c -R "$SOURCE_DIR.par2" "$SOURCE_DIR"
echo "Created $SOURCE_DIR.par2 for $SOURCE_DIR"
read -n 1 -s -r -p "Press any key to close the terminal..."