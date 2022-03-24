#!/bin/bash
source params.sh
source devel/setup.bash
roslaunch fyp_api performance_evaluation.launch env_used:=`echo $WORLD` type:=`echo $TYPE` run:=`echo $RUN` 
