#!/bin/sh

# rmlc.sh - Remove by line count

SCRIPTNAME="rmlc.sh"
IFS=""

# Parse arguments 
if [ $# -lt 3 ]; then
    echo "Usage:"
    echo "$SCRIPTNAME [-more|-less] [numlines] file1 file2..."
    exit 
fi

if [ $1 == "-more" ]; then
    COMPARE="-gt" 
elif [ $1 == "-less" ]; then
    COMPARE="-lt" 
else
    echo "First argument must be -more or -less"
    exit 
fi

LINECOUNT=$2

# Discard non-filename arguments
shift 2

for filename in $*; do
    # Make sure we're dealing with a regular file first
    if [ ! -f "$filename" ]; then
        echo "Ignoring $filename"
        continue
    fi

    # We probably don't want to delete ourselves if script is in current dir
    if [ "$filename" == "$SCRIPTNAME" ]; then
        continue
    fi

    # Feed wc with stdin so that output doesn't include filename
    lines=`cat "$filename" | wc -l`

    # Check criteria and delete
    if [ $lines $COMPARE $LINECOUNT ]; then
        echo "Deleting $filename"
        rm "$filename"
    fi 
done
