// Generated by gencpp from file phoxi_camera/TriggerImage.msg
// DO NOT EDIT!


#ifndef PHOXI_CAMERA_MESSAGE_TRIGGERIMAGE_H
#define PHOXI_CAMERA_MESSAGE_TRIGGERIMAGE_H

#include <ros/service_traits.h>


#include <phoxi_camera/TriggerImageRequest.h>
#include <phoxi_camera/TriggerImageResponse.h>


namespace phoxi_camera
{

struct TriggerImage
{

typedef TriggerImageRequest Request;
typedef TriggerImageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TriggerImage
} // namespace phoxi_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::phoxi_camera::TriggerImage > {
  static const char* value()
  {
    return "18755a57b4bb8720dff0c94fc28df6e9";
  }

  static const char* value(const ::phoxi_camera::TriggerImage&) { return value(); }
};

template<>
struct DataType< ::phoxi_camera::TriggerImage > {
  static const char* value()
  {
    return "phoxi_camera/TriggerImage";
  }

  static const char* value(const ::phoxi_camera::TriggerImage&) { return value(); }
};


// service_traits::MD5Sum< ::phoxi_camera::TriggerImageRequest> should match
// service_traits::MD5Sum< ::phoxi_camera::TriggerImage >
template<>
struct MD5Sum< ::phoxi_camera::TriggerImageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::phoxi_camera::TriggerImage >::value();
  }
  static const char* value(const ::phoxi_camera::TriggerImageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::phoxi_camera::TriggerImageRequest> should match
// service_traits::DataType< ::phoxi_camera::TriggerImage >
template<>
struct DataType< ::phoxi_camera::TriggerImageRequest>
{
  static const char* value()
  {
    return DataType< ::phoxi_camera::TriggerImage >::value();
  }
  static const char* value(const ::phoxi_camera::TriggerImageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::phoxi_camera::TriggerImageResponse> should match
// service_traits::MD5Sum< ::phoxi_camera::TriggerImage >
template<>
struct MD5Sum< ::phoxi_camera::TriggerImageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::phoxi_camera::TriggerImage >::value();
  }
  static const char* value(const ::phoxi_camera::TriggerImageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::phoxi_camera::TriggerImageResponse> should match
// service_traits::DataType< ::phoxi_camera::TriggerImage >
template<>
struct DataType< ::phoxi_camera::TriggerImageResponse>
{
  static const char* value()
  {
    return DataType< ::phoxi_camera::TriggerImage >::value();
  }
  static const char* value(const ::phoxi_camera::TriggerImageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PHOXI_CAMERA_MESSAGE_TRIGGERIMAGE_H
