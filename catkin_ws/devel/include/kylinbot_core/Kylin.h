// Generated by gencpp from file kylinbot_core/Kylin.msg
// DO NOT EDIT!


#ifndef KYLINBOT_CORE_MESSAGE_KYLIN_H
#define KYLINBOT_CORE_MESSAGE_KYLIN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kylinbot_core/CBUS.h>

namespace kylinbot_core
{
template <class ContainerAllocator>
struct Kylin_
{
  typedef Kylin_<ContainerAllocator> Type;

  Kylin_()
    : frame_id(0)
    , cbus()  {
    }
  Kylin_(const ContainerAllocator& _alloc)
    : frame_id(0)
    , cbus(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _frame_id_type;
  _frame_id_type frame_id;

   typedef  ::kylinbot_core::CBUS_<ContainerAllocator>  _cbus_type;
  _cbus_type cbus;




  typedef boost::shared_ptr< ::kylinbot_core::Kylin_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kylinbot_core::Kylin_<ContainerAllocator> const> ConstPtr;

}; // struct Kylin_

typedef ::kylinbot_core::Kylin_<std::allocator<void> > Kylin;

typedef boost::shared_ptr< ::kylinbot_core::Kylin > KylinPtr;
typedef boost::shared_ptr< ::kylinbot_core::Kylin const> KylinConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kylinbot_core::Kylin_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kylinbot_core::Kylin_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kylinbot_core

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'kylinbot_core': ['/home/bj/workspace/ros/KylinROS/catkin_ws/src/kylinbot_core/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kylinbot_core::Kylin_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kylinbot_core::Kylin_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kylinbot_core::Kylin_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kylinbot_core::Kylin_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kylinbot_core::Kylin_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kylinbot_core::Kylin_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kylinbot_core::Kylin_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7131cdc32dd59ffa695dfef23c1bbcb8";
  }

  static const char* value(const ::kylinbot_core::Kylin_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7131cdc32dd59ffaULL;
  static const uint64_t static_value2 = 0x695dfef23c1bbcb8ULL;
};

template<class ContainerAllocator>
struct DataType< ::kylinbot_core::Kylin_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kylinbot_core/Kylin";
  }

  static const char* value(const ::kylinbot_core::Kylin_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kylinbot_core::Kylin_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 frame_id\n\
CBUS cbus\n\
\n\
================================================================================\n\
MSG: kylinbot_core/CBUS\n\
uint32 fs\n\
int16 px\n\
int16 py\n\
int16 pz\n\
int16 pe\n\
int16 pc\n\
int16 vx\n\
int16 vy\n\
int16 vz\n\
int16 ve\n\
int16 vc\n\
";
  }

  static const char* value(const ::kylinbot_core::Kylin_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kylinbot_core::Kylin_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.frame_id);
      stream.next(m.cbus);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Kylin_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kylinbot_core::Kylin_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kylinbot_core::Kylin_<ContainerAllocator>& v)
  {
    s << indent << "frame_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.frame_id);
    s << indent << "cbus: ";
    s << std::endl;
    Printer< ::kylinbot_core::CBUS_<ContainerAllocator> >::stream(s, indent + "  ", v.cbus);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KYLINBOT_CORE_MESSAGE_KYLIN_H
