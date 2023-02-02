#!/bin/bash

# Initialize the environment
args=()
prompt="Enter an option: "

# Source functions
for file in $(find usr/bin/ -name '*.sh'); do
  if [[ $file == *"functions"* ]]; then
    source "$file"
  elif [[ $file == *"constants"* ]]; then
    source "$file"
  fi
done

# Read and build the menu
ReadArguments "$@"

# Display the menu options
DisplayMenuOptions

# Function that uses the switch case and reads the prompts given
ReadPrompt
