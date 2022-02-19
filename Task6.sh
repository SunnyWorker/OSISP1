#!/bin/bash


if [ -f "$1" ] && [ $# -eq 3 ]
then
	echo > $1
	for file in `find $2 -maxdepth 1 -name "*.$3"`
	do
		echo "`basename $file`" >> $1
	done
	sort -o $1 $1
else
	echo "Wrong count of arguments or Output way is not file"
fi
