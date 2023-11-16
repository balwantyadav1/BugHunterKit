#!/bin/bash

# Run the 'whoami' command to get the current username
username=$(whoami)

# Check if the 'whoami' command was successful
if [ $? -eq 0 ]; then
  echo "Current username: $username"
  
  # Define the source directory
  source_dir="/home/$username/go/bin"

  # Check if the source directory exists
  if [ -d "$source_dir" ]; then
    echo "Changing directory to $source_dir"
    cd "$source_dir"

    if [ $? -eq 0 ]; then
      echo "Changed directory to $source_dir"
      echo "Copying files from $source_dir to /usr/local/bin"
      sudo cp * /usr/local/bin/

      if [ $? -eq 0 ]; then
        echo "Copy completed successfully."
      else
        echo "Failed to copy files."
      fi
    else
      echo "Failed to change directory to $source_dir"
    fi
  else
    echo "Directory $source_dir does not exist."
  fi
else
  echo "Failed to get the current username."
fi
