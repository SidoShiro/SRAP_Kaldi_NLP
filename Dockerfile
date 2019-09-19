
FROM debian:9.8
LABEL maintainer="marc@sidorenko.fr"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        g++ \
        make \
        automake \
        autoconf \
        bzip2 \
        unzip \
        wget \
        sox \
        libtool \
        git \
        subversion \
        python2.7 \
        python3 \
        zlib1g-dev \
        ca-certificates \
        patch \
        ffmpeg \
	vim && \
    rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python2.7 /usr/bin/python 

RUN git clone --depth 1 https://github.com/kaldi-asr/kaldi.git /opt/kaldi && \
    cd /opt/kaldi && \
    cd /opt/kaldi/tools && \
    ./extras/install_mkl.sh && \
    make -j $(nproc) && \
    cd /opt/kaldi/src && \
    ./configure --shared && \
    make depend -j $(nproc) && \
    make -j $(nproc)

COPY srilm-1.7.3.tar.gz /opt

RUN git clone --depth 1 https://github.com/SidoShiro/SRAP_Kaldi /opt/srap_kaldi && \
    cp -r /opt/srap_kaldi/* /opt/ && \
    cd /opt && \
    ./new_install_kaldi_tools.sh

WORKDIR /opt


