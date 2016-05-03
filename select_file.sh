#!/bin/bash
echo "Please select the file from the list"

if [ -z "$1" ]; then
    # echo "empty"
    files=$(ls -X)
else
    files=$(ls -X | grep $1)
    # echo "not empty $1"
fi

i=1

for j in $files
do
echo "$i.$j"
file[i]=$j
i=$(( i + 1 ))
done

echo "Enter number"
read input
# echo "You select the file ${file[$input]}"
vim ${file[$input]}
