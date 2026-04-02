#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Akshath Sharma | Course: Open Source Software
# Description: Checks software installation and provides a philosophical summary.

# --- Variables ---
# Change this to test different outputs in the case statement below!
PACKAGE="libreoffice" 

echo "========================================="
echo "       FOSS Package Inspector            "
echo "========================================="

# --- 1. Check if package is installed (if-then-else) ---
# We use dpkg -l piped with grep to quietly (-q) search for the installed package.
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "[SUCCESS] $PACKAGE is installed."
    echo "--- Package Details ---"
    # Fetching Version and Description using apt show and regex filtering
    apt show $PACKAGE 2>/dev/null | grep -E '^Version|^Maintainer|^Description' | head -n 3
else
    echo "[ERROR] $PACKAGE is NOT installed."
fi

echo "-----------------------------------------"
echo "Philosophical Note:"

# --- 2. Package Summary (case statement) ---
# A case statement to print a specific philosophy note based on the package name.
case $PACKAGE in
    httpd|apache2) 
        echo "Apache: the web server that built the open internet" 
        ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps" 
        ;;
    libreoffice) 
        echo "LibreOffice: a community-driven office suite breaking proprietary lock-in" 
        ;;
    vlc) 
        echo "VLC: the versatile media player that plays everything, freely" 
        ;;
    firefox) 
        echo "Firefox: championing a healthy, open, and private web" 
        ;;
    *) 
        echo "A valuable open source tool contributing to the FOSS ecosystem." 
        ;;
esac
echo "========================================="
