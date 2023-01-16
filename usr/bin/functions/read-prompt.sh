#!bin/bash

function ReadPrompt() {
    # Read the user's option
    read -p "$prompt" option

    # Perform the action corresponding to the chosen option
    case $option in
    1)

        DiskUsage
        ;;
    2)

        DeleteTemporary
        ;;
    3)

        EmptyRecycleBin
        ;;
    4)

        UninstallPackage
        ;;
    5)

        SystemInfo
        ;;
    6)

        MemoryUsage
        ;;
    7)

        Uptime
        ;;
    8)

        OpenPorts
        ;;
    9)

        FindFile
        ;;
    10)

        # Exit the application
        exit
        ;;
    *)

        # Invalid argument
        echo "Invalid option"
        ;;
    esac
}

export -f ReadPrompt
