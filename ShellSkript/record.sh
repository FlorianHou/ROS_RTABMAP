#!/bin/bash

name=$(date +"%Y%m%d_%H%M%S").bag
path=~/ROS/bags/$name
echo $path

rosbag record -O $path \
        /camera/aligned_depth_to_color/camera_info \
        /camera/aligned_depth_to_color/image_raw \
        /camera/color/camera_info \
        /camera/color/image_raw \
        /camera/imu \
        /rtabmap/imu \
        /tf \
        /tf_static
