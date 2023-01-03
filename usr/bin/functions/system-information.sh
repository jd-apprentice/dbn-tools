#!bin/bash

# Show detailed information about CPU and system
function SystemInfo() {
    echo "CPU information:"
    lscpu
    echo ""
    echo "System information:"
    uname -a
}

export -f SystemInfo
