FROM debian:jessie
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get update && \
    apt-get -y install \
    dos2unix \
    ccache \
    libc6-dev \
    binutils-gold \
    m4 \
    autoconf \
    libtool \
    unzip \
    python \
    zlib1g-dev \
    wget \
    bsdmainutils \
    automake && \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


