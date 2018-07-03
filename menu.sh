#!/bin/sh

#Script Name: menu.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script it is a menu to run commands to adjust wifi network. Some commands were found online, from different sources.

clear
echo "+=============================================================================+"
echo "| People's Open Settings Adjuster Tool                                   |" 
echo "+=============================================================================+"
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date: ${RED}$(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
sh listing.sh
read -p 'Please input your choice number, then press [ENTER]: ' opt
while :
do
    case $opt in
	"1")
		sh set-hostname.sh
		;;
	"2")
		sh example.sh
		;;
        "3")
		sh example.sh
		;;
	"4")
		sh example.sh
		;;
        "5")
                sh example.sh
                ;;
        "6")
		sh example.sh
                ;;
	"7") 
		sh example.sh
		;;
	"8")
		clear
                sh
		sh menu.sh
                ;;
	"9")
      		clear
            	break
            	;;
        *) echo invalid option;;
    esac
done

