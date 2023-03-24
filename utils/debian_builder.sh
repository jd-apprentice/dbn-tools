#!/bin/bash

echo "Path to the original .deb file -> "
read -n path

ar x "$path"
zstd -d <control.tar.zst | xz >control.tar.xz
zstd -d <data.tar.zst | xz >data.tar.xz
ar -m -c -a debian-binary control.tar.xz data.tar.xz debian_repacked.deb
rm debian-binary control.tar.xz data.tar.xz control.tar.zst data.tar.zst
