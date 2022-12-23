#!/bin/bash
#Author: Supriya-Bhide
#Purpose: Locks screen at a set time
# ---------------------------------------------------------.
# Required installations before your execute this script:  \
#							   \
#1. sudo apt-get install gnome-screensaver-command  	   \
#2. sudo apt-get install at			 	   \
# ---------------------------------------------------------.

#modifed: second condition in 'if' corrected
#To check if the argument time has been given

if [ -z "$1" ] || [[ "$1" != ??:?? ]]
then
	echo "Oops! Time not found. When do you want me to lock your screen?"
	echo "Execute the script in the following format:"
	echo "---------------------------"
	echo "|./LockScreenat.sh  HH:MM |"
	echo "---------------------------"
	echo "$1"
	exit
fi

echo "Sure things! It is $(date "+%R") right now. I will lock your screen at $1."


echo gnome-screensaver-command -l | at "$1"                                     #Locks the system at the given time
