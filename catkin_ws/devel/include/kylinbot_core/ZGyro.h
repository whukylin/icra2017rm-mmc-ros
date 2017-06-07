// Generated by gencpp from file kylinbot_core/ZGyro.msg
// DO NOT EDIT!


#ifndef KYLINBOT_CORE_MESSAGE_ZGYRO_H
#define KYLINBOT_CORE_MESSAGE_ZGYRO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kylinbot_core
{
template <class ContainerAllocator>
struct ZGyro_
{
  typedef ZGyro_<ContainerAllocator> Type;

  ZGyro_()
    : frame_id(0)
    , angle(0)
    , rate(0)  {
    }
  ZGyro_(const ContainerAllocator& _alloc)
    : frame_id(0)
    , angle(0)
    , rate(0)  {
  (void)_alloc;
    }



   typedef uint32_t _frame_id_type;
  _frame_id_type frame_id;

   typedef int32_t _angle_type;
  _angle_type angle;

   typedef int16_t _rate_type;
  _rate_type rate;




  typedef boost::shared_ptr< ::kylinbot_core::ZGyro_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kylinbot_core::ZGyro_<ContainerAllocator> const> ConstPtr;

}; // struct ZGyro_

typedef ::kylinbot_core::ZGyro_<std::allocator<void> > ZGyro;

typedef boost::shared_ptr< ::kylinbot_core::ZGyro > ZGyroPtr;
typedef boost::shared_ptr< ::kylinbot_core::ZGyro const> ZGyroConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kylinbot_core::ZGyro_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kylinbot_core::ZGyro_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kylinbot_core

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'kylinbot_core': ['/home/ubuntu/workspace/ros/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kylinbot_core::ZGyro_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kylinbot_core::ZGyro_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kylinbot_core::ZGyro_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kylinbot_core::ZGyro_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kylinbot_core::ZGyro_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kylinbot_core::ZGyro_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kylinbot_core::ZGyro_<ContainerAllocator> >
{
  static const char* value()
  {
    return "81195e9fb61e7413001d7734ec5f7f5e";
  }

  static const char* value(const ::kylinbot_core::ZGyro_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x81195e9fb61e7413ULL;
  static const uint64_t static_value2 = 0x001d7734ec5f7f5eULL;
};

template<class ContainerAllocator>
struct DataType< ::kylinbot_core::ZGyro_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kylinbot_core/ZGyro";
  }

  static const char* value(const ::kylinbot_core::ZGyro_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kylinbot_core::ZGyro_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 frame_id\n\
int32 angle\n\
int16 rate\n\
";
  }

  static const char* value(const ::kylinbot_core::ZGyro_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kylinbot_core::ZGyro_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.frame_id);
      stream.next(m.angle);
      stream.next(m.rate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ZGyro_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kylinbot_core::ZGyro_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kylinbot_core::ZGyro_<ContainerAllocator>& v)
  {
    s << indent << "frame_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.frame_id);
    s << indent << "angle: ";
    Printer<int32_t>::stream(s, indent + "  ", v.angle);
    s << indent << "rate: ";
    Printer<int16_t>::stream(s, indent + "  ", v.rate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KYLINBOT_CORE_MESSAGE_ZGYRO_H
