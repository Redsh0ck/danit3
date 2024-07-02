#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please, enter the name of file as argument"
    exit 1
fi

filename=$1

if [ -f "$filename" ]; then
    cat "$filename"
else
    echo "File is not exist: $filename"
    exit 1
fi
