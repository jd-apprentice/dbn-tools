#!bin/bash

function ReadArguments() {
    # Python functions (soon to be moved out)
    UsdArs="/usr/bin/functions/usd-ars.py"

    # Base options when no arguments is passed
    export options=(DiskUsage DeleteTemporary EmptyRecycleBin UninstallPackage SystemInfo MemoryUsage Uptime OpenPorts GetWeather DownloadVideo FindFile $UsdArs exit)

    local arguments="$1"
    for arg in "$arguments"; do
        if [[ $arg == "--help" ]]; then
            source /usr/bin/constants/help.sh # Look for a way to not source this file again
            for description in "${descriptions[@]}"; do
                echo "$description"
            done
            exit
        fi

        # Check if the language is Spanish
        if [[ $arg == "--esp" ]]; then
            export language="esp"
            export prompt="Ingrese una opción: "
            menu_options=("${menu_options_spanish[@]}")
            continue
        fi

        # Menu choice for the system utilities
        if [[ $arg == "--system" ]]; then
            export options=(DiskUsage SystemInfo UninstallPackage Uptime OpenPorts MemoryUsage exit)
            export menu_options=(
                "1) Analyze disk usage"
                "2) System information"
                "3) Uninstall a package"
                "4) System uptime"
                "5) Open ports"
                "6) Memory usage"
                "7) Exit"
            )
            continue
        fi

        # Otherwise, store the argument in the array
        args+=("$arg")
    done
}

export -f ReadArguments
