#!/bin/bash
gnome-screenshot
source params.sh
cd store

rosrun map_server map_saver -f `echo $WORLD`_`echo $TYPE`_`echo $RUN`_r1 map:=/robot_1/map
rosrun map_server map_saver -f `echo $WORLD`_`echo $TYPE`_`echo $RUN`_r2 map:=/robot_2/map
rosrun map_server map_saver -f `echo $WORLD`_`echo $TYPE`_`echo $RUN`_r3 map:=/robot_3/map
rosrun map_server map_saver -f `echo $WORLD`_`echo $TYPE`_`echo $RUN`_merged map:=/merged_map
rostopic pub -r 1 /frontier/finished std_msgs/Bool 'True'
