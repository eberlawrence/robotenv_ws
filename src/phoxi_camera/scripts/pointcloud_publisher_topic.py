#!/usr/bin/env python

import rospy
from sensor_msgs.msg import PointCloud2
from sensor_msgs.msg import PointField
import std_msgs.msg
import ctypes
import struct

def publish_pointcloud():
    rospy.init_node('pointcloud_publisher', anonymous=True)
    pub = rospy.Publisher('pointcloud_topic', PointCloud2, queue_size=10)

    while not rospy.is_shutdown():
        cloud_msg = PointCloud2()
        cloud_msg.header.stamp = rospy.Time.now()
        cloud_msg.header.frame_id = "map"  # Change this to your desired frame ID

        # Populate the point cloud data (replace this with your actual point cloud data)
        points = [(1.0, 2.0, 3.0), (4.0, 5.0, 6.0), (7.0, 8.0, 9.0)]  # Format: (x, y, z)
        point_step = 12  # 4 bytes for each field (x, y, z)
        data = []
        for point in points:
            data.extend(struct.pack('fff', *point))

        cloud_msg.height = 1
        cloud_msg.width = len(points)
        cloud_msg.fields.append(PointField(name="x", offset=0, datatype=PointField.FLOAT32, count=1))
        cloud_msg.fields.append(PointField(name="y", offset=4, datatype=PointField.FLOAT32, count=1))
        cloud_msg.fields.append(PointField(name="z", offset=8, datatype=PointField.FLOAT32, count=1))
        cloud_msg.point_step = point_step
        cloud_msg.row_step = cloud_msg.point_step * cloud_msg.width
        cloud_msg.is_bigendian = False
        cloud_msg.is_dense = True
        cloud_msg.data = data

        pub.publish(cloud_msg)
        rospy.sleep(1)  # Publish at 1 Hz

if __name__ == '__main__':
    try:
        publish_pointcloud()
    except rospy.ROSInterruptException:
        pass


