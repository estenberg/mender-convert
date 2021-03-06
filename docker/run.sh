#!/bin/sh

set -e

IMAGE_NAME=mender-convert

INPUT_DIR="$(pwd)/input"
OUTPUT_DIR="$(pwd)/output"

mkdir -p $OUTPUT_DIR

docker run -it \
       --mount type=bind,source=$INPUT_DIR,target=/mender-convert/input,readonly \
       --mount type=bind,source=$OUTPUT_DIR,target=/mender-convert/output \
       --privileged=true \
       $IMAGE_NAME
