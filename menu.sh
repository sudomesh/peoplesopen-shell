#!/bin/bash

#Script Name: menu.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script it is a menu to run commands to adjust wifi network. Some commands were found online, from different sources.

clear
echo "+=============================================================================+"
echo "| MacOS WiFi Network Settings Adjuster Tool                                   |" 
echo "+=============================================================================+"
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
