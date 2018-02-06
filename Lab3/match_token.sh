#!/bin/sh

# EECS 2031Z - Lab 3
# Filename: match_token
# Author: paraboo, sanjay
# Email: sanjayp@my.yorku.ca
# Login ID: sanjayp

$temp

while read -r row; 
do 	 
	temp=$(echo $row | cut -d " " -f1)

	if test "$temp" == "$2";
	then
		echo $row
	fi
done < $1
