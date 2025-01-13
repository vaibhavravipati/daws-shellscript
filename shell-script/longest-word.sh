#!/bin/bash

# Check if a file was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# Store the filename from the command line argument
file="$1"

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
fi

# Find and display the longest word in the file
longest_word=$(cat "$file" | tr -s '[:space:][:punct:]' '[\n*]' | awk '{if(length > max_length) {max_length = length; longest_word = $0}} END {print longest_word}')
echo "The longest word is: $longest_word"
