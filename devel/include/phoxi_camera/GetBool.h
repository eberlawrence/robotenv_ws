// Generated by gencpp from file phoxi_camera/GetBool.msg
// DO NOT EDIT!


#ifndef PHOXI_CAMERA_MESSAGE_GETBOOL_H
#define PHOXI_CAMERA_MESSAGE_GETBOOL_H

#include <ros/service_traits.h>


#include <phoxi_camera/GetBoolRequest.h>
#include <phoxi_camera/GetBoolResponse.h>


namespace phoxi_camera
{

struct GetBool
{

typedef GetBoolRequest Request;
typedef GetBoolResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetBool
} // namespace phoxi_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::phoxi_camera::GetBool > {
  static const char* value()
  {
    return "f8b1dd5c3d74b02494854ae2cb789829";
  }

  static const char* value(const ::phoxi_camera::GetBool&) { return value(); }
};

template<>
struct DataType< ::phoxi_camera::GetBool > {
  static const char* value()
  {
    return "phoxi_camera/GetBool";
  }

  static const char* value(const ::phoxi_camera::GetBool&) { return value(); }
};


// service_traits::MD5Sum< ::phoxi_camera::GetBoolRequest> should match
// service_traits::MD5Sum< ::phoxi_camera::GetBool >
template<>
struct MD5Sum< ::phoxi_camera::GetBoolRequest>
{
  static const char* value()
  {
    return MD5Sum< ::phoxi_camera::GetBool >::value();
  }
  static const char* value(const ::phoxi_camera::GetBoolRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::phoxi_camera::GetBoolRequest> should match
// service_traits::DataType< ::phoxi_camera::GetBool >
template<>
struct DataType< ::phoxi_camera::GetBoolRequest>
{
  static const char* value()
  {
    return DataType< ::phoxi_camera::GetBool >::value();
  }
  static const char* value(const ::phoxi_camera::GetBoolRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::phoxi_camera::GetBoolResponse> should match
// service_traits::MD5Sum< ::phoxi_camera::GetBool >
template<>
struct MD5Sum< ::phoxi_camera::GetBoolResponse>
{
  static const char* value()
  {
    return MD5Sum< ::phoxi_camera::GetBool >::value();
  }
  static const char* value(const ::phoxi_camera::GetBoolResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::phoxi_camera::GetBoolResponse> should match
// service_traits::DataType< ::phoxi_camera::GetBool >
template<>
struct DataType< ::phoxi_camera::GetBoolResponse>
{
  static const char* value()
  {
    return DataType< ::phoxi_camera::GetBool >::value();
  }
  static const char* value(const ::phoxi_camera::GetBoolResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PHOXI_CAMERA_MESSAGE_GETBOOL_H
