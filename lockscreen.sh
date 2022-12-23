#!/bin/bash

#sudo apt-get install at
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

