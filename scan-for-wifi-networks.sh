#!/bin/bash

#Script Name: scan-for-wifi-networks.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script scans for wifi networks.
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Please wait a moment, scanning for available WiFi Networks...               |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
cd /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/
AIRPORTTRIGGER="./airport -s"
$AIRPORTTRIGGER
echo
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"
clear
