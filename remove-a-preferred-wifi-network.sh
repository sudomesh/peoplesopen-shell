#!/bin/bash

#Script Name: remove-a-preferred-wifi-network.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script removes a Preferred Wireless Network on MacOS.

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Remove a WiFi Network:                                                      |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Date:: $(date) |  Hostname: $(hostname)"
echo ""
echo "Current Preferred Wireless Networks:"
networksetup -listallhardwareports
echo " "
read -p "Input the WiFi Device (Ex: en0, en1, etc), then press [ENTER]: " WiFiDevice 
echo "+- - - - - - - - - - -+"
clear
echo "Date:: $(date) |  Hostname: $(hostname)"
echo ""
networksetup -listpreferredwirelessnetworks "$WiFiDevice"
echo "+- - - - - - - - - - -+"
echo "Date:: $(date) |  Hostname: $(hostname)"
echo ""
read -p "Input the WiFi SSID to REMOVE, then Press [ENTER]: " SSIDvar
clear
echo "+- - - - - - - - - - -+"
echo "Date:: $(date) |  Hostname: $(hostname)"
echo ""
echo "If asked, please type the computer user account password."
sudo networksetup -removepreferredwirelessnetwork "$WiFiDevice" "$SSIDvar"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"
clear




