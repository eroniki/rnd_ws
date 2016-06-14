#!/bin/sh

export ROS_MASTER_URI=http://$1:11311
export ROS_IP=`ifconfig wlan0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
export ROS_HOSTNAME=$ROS_IP

echo "ROS_MASTER_URI:" $ROS_MASTER_URI
echo "ROS_HOSTNAME:" $ROS_HOSTNAME
echo "ROS_IP:" $ROS_IP
