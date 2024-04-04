# :: QEMU
  FROM multiarch/qemu-user-static:x86_64-aarch64 as qemu

# :: Build
  FROM 11notes/alpine:arm64v8-stable as build
  COPY --from=qemu /usr/bin/qemu-aarch64-static /usr/bin

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