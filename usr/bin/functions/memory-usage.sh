#!bin/bash

# We display the ram usage and the swap usage information
function MemoryUsage() {
    echo "Memory usage:"
    free -h
}

export -f MemoryUsage
