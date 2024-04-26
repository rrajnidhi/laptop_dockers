#!/bin/bash


printf "Entering docker "


sleep 2


cd PX4-Autopilot
source /opt/ros/noetic/setup.bash 
source Tools/simulation/gazebo-classic/setup_gazebo.bash pwd /build_posix_sitl_default 
source Tools/simulation/gazebo-classic/setup_gazebo.bash pwd /app/PX4-Autopilot/build/px4_sitl_default 
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:/app/PX4-Autopilot 
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:/app/PX4-Autopilot/Tools/simulation/gazebo-classic/sitl_gazebo-classic 
roslaunch px4 mavros_posix_sitl.launch


