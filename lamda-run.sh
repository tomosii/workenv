#!/bin/bash

IMAGE_NAME="iiyama/workenv"
CONTAINER_NAME="iiyama-workenv"

sudo docker build -t $IMAGE_NAME .

cd ~/
git clone git@github.com:tomosii/hierarchical-wm.git



# Dataset Preparation

# wget https://iiyama-dataset.s3.us-east-1.amazonaws.com/serial_nine_rooms.tar.gz
# wget https://iiyama-dataset.s3.us-east-1.amazonaws.com/mesh_nine_rooms.tar.gz

# tar -xzf serial_nine_rooms.tar.gz
# tar -xzf mesh_nine_rooms.tar.gz

# mkdir -p ~/hierarchical-wm/src/sunta/data/
# cp -r -u ~/serial_nine_rooms ~/hierarchical-wm/src/sunta/data/
# cp -r -u ~/mesh_nine_rooms ~/hierarchical-wm/src/sunta/data/





# docker run -t -d --rm \
#     --gpus all \
#     -v ~/:/workspace \
#     -e WANDB_API_KEY=$WANDB_API_KEY \
#     -e MUJOCO_GL=egl \
#     --name $CONTAINER_NAME $IMAGE_NAME


echo -e "\nStarting container..."

if [ "$(sudo docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo -e "\nFound existing container."
    sudo docker exec -t -d -e WANDB_API_KEY=$WANDB_API_KEY $CONTAINER_NAME bash /workspace/workenv/train.sh
else
    # sudo docker rm -f $CONTAINER_NAME || true
    # sudo docker run -it --rm \
    sudo docker run -t -d --rm \
        --gpus all \
        -v ~/:/workspace \
        -e WANDB_API_KEY=$WANDB_API_KEY \
        --name $CONTAINER_NAME $IMAGE_NAME \
        bash /workspace/workenv/train.sh
        # bash
fi


echo -e "\nContainer started and running script in background..."

echo -e "\nScript finished."
