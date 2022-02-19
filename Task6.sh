#!/bin/bash

mypath() {

local A="$1/*"
for file in $A
do
#echo "$file"
[ -d "$file" ] &&
local B="$1/`basename $file`" &&
mypath "$B" "$2" "$3" "$4"

[ -f "$file" ] &&
local BB=`expr match "$1" '.*\([/][^/]*\)'`&&
local rt=${BB:1}  &&
[ $rt = "$3" ] &&
local text=`basename $file` &&
local extension="${text##*.}" &&
[ $extension = "$4" ] &&
echo "$text" >> $2
done
return 0
}


[ -f "$1" ] &&
[ $# -eq 3 ] &&
echo > $1 &&
mypath "/home/artyom" $1 $2 $3 &&
sort -o $1 $1
[ $# -ne 3 ] &&
echo "Wrong count of arguments"
! [ -f "$1" ] &&
echo "Output way is not file"


