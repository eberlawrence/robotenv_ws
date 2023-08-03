// Generated by gencpp from file phoxi_camera/GetStringRequest.msg
// DO NOT EDIT!


#ifndef PHOXI_CAMERA_MESSAGE_GETSTRINGREQUEST_H
#define PHOXI_CAMERA_MESSAGE_GETSTRINGREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace phoxi_camera
{
template <class ContainerAllocator>
struct GetStringRequest_
{
  typedef GetStringRequest_<ContainerAllocator> Type;

  GetStringRequest_()
    {
    }
  GetStringRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::phoxi_camera::GetStringRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::phoxi_camera::GetStringRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetStringRequest_

typedef ::phoxi_camera::GetStringRequest_<std::allocator<void> > GetStringRequest;

typedef boost::shared_ptr< ::phoxi_camera::GetStringRequest > GetStringRequestPtr;
typedef boost::shared_ptr< ::phoxi_camera::GetStringRequest const> GetStringRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::phoxi_camera::GetStringRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::phoxi_camera::GetStringRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace phoxi_camera

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::GetStringRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::GetStringRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::GetStringRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::GetStringRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::GetStringRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::GetStringRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::phoxi_camera::GetStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::phoxi_camera::GetStringRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::phoxi_camera::GetStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "phoxi_camera/GetStringRequest";
  }

  static const char* value(const ::phoxi_camera::GetStringRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::phoxi_camera::GetStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::phoxi_camera::GetStringRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::phoxi_camera::GetStringRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetStringRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::phoxi_camera::GetStringRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::phoxi_camera::GetStringRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // PHOXI_CAMERA_MESSAGE_GETSTRINGREQUEST_H
