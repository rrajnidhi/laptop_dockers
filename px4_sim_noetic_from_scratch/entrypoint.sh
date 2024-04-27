#!/bin/bash


printf "Entering docker tmuxinator session"
cd experiments_tmuxinator
tmuxinator start single_gazebo
printf "Now automatically exiting docker"


