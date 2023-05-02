#!/bin/bash

# Script Name:                  Create Directory
# Author:                       Robert C
# Date of latest revision:      05/01/2023
# Purpose:                      Create a script that detects if a file or directory exists, 
#                               then creates it if it does not exist.
#                               Your script must use at least one array, 
#                               one loop, and one conditional.

# Declaration of variables
#               readarray : Read lines from the standard input into the indexed array variable
# Declaration of functions


# Main


readarray -d '' arr < <(ls -d)
if ! [ $arr = 0 ] ; then

mkdir -p ~/chal06/dir01/
fi

cd ~/chal06/dir01/

baseDir=~/dir01/
readarray -d '' arr1 < <(ls)
if ! [ "$arr1" = 0 ] ; then

touch dir.txt
fi

numbers='1 2 3'
for number in $numbers
do
echo $number
done

echo PRESTO

# End