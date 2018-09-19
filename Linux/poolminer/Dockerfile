FROM debian:9.5-slim
MAINTAINER Asher Dawes <asher.dawes@gmail.com>

ENV DEBIAN_FRONTEND noninteractive \
    BOOST_VERSION=1.66 \
    BOOST_VERSION_=1.66_ \
    BOOST_ROOT=/usr/include/boost \
    CXX=gcc-6

RUN apt-get -qq update && apt-get install -q -y \
    software-properties-common \
    python-software-properties \
    build-essential \
    cmake && \
    add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
    apt-get -qq update && apt-get install -qy g++-6 gcc git wget && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 90 && \
    wget --no-check-certificate --max-redirect 3 https://sourceforge.net/projects/boost/files/boost/1.66.0/boost_1_66_0.tar.gz && \
    mkdir -p /usr/include/boost && \
    tar zxf boost_1_66_0.tar.gz -C /usr/include/boost --strip-components=1 && \
    echo ${BOOST_ROOT} && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
