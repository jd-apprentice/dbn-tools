#!bin/bash

# Show open ports
function OpenPorts() {
    echo "Open ports:"
    netstat -tulpn
}

export -f OpenPorts
