#!/bin/bash

#Script Name: remove-a-preferred-wifi-network.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script is to removes a Preferred Wireless  network.

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




