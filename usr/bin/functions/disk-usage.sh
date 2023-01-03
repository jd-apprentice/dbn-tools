#!/bin/bash

# Show the used and available space in each of the system's hard drives
function DiskUsage() {
    printf "Disk usage:\n"
    printf "%-10s %-10s %-10s %-10s %s\n" "Filesystem" "Size" "Used" "Available" "Use%"
    df -h | tail -n +2 | awk '{ printf "%-10s %-10s %-10s %-10s %s\n", $1, $2, $3, $4, $5 }'
}

export -f DiskUsage
