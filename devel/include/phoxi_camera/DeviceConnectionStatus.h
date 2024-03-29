// Generated by gencpp from file phoxi_camera/DeviceConnectionStatus.msg
// DO NOT EDIT!


#ifndef PHOXI_CAMERA_MESSAGE_DEVICECONNECTIONSTATUS_H
#define PHOXI_CAMERA_MESSAGE_DEVICECONNECTIONSTATUS_H


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
struct DeviceConnectionStatus_
{
  typedef DeviceConnectionStatus_<ContainerAllocator> Type;

  DeviceConnectionStatus_()
    : status(0)  {
    }
  DeviceConnectionStatus_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(Unknown)
  #undef Unknown
#endif
#if defined(_WIN32) && defined(Ready)
  #undef Ready
#endif
#if defined(_WIN32) && defined(Occupied)
  #undef Occupied
#endif
#if defined(_WIN32) && defined(Starting)
  #undef Starting
#endif

  enum {
    Unknown = 0,
    Ready = 1,
    Occupied = 2,
    Starting = 3,
  };


  typedef boost::shared_ptr< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> const> ConstPtr;

}; // struct DeviceConnectionStatus_

typedef ::phoxi_camera::DeviceConnectionStatus_<std::allocator<void> > DeviceConnectionStatus;

typedef boost::shared_ptr< ::phoxi_camera::DeviceConnectionStatus > DeviceConnectionStatusPtr;
typedef boost::shared_ptr< ::phoxi_camera::DeviceConnectionStatus const> DeviceConnectionStatusConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator1> & lhs, const ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator1> & lhs, const ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace phoxi_camera

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c3107e3d7b088e448117fa0903f7a92";
  }

  static const char* value(const ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c3107e3d7b088e4ULL;
  static const uint64_t static_value2 = 0x48117fa0903f7a92ULL;
};

template<class ContainerAllocator>
struct DataType< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "phoxi_camera/DeviceConnectionStatus";
  }

  static const char* value(const ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 status\n"
"int32 Unknown = 0\n"
"int32 Ready = 1\n"
"int32 Occupied = 2\n"
"int32 Starting = 3\n"
;
  }

  static const char* value(const ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DeviceConnectionStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PHOXI_CAMERA_MESSAGE_DEVICECONNECTIONSTATUS_H
