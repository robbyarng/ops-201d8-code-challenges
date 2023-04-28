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

folders=(dir1 dir2 dir3 dir4)
folders2=".txt"
folders3="dir"$folders2

for folder in ${folders[@]}; do
    mkdir -p ~/chal04/$folder
done

cd ~/chal04

baseDir=~/chal04/
readarray -d '' arr < <(find "${baseDir}" -mindepth 1 -maxdepth 1 -type d -print0)

for directory in ${arr[@]}; do
   touch $directory/$folders3
done



# End