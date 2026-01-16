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
echo "Copying test files..."

# Copy a small system file that always exists
cp /etc/hostname "$BACKUP_DIR/" 2>/dev/null || echo "Skipped /etc/hostname"

# Copy your shell config file (also always exists)
cp ~/.bashrc "$BACKUP_DIR/" 2>/dev/null || echo "Skipped .bashrc"

echo "Copying finished!"
echo "Backup finished!"
