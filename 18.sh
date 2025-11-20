#!/bin/bash
---Script to list files in the current directory with human-readable sizes

echo "Files and their sizes in the current directory:"
echo "------------------------------------------------"

for ITEM in *; do
    # Check if the item actually exists
    if [ -e "$ITEM" ]; then
        # Use du -h (disk usage, human-readable) to get the file size
        # 'awk' is used to cleanly extract the size and name
        SIZE_INFO=$(du -sh "$ITEM" | awk '{print $1}')
        
        # Determine if it's a file or directory for better output
        if [ -f "$ITEM" ]; then
            TYPE="FILE"
        elif [ -d "$ITEM" ]; then
            TYPE="DIR "
        else
            TYPE="OTHER"
        fi

        printf "%-8s %-15s %s\n" "[$TYPE]" "$SIZE_INFO" "$ITEM"
    fi
done