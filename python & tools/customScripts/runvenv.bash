#!/bin/bash

echo "Creating a virtual environment......"
# Create a new virtual environment in a directory called venv
virtualenv venv & # & is used to run the command in the background

echo "activating the virtual environment takes some time, please wait......"

# Wait for the previous command to finish
wait

# Activate the virtual environment
source ./venv/bin/activate

echo "Virtual environment activated......"