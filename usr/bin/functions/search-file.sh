#!bin/bash

# Search for a file
function FindFile() {
    read -p "Enter the search term: " term
    echo "Search results:"
    find . -type f -name "*$term*"
}

export -f FindFile
