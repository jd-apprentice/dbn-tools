#!/bin/bash

# Initialize the environment
args=()
prompt="Enter an option: "

# Source all the files
for file in /usr/bin/functions/* /usr/bin/constants/* usr/bin/functions/* usr/bin/constants/*; do
  if [ -e "$file" ]; then
    source "$file"
  else
    echo "Error: $file does not exist"
  fi
done

# Iterate over all the arguments
for arg in "$@"; do
  if [[ $arg == "--help" ]]; then
    . usr/bin/constants/help.sh # Look for a way to not source this file again
    for description in "${descriptions[@]}"; do
      echo "$description"
    done
    exit
  fi

  if [[ $arg == "--esp" ]]; then
    language="esp"
    continue
  fi

  # Otherwise, store the argument in the array
  args+=("$arg")
done

# Display the menu options
DisplayMenuOptions

# Function that uses the switch case and reads the prompts given
ReadPrompt
