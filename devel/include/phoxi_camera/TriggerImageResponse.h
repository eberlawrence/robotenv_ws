// Generated by gencpp from file phoxi_camera/TriggerImageResponse.msg
// DO NOT EDIT!


#ifndef PHOXI_CAMERA_MESSAGE_TRIGGERIMAGERESPONSE_H
#define PHOXI_CAMERA_MESSAGE_TRIGGERIMAGERESPONSE_H


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
struct TriggerImageResponse_
{
  typedef TriggerImageResponse_<ContainerAllocator> Type;

  TriggerImageResponse_()
    : id(0)
    , message()
    , success(false)  {
    }
  TriggerImageResponse_(const ContainerAllocator& _alloc)
    : id(0)
    , message(_alloc)
    , success(false)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TriggerImageResponse_

typedef ::phoxi_camera::TriggerImageResponse_<std::allocator<void> > TriggerImageResponse;

typedef boost::shared_ptr< ::phoxi_camera::TriggerImageResponse > TriggerImageResponsePtr;
typedef boost::shared_ptr< ::phoxi_camera::TriggerImageResponse const> TriggerImageResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::phoxi_camera::TriggerImageResponse_<ContainerAllocator1> & lhs, const ::phoxi_camera::TriggerImageResponse_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.message == rhs.message &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::phoxi_camera::TriggerImageResponse_<ContainerAllocator1> & lhs, const ::phoxi_camera::TriggerImageResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace phoxi_camera

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "18755a57b4bb8720dff0c94fc28df6e9";
  }

  static const char* value(const ::phoxi_camera::TriggerImageResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x18755a57b4bb8720ULL;
  static const uint64_t static_value2 = 0xdff0c94fc28df6e9ULL;
};

template<class ContainerAllocator>
struct DataType< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "phoxi_camera/TriggerImageResponse";
  }

  static const char* value(const ::phoxi_camera::TriggerImageResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id            #id of taken scan\n"
"string message\n"
"bool success\n"
;
  }

  static const char* value(const ::phoxi_camera::TriggerImageResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.message);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TriggerImageResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::phoxi_camera::TriggerImageResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::phoxi_camera::TriggerImageResponse_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PHOXI_CAMERA_MESSAGE_TRIGGERIMAGERESPONSE_H
