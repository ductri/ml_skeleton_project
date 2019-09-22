#!/bin/bash

source docker/config.txt

docker stop "$PROJECT_NAME"_jupyter
sleep 5

./docker/jupyter.sh
