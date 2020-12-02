#!/bin/bash
name=$(date +"%Y%m%d_%H%M%S").db
path=~/ROS/map-dbs/$name

echo $1
roslaunch rtabmap_ros d455_rtabmap.launch

# DB_MAP speichen oder nicht::
echo "Willst du dises Map "$name" speichen?: Ja(1) / Nein(2)"
select wahl in "Ja" "Nein"; do
    case $wahl in
        Ja          ) 
            cp ~/.ros/rtabmap.db $path;
            echo "gespeichert";
            ls -l ~/ROS/map-dbs/;
            break;;
        Nein        )  
            echo "gelöst"; break;
            ls -l ~/ROS/map-dbs/;;
    esac
done