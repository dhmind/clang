FROM ubuntu:xenial

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    cmake \
    wget \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key |  apt-key add - \
    && apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-6.0 main" \
    && apt-get update \
    && apt-get install -y clang-6.0 \
    && ln -s /usr/bin/clang-format-6.0 /usr/bin/clang-format \
    && apt-get clean
