#!/bin/bash
# Script by: Daniel Arauz - May 2018 - California.
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Remove a WiFi Network:                                                      |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Current Preferred Wireless Networks:"
networksetup -listallhardwareports
echo " "
read -p "Input the WiFi Device (Ex: en0, en1, etc), then press [ENTER]: " WiFiDevice 
echo "+- - - - - - - - - - -+"
clear
networksetup -listpreferredwirelessnetworks "$WiFiDevice"
echo "+- - - - - - - - - - -+"
read -p "Input the WiFi SSID to REMOVE, then Press [ENTER]: " SSIDvar
clear
echo "+- - - - - - - - - - -+"
sudo networksetup -removepreferredwirelessnetwork "$WiFiDevice" "$SSIDvar"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"
clear




