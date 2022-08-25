mkdir -p catkin_ws/src
cd catkin_ws/src/
catkin_init_workspace
cd ..
catkin_make
echo Make default workspace ok...

sleep 1
source devel/setup.bash
echo Souce the ros package path: $ROS_PACKAGE_PATH

cd src
read -r -p "Input the package name:(default dependecies: std_msgs rospy roscpp)" package
catkin_create_pkg $package std_msgs rospy roscpp

echo Show package: $package depends1...
rospack depends1 $packeage
