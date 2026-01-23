#!/bin/bash

IMAGE_NAME="iiyama/workenv"
CONTAINER_NAME="iiyama-workenv"

sudo docker build -t $IMAGE_NAME .

cd ~/
git clone git@github.com:tomosii/hierarchical-wm.git



# docker run -t -d --rm \
#     --gpus all \
#     -v ~/:/workspace \
#     -e WANDB_API_KEY=$WANDB_API_KEY \
#     -e MUJOCO_GL=egl \
#     --name $CONTAINER_NAME $IMAGE_NAME



if [ "$(sudo docker ps -q -f name=$CONTAINER_NAME)" ]; then
    sudo docker exec -t $CONTAINER_NAME bash /workspace/workenv/train.sh
else
    # sudo docker rm -f $CONTAINER_NAME || true
    sudo docker run -t -d --rm \
        --gpus all \
        -v ~/:/workspace \
        -e WANDB_API_KEY=$WANDB_API_KEY \
        --name $CONTAINER_NAME $IMAGE_NAME \
        bash /workspace/workenv/train.sh
fi

