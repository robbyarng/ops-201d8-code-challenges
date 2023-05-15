#!/bin/bash

# Script Name:                  Create Directory createdir.sh
# Author:                       Robert C 
# Date of latest revision:      05/01/2023 
# Purpose:                      Create a script that detects if a file or directory exists, 
#                               then creates it if it does not exist.
#                               Your script must use at least one array, 
#                               one loop, and one conditional.



# Declaration of variables 



# Declaration of functions 



# Main 


# Array of files/directories to check
files=("file.txt" "dir1" "dir2")

# Loop through each file/directory in the array
for file in "${files[@]}"
do
  # Check if the file/directory exists
  if [ ! -e "$file" ]; then
    # If it doesn't exist, create it
    echo "Creating $file"
    mkdir "$file"
  else
    echo "$file already exists"
  fi
done



# End