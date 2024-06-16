#!/bin/bash

# Check if the par2 command is available
if ! command -v par2 &> /dev/null
then
    echo "par2 could not be found. Please install it first."
    read -n 1 -s -r -p "Press any key to close the terminal..."
    exit 1
fi

# Prompt the user for the par2 file
read -p "Enter the par2 file path: " file

# Check if the provided file exists
if [ ! -d "$file" ]; then
    echo "File $file does not exist."
    read -n 1 -s -r -p "Press any key to close the terminal..."
    exit 1
fi

# Verify and if possible repair files for this par2 file
par2 r "$file.par2"
echo "Done"
read -n 1 -s -r -p "Press any key to close the terminal..."