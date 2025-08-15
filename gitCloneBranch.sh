#!/bin/bash
#Author: Supriya-Bhide
#Purpose: Clones a branch of git repo
# ---------------------------------------------------------.
# Required installations before your execute this script:  \
#							   \
#1. sudo apt-get install git  			 	   \
# ---------------------------------------------------------.


if [ -z "$1" ]
then
	echo "Oops! branch name not found"
	echo "Execute the script in the following format:"
	echo "---------------------------------------------"
	echo "|./gitCloneBranch.sh branchName repoAddress |"
	echo "---------------------------------------------"
	exit
fi

if [ -z "$2" ]
then
	echo "Oops! repository name not found"
	echo "Execute the script in the following format:"
	echo "---------------------------------------------"
	echo "|./gitCloneBranch.sh branchName repoAddress |"
	echo "---------------------------------------------"
	exit
fi

git clone -b $1 $2
