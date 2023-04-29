#!/bin/bash

# Script Name:                  Kill process
# Author:                       Robert C
# Date of latest revision:      04/28/2023
# Purpose:                      Create a script that displays running processes, 
#                               asks the user for a PID, then kills the process with that PID.
#                               Use a loop in your script.

# Declaration of variables
#               readarray : Read lines from the standard input into the indexed array variable
# Declaration of functions


# Main


readarray -d '' arr < <(ps -A -o comm)
PS3='Select Process to kill: '
select arr in $arr
do
    pkill $arr
done

# End