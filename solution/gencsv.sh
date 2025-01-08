#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 start_index end_index"
    exit 1
fi

start=$1
end=$2

if [ $end -le $start ]; then
    echo "Error: End index must be greater than start index"
    exit 1
fi

> inputFile

for i in $(seq $start $end); do
    random=$(( $RANDOM % 1000 ))
    echo "$i, $random" >> inputFile
done