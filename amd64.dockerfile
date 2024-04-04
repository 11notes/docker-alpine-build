# :: Build
  FROM 11notes/alpine:stable as build

  USER root

  RUN set -ex; \
    apk add --update --no-cache \
      curl \
      wget \
      tar \
      lz4 \
      xz \
      unzip \
      build-base \
      linux-headers \
      openssl-dev \
      make \
      cmake \
      gcc \
      g++ \
      git;

  RUN set -ex; \
    mkdir -p /.build; \
    mkdir -p /.src;