#!/bin/bash
source params.sh
cd ~/rrt_ws && source devel/setup.bash

echo "Restarting gazebo"
rosservice call /gazebo/reset_simulation "{}"
sleep 1s
echo "Beginning exploration"
roslaunch rrt_exploration three_robots.launch


