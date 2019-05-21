FROM ubuntu:xenial

RUN apt-get update && apt-get install -y --no-install-recommends \
    cmake \
    build-essential \
    clang-format-6.0 \
    git \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
