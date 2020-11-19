#!/bin/bash
name=$(date +"%Y%m%d_%H%M%S").db
path=~/ROS/map-dbs/$name

roslaunch rtabmap_ros d455_rtabmap.launch

cp ~/.ros/rtabmap.db $path
ls -l ~/ROS/map-dbs/