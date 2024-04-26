IMAGE_NAME=px4_noetic_sim

 DOCKER_BUILDKIT=1 docker build --no-cache `dirname $0` -t $IMAGE_NAME --network host --rm=false --progress=plain
