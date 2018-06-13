#!/bin/bash

#Script Name: move-ssid-to-top.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script moves an SSID to the top of the list.

clear
WiFiDevice=""
SSIDvar=""
SSIDSecurityTypevar=""
SSIDPasswordvar=""
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Moving SSID to the top of the List:                                         |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Date:: $(date) |  Hostname: $(hostname)"
echo ""
networksetup -listallhardwareports
echo " "
read -p "Input the WiFi Device (Ex: en0 or en1 or etc), then press [ENTER]: " WiFiDevice 
clear
echo "Current Preferred Wireless Networks:"
echo "+- - - - - - - - - - -+"
echo "Date:: $(date) |  Hostname: $(hostname)"
echo ""
networksetup -listpreferredwirelessnetworks "$WiFiDevice"
echo
read -p "Input the WiFi SSID to MOVE to the top of the list, then press [ENTER]: " SSIDvar
read -p "Input the WiFi SSID Security Type (ex: WPA2 or None or etc), then press [ENTER]: " SSIDSecurityTypevar
read -p "Input computer admin password, then press [ENTER]: " SSIDPasswordvar
clear
echo "+- - - - - - - - - - -+"
echo "Date:: $(date) |  Hostname: $(hostname)"
echo ""
# networksetup -addpreferredwirelessnetworkatindex <device name> <network> <index> <security type> [password]
networksetup -addpreferredwirelessnetworkatindex $WiFiDevice $SSIDvar 0 $SSIDSecurityTypevar "$SSIDPasswordvar"
clear
echo "+- - - - - - - - - - -+"
echo "Date:: $(date) |  Hostname: $(hostname)"
echo ""
networksetup -listpreferredwirelessnetworks $WiFiDevice
echo
echo "Process completed."
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"




