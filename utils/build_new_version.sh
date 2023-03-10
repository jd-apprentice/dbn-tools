#!/bin/bash

# Find version of the package and save it in a variable
file=$(find . -name 'control')
string="Version"

while read -r line; do
    if [[ $line =~ $string ]]; then
        version=${line:(-3):3}
    fi
done <$file

# We locate where the folder is located and move to it
folder=$(find $HOME -type d -name "dbn-tools")
cd $folder

# We create a folder for the build and copy the entire file one level above
mkdir -p -- ../"$version-dbn-tools"
copy=$(find $HOME -type d -name ${version}"-dbn-tools")
cp -r $folder/* $copy

# Move to the copy directory
cd $copy

# We remove git since we don't want it the final build
rm -rf .git

# Move out of the copy directory
cd ..

# Build latest version of the package
dpkg --build "$version"-dbn-tools
