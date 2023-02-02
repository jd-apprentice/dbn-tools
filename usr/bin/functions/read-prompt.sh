#!bin/bash

function ReadPrompt() {
    # Read the user's option
    read -p "$prompt" option

    # Perform the action corresponding to the chosen option
    if [[ $option -le ${#options[@]} && $option -gt 0 ]]; then
        ${options[$option - 1]}
    else
        echo "Invalid option"
    fi
}

export -f ReadPrompt
