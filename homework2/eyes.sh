#!/bin/bash

WATCH_DIR="/home/greenwoo/danit3/homework2/watch"

mkdir -p "$WATCH_DIR"

PROCESSED_FILES="$WATCH_DIR/.processed_files"

touch "$PROCESSED_FILES"

check_new_files() {
    for file in "$WATCH_DIR"/*; do
        [ -f "$file" ] || continue

        if grep -qx "$(basename "$file")" "$PROCESSED_FILES"; then
            continue
        fi

        cat "$file"

        mv "$file" "$file.back"

        echo "$(basename "$file").back" >> "$PROCESSED_FILES"
    done
}

while true; do
    check_new_files
    sleep 2  
done