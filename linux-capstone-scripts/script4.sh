#!/bin/bash
# Script 4: Log File Analyzer
# Author: Akshath Sharma | Course: Open Source Software
# Description: Reads a log line-by-line, counts keywords, and prints summaries.
# Usage: ./script4.sh <logfile> [keyword]

# --- 1. Command-Line Arguments ---
# $1 assigns the first word typed after the script name to LOGFILE
LOGFILE=$1
# $2 assigns the second word to KEYWORD. If left blank, it defaults to 'error'
KEYWORD=${2:-"error"}
# Initialize the counter variable
COUNT=0

echo "========================================="
echo "           Log File Analyzer             "
echo "========================================="

# --- 2. Do-While Style Retry Loop (TODO 1) ---
# In Bash, we simulate a do-while loop using a standard while loop.
# The '-s' flag checks if the file exists AND has a size > 0 (not empty).
# The '!' negates it, so it loops as long as the file is missing or empty.
while [ ! -s "$LOGFILE" ]; do
    echo "[WARNING] File '$LOGFILE' is either empty or not found."
    # Prompts the user to try again, updating the LOGFILE variable
    read -p "Please enter a valid, non-empty log file path: " LOGFILE
done

echo "Analyzing log: $LOGFILE"
echo "Searching for keyword: '$KEYWORD'"
echo "-----------------------------------------"

# --- 3. While-Read Loop and If-Then ---
# IFS= prevents whitespace from being trimmed. read -r reads line by line.
while IFS= read -r LINE; do
    # case-insensitive grep (-i) quietly (-q) searches the line for the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment the counter variable using arithmetic expansion
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- 4. Summary Output ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "-----------------------------------------"

# --- 5. Print Last 5 Matches (TODO 2) ---
echo "Last 5 matching lines:"
# grep finds all matches, and tail -n 5 filters it down to just the very bottom 5
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "========================================="
