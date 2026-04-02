#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Akshath Sharma | Course: Open Source Software
# Description: Loops through system directories to report size and permissions.

# --- 1. Define Array ---
# Create an array of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================="
echo "        Directory Audit Report           "
echo "========================================="

# --- 2. For Loop (System Directories) ---
# Loop through each directory in the DIRS array
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists on the system
    if [ -d "$DIR" ]; then
        # Use ls -ld to list directory details. Pipe to awk to grab:
        # $1 (permissions), $3 (owner), $4 (group)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Use du -sh to get the human-readable size of the directory.
        # 2>/dev/null hides 'permission denied' errors for locked files.
        # cut -f1 extracts just the size value, ignoring the path output.
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        # Print the formatted output
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "-----------------------------------------"

# --- 3. Software Config Audit (TODO Section) ---
# Check the specific config directory for LibreOffice
APP_DIR="/etc/libreoffice"

echo "Specific Audit for Chosen Software: LibreOffice"

# Check if the LibreOffice config directory exists
if [ -d "$APP_DIR" ]; then
    # Grab the permissions, owner, and group specifically for this app
    APP_PERMS=$(ls -ld "$APP_DIR" | awk '{print $1, $3, $4}')
    echo "[FOUND] Config directory: $APP_DIR"
    echo "Permissions/Ownership: $APP_PERMS"
else
    echo "[MISSING] Config directory $APP_DIR not found."
fi
echo "========================================="
