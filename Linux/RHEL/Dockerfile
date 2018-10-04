FROM fedora
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN dnf -y update && dnf clean all
RUN dnf -y install \
     git \
     pkgconfig \
     automake \
     autoconf \
     ncurses-devel \
     python \
     python-zmq \
     wget \
     curl \
     gtest-devel \
     gcc \
     gcc-c++ \
     libtool \
     patch && \
     dnf clean all

