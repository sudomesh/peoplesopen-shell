#!/bin/bash

#Script Name: example.sh

#Author: Daniel Arauz
#adapted by @paidforby

#Date: May 26, 2018

#Description: This script is and example. 

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| SET NODE CONFIGURATIONS:                                                    |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
echo "+- - - - Current Node Settings - - - - -+" 

# uci show

echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo 
echo
read -p "Hey! This option doesn't exist, you should make it happen, then Press [ENTER] : " VARIABLE 

#uci set system.@system[0].hostname=$VARIABLE
#uci commit system

echo "Looks like you entered "$VARIABLE
read -p "Reboot to apply changes? (y/N) " REBOOT
if [ $REBOOT = "y" ]
then
  echo "Rebooting immeadiately"
  reboot now
  read -p "Close and reopen your terminal to reconnect"
fi
clear
sh menu.sh
