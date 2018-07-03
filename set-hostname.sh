#!/bin/bash

#Script Name: set-hostname.sh

#Author: Daniel Arauz
#adapted by @paidforby

#Date: May 26, 2018

#Description: This script sets hostname of a People's Open Node. 

clear
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo "| SET NODE HOSTNAME:                                                          |"
echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "Date:${RED} $(date)${NC} |  Hostname:${RED}$(hostname)${NC}\n"
echo ""
echo "+- - - - Current System Settings - - - - -+" 

uci show system.@system[0]

echo "+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -+"
echo 
echo
read -p "Input desired hostname then Press [ENTER] : " NODE_HOSTNAME

uci set system.@system[0].hostname=$NODE_HOSTNAME
uci commit system

echo "hostname changed to "$NODE_HOSTNAME
read -p "Reboot to apply changes? (y/N) " REBOOT
if [ $REBOOT = "y" ] 
then
  echo "Rebooting immeadiately"
  reboot now
  read -p "Close and reopen your terminal to reconnect"
fi
clear
sh menu.sh
