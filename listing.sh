#!/bin/bash

#Script Name: listing.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script its a lame hack to paste the menu on screen. For some reason, the menu.sh only shows the menu once.

clear



# Placing IP address into ipout.tmp:
ifconfig | grep inet -A0 | tail -n3 | awk '{print $3}' | cut -f1 -d'/' > ipout.tmp

# Removing !P: 127.0.0.1 from ipout.tmp file: 
# sed 's/FindThisWord/ReplaceWithThisWord/g' file.txt
# example to find and replace with nothing:
# sed 's/127.0.0.1//g' ipout.tmp
echo "+=============================================================================+"
echo "| MacOS WiFi Network Settings Adjuster Tool                                   |"
echo "+=============================================================================+"
echo "Hostname: $(hostname) - IP: $(sed 's/127.0.0.1//g' ipout.tmp)"
# Removing ipout.tmp file
rm -r ipout.tmp
echo " 1) WiFi Check"
echo " 2) Add a WiFi Network"
echo " 3) Remove a Preferred WiFi Network"
echo " 4) Remove all Preferred Wifi Network"
echo " 5) Move an SSID to Top"
echo " 6) Set Network Services Order"
echo " 7) Scan for WiFi Networks"
echo " 8) Quit"
