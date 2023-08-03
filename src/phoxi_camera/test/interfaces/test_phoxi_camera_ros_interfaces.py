#!/usr/bin/env python

"""
this testing script calls all services of phoxi_camera node
"""
PKG = 'phoxi_camera'

from unittest import TestCase
from config import *
import rospy, time
import std_srvs.srv
import sensor_msgs.msg
import geometry_msgs.msg._Transform as transform
# from ros_utils import *
import phoxi_camera.srv as phoxi_camera_srv

published_topics_num = 0


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


class Test_phoxi_camera_ros_interface(TestCase):
    # @classmethod
    # def setUpClass(cls):
    #     time.sleep(5)

    def setUp(self):
        rospy.init_node('Test_ROS_interfaces')
        connect()

    def tearDown(self):
        disconnect()

    def test_getDeviceList(self):
        srv = rospy.ServiceProxy(service.get_device_list, phoxi_camera_srv.GetDeviceList)
        response = srv()

        assert True == response.success
        assert "Ok" == response.message
        assert 0 != response.len
        print("Achievable cameras, you can check them, it must be equal to reality:")
        print(response.out)

    def test_connect_disconnectCamera(self):
        srv_connect = rospy.ServiceProxy(service.connect_camera, phoxi_camera_srv.ConnectCamera)
        srv_dicsonnect = rospy.ServiceProxy(service.disconnect_camera, std_srvs.srv.Empty)
        srv_connected = rospy.ServiceProxy(service.is_connected, phoxi_camera_srv.IsConnected)

        # connect
        response = srv_connect(camera_id)

        assert True == response.success
        assert "Ok" == response.message

        response = srv_connected()
        assert True == response.connected

        # disconnect
        srv_dicsonnect()

        response = srv_connected()
        assert False == response.connected

    def test_isConnected(self):
        # disconnected
        disconnect()
        srv_connected = rospy.ServiceProxy(service.is_connected, phoxi_camera_srv.IsConnected)
        res = srv_connected()

        assert False == res.connected

        # connected
        connect()
        res = srv_connected()

        assert True == res.connected

    def test_isConnectedV2(self):
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

    def test_isAcquiring(self):
        srv_acquiring = rospy.ServiceProxy(service.is_acquiring, phoxi_camera_srv.IsAcquiring)
        res = srv_acquiring()

        assert True == res.is_acquiring

        disconnect()
        res = srv_acquiring()

        assert False == res.is_acquiring

    def test_isAcquiringV2(self):
        srv_acquiring = rospy.ServiceProxy(service.V2_is_acquiring, phoxi_camera_srv.GetBool)
        res = srv_acquiring()

        assert True == res.value
        assert True == res.success
        assert "Ok" == res.message

        disconnect()
        res = srv_acquiring()

        assert False == res.value
        assert True == res.success
        assert "Ok" == res.message

    def test_startAcquisition(self):
        srv_startAcq = rospy.ServiceProxy(service.start_acquisition, std_srvs.srv.Empty)
        srv_startAcq()

        # check acquisition setting
        srv_acquiring = rospy.ServiceProxy(service.V2_is_acquiring, phoxi_camera_srv.GetBool)
        res = srv_acquiring()
        assert True == res.value

    def test_stopAcquisition(self):
        srv_stopAcq = rospy.ServiceProxy(service.stop_acquisition, std_srvs.srv.Empty)
        srv_stopAcq()

        # check acquisition setting
        srv_acquiring = rospy.ServiceProxy(service.V2_is_acquiring, phoxi_camera_srv.GetBool)
        res = srv_acquiring()
        assert False == res.value

    def test_startAcquisitionV2(self):
        srv_startAcq = rospy.ServiceProxy(service.V2_start_acquisition, phoxi_camera_srv.Empty)
        res = srv_startAcq()

        assert True == res.success
        assert "Ok" == res.message

        # check acquisition setting
        srv_acquiring = rospy.ServiceProxy(service.V2_is_acquiring, phoxi_camera_srv.GetBool)
        res = srv_acquiring()
        assert True == res.value

    def test_stopAcquisitionV2(self):
        srv_stopAcq = rospy.ServiceProxy(service.V2_stop_acquisition, phoxi_camera_srv.Empty)
        res = srv_stopAcq()

        assert True == res.success
        assert "Ok" == res.message

        # check acquisition setting
        srv_acquiring = rospy.ServiceProxy(service.V2_is_acquiring, phoxi_camera_srv.GetBool)
        res = srv_acquiring()
        assert False == res.value

    def test_triggerImage(self):
        srv_trig = rospy.ServiceProxy(service.trigger_image, phoxi_camera_srv.TriggerImage)
        res = srv_trig()

        assert True == res.success
        assert "Ok" == res.message

        # disconnected
        disconnect()
        res = srv_trig()

        assert False == res.success
        assert "Ok" != res.message

    def test_getFrame(self):
        global published_topics_num
        import time

        def callback(data):
            global published_topics_num
            published_topics_num = published_topics_num + 1

        # create subscribers
        rospy.Subscriber(topic.point_cloud, sensor_msgs.msg.PointCloud2, callback)
        rospy.Subscriber(topic.normal_map, sensor_msgs.msg.Image, callback)
        rospy.Subscriber(topic.confidence_map, sensor_msgs.msg.Image, callback)
        rospy.Subscriber(topic.texture, sensor_msgs.msg.Image, callback)

        srv_getFrame = rospy.ServiceProxy(service.get_frame, phoxi_camera_srv.GetFrame)
        res = srv_getFrame(-1)
        time.sleep(5)

        assert True == res.success
        assert "Ok" == res.message
        assert published_topics_num == 4, "Some topic was not published after get_frame service"
        # disconnected
        disconnect()
        res = srv_getFrame(-1)

        assert False == res.success
        assert "Ok" != res.message

    def test_saveFrame(self):
        import os
        path = os.getcwd()  # it should be ~/.ros
        filename = "/file.ply"
        os.system("rm -f " + path + filename)  # remove old file

        dir = os.listdir(path)

        srv_saveFrame = rospy.ServiceProxy(service.save_frame, phoxi_camera_srv.SaveFrame)
        res = srv_saveFrame(-1, path + filename)

        dir = set(os.listdir(path)) - set(dir)
        assert len(dir) != 0
        assert True == res.success
        assert "Ok" == res.message

        os.system("rm -f " + path + filename)  # remove created file

    def test_getHardwareIdentification(self):
        # connected
        srv_getHardware = rospy.ServiceProxy(service.get_hardware_indentification,
                                             phoxi_camera_srv.GetHardwareIdentification)
        res = srv_getHardware()

        assert camera_id == res.hardware_identification
        assert True == res.success
        assert "Ok" == res.message

        # disconnect
        disconnect()
        res = srv_getHardware()

        assert "" == res.hardware_identification
        assert False == res.success
        assert "Ok" != res.message

    def test_getSupportedCapturingModes(self):
        # connected
        srv_getModes = rospy.ServiceProxy(service.get_supported_capturing_modes,
                                          phoxi_camera_srv.GetSupportedCapturingModes)
        res = srv_getModes()

        assert len(res.supported_capturing_modes) != 0
        assert True == res.success
        assert "Ok" == res.message

        # disconnect
        disconnect()
        res = srv_getModes()

        assert len(res.supported_capturing_modes) == 0
        assert False == res.success
        assert "Ok" != res.message

    def test_setCoordianteSpace(self):
        srv_setSpace = rospy.ServiceProxy(service.V2_set_coordinate_space, phoxi_camera_srv.SetCoordinatesSpace)

        # NoValue = 0, CameraSpace = 1, MarkerSpace = 3, RobotSpace = 4, CustomSpace = 5
        res = srv_setSpace(0)
        assert True == res.success
        assert "Ok" == res.message

        res = srv_setSpace(1)
        assert True == res.success
        assert "Ok" == res.message

        res = srv_setSpace(2)
        assert True == res.success
        assert "Ok" == res.message

        res = srv_setSpace(3)
        assert True == res.success
        assert "Ok" == res.message

        res = srv_setSpace(4)
        assert True == res.success
        assert "Ok" == res.message

        res = srv_setSpace(5)
        assert True == res.success
        assert "Ok" == res.message

    def test_setTransformation(self):
        srv_transform = rospy.ServiceProxy(service.V2_set_transformation, phoxi_camera_srv.SetTransformationMatrix)

        trans = transform.Transform()
        res = srv_transform(trans, 4, True, False)
        assert True == res.success
        assert "Ok" == res.message

    def test_saveLastFrameV2(self):
        import os

        # trigger image has to be perform before
        srv_trig = rospy.ServiceProxy(service.trigger_image, phoxi_camera_srv.TriggerImage)
        res = srv_trig()
        time.sleep(5)       #TODO  SCAN-904

        # save last frame service
        srv_saveLastFrame = rospy.ServiceProxy(service.V2_save_last_frame, phoxi_camera_srv.SaveLastFrame)

        path = os.getcwd() + '/'
        filenames = ["file.ply", "file.praw", "file.ptx"]
        os.system("rm -f " + path + "*.ply " + path + "*.praw " + path + "*.ptx")  # remove old file if exist

        for file in filenames:
            dir = os.listdir(path) # record files in directory

            res = srv_saveLastFrame(path + file)

            dir = set(os.listdir(path)) - set(dir)
            assert dir.pop() == file
            assert True == res.success
            assert "Ok" == res.message
            os.system("rm -f " + path + file)  # remove created file


if __name__ == '__main__':
    import rostest

    rostest.rosrun(PKG, 'Test_ROS_interface_class', Test_phoxi_camera_ros_interface)
