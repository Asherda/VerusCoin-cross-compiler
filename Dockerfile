FROM thewtex/cross-compiler-windows-x64
MAINTAINER Asher Dawes asher.dawes@gmail.com
RUN curl https://sh.rustup.rs -sSf | sh
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install libc6-dev m4 libtool \
    zlib1g-dev bsdmainutils libprotobuf-dev \
    protobuf-compiler libqrencode-dev libdb++-dev software-properties-common libcurl4-openssl-dev && \
    mingw-w64 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

