#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def sensor_value_callback(msg):
    # This function will be called whenever a new message is received on the "conv_sensor_state_topic".
    # The sensor value is accessible through the 'msg' argument.

    # Print the received sensor value
    rospy.loginfo("Received sensor value: %s", msg.data)

def main():
    rospy.init_node('sensor_value_subscriber', anonymous=True)

    # Create a ROS subscriber for the "sensor_value_topic".
    rospy.Subscriber("conv_sensor_state_topic", String, sensor_value_callback)

    # Enter the ROS event loop
    rospy.spin()

if __name__ == '__main__':
    main()