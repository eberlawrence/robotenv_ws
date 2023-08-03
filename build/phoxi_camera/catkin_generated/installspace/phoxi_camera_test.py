#!/usr/bin/env python3

#####################################################################################################
#Related to phoxi scanner
#####################################################################################################


"""
this testing script calls all services of phoxi_camera node
"""
PKG = 'phoxi_camera'
import sys
from unittest import TestCase
import numpy as np
import rospy, time
import std_srvs.srv
import sensor_msgs.msg
import sensor_msgs.point_cloud2 as pc2
import geometry_msgs.msg._Transform as transform
# from ros_utils import *
import phoxi_camera.srv as phoxi_camera_srv

published_topics_num = 0


camera_id = "2018-11-032-LC3"

node_name = "/phoxi_camera"

srv_timeout = 1

class topic:
    diagnostics         = "/diagnostics"
    confidence_map      = node_name + "/confidence_map"
    normal_map          = node_name + "/normal_map"
    param_description   = node_name + "/parameter_descriptions"
    param_update        = node_name + "/parameter_updates"
    point_cloud         = node_name + "/pointcloud"
    texture             = node_name + "/texture"

class service:
    connect_camera      = node_name + "/connect_camera"
    disconnect_camera   = node_name + "/disconnect_camera"
    get_device_list     = node_name + "/get_device_list"
    get_frame           = node_name + "/get_frame"
    get_hardware_indentification = node_name + "/get_hardware_indentification"
    get_loggers         = node_name + "/get_loggers"
    get_supported_capturing_modes = node_name + "/get_supported_capturing_modes"
    is_acquiring        = node_name + "/is_acquiring"
    is_connected        = node_name + "/is_connected"
    save_frame          = node_name + "/save_frame"
    set_logger_level    = node_name + "/set_logger_level"
    set_parameters      = node_name + "/set_parameters"
    start_acquisition   = node_name + "/start_acquisition"
    stop_acquisition    = node_name + "/stop_acquisition"
    trigger_image       = node_name + "/trigger_image"
    # V2
    V2_is_acquiring         = node_name + "/V2/is_acquiring"
    V2_is_connected         = node_name + "/V2/is_connected"
    V2_set_coordinate_space = node_name + "/V2/set_coordinate_space"
    V2_set_transformation   = node_name + "/V2/set_transformation"
    V2_start_acquisition    = node_name + "/V2/start_acquisition"
    V2_stop_acquisition     = node_name + "/V2/stop_acquisition"
    V2_save_last_frame      = node_name + "/V2/save_last_frame"

class param:
    confidence          = node_name + "/confidence"
    coordinate_space    = node_name + "/coordinate_space"
    frame_id            = node_name + "/frame_id"
    resolution          = node_name + "/resolution"
    scan_multiplier     = node_name + "/scan_multiplier"
    scanner_id          = node_name + "/scanner_id"
    send_confidence_map = node_name + "/send_confidence_map"
    send_depth_map      = node_name + "/send_depth_map"
    send_normal_map     = node_name + "/send_normal_map"
    send_point_cloud    = node_name + "/send_point_cloud"
    send_texture        = node_name + "/send_texture"
    shutter_multiplier  = node_name + "/shutter_multiplier"
    timeout             = node_name + "/timeout"
    trigger_mode        = node_name + "/trigger_mode"

def connect():
    rospy.wait_for_service(service.connect_camera)
    srv_connect = rospy.ServiceProxy(service.connect_camera, phoxi_camera_srv.ConnectCamera)
    srv_connect(camera_id)
    time.sleep(1)


def disconnect():
    rospy.wait_for_service(service.disconnect_camera)
    srv_disconnect = rospy.ServiceProxy(service.disconnect_camera, std_srvs.srv.Empty)
    srv_disconnect()
    time.sleep(1)


def test_isConnectedV2():
  # disconnected
  disconnect()
  srv_connected = rospy.ServiceProxy(service.V2_is_connected, phoxi_camera_srv.GetBool)
  res = srv_connected()
  assert False == res.value
  assert True == res.success
  assert "Ok" == res.message
  # connected
  connect()
  res = srv_connected()
  assert True == res.value
  assert True == res.success
  assert "Ok" == res.message
  return res



def test_getFrame():
    import time
    srv_getFrame = rospy.ServiceProxy(service.get_frame, phoxi_camera_srv.GetFrame)
    res = srv_getFrame(-1)
    time.sleep(2)
    assert True == res.success
    assert "Ok" == res.message
    # disconnected
    print("Oi2")
    disconnect()
    res = srv_getFrame(-1)
    assert False == res.success
    assert "Ok" != res.message
    # return pointcloud

connect()
a = test_getFrame()

print(a)