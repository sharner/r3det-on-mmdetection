#!/usr/bin/env bash

docker run \
	--gpus all \
	--mount type=bind,source="/data",target=/data \
	--mount type=bind,source="$(pwd)",target=/r3det-on-mmdetection \
	--rm --ipc=host -it r3det-on-mmdetection:latest
