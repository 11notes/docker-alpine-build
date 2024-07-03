![Banner](https://github.com/11notes/defaults/blob/main/static/img/banner.png?raw=true)

# 🏔️ Alpine Linux
![size](https://img.shields.io/docker/image-size/11notes/alpine-build/stable?color=0eb305) ![version](https://img.shields.io/docker/v/11notes/alpine-build/stable?color=eb7a09) ![pulls](https://img.shields.io/docker/pulls/11notes/alpine-build?color=2b75d6) ![stars](https://img.shields.io/docker/stars/11notes/alpine-build?color=e6a50e) [<img src="https://img.shields.io/badge/github-11notes-blue?logo=github">](https://github.com/11notes)

# SYNOPSIS
What can I do with this? This is a build image that contains most if not all default Alpine build tools to build custom binaries.

# BUILD
```shell
# :: Build
  FROM 11notes/alpine-build:stable as build
  RUN set -ex; \
    ... 

# :: Header
  FROM 11notes/alpine:stable
  COPY --from=build /src /dst
  ...
```

# BUILT WITH
* [alpine](https://alpinelinux.org)

# TIPS
* Allow non-root ports < 1024 via `echo "net.ipv4.ip_unprivileged_port_start={n}" > /etc/sysctl.d/ports.conf`
* Use a reverse proxy like Traefik, Nginx to terminate TLS with a valid certificate
* Use Let’s Encrypt certificates to protect your SSL endpoints

# ElevenNotes<sup>™️</sup>
This image is provided to you at your own risk. Always make backups before updating an image to a new version. Check the changelog for breaking changes. You can find all my repositories on [github](https://github.com/11notes).
    