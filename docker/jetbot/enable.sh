#!/bin/bash

# Enable the drawbot container:
#   ./enable.sh /home/jetbot

WORKSPACE=$1
JETBOT_CAMERA=${2:-opencv_gst_camera}

# set default swap limit as unlimited
if [ -z "$JETBOT_MEMORY_SWAP" ];
then
        export JETBOT_MEMORY_SWAP=-1
fi

if [ -z "$JETBOT_MEMORY" ];
then
  export JETBOT_MEMORY=2500m
fi

sudo docker run -it -d \
      --restart always \
      --runtime nvidia \
      --network host \
      --privileged \
      --device /dev/video* \
      --volume /dev/bus/usb:/dev/bus/usb \
      --volume /tmp/argus_socket:/tmp/argus_socket \
      -p 8888:8888 \
      -v "$WORKSPACE":/workspace \
      --workdir /workspace \
      --name=drawbot \
      --memory="$JETBOT_MEMORY" \
      --memory-swap="$JETBOT_MEMORY_SWAP" \
      --env JETBOT_DEFAULT_CAMERA="$JETBOT_CAMERA" \
      drawbot:32.5.0
