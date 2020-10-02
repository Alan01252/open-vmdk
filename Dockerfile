FROM ubuntu:18.04

WORKDIR /app

RUN apt-get update && apt-get install -y \
    automake \
    build-essential \
    zlib1g-dev \
 && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN make && make install
