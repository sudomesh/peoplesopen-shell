#!/bin/bash

#Script Name: remove-a-preferred-wifi-network.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script removes a Preferred Wireless Network on MacOS.

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Remove a WiFi Network:                                                      |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
echo "Current Preferred Wireless Networks:"
networksetup -listallhardwareports
echo " "
read -p "Input the WiFi Device (Ex: en0, en1, etc), then press [ENTER]: " WiFiDevice 
echo "+- - - - - - - - - - -+"
clear
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
networksetup -listpreferredwirelessnetworks "$WiFiDevice"
echo "+- - - - - - - - - - -+"
echo "Date: $(date) |  Hostname: $(hostname)"
echo ""
read -p "Input the WiFi SSID to REMOVE, then Press [ENTER]: " SSIDvar
clear
echo "+- - - - - - - - - - -+"
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
echo "If asked, please type the computer user account password."
sudo networksetup -removepreferredwirelessnetwork "$WiFiDevice" "$SSIDvar"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"
clear




