# Install script for directory: /home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera

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
  include("/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/phoxi_camera/msg" TYPE FILE FILES
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PhoXiSize.msg"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceConnectionStatus.msg"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceType.msg"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/DeviceInformation.msg"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/msg/PosOriObjectsArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/phoxi_camera/srv" TYPE FILE FILES
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/Empty.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsConnected.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/Deprecated/IsAcquiring.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/ConnectCamera.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/TriggerImage.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetDeviceList.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetBool.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetFrame.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetHardwareIdentification.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetSupportedCapturingModes.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveFrame.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SaveLastFrame.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetCoordinatesSpace.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/SetTransformationMatrix.srv"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/srv/GetString.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/phoxi_camera/cmake" TYPE FILE FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/installspace/phoxi_camera-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/include/phoxi_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/share/roseus/ros/phoxi_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/share/common-lisp/ros/phoxi_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/share/gennodejs/ros/phoxi_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/lib/python3/dist-packages/phoxi_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/lib/python3/dist-packages/phoxi_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/phoxi_camera" TYPE FILE FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/include/phoxi_camera/phoxi_cameraConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/phoxi_camera" TYPE FILE FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/lib/python3/dist-packages/phoxi_camera/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/lib/python3/dist-packages/phoxi_camera/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/phoxi_camera" TYPE DIRECTORY FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/lib/python3/dist-packages/phoxi_camera/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/installspace/phoxi_camera.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/phoxi_camera/cmake" TYPE FILE FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/installspace/phoxi_camera-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/phoxi_camera/cmake" TYPE FILE FILES
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/installspace/phoxi_cameraConfig.cmake"
    "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/installspace/phoxi_cameraConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/phoxi_camera" TYPE FILE FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/phoxi_camera" TYPE PROGRAM FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/installspace/phoxi_camera_test.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/phoxi_camera" TYPE PROGRAM FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/installspace/get_poitcloud_topic.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/phoxi_camera" TYPE PROGRAM FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/installspace/pointcloud_publisher_topic.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/phoxi_camera" TYPE PROGRAM FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/build/phoxi_camera/catkin_generated/installspace/tests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_Ros_Interface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_Ros_Interface.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_Ros_Interface.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/lib/libphoxi_camera_Ros_Interface.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_Ros_Interface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_Ros_Interface.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_Ros_Interface.so"
         OLD_RPATH "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/lib:/opt/ros/noetic/lib:/opt/Photoneo/PhoXiControl-1.4.1/API/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_Ros_Interface.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_PhoXi_Interface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_PhoXi_Interface.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_PhoXi_Interface.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/devel/lib/libphoxi_camera_PhoXi_Interface.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_PhoXi_Interface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_PhoXi_Interface.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_PhoXi_Interface.so"
         OLD_RPATH "/opt/Photoneo/PhoXiControl-1.4.1/API/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libphoxi_camera_PhoXi_Interface.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/phoxi_camera" TYPE DIRECTORY FILES "/home/user/Projects/ROS_WORKSPACES/robotenv_ws/src/phoxi_camera/include/phoxi_camera/")
endif()

