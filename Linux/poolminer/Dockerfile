FROM ubuntu:xenial
MAINTAINER Asher Dawes <asher.dawes@gmail.com>

ENV DEBIAN_FRONTEND noninteractive 
ENV BOOST_MAJOR_VERSION=1
ENV BOOST_MINOR_VERSION=66
ENV BOOST_PATCH=0
ENV BOOST_VERSION=${BOOST_MAJOR_VERSION}.${BOOST_MINOR_VERSION}.${BOOST_PATCH}  
ENV BOOST_VERSION_=${BOOST_MAJOR_VERSION}.${BOOST_MINOR_VERSION}_
ENV BOOST_TAR=boost_${BOOST_MAJOR_VERSION}_${BOOST_MINOR_VERSION}_${BOOST_PATCH}.tar.gz
ENV BOOST_ROOT=/usr/include/boost 
ENV BOOST_LIBRARYDIR=${BOOST_ROOT}/libs
ENV BOOST_DOWNLOAD_URL=https://sourceforge.net/projects/boost/files/boost/${BOOST_VERSION}/${BOOST_TAR}/download
ENV CXX=gcc-6

RUN apt-get -qq update && apt-get install -q -y \
    software-properties-common \
    cmake && \
    add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
    apt-get -qq update && apt-get install -qy g++-6 gcc git wget && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 90 && \
    wget --no-check-certificate --max-redirect 3 ${BOOST_DOWNLOAD_URL} && \
    rm ${BOOST_TAR} && \
    mkdir -p /usr/include/boost && \
    tar zxf boost_1_66_0.tar.gz -C /usr/include/boost --strip-components=1 && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
