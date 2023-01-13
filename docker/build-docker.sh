#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-litoreum/litoreumd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/litoreumd docker/bin/
cp $BUILD_DIR/src/litoreum-cli docker/bin/
cp $BUILD_DIR/src/litoreum-tx docker/bin/
strip docker/bin/litoreumd
strip docker/bin/litoreum-cli
strip docker/bin/litoreum-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
