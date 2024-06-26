# Based on:
# http://wiki.ros.org/docker/Tutorials/GUI


IMAGE_NAME=px4_noetic_sim


xhost +local:root > /dev/null

docker run -it --rm \
    --privileged \
    --env="DISPLAY" \
    --workdir="/app" \
    --volume="/home/nidhi/PX4-Autopilot:/app/PX4-Autopilot" \
    --volume="/home/nidhi/catkin_ws:/app/catkin_ws" \
    --volume="/dev:/dev" \
    --network host \
    $IMAGE_NAME \
    "$@"

xhost -local:root > /dev/null
 
