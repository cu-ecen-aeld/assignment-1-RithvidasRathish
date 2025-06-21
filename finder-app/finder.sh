#!/bin/bash
filesdir=$1
searchstr=$2

grep  -r "${searchstr}" "${filesdir}"
if [ $# -ne 2 ]
then
	echo "Parameters are not specified"
	exit 1
fi
if [ -d "${filesdir}" ]
then
	echo "File exists"
else 
	exit 1
	echo "File does not exists"
fi
X=$(find "${filesdir}" -type f | wc -l)


Y=$(grep -r "${searchstr}" "${filesdir}" | wc -l)


echo "The number of files are $X and the number of matching lines are $Y"

