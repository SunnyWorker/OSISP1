#!/bin/bash


if [ -f "$1" ] && [ $# -eq 3 ]
then
	echo > $1
	find $2 -maxdepth 1 -name "*.$3" -printf "%p\n" >> $1
	sort -o $1 $1
else
	echo "Wrong count of arguments or Output way is not file"
fi
