#!/bin/bash

# Iterate over all the files in the folder
for file in usr/bin/functions/*; do
  source "$file"
done

# Show the menu options
echo "
  ____  ____  _   _   _____ ___   ___  _     ____  
 |  _ \| __ )| \ | | |_   _/ _ \ / _ \| |   / ___| 
 | | | |  _ \|  \| |   | || | | | | | | |   \___ \ 
 | |_| | |_) | |\  |   | || |_| | |_| | |___ ___) |
 |____/|____/|_| \_|   |_| \___/ \___/|_____|____/ 
                                                   "
echo "---------------"
echo -e "\033[31m1) Analyze disk usage\033[0m"
echo -e "\033[32m2) Delete temporary files\033[0m"
echo -e "\033[33m3) Empty recycle bin\033[0m"
echo -e "\033[34m4) Uninstall program\033[0m"
echo -e "\033[35m5) System information\033[0m"
echo -e "\033[36m6) Memory usage\033[0m"
echo -e "\033[31m7) System uptime\033[0m"
echo -e "\033[32m8) Open ports\033[0m"
echo -e "\033[33m9) Search for a file\033[0m"
echo -e "\033[34m10) Exit\033[0m"

# Read the user's option
read -p "Enter an option: " option

# Perform the action corresponding to the chosen option
case $option in
1)

  DiskUsage
  ;;
2)

  DeleteTemporary
  ;;
3)

  DeleteTemporary
  ;;
4)

  UninstallPackage
  ;;
5)

  SystemInfo
  ;;
6)

  MemoryUsage
  ;;
7)

  Uptime
  ;;
8)

  OpenPorts
  ;;
9)

  FindFile
  ;;
10)

  # Exit the application
  exit
  ;;
*)

  # Invalid argument
  echo "Invalid option"
  ;;
esac

echo "Done!"
