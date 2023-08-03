import rospy
from std_msgs.msg import String, Bool



def sensor_value_callback(msg):
    global previous_state
    current_state = msg.data

    if current_state == "0" and previous_state == "1":
        rospy.loginfo("Sensor state changed from 1 to 0")
        
        # Update the numeric value and publish it
        conveyor_state = False  # Replace 42 with the desired updated value
        pub_state.publish(conveyor_state)
    elif current_state == "1" and previous_state == "0":
        rospy.loginfo("Sensor state changed from 0 to 1")
        
        # Update the numeric value and publish it
        conveyor_state = True  # Replace 42 with the desired updated value
        pub_state.publish(conveyor_state)

    previous_state = current_state


def main():
    global previous_state
    global pub_state
    previous_state = "1"  # Initialize previous_state to 0

    rospy.init_node('main_app_node', anonymous=True)

    # Create a ROS subscriber for the "sensor_value_topic".
    rospy.Subscriber("conv_sensor_state_topic", String, sensor_value_callback)

    # Create a ROS publisher for the numeric value topic.
    pub_state = rospy.Publisher("conveyor_state_topic", Bool, queue_size=10)

    # Enter the ROS event loop
    rospy.spin()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass