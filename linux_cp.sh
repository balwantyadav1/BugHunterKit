#!/bin/bash

# Get the username
username=$(whoami)

# Copy the username to the clipboard
echo -n "$username" | xclip -selection clipboard

# Change the directory to the user's go/bin directory
cd /home/$username/go/bin

# Ask to root user
sudo su

# Copy all the files and folders into /usr/local/bin
cp -R /home/$username/go/bin/* /usr/local/bin/