FROM debian:stretch
LABEL maintainer="Litoreum Developers <dev@litoreum.org>"
LABEL description="Dockerised LitoreumCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
