#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please, enter the name of file as argument."
    exit 1
fi

filename=$1

if [ ! -f "$filename" ]; then
    echo "File is not exist: $filename"
    exit 1
fi

# Виводимо кількість рядків у файлі
line_count=$(wc -l < "$filename")
echo "Counts of line in file $filename: $line_count"
