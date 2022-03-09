#!/bin/bash
source params.sh
source devel/setup.bash
source `rospack find mrs_env_simulator`/config/init/`echo $WORLD`_`echo $TYPE`.sh 
roslaunch env_stats analyse_grid_overlap.launch
