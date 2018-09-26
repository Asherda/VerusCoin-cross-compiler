FROM ubuntu:xenial
MAINTAINER Asher Dawes <asher.dawes@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive \
    BOOST_MAJOR_VERSION=1 \
    BOOST_MINOR_VERSION=67 \
    BOOST_PATCH=0 \
    BOOST_ROOT=/usr/include/boost 


ENV BOOST_VERSION=${BOOST_MAJOR_VERSION}.${BOOST_MINOR_VERSION}.${BOOST_PATCH} \
    BOOST_VERSION_=${BOOST_MAJOR_VERSION}.${BOOST_MINOR_VERSION}_ \
    BOOST_TAR=boost_${BOOST_MAJOR_VERSION}_${BOOST_MINOR_VERSION}_${BOOST_PATCH}.tar.gz

ENV BOOST_DOWNLOAD_URL=https://sourceforge.net/projects/boost/files/boost/${BOOST_VERSION}/${BOOST_TAR} 

RUN apt-get -qq update && apt-get install -q -y \
    software-properties-common \
    cmake && \
    add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
    apt-get -qq update && \
    apt-get install -qy \
    g++-8 \
    gcc-8 \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 90 \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 90 \
    wget && \
    wget --max-redirect 3 ${BOOST_DOWNLOAD_URL} && \
    mkdir -p /usr/include/ && \
    tar zxf ${BOOST_TAR} && \
    rm ${BOOST_TAR} && \
    mkdir ${BOOST_ROOT} && \
    cd boost_${BOOST_MAJOR_VERSION}_${BOOST_MINOR_VERSION}_${BOOST_PATCH} && \
    ./bootstrap.sh --prefix=${BOOST_ROOT} && \
    ./b2 install && \
    cd .. && \
    rm -rf boost_${BOOST_MAJOR_VERSION}_${BOOST_MINOR_VERSION}_${BOOST_PATCH} && \
    apt-get -y autoclean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
