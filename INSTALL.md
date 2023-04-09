## 💡 Installation

### 🐋 Docker

- Clone the repository and make sure to be in the same folder as the `Dockerfile` which is in the root
- Go check the latest release from [TAGS](https://github.com/jd-apprentice/dbn-tools/tags)
- Copy the deb link for example `https://github.com/jd-apprentice/dbn-tools/releases/download/0.0.5/0.5-dbn-tools.deb`
- Copy the name file in this case `0.5-dbn-tools.deb`
- Then we can build our container with `docker compose up -d`
- Once the container is running we can go inside with `docker exec -it dbn-tools-container bash`
- And for the last part we can run the app with `dbn_tools`

#### 🔬 Troubleshot

- The container may not be working and if you try it to see the logs you see `dbn_tools command not found` ?
- That may indicated that is neccesary to build it run the following command -> `docker compose up --build`
- Once it reaches the end you can do `ctrl + c` to exit and run again `docker compose up -d` and `docker exec -it dbn-tools-container bash`

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

- Tested on Kernel 6.0.2
- Download the .deb package from the repository.
- Install debtap with `yay -S debtap`
- Update the database with `sudo debtap -u`
- Build the package with `debtap <path-to-package>`
- Once we have the `tar.zst` file we are going to install it with pacman
- Run `sudo pacman -U <path-to-tar-zst-file>`
- Run the package by typing `dbn-tools` in the terminal
