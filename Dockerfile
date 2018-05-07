FROM thewtex/cross-compiler-windows-x64
MAINTAINER Asher Dawes asher.dawes@gmail.com

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install libc6-dev m4 libtool \
    zlib1g-dev bsdmainutils libprotobuf-dev \
    protobuf-compiler libqrencode-dev libdb++-dev software-properties-common libcurl4-openssl-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



