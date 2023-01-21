#!bin/bash

function ReadPrompt() {
    # Order is based on usr/bin/constants/menu.sh file, if you are going to edit something from here, edit it there too
    options=(DiskUsage DeleteTemporary EmptyRecycleBin UninstallPackage SystemInfo MemoryUsage Uptime OpenPorts GetWeather FindFile "usr/bin/functions/usd-ars.py" exit)

    # Read the user's option
    read -p "$prompt" option

    # Perform the action corresponding to the chosen option
    if [[ $option -le ${#options[@]} && $option -gt 0 ]]; then
        ${options[$option-1]}
    else
        echo "Invalid option"
    fi
}

export -f ReadPrompt
