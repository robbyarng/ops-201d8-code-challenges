#

# Script Name:                  localIP4.ps1
# Author:                       Robert C
# Date of latest revision:      05/09/2023
# Purpose:                      Write a Powershell script that returns the IPv4 
#                               address of the computer.
#                               Use Select-String cmdlet to only return the IPv4 
#                               address string and no other extraneous information.


# Declaration of variables



# Declaration of functions
# Select-String cmdlet: Finds text in strings and files.


# Main


# Define the name of the file to create
$file_name = "network_report.txt"

# Define the function to retrieve the IPv4 address
function Get-IPv4Address {
    # Load the contents of the file into a variable
    $file_contents = Get-Content $file_name -Raw

    # Use Select-String to search for the IPv4 address
    $ipv4_address = ($file_contents | Select-String -Pattern "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}" | Select-Object -ExpandProperty Matches).Value

    # Return the IPv4 address
    return $ipv4_address
}

# Run the ipconfig /all command and save the output to a file
ipconfig /all > $file_name

# Get the IPv4 address from the file
$ipv4_address = Get-IPv4Address

# Display the IPv4 address
Write-Host "IPv4 address: $ipv4_address"

# Remove the file
Remove-Item $file_name


# End