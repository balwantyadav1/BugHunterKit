#!/bin/bash

# Check if curl is installed
if ! command -v curl &> /dev/null
then
    echo "curl could not be found. Please install curl and try again."
    exit
fi

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "git could not be found. Please install git and try again."
    exit
fi

# Check if rust is installed
if ! command -v cargo &> /dev/null
then
    echo "Rust could not be found. Please install Rust and try again."
    exit
fi

# Check if cargo is installed
if ! command -v cargo &> /dev/null
then
    echo "cargo could not be found. Please install cargo and try again."
    exit
fi

# Check if sudo is installed
if ! command -v sudo &> /dev/null
then
    echo "sudo could not be found. Please install sudo and try again."
    exit
fi

# Check if the findomain is already installed
if command -v findomain &> /dev/null
then
    echo "findomain is already installed. Skipping installation..."
else
    echo "Installing findomain..."
    git clone https://github.com/findomain/findomain.git
    cd findomain
    cargo build --release
    sudo cp target/release/findomain /usr/local/bin
fi
