#!/bin/bash
# To get environment
source params.sh

source `rospack find mrs_env_simulator`/config/init/`echo $WORLD`_`echo $TYPE`.sh

roslaunch mrs_env_simulator env_three`echo $CODE`.launch 2>/dev/null

echo "Launched `echo $WORLD` Environment using `echo $CODE`"
