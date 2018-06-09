#!/bin/bash

#Script Name: scan-for-wifi-networks.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script scans for wifi networks.
clear
echo "Computer Hostname: $(hostname) - Scan started on: $(date)"
echo ""
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Please wait a moment, scanning for available WiFi Networks...               |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo
cd /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/
AIRPORTTRIGGER="./airport -s"
$AIRPORTTRIGGER
echo
echo "Computer Hostname: $(hostname) - Scan completed at: $(date)"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"
clear
