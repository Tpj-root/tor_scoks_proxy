#!/bin/bash

for img in src/*.{jpg,png,jpeg}; do
    # Ensure file exists before processing
    if [ -f "$img" ]; then
        # Process the image and add a 5px skyblue border
        temp_img="src/temp_$(basename "$img")"
        convert "$img" -bordercolor skyblue -border 5 "$temp_img"
        mv "$temp_img" "$img"
    fi
done

