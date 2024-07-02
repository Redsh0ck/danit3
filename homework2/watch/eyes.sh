#!/bin/bash

WATCH_DIR=~/danit3/homework2/watch

mkdir -p "$WATCH_DIR"

initial_files=$(ls "$WATCH_DIR")

check_new_files() {
    current_files=$(ls "$WATCH_DIR")
    for file in $current_files; do
        if [[ ! " ${initial_files[@]} " =~ " ${file} " ]]; then
            cat "$WATCH_DIR/$file"
            mv "$WATCH_DIR/$file" "$WATCH_DIR/$file.back"
        fi
    done
    initial_files=$current_files
}

while true; do
    check_new_files
    sleep 2  
done