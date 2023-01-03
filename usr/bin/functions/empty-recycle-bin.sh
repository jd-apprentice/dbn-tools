#!/bin/bash

# Empty the recycle bin
function EmptyRecycleBin() {
    echo "Emptying recycle bin..."
    sudo rm -rf ~/.local/share/Trash/*
}

export -f EmptyRecycleBin
