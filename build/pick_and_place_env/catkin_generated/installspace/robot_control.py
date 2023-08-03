#!/usr/bin/env python3

import sys
import numpy as np
import rospy
import moveit_commander
import moveit_msgs.msg
from random import random
import tf2_ros


def get_current_joint_state(mv):
    current_joint_state = np.array(mv.get_current_joint_values())
    print("\n")
    rospy.loginfo("============================================\n")
    rospy.loginfo("======== Current robot joint state: ========\n")
    for i, joint in enumerate(current_joint_state): 
      print("Joint " + str(i + 1) + ": " + str(joint))
    print("\n")
    rospy.loginfo("============================================")
    return current_joint_state


def get_current_pose(mv):
    current_pose = mv.get_current_pose().pose
    print("\n")
    rospy.loginfo("============================================\n")
    rospy.loginfo("============ Current robot pose: ===========\n")
    print(current_pose, "\n")
    rospy.loginfo("============================================")
    return current_pose


def joint_value_func(mv, joint_value_array):
  joint_goal = joint_value_array
  mv.set_joint_value_target(joint_goal)
  plan = mv.plan()
  if plan:
    rospy.loginfo("======== Motion planning successful! =======")
  else:
    rospy.loginfo("========== Motion planning failed! =========")
  mv.go(joint_goal, wait=True)
  mv.stop()
  # moveit_commander.roscpp_shutdown()


def pose_func(mv, pos, ori):
  pose_goal = mv.get_current_pose().pose
  print("POSE GOAL ----------> ", pose_goal)
  pose_goal.position.x = float(input("position.x"))
  pose_goal.position.x = pos[0]
  pose_goal.position.y = pos[1]
  pose_goal.position.z = pos[2]
  pose_goal.orientation.x = ori[0]
  pose_goal.orientation.y = ori[1]
  pose_goal.orientation.z = ori[2]
  pose_goal.orientation.w = ori[3]
  mv.set_pose_target(pose_goal)
  mv.plan()
  mv.go(pose_goal, wait=True)
  mv.stop()
  # moveit_commander.roscpp_shutdown()

def go_to_home_position(mv):
   joint_value_func(mv, [0, 0, 0, 0, 0, 0])

def go_to_safe_position(mv):
   joint_value_func(mv, [0, 0.440393328666687, 0.20272229611873627, 0, 0.9276748895645142, 0.009913647547364235])


def main():
  rospy.init_node('move_group_robotic_arm_python_interface', anonymous=False)
  robot = moveit_commander.RobotCommander()
  scene = moveit_commander.PlanningSceneInterface()    
  move_group = moveit_commander.MoveGroupCommander("robotic_arm")
  display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory, queue_size=1)
  get_current_joint_state(move_group)
  get_current_pose(move_group)

  joint_value_func(move_group, [0, 0, 0, 0, 0, 0])
  go_to_safe_position(move_group)


if __name__ == '__main__':
  try:
    main()
  except rospy.ROSInterruptException:
    pass


