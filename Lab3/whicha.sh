#!/bin/sh

# EECS 2031Z - Lab 3
# Filename: whicha
# Author: paraboo, sanjay
# Email: sanjayp@my.yorku.ca
# Login ID: sanjayp


arr=$(echo $PATH | tr ":" " ")

for dir in $arr;
do 
	if test -x "$dir/$1";
	then
		echo "$dir/$1"
	fi
done
