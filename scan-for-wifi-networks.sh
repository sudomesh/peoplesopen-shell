#!/bin/bash

#Script Name: scan-for-wifi-networks.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script scans for wifi networks.
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Please wait a moment, scanning for available WiFi Networks...               |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "Date: $(date) |  Hostname: $(hostname)"
echo
cd /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/
AIRPORTTRIGGER="./airport -s"
$AIRPORTTRIGGER
echo
echo "Date: $(date) |  Hostname: $(hostname)"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"
clear
