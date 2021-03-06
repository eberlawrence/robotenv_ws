// Generated by gencpp from file phoxi_camera/IsConnected.msg
// DO NOT EDIT!


#ifndef PHOXI_CAMERA_MESSAGE_ISCONNECTED_H
#define PHOXI_CAMERA_MESSAGE_ISCONNECTED_H

#include <ros/service_traits.h>


#include <phoxi_camera/IsConnectedRequest.h>
#include <phoxi_camera/IsConnectedResponse.h>


namespace phoxi_camera
{

struct IsConnected
{

typedef IsConnectedRequest Request;
typedef IsConnectedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct IsConnected
} // namespace phoxi_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::phoxi_camera::IsConnected > {
  static const char* value()
  {
    return "e0cdaf65159c7f3563426650fb8d3f64";
  }

  static const char* value(const ::phoxi_camera::IsConnected&) { return value(); }
};

template<>
struct DataType< ::phoxi_camera::IsConnected > {
  static const char* value()
  {
    return "phoxi_camera/IsConnected";
  }

  static const char* value(const ::phoxi_camera::IsConnected&) { return value(); }
};


// service_traits::MD5Sum< ::phoxi_camera::IsConnectedRequest> should match
// service_traits::MD5Sum< ::phoxi_camera::IsConnected >
template<>
struct MD5Sum< ::phoxi_camera::IsConnectedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::phoxi_camera::IsConnected >::value();
  }
  static const char* value(const ::phoxi_camera::IsConnectedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::phoxi_camera::IsConnectedRequest> should match
// service_traits::DataType< ::phoxi_camera::IsConnected >
template<>
struct DataType< ::phoxi_camera::IsConnectedRequest>
{
  static const char* value()
  {
    return DataType< ::phoxi_camera::IsConnected >::value();
  }
  static const char* value(const ::phoxi_camera::IsConnectedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::phoxi_camera::IsConnectedResponse> should match
// service_traits::MD5Sum< ::phoxi_camera::IsConnected >
template<>
struct MD5Sum< ::phoxi_camera::IsConnectedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::phoxi_camera::IsConnected >::value();
  }
  static const char* value(const ::phoxi_camera::IsConnectedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::phoxi_camera::IsConnectedResponse> should match
// service_traits::DataType< ::phoxi_camera::IsConnected >
template<>
struct DataType< ::phoxi_camera::IsConnectedResponse>
{
  static const char* value()
  {
    return DataType< ::phoxi_camera::IsConnected >::value();
  }
  static const char* value(const ::phoxi_camera::IsConnectedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PHOXI_CAMERA_MESSAGE_ISCONNECTED_H
