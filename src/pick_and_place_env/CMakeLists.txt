cmake_minimum_required(VERSION 3.0.2)
project(pick_and_place_env)


# # Default to C99
# if(NOT CMAKE_C_STANDARD)
#   set(CMAKE_C_STANDARD 99)
# endif()

# # Default to C++14
# if(NOT CMAKE_CXX_STANDARD)
#   set(CMAKE_CXX_STANDARD 14)
# endif()

find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  roscpp
)
find_package(abb_librws REQUIRED)

find_package(Poco 1.4.3 REQUIRED COMPONENTS Foundation Net Util XML NetSSL)


catkin_package(
)


set(POCO_LIBRARY_DIR "/usr/lib/x86_64-linux-gnu")
set(POCO_INCLUDE_DIR "/usr/include/Poco")

set(POCO_LIBS
  "${POCO_LIBRARY_DIR}/libPocoFoundation.so"
  "${POCO_LIBRARY_DIR}/libPocoNet.so"
  "${POCO_LIBRARY_DIR}/libPocoUtil.so"
  "${POCO_LIBRARY_DIR}/libPocoXML.so"
  "${POCO_LIBRARY_DIR}/libPocoNetSSL.so"
)

set(RWS_LIBRARY_DIR "/usr/local/lib")
set(RWS_INCLUDE_DIR "/usr/local/include/abb_librws")

set(RWS_LIBS
  "${RWS_LIBRARY_DIR}/libabb_librws.so"
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
  ${POCO_INCLUDE_DIR}
  ${RWS_INCLUDE_DIR}
)

link_directories(
  ${catkin_LIBRARIES}
  ${POCO_LIBRARY_DIR}
  ${RWS_LIBRARY_DIR}
)


add_executable(io_signal_node_SetSignal src/io_signal_node_SetSignal.cpp)
target_link_libraries(
  io_signal_node_SetSignal
  ${catkin_LIBRARIES}
  ${POCO_LIBS}
  ${RWS_LIBS}
)

add_executable(io_signal_node_GetSignal src/io_signal_node_GetSignal.cpp)
target_link_libraries(
  io_signal_node_GetSignal
  ${catkin_LIBRARIES}
  ${POCO_LIBS}
  ${RWS_LIBS}
)

add_executable(conv_sensor_signal_pub src/conv_sensor_signal_pub.cpp)
target_link_libraries(
  conv_sensor_signal_pub
  ${catkin_LIBRARIES}
  ${POCO_LIBS}
  ${RWS_LIBS}
)

add_executable(conv_state_sub src/conv_state_sub.cpp)
target_link_libraries(
  conv_state_sub
  ${catkin_LIBRARIES}
  ${POCO_LIBS}
  ${RWS_LIBS}
)


catkin_install_python(PROGRAMS
  scripts/robot_test.py
  scripts/gripper_control.py
  scripts/conv_sensor_signal_sub.py
  scripts/main_script.py
  scripts/robot_control.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

