#!/bin/bash
source devel/setup.bash

#To change RUN_MAX, TYPE and worlds e.g. for all environments:
# declare -a worlds=("blocks" "maze" "office" "warehouse")
export RUN_MAX="1"
#export TYPE="near"
#export TYPE="far"

declare -a worlds=("blocks")
for world in "${worlds[@]}"
do
	export WORLD=$world
	for ((i = 1; i <= $RUN_MAX; ++i))
	do
		echo "$WORLD $TYPE $i"
		export RUN=$i
		source `rospack find mrs_env_simulator`/config/init/`echo $WORLD`_`echo $TYPE`.sh 
		roslaunch env_stats analyse_grid_overlap.launch
	done
done

