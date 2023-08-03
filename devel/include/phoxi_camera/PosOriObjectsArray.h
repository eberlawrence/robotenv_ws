// Generated by gencpp from file phoxi_camera/PosOriObjectsArray.msg
// DO NOT EDIT!


#ifndef PHOXI_CAMERA_MESSAGE_POSORIOBJECTSARRAY_H
#define PHOXI_CAMERA_MESSAGE_POSORIOBJECTSARRAY_H


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
struct PosOriObjectsArray_
{
  typedef PosOriObjectsArray_<ContainerAllocator> Type;

  PosOriObjectsArray_()
    : numObj(0)
    , data()  {
    }
  PosOriObjectsArray_(const ContainerAllocator& _alloc)
    : numObj(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _numObj_type;
  _numObj_type numObj;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> const> ConstPtr;

}; // struct PosOriObjectsArray_

typedef ::phoxi_camera::PosOriObjectsArray_<std::allocator<void> > PosOriObjectsArray;

typedef boost::shared_ptr< ::phoxi_camera::PosOriObjectsArray > PosOriObjectsArrayPtr;
typedef boost::shared_ptr< ::phoxi_camera::PosOriObjectsArray const> PosOriObjectsArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator1> & lhs, const ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator2> & rhs)
{
  return lhs.numObj == rhs.numObj &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator1> & lhs, const ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace phoxi_camera

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8106a020340683775f19b85b38f5f037";
  }

  static const char* value(const ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8106a02034068377ULL;
  static const uint64_t static_value2 = 0x5f19b85b38f5f037ULL;
};

template<class ContainerAllocator>
struct DataType< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "phoxi_camera/PosOriObjectsArray";
  }

  static const char* value(const ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 numObj\n"
"float64[] data\n"
;
  }

  static const char* value(const ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.numObj);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PosOriObjectsArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::phoxi_camera::PosOriObjectsArray_<ContainerAllocator>& v)
  {
    s << indent << "numObj: ";
    Printer<int32_t>::stream(s, indent + "  ", v.numObj);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PHOXI_CAMERA_MESSAGE_POSORIOBJECTSARRAY_H