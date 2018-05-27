#!/bin/bash

#Script Name: remove-all-wifi-preferred-networks.sh

#Author: Daniel Arauz

#Date: May 26, 2018

#Description: This script is to remove all Preferred  Wireless  Network on MacOS. 

networksetup -removeallpreferredwirelessnetworks en0
