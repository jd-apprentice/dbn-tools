FROM alpine:3.18

WORKDIR /app

ENV PYTHONBUFFERED=1

RUN apk --update add --no-cache \
    dpkg=1.21.21-r1 \
    binutils=2.40-r7 \
    zstd=1.5.5-r4 \
    libc6-compat=1.2.4-r2 \
    wget=1.21.4-r0 \
    git=2.40.1-r0 \
    curl=8.4.0-r0 \
    python3=3.11.6-r0 && \
    ln -sf python3 /usr/bin/python && \
    rm -rf /var/cache/apk/*

RUN python3 -m ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install requests==2.28.2 \
    yt-dlp==2023.1.6 \ openai==0.27.2

ARG DOWNLOAD_URL=https://github.com/jd-apprentice/dbn-tools/releases/download/0.1.0/1.0-dbn-tools.deb
ARG PACKAGE_NAME=1.0-dbn-tools
RUN wget $DOWNLOAD_URL

RUN set -e
RUN ar x $PACKAGE_NAME.deb
RUN zstd -d < control.tar.zst | xz > control.tar.xz
RUN zstd -d < data.tar.zst | xz > data.tar.xz
RUN ar -m -c -a sdsd "$PACKAGE_NAME"_repacked.deb debian-binary control.tar.xz data.tar.xz
RUN rm debian-binary control.tar.xz data.tar.xz control.tar.zst data.tar.zst
RUN dpkg -i ./"$PACKAGE_NAME"_repacked.deb
RUN rm $PACKAGE_NAME

ENTRYPOINT ["/usr/bin/dbn-tools"]