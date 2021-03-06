// Generated by gencpp from file phoxi_camera/SaveLastFrame.msg
// DO NOT EDIT!


#ifndef PHOXI_CAMERA_MESSAGE_SAVELASTFRAME_H
#define PHOXI_CAMERA_MESSAGE_SAVELASTFRAME_H

#include <ros/service_traits.h>


#include <phoxi_camera/SaveLastFrameRequest.h>
#include <phoxi_camera/SaveLastFrameResponse.h>


namespace phoxi_camera
{

struct SaveLastFrame
{

typedef SaveLastFrameRequest Request;
typedef SaveLastFrameResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SaveLastFrame
} // namespace phoxi_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::phoxi_camera::SaveLastFrame > {
  static const char* value()
  {
    return "881a7419fa699b3f5ff01ccdf209643b";
  }

  static const char* value(const ::phoxi_camera::SaveLastFrame&) { return value(); }
};

template<>
struct DataType< ::phoxi_camera::SaveLastFrame > {
  static const char* value()
  {
    return "phoxi_camera/SaveLastFrame";
  }

  static const char* value(const ::phoxi_camera::SaveLastFrame&) { return value(); }
};


// service_traits::MD5Sum< ::phoxi_camera::SaveLastFrameRequest> should match
// service_traits::MD5Sum< ::phoxi_camera::SaveLastFrame >
template<>
struct MD5Sum< ::phoxi_camera::SaveLastFrameRequest>
{
  static const char* value()
  {
    return MD5Sum< ::phoxi_camera::SaveLastFrame >::value();
  }
  static const char* value(const ::phoxi_camera::SaveLastFrameRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::phoxi_camera::SaveLastFrameRequest> should match
// service_traits::DataType< ::phoxi_camera::SaveLastFrame >
template<>
struct DataType< ::phoxi_camera::SaveLastFrameRequest>
{
  static const char* value()
  {
    return DataType< ::phoxi_camera::SaveLastFrame >::value();
  }
  static const char* value(const ::phoxi_camera::SaveLastFrameRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::phoxi_camera::SaveLastFrameResponse> should match
// service_traits::MD5Sum< ::phoxi_camera::SaveLastFrame >
template<>
struct MD5Sum< ::phoxi_camera::SaveLastFrameResponse>
{
  static const char* value()
  {
    return MD5Sum< ::phoxi_camera::SaveLastFrame >::value();
  }
  static const char* value(const ::phoxi_camera::SaveLastFrameResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::phoxi_camera::SaveLastFrameResponse> should match
// service_traits::DataType< ::phoxi_camera::SaveLastFrame >
template<>
struct DataType< ::phoxi_camera::SaveLastFrameResponse>
{
  static const char* value()
  {
    return DataType< ::phoxi_camera::SaveLastFrame >::value();
  }
  static const char* value(const ::phoxi_camera::SaveLastFrameResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PHOXI_CAMERA_MESSAGE_SAVELASTFRAME_H
