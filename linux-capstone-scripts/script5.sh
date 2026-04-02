#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Akshath Sharma | Course: Open Source Software
# Description: Interactively generates a personalized philosophy statement.

echo "Answer three questions to generate your manifesto."
echo ""

# --- 1. User Input (read command) ---
# Prompt the user (-p) and store their answers in string variables
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- 2. Variables & Formatting ---
# Fetch the current date with specific formatting (+%d %B %Y = Day Month Year)
DATE=$(date '+%d %B %Y')
# Use command substitution to dynamically name the output file based on the user
OUTPUT="manifesto_$(whoami).txt"

# --- 3. Alias Concept (Demonstrated via Comment) ---
# CONCEPT: An alias is a custom terminal shortcut used to save typing.
# To run this script faster in the future without typing the full path, 
# you could create an alias in your ~/.bashrc file like this:
# alias manifesto='./script5.sh'

# --- 4. File Writing & String Concatenation (TODO Section) ---
# Using > to create/overwrite the file, and >> to safely append text to it.
# We concatenate the user's variables into a cohesive paragraph.
echo "=========================================" > "$OUTPUT"
echo "       THE OPEN SOURCE MANIFESTO         " >> "$OUTPUT"
echo "       Author: $(whoami)                 " >> "$OUTPUT"
echo "       Date: $DATE                       " >> "$OUTPUT"
echo "=========================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every single day, I rely on tools like $TOOL to navigate the digital world." >> "$OUTPUT"
echo "To me, the true essence of open-source software can be summarized as: $FREEDOM." >> "$OUTPUT"
echo "If given the opportunity, I would love to build $BUILD and release it under" >> "$OUTPUT"
echo "a public license, ensuring that it remains accessible to the global community." >> "$OUTPUT"

# --- 5. Display the Result ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo "-----------------------------------------"
# Print the contents of the newly created file directly to the screen
cat "$OUTPUT"
echo "========================================="
