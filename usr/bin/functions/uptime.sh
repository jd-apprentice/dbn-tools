#!bin/bash

# Show system uptime
function Uptime() {
    echo "System uptime:"
    uptime

}

export -f Uptime
