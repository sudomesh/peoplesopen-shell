#!/bin/bash

#Script Name: add-a-wifi-network.sh 

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script is to add a WiFi network.

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Add a WiFi Network:                                                         |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
echo "List of Network Devices:"
networksetup -listallhardwareports
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Input the WiFi Device (Ex: en0, en1, etc), then press [ENTER]: " WiFiDevice 

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Please wait, WiFi scan in progress..."
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
cd /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/
# To scan for WiFi networks available:
AIRPORTTRIGGER="./airport -s"
$AIRPORTTRIGGER
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Input the SSID to connect to, then Press [ENTER]: " SSIDvar
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Input the '$SSIDvar' WiFi's password, then press [ENTER]:" SSIDWiFiPasswd
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "If not logged as root, admin username and password may be required." 
echo "Please wait... process timed to 11 sec."
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
sudo networksetup -setairportnetwork "$WiFiDevice" "$SSIDvar" "$SSIDWiFiPasswd"
sleep 11
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Success! The new WiFi Network details:"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
# To display current WiFi Details:
AirportCurrentWiFi="./airport -I"
# Display current WiFi Network:
$AirportCurrentWiFi
echo ""
sleep 1
# Placing IP addresses into ipout2.tmp, again, because of the previous cd:
ifconfig | grep inet -A0 | tail -n3 | awk '{print $3}' | cut -f1 -d'/' > ~/ipout2.tmp
sleep 1
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press [ENTER] to continue"
clear
