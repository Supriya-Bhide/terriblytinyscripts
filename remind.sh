#!/bin/bash

#sudo apt-get install at
echo "I wil remind you to $1 at $2"
echo 'notify-send $1' | at $2 
	# $1: "Message"     $2: HH:MM

