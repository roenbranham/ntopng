
FROM ubuntu:20.04

# Update and upgrade the system
RUN apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade

# Install dependencies
RUN apt-get install -y \
    autoconf \
    automake \
    libtool \
    rrdtool \
    librrd-dev \
    libmariadbclient-dev \
    libsqlite3-dev \
    libhiredis-dev \
    wget \
    libpcap-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libgeoip-dev \
    libzmq3-dev \
    libmaxminddb-dev \
    libmysqlclient-dev \
    libldap2-dev \
    libradcli-dev \
    libjson-c-dev \
    pkg-config \
    libnetfilter-queue-dev \
    libnghttp2-dev \
    libmbedtls-dev \
    libcap-dev \
    libnuma-dev \
    meson \
    ninja-build \
    git \
    build-essential

# Clone ntopng repository
RUN git clone https://github.com/ntop/ntopng.git

# Change into the ntopng directory
WORKDIR /ntopng

# Build ntopng
RUN ./autogen.sh
RUN ./configure
RUN make geoip
RUN make

# Default command
CMD ["./ntopng"]
