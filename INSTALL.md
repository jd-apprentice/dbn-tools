## 💡 Installation

### 🤎 Ubuntu

- Tested on Ubuntu 22.04
- Download the .deb package from the repository.
- Install the package using the command `sudo dpkg -i dbn-tools.deb`.
- Run the package by typing `dbn-tools` in the terminal.

### 🍎 Debian

- Tested on Debian 11
- Download the .deb package from the repository.
- Repack the package running the script in the utils called `debian_builder.sh`.
- Remember to give permissions to the package with `chmod +x ./debian_builder.sh`
- Run the script with the path to the .deb file for example `./debian_builder.sh $HOME/Downloads/dbn-tools.deb`
- Install the `debian_repacked.deb` package with `sudo dpkg -i debian_repacked.deb`
- Run the package by typing `dbn-tools` in the terminal

### 🇦 Arch

- Not implemented yet
