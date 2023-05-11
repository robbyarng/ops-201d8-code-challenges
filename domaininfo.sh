#!/bin/bash


# Script Name:                  domaininfo.sh
# Author:                       Robert C
# Date of latest revision:      05/10/2023
# Purpose:                      Write a shell script that  asks a user to type a domain, then 
#                               displays information about the typed domain. Operations that 
#                               must be used include:  
#                               whois
#                               dig
#                               host
#                               nslookup
#                               Add to your bash script a sixth option that calls a function to:  
#                               Take a user input string. Presumably the string is a domain name 
#                               such as Google.com.
#                               Run whois against a user input string.
#                               Run dig against the user input string.
#                               Run host against the user input string.
#                               Run nslookup against the user input string.


# Declaration of variables:
#               $1: Is the Domain Name.
#               $domain: Is the Domain Name.
#               $editor: Text Editor of users choice.


# Declaration of functions
# 


# Main

# Ask the user to enter a domain name
echo "Please enter a domain name:"
read domain

# Define a function to gather information about the domain
function gather_info {
    whois $1 > $1.txt  # Run whois and output results to a file
    dig $1 >> $1.txt  # Run dig and append results to the file
    host $1 >> $1.txt  # Run host and append results to the file
    nslookup $1 >> $1.txt  # Run nslookup and append results to the file
    
    echo "Please specify a text editor to use (default is Nano):"
    read editor
    if [ -z "$editor" ]; then
        editor=nano  # Set default editor to Nano
    fi
    $editor $1.txt  # Open the file with the specified editor
}

# Display a menu with options for the user
echo "Please select an operation:"
echo "1. whois"
echo "2. dig"
echo "3. host"
echo "4. nslookup"
echo "5. gather information using all tools"

# Read the user's choice and perform the appropriate operation
read choice
case $choice in
    1)
        whois $domain
        ;;
    2)
        dig $domain
        ;;
    3)
        host $domain
        ;;
    4)
        nslookup $domain
        ;;
    5)
        gather_info $domain
        ;;
    *)
        echo "Invalid choice. Please enter a number between 1 and 5."
        ;;
esac

# End