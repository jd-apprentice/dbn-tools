#!/bin/bash

# Ask the user to enter the name of the program to uninstall
function UninstallPackage() {
    read -p "Enter the name of the program to uninstall: " program
    echo "Uninstalling $program..."
    sudo dpkg --purge $program
}

export -f UninstallPackage
