#!/bin/bash
source params.sh

source devel/setup.bash
echo "Restarting gazebo"
rosservice call /gazebo/reset_simulation "{}"
sleep 1s
echo "Beginning exploration"
roslaunch fyp_api 2d_exploration.launch env_used:=`echo $WORLD`

