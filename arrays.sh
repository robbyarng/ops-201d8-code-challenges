#!/bin/bash

# Script Name:                  arrays
# Author:                       Robert C
# Date of latest revision:      04/27/2023
# Purpose:                      Write a script that:
#                               Creates four directories: dir1, dir2, dir3, dir4;
#                               Put the names of the four directories in an array;
#                               References the array variable to create a new .txt file in each directory



# Declaration of variables



# Declaration of functions



# Main



# Create the four directories
mkdir dir1 dir2 dir3 dir4

# Put the directory names in an array
directories=("dir1" "dir2" "dir3" "dir4")

# Loop through the array and create a new .txt file in each directory
for directory in "${directories[@]}"
do
  touch "$directory/new_file.txt"
done



# End