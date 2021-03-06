// Generated by gencpp from file phoxi_camera/DeviceInformation.msg
// DO NOT EDIT!


#ifndef PHOXI_CAMERA_MESSAGE_DEVICEINFORMATION_H
#define PHOXI_CAMERA_MESSAGE_DEVICEINFORMATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <phoxi_camera/DeviceType.h>
#include <phoxi_camera/DeviceConnectionStatus.h>

namespace phoxi_camera
{
template <class ContainerAllocator>
struct DeviceInformation_
{
  typedef DeviceInformation_<ContainerAllocator> Type;

  DeviceInformation_()
    : name()
    , type()
    , hwIdentification()
    , IPaddress()
    , status()
    , firmwareVersion()  {
    }
  DeviceInformation_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , type(_alloc)
    , hwIdentification(_alloc)
    , IPaddress(_alloc)
    , status(_alloc)
    , firmwareVersion(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef  ::phoxi_camera::DeviceType_<ContainerAllocator>  _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _hwIdentification_type;
  _hwIdentification_type hwIdentification;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _IPaddress_type;
  _IPaddress_type IPaddress;

   typedef  ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _firmwareVersion_type;
  _firmwareVersion_type firmwareVersion;





  typedef boost::shared_ptr< ::phoxi_camera::DeviceInformation_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::phoxi_camera::DeviceInformation_<ContainerAllocator> const> ConstPtr;

}; // struct DeviceInformation_

typedef ::phoxi_camera::DeviceInformation_<std::allocator<void> > DeviceInformation;

typedef boost::shared_ptr< ::phoxi_camera::DeviceInformation > DeviceInformationPtr;
typedef boost::shared_ptr< ::phoxi_camera::DeviceInformation const> DeviceInformationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::phoxi_camera::DeviceInformation_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::phoxi_camera::DeviceInformation_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::phoxi_camera::DeviceInformation_<ContainerAllocator1> & lhs, const ::phoxi_camera::DeviceInformation_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.type == rhs.type &&
    lhs.hwIdentification == rhs.hwIdentification &&
    lhs.IPaddress == rhs.IPaddress &&
    lhs.status == rhs.status &&
    lhs.firmwareVersion == rhs.firmwareVersion;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::phoxi_camera::DeviceInformation_<ContainerAllocator1> & lhs, const ::phoxi_camera::DeviceInformation_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace phoxi_camera

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::DeviceInformation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::DeviceInformation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::DeviceInformation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::DeviceInformation_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::DeviceInformation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::DeviceInformation_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::phoxi_camera::DeviceInformation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0b0bc4d79cc2229b2b1a6277b66a3576";
  }

  static const char* value(const ::phoxi_camera::DeviceInformation_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0b0bc4d79cc2229bULL;
  static const uint64_t static_value2 = 0x2b1a6277b66a3576ULL;
};

template<class ContainerAllocator>
struct DataType< ::phoxi_camera::DeviceInformation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "phoxi_camera/DeviceInformation";
  }

  static const char* value(const ::phoxi_camera::DeviceInformation_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::phoxi_camera::DeviceInformation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"phoxi_camera/DeviceType type\n"
"string hwIdentification\n"
"string IPaddress\n"
"phoxi_camera/DeviceConnectionStatus status\n"
"string firmwareVersion\n"
"================================================================================\n"
"MSG: phoxi_camera/DeviceType\n"
"int32 type\n"
"int32 PhoXiScanner = 0\n"
"int32 PhoXiCamera = 1\n"
"int32 NoValue = 3\n"
"================================================================================\n"
"MSG: phoxi_camera/DeviceConnectionStatus\n"
"int32 status\n"
"int32 Unknown = 0\n"
"int32 Ready = 1\n"
"int32 Occupied = 2\n"
"int32 Starting = 3\n"
;
  }

  static const char* value(const ::phoxi_camera::DeviceInformation_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::phoxi_camera::DeviceInformation_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.type);
      stream.next(m.hwIdentification);
      stream.next(m.IPaddress);
      stream.next(m.status);
      stream.next(m.firmwareVersion);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DeviceInformation_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::phoxi_camera::DeviceInformation_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::phoxi_camera::DeviceInformation_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "type: ";
    s << std::endl;
    Printer< ::phoxi_camera::DeviceType_<ContainerAllocator> >::stream(s, indent + "  ", v.type);
    s << indent << "hwIdentification: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.hwIdentification);
    s << indent << "IPaddress: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.IPaddress);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::phoxi_camera::DeviceConnectionStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "firmwareVersion: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.firmwareVersion);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PHOXI_CAMERA_MESSAGE_DEVICEINFORMATION_H
