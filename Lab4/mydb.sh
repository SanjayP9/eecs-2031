#!/bin/sh

# EECS 2031Z - Lab 4
# Filename: mydb.sh
# Author: Paraboo, Sanjay
# Email: sanjayp@my.yorku.ca
# Login ID: sanjayp

if [ "$#" -eq 4 ];
then
	if [ "$3" = "-check" ];
	then
		while read -r row;
		do
			quantity=$( echo $row | cut -f2 -d " " )
			productid=$( echo $row | cut -f1 -d " " )
				
			if [ "$quantity" -lt "$4" ];
			then
				echo -n $( echo $row | tr '\t' ' ')
				echo -n " "
				echo $( grep "$productid" "$2" | cut -f3- -d " " | cut -f1 -d ",")
			fi
		done < $1
	
	elif [ "$3" = "-show" ];
	then
		while read -r row;
		do
			productid=$( echo $row | cut -f1 -d " " )
			
			if [ "$productid" == "$4" ];
			then
				quantity=$( echo $row | cut -f2 -d " " )
				number=$( grep "$productid" "$2" | cut -f2 -d " " )
				#echo $quantity $number
				echo $( echo "scale=4; $number*$quantity" | bc )
			fi		
		done < $1
	fi
else
	echo Wrong Arguments
fi
