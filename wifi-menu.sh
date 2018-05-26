#!/bin/bash
#
# This is the wifi-menu.sh that calls other scripts to do MacOS Wi-Fi adjustments.
# 
# By Daniel Arauz - California - May 2018. 
# 
clear
echo "+=============================================================================+"
echo "| MacOS X Network Settings Adjuster Tool Menu  - by Daniel Arauz - Year:2018  |" 
echo "+=============================================================================+"
PS3='Please input your choice number, then press [ENTER]: '
options=("Run WiFi Checks" "Add a WiFi Network" "Remove a WiFi Network" "Set an SSID First" "Set Network Services Order" "Scan for WiFi Networks" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	"Run WiFi Checks")
		sh run-wifi-checks.sh
		sh listing.sh
		;;
        "Add a WiFi Network")
		sh add-a-wifi-network.sh
		sh listing.sh
		;;
	"Remove a WiFi Network")
		sh remove-a-wifi-network.sh
		sh listing.sh
		;;
        "Set an SSID First")
		sh set-an-ssid-first.sh
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
