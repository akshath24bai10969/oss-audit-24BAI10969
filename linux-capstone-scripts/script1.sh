#!/bin/bash
# Script 1: System Identity Report
# Author: Akshath Sharma | Course: Open Source Software
# Description: Introduces the Linux system.

# --- Variables ---
# Storing the student name and chosen software in static variables
STUDENT_NAME="Akshath Sharma" 
SOFTWARE_CHOICE="LibreOffice" 

# --- System info ---
# Using command substitution $() to fetch live system data.
# grep and cut are piped together to extract the exact distro name from os-release.
DISTRO=$(source /etc/os-release && echo $PRETTY_NAME)
# uname -r fetches the specific kernel version currently running.
KERNEL=$(uname -r)
# whoami fetches the current logged-in user.
USER_NAME=$(whoami)
# $HOME is a built-in environment variable for the user's home directory path.
HOME_DIR=$HOME
# uptime -p shows how long the system has been running in a readable format.
UPTIME=$(uptime -p)
# date fetches the current system date and time.
CURRENT_DATE=$(date)

# --- Display ---
# Using echo for basic output formatting to create a clean screen.
echo "================================================"
echo " Open Source Audit — $STUDENT_NAME"
echo " Software Choice: $SOFTWARE_CHOICE"
echo "================================================"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $CURRENT_DATE"
echo "------------------------------------------------"
# Printing the required message about the open-source license covering the OS.
echo "License Message:"
echo "This Linux operating system is primarily covered"
echo "by the GNU General Public License (GPL)."
echo "================================================"
