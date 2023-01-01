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

# We move outside the directory and build the package
cd $copy
cd ..

dpkg --build "$version"-dbn-tools

# # We remove git since we don't want it the final build
rm -rf .git
rm .gitignore
