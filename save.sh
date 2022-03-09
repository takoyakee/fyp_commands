#!/bin/bash
source params.sh
cd store

rosrun map_server map_saver -f `echo $WORLD`_`echo $TYPE`_r1 map:=/robot_1/map
rosrun map_server map_saver -f `echo $WORLD`_`echo $TYPE`_r2 map:=/robot_2/map
rosrun map_server map_saver -f `echo $WORLD`_`echo $TYPE`_r3 map:=/robot_3/map
rosrun map_server map_saver -f `echo $WORLD`_`echo $TYPE`_merged map:=/merged_map
