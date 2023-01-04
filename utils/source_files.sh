#!bin/bash

# Source all the files given a path
function SourceFiles() {
    if [[ $# -eq 0 ]]; then
        echo "Error: No path provided"
        return 1
    fi

    for file in "$1"/*; do
        source "$file"
    done
}

export -f SourceFiles
