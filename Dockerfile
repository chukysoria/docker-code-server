# syntax=docker/dockerfile:1

ARG BUILD_FROM=lscr.io/linuxserver/code-server:4.20.0-ls188

FROM ${BUILD_FROM} 

# set version label
ARG BUILD_DATE
ARG BUILD_VERSION
ARG BUILD_EXT_RELEASE="v1.0.0"
LABEL build_version="Chukyserver.io version:- ${BUILD_VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="chukysoria"
# hard set UTC in case the user does not define it
ENV TZ="Etc/UTC"

# Copy local files
COPY /root /
