#!/bin/bash

# Script Name:                  This is the login history
# Author:                       Robert C
# Date of latest revision:      04/26/2023
# Purpose:                      Write a function that prints the 
#                               login history of users on this computer, 
#                               followed by the text “This is the login history”.

# Declaration of variables
# cat /var/log/auth.log | grep Accepted | awk '{print}'
# prints successful logins.

# Declaration of functions
# cat /var/log/auth.log | grep Accepted | awk '{print}'
# prints successful logins.

# Main

logfunc () {
    cat /var/log/auth.log | grep Accepted | awk '{print}'
var="This is the login history."
echo "$var"
}

logfunc
logfunc
logfunc


# End