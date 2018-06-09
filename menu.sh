#!/bin/bash

#Script Name: menu.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script it is a menu to run commands to adjust wifi network. Some commands were found online, from different sources.

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

# Showing Hostname and IP address(es):
echo "Hostname: $(hostname) - IP: $(sed 's/127.0.0.1//g' ipout.tmp)"

# Removing ipout.tmp file
rm -r ipout.tmp

PS3='Please input your choice number, then press [ENTER]: '
options=("WiFi Check" "Add a WiFi Network" "Remove a Preferred WiFi Network" "Remove all Preferred WiFi Networks" "Move an SSID to top" "Set Network Services Order" "Scan for WiFi Networks" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	"WiFi Check")
		sh wifi-check.sh
		sh listing.sh
		;;
        "Add a WiFi Network")
		sh add-a-wifi-network.sh
		sh listing.sh
		;;
	"Remove a Preferred WiFi Network")
		sh remove-a-preferred-wifi-network.sh
		sh listing.sh
		;;
        "Remove all Preferred WiFi Networks")
                sh remove-all-preferred-wifi-networks.sh
                sh listing.sh
                ;;
        "Move an SSID to top")
		sh move-ssid-to-top.sh
                sh listing.sh
                ;;
	"Set Network Services Order") 
		sh set-network-services-order.sh
                sh listing.sh
		echo
		echo
		;;
	"Scan for WiFi Networks")
                sh scan-for-wifi-networks.sh
                sh listing.sh
                ;;
	"Quit")
      		clear
            	break
            	;;
        *) echo invalid option;;
    esac
done

