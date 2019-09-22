#!/bin/bash

source docker/config.txt

docker logs -f --timestamps $(docker run --rm -d -e PYTHONIOENCODING=utf-8 --name="$PROJECT_NAME"_tb \
-v `pwd`/source:/source \
-p $TENSORBOARD_PORT:6006 \
ductricse/pytorch /bin/bash -c "/source/scripts/tensorboard.sh")
