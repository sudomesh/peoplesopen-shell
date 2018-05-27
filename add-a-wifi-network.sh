#!/bin/bash

#Script Name: add-a-wifi-network.sh 

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script is to add a WiFi network.

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| Add a WiFi Network:                                                         |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo
echo "List of Network Devices:"
networksetup -listallhardwareports
echo "+- - - - - - - - - - - - - - - - - - - -+"
read -p "Input the WiFi Device (Ex: en0, en1, etc), then press [ENTER]: " WiFiDevice 
clear
echo "+- - - - - - - - - - - - - - - - - - - -+"
echo "Please wait, WiFi scan in progress..."
echo "+- - - - - - - - - - - - - - - - - - - -+"
cd /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/
AIRPORTTRIGGER="./airport -s"
$AIRPORTTRIGGER
echo "+- - - - - - - - - - - - - - - - - - - -+"
read -p "Input the SSID to connect to, then Press [ENTER]: " SSIDvar
clear
echo "+- - - - - - - - - - - - - - - - - - - -+"
read -p "Input the '$SSIDvar' WiFi's password, then press [ENTER]:" SSIDWiFiPasswd
clear
echo "+- - - - - - - - - - - - - - - - - - - -+"
echo "Connecting..."
echo "If asked, input your admin password." 
echo "+- - - - - - - - - - - - - - - - - - - -+"
sudo networksetup -setairportnetwork "$WiFiDevice" "$SSIDvar" "$SSIDWiFiPasswd"
sleep 12
clear
echo "+- - - - - - - - - - - - - - - - - - - -+"
echo "The new WiFi Network details:"
echo "+- - - - - - - - - - - - - - - - - - - -+"
cd /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/
AIRPORTTRIGGER="./airport -I"
$AIRPORTTRIGGER 
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
read -p "Press enter to continue"
clear




