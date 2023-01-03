#!/bin/bash

# Delete the system's temporary files
function DeleteTemporary() {
    printf "Deleting temporary files..."
    sudo rm -rf /tmp/*
}

export -f DeleteTemporary
