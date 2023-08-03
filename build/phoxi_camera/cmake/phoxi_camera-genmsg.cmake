# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "phoxi_camera: 5 messages, 15 services")

set(MSG_I_FLAGS "-Iphoxi_camera:/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(phoxi_camera_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg" "phoxi_camera/DeviceConnectionStatus:phoxi_camera/DeviceType"
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv" "phoxi_camera/DeviceConnectionStatus:phoxi_camera/DeviceInformation:phoxi_camera/DeviceType"
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv" "phoxi_camera/PhoXiSize"
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv" ""
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv" "geometry_msgs/Transform:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv" NAME_WE)
add_custom_target(_phoxi_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "phoxi_camera" "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_msg_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_msg_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_msg_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_msg_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)

### Generating Services
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_cpp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
)

### Generating Module File
_generate_module_cpp(phoxi_camera
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(phoxi_camera_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(phoxi_camera_generate_messages phoxi_camera_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_cpp _phoxi_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phoxi_camera_gencpp)
add_dependencies(phoxi_camera_gencpp phoxi_camera_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phoxi_camera_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_msg_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_msg_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_msg_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_msg_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)

### Generating Services
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)
_generate_srv_eus(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
)

### Generating Module File
_generate_module_eus(phoxi_camera
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(phoxi_camera_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(phoxi_camera_generate_messages phoxi_camera_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_eus _phoxi_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phoxi_camera_geneus)
add_dependencies(phoxi_camera_geneus phoxi_camera_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phoxi_camera_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_msg_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_msg_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_msg_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_msg_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)

### Generating Services
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)
_generate_srv_lisp(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
)

### Generating Module File
_generate_module_lisp(phoxi_camera
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(phoxi_camera_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(phoxi_camera_generate_messages phoxi_camera_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_lisp _phoxi_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phoxi_camera_genlisp)
add_dependencies(phoxi_camera_genlisp phoxi_camera_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phoxi_camera_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_msg_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_msg_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_msg_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_msg_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)

### Generating Services
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)
_generate_srv_nodejs(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
)

### Generating Module File
_generate_module_nodejs(phoxi_camera
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(phoxi_camera_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(phoxi_camera_generate_messages phoxi_camera_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_nodejs _phoxi_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phoxi_camera_gennodejs)
add_dependencies(phoxi_camera_gennodejs phoxi_camera_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phoxi_camera_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_msg_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_msg_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_msg_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_msg_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)

### Generating Services
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg;/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv"
  "${MSG_I_FLAGS}"
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)
_generate_srv_py(phoxi_camera
  "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
)

### Generating Module File
_generate_module_py(phoxi_camera
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(phoxi_camera_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(phoxi_camera_generate_messages phoxi_camera_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv" NAME_WE)
add_dependencies(phoxi_camera_generate_messages_py _phoxi_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(phoxi_camera_genpy)
add_dependencies(phoxi_camera_genpy phoxi_camera_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS phoxi_camera_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/phoxi_camera
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(phoxi_camera_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(phoxi_camera_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(phoxi_camera_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/phoxi_camera
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(phoxi_camera_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(phoxi_camera_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(phoxi_camera_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/phoxi_camera
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(phoxi_camera_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(phoxi_camera_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(phoxi_camera_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/phoxi_camera
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(phoxi_camera_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(phoxi_camera_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(phoxi_camera_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/phoxi_camera
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(phoxi_camera_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(phoxi_camera_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(phoxi_camera_generate_messages_py geometry_msgs_generate_messages_py)
endif()
