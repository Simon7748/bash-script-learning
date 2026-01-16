#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'  # No Color (reset)

echo -e "${GREEN}Starting backup...${NC}"

# Get today's date
TODAY=$(date +%Y-%m-%d)

# Backup location
BACKUP_DIR="$HOME/Backups/$TODAY"

mkdir -p "$BACKUP_DIR"

echo -e "${GREEN}Backup folder created:${NC} $BACKUP_DIR"

echo -e "${YELLOW}Copying test files...${NC}"

# Copy system files (safe examples)
cp /etc/hostname "$BACKUP_DIR/" 2>/dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Copied:${NC} /etc/hostname"
else
    echo -e "${RED}Skipped:${NC} /etc/hostname (not found or permission issue)"
fi

cp ~/.bashrc "$BACKUP_DIR/" 2>/dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Copied:${NC} ~/.bashrc"
else
    echo -e "${RED}Skipped:${NC} ~/.bashrc (not found or permission issue)"
fi

echo -e "${GREEN}Copying finished!${NC}"
echo -e "${GREEN}Backup complete for $TODAY${NC}"#!/bin/bash

echo "Starting backup..."
read -p "Proceed with backup? (y/n): " choice
choice=${choice,,}  # make lowercase
if [[ $choice != "y" && $choice != "yes" ]]; then
    echo -e "${RED}Backup cancelled.${NC}"
    exit 0
fi
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
