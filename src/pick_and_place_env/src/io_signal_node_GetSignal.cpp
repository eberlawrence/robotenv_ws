#include <ros/ros.h>         // Include the ROS C++ API
#include <std_msgs/String.h> // Include the standard ROS String message
#include <abb_librws/rws_state_machine_interface.h>

int main(int argc, char *argv[])
{
  ros::init(argc, argv, "io_signal_node");
  ros::NodeHandle nh;

  // Retrive the ROS parameter for the RWS server's IP-address.
  std::string rws_ip_address = "192.168.23.6";

  // auto node = ros::Node::make_shared("io_signal_node");

  // if(!getRWSIpAddress(rws_ip_address, node))
  // {
  //   return 0;
  // }

  abb::rws::RWSInterface rws_interface(rws_ip_address);
  //----------------------------------------------------------
  // Reading/writing of an IO-signal
  //----------------------------------------------------------
  ROS_INFO("========== Reading/writing of an IO-signal sample ==========");
  std::string sensorState = "DI_sensorSignal";

  ros::Rate loop_rate(10);

  // Endless loop until Ctrl + C
  while (ros::ok())
  {
    std::string signalValue = rws_interface.getIOSignal(sensorState);
    if (signalValue.empty())
    {
      std::cout << "IO signal not found: " << sensorState << std::endl;
    }
    else
    {
      std::cout << "Value of " << sensorState << " : " << signalValue << std::endl;
    }
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}