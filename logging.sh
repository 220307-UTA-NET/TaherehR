#!/bin/bash
#timestamp=$(date +"%Y-m%-%d:%T")
date=$(date +"%Y-%m-%d")
time=$(date +"%T")

if [ -e ${date}.txt ]; then
	echo "line 1" 	#echo "Script run at ${time}" >> ${date}.txt 
else
	echo "line 2" #echo "Starting file for ${date} at ${time}" >> ${date}.txt
fi



