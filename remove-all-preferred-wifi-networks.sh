#!/bin/bash

#Script Name: remove-all-preferred-wifi-networks.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script is to remove all Preferred  Wireless Network on MacOS. 

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Remove All Preferred Wireless Networks:                                      |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Date: $(date) |  Hostname: $(hostname)"
echo ""
echo "Are you sure you want to remove all Preferred Wireless Networks?"
echo
echo
echo "To Stop this process:  CTRL + C"
read -p "To continue to remove all Preferred Wireless Networks press [ENTER] : "
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Date: $(date) |  Hostname: $(hostname)"
echo ""
echo "Current Preferred Wireless Networks:"
echo ""
networksetup -listallhardwareports
echo ""
read -p "Input the WiFi Device (Ex: en0, en1, etc), then press [ENTER]: " WiFiDevice 
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Date: $(date) |  Hostname: $(hostname)"
echo ""
networksetup -removeallpreferredwirelessnetworks "$WiFiDevice"
echo 
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Date: $(date) |  Hostname: $(hostname)"
echo ""
echo "Process complete."
echo ""
echo "Current Preferred Wireless Networks:"
echo ""
networksetup -listallhardwareports
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press [ENTER] to continue"
clear

