FROM ubuntu:22.04
RUN apt-get update
RUN apt-get upgrade -y
run apt-get install wget=1.21.1 git=2.34.1 curl=7.81.0 python3=3.10.6 net-tools=2.10-alpha -y
RUN apt-get install -y python3-pip=22.0.2
RUN pip3 install requests==2.28.2
ARG DOWNLOAD_URL
RUN wget $DOWNLOAD_URL
ARG PACKAGE_NAME
RUN apt-get install -y $PACKAGE_NAME

# Run the application
CMD ["/dbn-tools/usr/bin/dbn-tools.sh"]