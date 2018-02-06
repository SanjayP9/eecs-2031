#!/bin/sh

# EECS 2031Z - Lab 4
# Filename: calc
# Author: paraboo, sanjay
# Email: sanjayp@my.yorku.ca
# Login ID: sanjayp



if [ "$2" = "x" ];
then
	echo `expr "$1" \* "$3"`

else
	echo `expr "$1" "$2" "$3"`
fi
