# Install script for directory: /home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/pick_and_place_env

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/pick_and_place_env/catkin_generated/installspace/pick_and_place_env.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pick_and_place_env/cmake" TYPE FILE FILES
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/pick_and_place_env/catkin_generated/installspace/pick_and_place_envConfig.cmake"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/pick_and_place_env/catkin_generated/installspace/pick_and_place_envConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pick_and_place_env" TYPE FILE FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/pick_and_place_env/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pick_and_place_env" TYPE PROGRAM FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/pick_and_place_env/catkin_generated/installspace/robot_test.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pick_and_place_env" TYPE PROGRAM FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/pick_and_place_env/catkin_generated/installspace/gripper_control.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pick_and_place_env" TYPE PROGRAM FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/pick_and_place_env/catkin_generated/installspace/conv_sensor_signal_sub.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pick_and_place_env" TYPE PROGRAM FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/pick_and_place_env/catkin_generated/installspace/main_script.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pick_and_place_env" TYPE PROGRAM FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/pick_and_place_env/catkin_generated/installspace/robot_control.py")
endif()

