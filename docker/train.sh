#!/bin/bash

source docker/config.txt

docker logs -f --timestamps $(docker run -d --runtime=nvidia -e PYTHONIOENCODING=utf-8 --name="%PROJECT_NAME"_$(date +"%y-%m-%d_%H_%M_%S") \
-v `pwd`/source/:/source \
-v `pwd`/../dataset/wiki/:/dataset:ro \
ductricse/$BACKEND /bin/bash -c "/source/scripts/train.sh")

