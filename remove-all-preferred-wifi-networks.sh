#!/bin/bash

#Script Name: remove-all-preferred-wifi-networks.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script is to remove all Preferred  Wireless Network on MacOS. 

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Remove All Preferred Wireless Networks:                                      |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo
echo
echo "Are you sure you want to remove all Preferred Wireless Networks?"
echo
echo
echo "To Stop this process:  CTRL + C"
read -p "To continue to remove all Preferred Wireless Networks press [ENTER] : "
networksetup -removeallpreferredwirelessnetworks en0
echo 
echo "Done!"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press [ENTER] to continue"
clear

