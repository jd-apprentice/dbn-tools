FROM ubuntu:22.04
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget=1.21.2-2ubuntu1 git=1:2.34.1-1ubuntu1.6 curl=7.81.0-1ubuntu1.7 net-tools=1.60+git20181103.0eebece-1ubuntu5 python3-dev 
RUN apt-get install -y python3-pip
RUN pip3 install requests==2.28.2
ARG DOWNLOAD_URL
RUN wget $DOWNLOAD_URL
ARG PACKAGE_NAME
RUN apt-get install -y $PACKAGE_NAME

# Run the application
CMD ["/dbn-tools/usr/bin/dbn-tools.sh"]
