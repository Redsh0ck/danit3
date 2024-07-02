#!/bin/bash

source_file="/home/greenwoo/danit3/homework1/script1.sh"
destination="/home/greenwoo/danit3/homework1/script1_1.sh"

cp "$source_file" "$destination"

if [ $? -eq 0 ]; then
    echo "File copied successfully."
else
    echo "Failed to copy file."
    exit 1
fi
