#!/bin/bash
#Author: Supriya-Bhide
#Purpose: Locks screen at a set time
# ---------------------------------------------------------.
# Required installations before your execute this script:  \
#							   \
#1. sudo apt-get install gnome-screensaver-command  	   \
# ---------------------------------------------------------.


echo "I will lock screen at "
time=$(date "+%H")
echo $time
t2=22
#while true
#do
if ["$t2" -eq "$time"]
	then
		gnome-screensaver-command -l
		break
	else
		echo $time
	fi
#done

