#!/bin/bash

#Script Name: wifi-check.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script checks for Network Services and SSIDs order, and show current WiFi details.

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Network Services Order:                                                     |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
networksetup -listallhardwareports
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| WiFi SSID Network Order:                                                    |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
networksetup -listpreferredwirelessnetworks en0
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| WiFi Connection Details:                                                    |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
AIRPORTINTERFACE="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I"
$AIRPORTINTERFACE
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"
clear
