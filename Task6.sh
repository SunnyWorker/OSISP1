#!/bin/bash

mypath() {

	for file in `find $2 -maxdepth 1 -name "*.$3"`
	do
		echo "`basename $file`" >> $1
	done

	return 0
}


if [ -f "$1" ] && [ $# -eq 3 ]
then
	echo > $1
	mypath $1 $2 $3
	sort -o $1 $1
else
	echo "Wrong count of arguments or Output way is not file"
fi
