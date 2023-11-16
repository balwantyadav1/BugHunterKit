#!/bin/bash

# Get the current username
username=$(whoami)

# Define the source and destination directories
source_dir="$HOME/go/bin"
destination_dir="/usr/local/bin"

# Check if the source directory exists
if [ -d "$source_dir" ]; then
  # Change to the source directory
  cd "$source_dir" || { echo "Failed to change directory"; exit 1; }

  # Copy all files and programs from the source to the destination
  sudo cp * "$destination_dir" || { echo "Failed to copy files"; exit 1; }

  # Make the copied files executable
  sudo chmod +x "$destination_dir"/* || { echo "Failed to make files executable"; exit 1; }

  echo "Files copied successfully to $destination_dir"
else
  echo "Source directory $source_dir not found"
fi
