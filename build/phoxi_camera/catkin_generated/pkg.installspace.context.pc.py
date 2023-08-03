# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/opt/Photoneo/PhoXiControl-1.4.1/API/include".split(';') if "${prefix}/include;/opt/Photoneo/PhoXiControl-1.4.1/API/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;message_runtime;std_msgs;sensor_msgs;pcl_ros;dynamic_reconfigure;diagnostic_updater;geometry_msgs;cv_bridge;eigen_conversions".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lphoxi_camera_PhoXi_Interface;-lphoxi_camera_Ros_Interface".split(';') if "-lphoxi_camera_PhoXi_Interface;-lphoxi_camera_Ros_Interface" != "" else []
PROJECT_NAME = "phoxi_camera"
PROJECT_SPACE_DIR = "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/install"
PROJECT_VERSION = "2.0.0"
