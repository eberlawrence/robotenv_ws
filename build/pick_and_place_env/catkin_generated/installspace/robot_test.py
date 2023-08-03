#!/usr/bin/env python3

import sys
import rospy
import moveit_commander
import moveit_msgs.msg
from random import random

# moveit_commander.roscpp_initialize(sys.argv)
# rospy.init_node('move_group_python_interface_tutorial', anonymous=False)

# robot = moveit_commander.RobotCommander()
# scene = moveit_commander.PlanningSceneInterface()    
# move_group = moveit_commander.MoveGroupCommander("robotic_arm")
# display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=1)

# joint_goal = move_group.get_current_joint_values()
# def joint_value_func():
#   while not rospy.is_shutdown():
#     joint_goal = [0, 0, 0, 0, 0, 0]
#     move_group.set_joint_value_target(joint_goal)
#     move_group.plan()
#     input()
#     move_group.go(joint_goal, wait=True)
#     move_group.stop()
#     # rospy.sleep(2)
#   moveit_commander.roscpp_shutdown()


# def pose_func():
#   while not rospy.is_shutdown():
#     pose_goal = move_group.get_current_pose().pose
#     print("POSE GOAL ----------> ", pose_goal)
#     pose_goal.position.x = float(input("position.x"))
#     move_group.set_pose_target(pose_goal)
#     move_group.plan()
#     move_group.go(pose_goal, wait=True)
#     move_group.stop()
#     # rospy.sleep(2)
#   moveit_commander.roscpp_shutdown()




# pose_func()
# joint_value_func()



# waypoints = []
# scale = 1.0
# while not rospy.is_shutdown():
#   wpose = move_group.get_current_pose().pose
#   print("Current pose ------> ", wpose)
#   # wpose.position.x = float(input())  # Third move sideways (y)
#   # wpose.position.x = float(0)  # Third move sideways (y)
#   # wpose.position.y = float(0)  # Third move sideways (y)
#   # wpose.position.z = float(0)  # Third move sideways (y)

#   wpose.position.x = 0.5330176426177379
#   wpose.position.y = -4.978863437213712e-05
#   wpose.position.z = 1.6150460114320628
#   wpose.orientation.x = 3.0899758831581315e-05
#   wpose.orientation.y = 4.757128362538338e-05
#   wpose.orientation.z = -4.670594834593103e-05
#   wpose.orientation.w = 0.9999999973003662

#   # We want the Cartesian path to be interpolated at a resolution of 1 cm
#   # which is why we will specify 0.01 as the eef_step in Cartesian
#   # translation.  We will disable the jump threshold by setting it to 0.0,
#   # ignoring the check for infeasible jumps in joint space, which is sufficient
#   # for this tutorial.
#   (plan, fraction) = move_group.compute_cartesian_path(
#       [wpose], 0.01, 0.0  # waypoints to follow  # eef_step
#   )  # jump_threshold

#   display_trajectory = moveit_msgs.msg.DisplayTrajectory()
#   display_trajectory.trajectory_start = robot.get_current_state()
#   display_trajectory.trajectory.append(plan)
#   # Publish
#   display_trajectory_publisher.publish(display_trajectory)
#   move_group.execute(plan, wait=True)
#   input()




import rospy
import tf2_ros
from geometry_msgs.msg import TransformStamped
from tf.transformations import quaternion_from_euler  # Import quaternion conversion function


def publish_tf():
    rospy.init_node('object_tf_broadcaster')

    tf_broadcaster = tf2_ros.TransformBroadcaster()
    i = 0
    while not rospy.is_shutdown():
        # Create a TransformStamped message
        transform_msg = TransformStamped()
        transform_msg.header.stamp = rospy.Time.now()
        transform_msg.header.frame_id = "PhoXi3Dscanner_sensor"  # Parent frame
        transform_msg.child_frame_id = "new_object_frame"  # Child frame

        # Set translation and rotation from your captured object position
        i += 0.001
        transform_msg.transform.translation.x = i
        transform_msg.transform.translation.y = 0
        transform_msg.transform.translation.z = 0
        rospy.loginfo("============================================\n")
        # Calculate quaternion from Euler angles (roll, pitch, yaw)
        quaternion = quaternion_from_euler(0, 0, 0)  # Replace with actual values
        transform_msg.transform.rotation.x = quaternion[0]
        transform_msg.transform.rotation.y = quaternion[1]
        transform_msg.transform.rotation.z = quaternion[2]
        transform_msg.transform.rotation.w = quaternion[3]

        # Publish the transformation
        tf_broadcaster.sendTransform(transform_msg)
        rospy.sleep(0.1)  # Adjust sleep duration as needed

if __name__ == '__main__':
    try:
        publish_tf()
    except rospy.ROSInterruptException:
        pass