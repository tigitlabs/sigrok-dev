# Note: You can use any Debian/Ubuntu based image you want. 
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    software-properties-common \
    python-is-python3 \
    python3-dev \
    bash-completion \
    tmux \
    vim \
    git \
    gcc \
    make \
    autoconf \
    automake \
    libtool \
    pkg-config \
    libglib2.0-dev \
    zlib1g-dev \
    libzip-dev \
    libtirpc-dev \
    libserialport-dev \
    libusb-1.0-0-dev \
    libftdi1-dev \
    libhidapi-dev \
    libbluetooth-dev \
    libieee1284-3-dev \
    libusb-1.0-0-dev \
    libgirepository1.0-dev \
    check \
    doxygen \
    graphviz \
    # Clean up
    && apt-get autoremove -y && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/vscode

# # Setup libsigrok
RUN git clone https://github.com/sigrokproject/libsigrok.git && \
    cd libsigrok && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    sudo ldconfig /usr/local/lib

# # Setup sigrok-cli
RUN git clone https://github.com/sigrokproject/sigrok-cli.git && \
    cd sigrok-cli && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install

# Setup sigrok-dumps
RUN git clone https://github.com/sigrokproject/sigrok-dumps.git && \
    cd sigrok-dumps && \
    make install

# # Setup sigrok-util
RUN git clone https://github.com/sigrokproject/sigrok-util.git && \
    cd sigrok-util/cross-compile/linux && \
    ./sigrok-cross-linux
ENV PKG_CONFIG_PATH=$HOME/sr/lib/pkgconfig

# # Setup libsigrokdecode
RUN git clone https://github.com/sigrokproject/libsigrokdecode.git && \
    cd libsigrokdecode && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install
ENV PATH_DECODERS=/home/vscode//libsigrokdecode/decoders/

# # Setup sigrok-test
RUN git clone https://github.com/sigrokproject/sigrok-test.git && \
    cd sigrok-test && \
    ./autogen.sh && \
    ./configure --with-decodersdir=$PATH_DECODERS && \
    make
