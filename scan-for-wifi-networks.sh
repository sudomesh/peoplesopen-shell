#!/bin/bash
clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Please wait a moment, scanning for available WiFi Networks...               |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo
cd /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/
AIRPORTTRIGGER="./airport -s"
$AIRPORTTRIGGER
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"
clear
