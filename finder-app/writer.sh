#!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
	echo "Parameters are not specified"
	exit 1
fi
mkdir -p "$(dirname "$writefile")"

# Attempt to write to the file
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Failed to write to file '$writefile'"
    exit 1
fi


