#!/bin/bash

# Loop through all files in current directory
for file in *; do
    # Skip directories
    if [ -f "$file" ]; then
        # Extract file extension
        ext="${file##*.}"

        # If file has no extension
        if [ "$file" = "$ext" ]; then
            folder="no_extension"
        else
            folder="$ext"
        fi

        # Create folder if it doesn't exist
        mkdir -p "$folder"

        # Move file into folder
        mv "$file" "$folder/"
    fi
done

echo "📂 Downloads organized by file type!"
