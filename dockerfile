# syntax=docker/dockerfile:1
FROM ubuntu:22.10

# set version label
ARG BUILD_DATE
ARG VERSION
ARG DELUGE_VERSION

# labels #
LABEL build_version="jeffreyallanbrown version:- ${VERSION} build:- ${BUILD_DATE}"
LABEL maintainer="jeffreyallanbrown"
LABEL author="jeffreyallanbrown"

# variables #

# install packages #

RUN apt-get update && apt-get upgrade && apt-get clean

# expose ports #
EXPOSE 22
EXPOSE 80