#!/bin/bash

#Script Name: listing.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script its a lame hack to paste the menu on screen. For some reason, the menu.sh only shows the menu once.

clear
echo "+=============================================================================+"
echo "| People's Open Settings Adjuster Tool                                   |"
echo "+=============================================================================+"
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date: ${RED}$(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
echo " 1) Set Hostname"
echo " 2) Set Tunnel Bandwidth"
echo " 3) Change a Wireless Settings"
echo " 4) Remove a Preferred WiFi Network"
echo " 5) Remove all Preferred Wifi Network"
echo " 6) Move an SSID to Top"
echo " 7) Scan for WiFi Networks"
echo " 8) Enter shell"
echo " 9) Quit"
