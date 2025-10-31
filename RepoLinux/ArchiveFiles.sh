#!/bin/bash
#$Revision:001$
#Sun Oct 26 11:44:26 IST 2025

# === Variables ===
Base="/mnt/c/Users/hp/Downloads"
Days=10
Depth=1
Run=0

# === Check if base directory exists ===
if [ ! -d "$Base" ]; then
    echo "❌ Directory does not exist: $Base"
    exit 1
fi

# === Create 'archieve' folder if not present ===
if [ ! -d "$Base/archieve" ]; then
    mkdir "$Base/archieve"
    echo "📁 Created folder: $Base/archieve"
fi

# === Find files larger than 20MB and archive ===
for i in $(find "$Base" -maxdepth "$Depth" -type f -size +20M); do
    if [ "$Run" -eq 0 ]; then
        echo "[$(date "+%Y-%m-%d %H:%M:%S")] Archiving $i => $Base/archieve"
        gzip -f "$i" || exit 1
        mv "$i.gz" "$Base/archieve" || exit 1
    fi
done