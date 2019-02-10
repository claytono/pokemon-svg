#!/bin/bash -xeuv

docker rm -f svgexport || true
docker rmi -f svgexport || true

make build
make docker OUT=$(pwd)/out
make images OPTS=256:256

