FROM ubuntu:22.04
RUN apt-get update
RUN apt-get upgrade -y
run apt-get install wget git curl python3 net-tools -y
RUN apt-get install -y python3-pip
RUN pip3 install requests
ARG DOWNLOAD_URL
RUN wget $DOWNLOAD_URL
ARG PACKAGE_NAME
RUN apt-get install -y $PACKAGE_NAME

# Run the application
CMD ["/dbn-tools/usr/bin/dbn-tools.sh"]