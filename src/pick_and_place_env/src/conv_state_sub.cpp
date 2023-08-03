#include <ros/ros.h>         // Include the ROS C++ API
#include <std_msgs/String.h> // Include the standard ROS String message
#include <std_msgs/Bool.h>   // Include the standard ROS Bool message
#include <abb_librws/rws_state_machine_interface.h>

std::string conveyor_port_name = "DO_ConveyorSpeedA";
std::string rws_ip_address = "192.168.23.6";
bool conveyor_state = true;

void conveyor_state_callback(const std_msgs::Bool::ConstPtr &msg)
{
  abb::rws::RWSInterface rws_interface(rws_ip_address);
  // Store the received conveyor speed in the global variable
  conveyor_state = msg->data;
  if (conveyor_state)
  {
    ROS_INFO("Conveyor ON");
    rws_interface.setIOSignal(conveyor_port_name, abb::rws::SystemConstants::IOSignals::HIGH);
  }
  else
  {
    ROS_INFO("Conveyor OFF");
    rws_interface.setIOSignal(conveyor_port_name, abb::rws::SystemConstants::IOSignals::LOW);
  }
}

int main(int argc, char *argv[])
{
  ros::init(argc, argv, "conv_state_subscriber");
  ros::NodeHandle nh;


  ros::Subscriber sub = nh.subscribe("conveyor_state_topic", 1, conveyor_state_callback);

  ROS_INFO("========== Conveyor belt state ----> Waiting for command ==========");

  ros::spin();

  return 0;
}