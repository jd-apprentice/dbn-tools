# Base image for the container
FROM ubuntu:jammy

# Install packages from https://packages.ubuntu.com/
RUN apt-get update
RUN apt-get install -y --no-install-recommends wget=1.21.2-2ubuntu1 git=1:2.34.1-1ubuntu1.6 curl=7.81.0-1ubuntu1.7 net-tools=1.60+git20181103.0eebece-1ubuntu5 python3-dev=3.10.6-1~22.04 python3-pip=22.0.2+dfsg-1ubuntu0.1
RUN pip3 install requests==2.28.2 \
    yt-dlp==2023.1.6

# We download the app and install it - These values are default, use the version you want to download in the .env file
ARG DOWNLOAD_URL=https://github.com/jd-apprentice/dbn-tools/releases/download/0.0.6/0.6-dbn-tools.deb
ARG PACKAGE_NAME=0.6-dbn-tools.deb
RUN wget $DOWNLOAD_URL
RUN dpkg -i ./$PACKAGE_NAME

# Adding an alias in order to facilitate the usage of the app inside the container
RUN echo "alias dbn_tools='/dbn-tools/usr/bin/dbn-tools.sh'" >> ~/.bashrc