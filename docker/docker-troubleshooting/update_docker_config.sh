#!/bin/bash

# Define the Docker config file path
DOCKER_CONFIG_FILE="$HOME/.docker/config.json"

# Check if the file exists
if [ ! -f "$DOCKER_CONFIG_FILE" ]; then
    echo "Docker config file does not exist at $DOCKER_CONFIG_FILE"
    exit 1
fi

# Use jq to modify the key
jq 'with_entries(if .key == "credsStore" then .key = "credStore" else . end)' "$DOCKER_CONFIG_FILE" > "$DOCKER_CONFIG_FILE.tmp"

# Check if jq was successful
if [ $? -ne 0 ]; then
    echo "Failed to modify the Docker config file."
    rm -f "$DOCKER_CONFIG_FILE.tmp"
    exit 1
fi

# Replace the original file with the modified file
mv "$DOCKER_CONFIG_FILE.tmp" "$DOCKER_CONFIG_FILE"

echo "Successfully changed 'credsStore' to 'credStore' in $DOCKER_CONFIG_FILE"

