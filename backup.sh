#!/bin/bash

echo "Starting backup..."
# Today's date in YYYY-MM-DD format
TODAY=$(date +%Y-%m-%d)

#Create backup folder (~/Backups/2026-01-16 for example)
BACKUP_DIR="$HOME/Backups/$TODAY"

mkdir -p "$BACKUP_DIR"

echo "Hello my first script!"
echo "Just a test."

echo "Backup folder created: $BACKUP_DIR"
echo "Backup finished!"
