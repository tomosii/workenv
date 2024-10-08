#!/bin/bash

IMAGE_NAME="iiyama/workenv"
CONTAINER_NAME="iiyama-workenv"

CMD="/bin/bash" 

docker run -t -d --rm \
    --gpus all \
    -v ~/:/workspace \
    -e WANDB_API_KEY=$WANDB_API_KEY \
    --name $CONTAINER_NAME $IMAGE_NAME
