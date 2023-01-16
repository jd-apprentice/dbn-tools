#!bin/bash

function ReadPrompt() {
    # Read the user's option
    read -p "$prompt" option

    # Perform the action corresponding to the chosen option
    case $option in
    1)

        DiskUsage 2>/dev/null
        ;;
    2)

        DeleteTemporary 2>/dev/null
        ;;
    3)

        EmptyRecycleBin 2>/dev/null
        ;;
    4)

        UninstallPackage 2>/dev/null
        ;;
    5)

        SystemInfo 2>/dev/null
        ;;
    6)

        MemoryUsage 2>/dev/null
        ;;
    7)

        Uptime 2>/dev/null
        ;;
    8)

        OpenPorts 2>/dev/null
        ;;
    9)

        FindFile 2>/dev/null
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
