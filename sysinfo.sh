#!/bin/bash

# Script Name:                  Create Directory
# Author:                       Robert C
# Date of latest revision:      05/02/2023
# Purpose:                      Create a script that Uses lshw to display system information to the screen about the following components:
#								Name of the computerCPUProductVendorPhysical IDBus infoWidthRAMDescriptionPhysical IDSizeDisplay adapter
#								DescriptionProductVendorPhysical IDBus infoWidthClockCapabilitiesConfigurationResourcesNetwork adapter
#								DescriptionProductVendorPhysical IDBus infoLogical nameVersionSerialSizeCapacityWidthClockCapabilities
#								ConfigurationResources

#								Uses grep to remove irrelevant information from the lshw output
#								Add text to the output clearly indicating which component 
#								(such as CPU, RAM, etc.) the script is returning information about
#								Runs as Root; you may execute the shell script with sudo or as Root

# Declaration of variables
#                
# readarray : Read lines from the standard input into the indexed array variable


# Declaration of functions
# grep : search within files.
# echo : print output



# Main

echo "displaying system information about the following components: 
CPU, RAM, Display Adapter, Network Adapter"
readarray -d '' arr < <(sudo lshw -c system -c cpu -c memory -c display -c network)
echo "$arr" >lshw.txt
grep "ubuntu" lshw.txt
grep -A 5 "cpu" lshw.txt
grep -A 3 "memory" lshw.txt
grep -A 12 "display" lshw.txt
grep -A 15 "network" lshw.txt




# End