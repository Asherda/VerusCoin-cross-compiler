FROM debian:jessie
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get update && \
    apt-get -y install \
    autoconf \
    automake \
    binutils-gold \
    bsdmainutils \
    ccache \
    ca-certificates \
    dos2unix \
    libc6-dev \
    g++-multilib \
    m4 \
    libtool \
    make \
    git \
    ncurses-dev \
    pkg-config \
    python \
    unzip \
    wget \
    zlib1g-dev && \
    apt-get -y clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


