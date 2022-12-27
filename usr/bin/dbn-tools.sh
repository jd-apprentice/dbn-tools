#!/bin/bash

# Show the menu options
echo "
  ____  ____  _   _   _____ ___   ___  _     ____  
 |  _ \| __ )| \ | | |_   _/ _ \ / _ \| |   / ___| 
 | | | |  _ \|  \| |   | || | | | | | | |   \___ \ 
 | |_| | |_) | |\  |   | || |_| | |_| | |___ ___) |
 |____/|____/|_| \_|   |_| \___/ \___/|_____|____/ 
                                                   "
echo "---------------"
echo "1) Analyze disk usage"
echo "2) Delete temporary files"
echo "3) Empty recycle bin"
echo "4) Uninstall program"
echo "5) System information"
echo "6) Memory usage"
echo "7) Exit"

# Read the user's option
read -p "Enter an option: " option

# Perform the action corresponding to the chosen option
case $option in
   1)
    # Show the used and available space in each of the system's hard drives
    printf "Disk usage:\n"
    printf "%-10s %-10s %-10s %-10s %s\n" "Filesystem" "Size" "Used" "Available" "Use%"
    df -h | tail -n +2 | awk '{ printf "%-10s %-10s %-10s %-10s %s\n", $1, $2, $3, $4, $5 }'
    ;;
   2)
    # Delete the system's temporary files
    echo "Deleting temporary files..."
    sudo rm -rf /tmp/*
    ;;
   3)
    # Empty the recycle bin
    echo "Emptying recycle bin..."
    sudo rm -rf ~/.local/share/Trash/*
    ;;
   4)
    # Ask the user to enter the name of the program to uninstall
    read -p "Enter the name of the program to uninstall: " program
    # Uninstall the program
    echo "Uninstalling $program..."
    sudo dpkg --purge $program
    ;;
   5)
    # Show detailed information about CPU and system
    echo "CPU information:"
    lscpu
    echo ""
    echo "System information:"
    uname -a
    ;;
   6)
     # We display the ram usage and the swap usage information
    echo "Memory usage:"
    free -h
    ;;
   7)
    # Exit the application
    exit
    ;;
  *)
    echo "Invalid option"
    ;;
esac

echo "Done!"