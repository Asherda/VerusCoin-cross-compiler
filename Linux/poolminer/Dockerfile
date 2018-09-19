FROM debian:9.5-slim
MAINTAINER Asher Dawes <asher.dawes@gmail.com>

ENV GITHUB="https://github.com/VerusCoin/nheqminer" SRCDIR="/usr/src/nheqminer"

RUN apt-get update && apt-get install -y  cmake libboost-all-dev git && \
    git clone ${GITHUB} ${SRCDIR} && mkdir -p ${SRCDIR}/build && cd ${SRCDIR}/build && cmake -DUSE_CUDA_DJEZO=0 -DUSE_CPU_XENONCAT=0 .. && \
    make -j $(nproc) && cp nheqminer /usr/bin && strip /usr/bin/nheqminer && \
    apt-get -y autoremove; apt-get -y autoclean; apt-get -y clean; rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["nheqminer"]
