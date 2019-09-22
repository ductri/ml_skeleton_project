#!/bin/bash

# PROJECT_NAME, JUPYTER_PORT, BACKEND

source docker/config.txt

docker logs -f --timestamps $(docker run --runtime=nvidia -d -e PYTHONIOENCODING=utf-8 --name="$PROJECT_NAME"_jupyter --rm \
-v `pwd`/source/:/source \
-v `pwd`/../dataset:/dataset:ro \
-p $JUPYTER_PORT:$JUPYTER_PORT \
ductricse/$BACKEND /bin/bash -c "jupyter notebook --port=$JUPYTER_PORT --allow-root --ip=0.0.0.0")
