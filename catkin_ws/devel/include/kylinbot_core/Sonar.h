// Generated by gencpp from file kylinbot_core/Sonar.msg
// DO NOT EDIT!


#ifndef KYLINBOT_CORE_MESSAGE_SONAR_H
#define KYLINBOT_CORE_MESSAGE_SONAR_H


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
struct Sonar_
{
  typedef Sonar_<ContainerAllocator> Type;

  Sonar_()
    : frame_id(0)
    , fixed(0)
    , moble(0)
    , left(0)
    , right(0)  {
    }
  Sonar_(const ContainerAllocator& _alloc)
    : frame_id(0)
    , fixed(0)
    , moble(0)
    , left(0)
    , right(0)  {
  (void)_alloc;
    }



   typedef uint32_t _frame_id_type;
  _frame_id_type frame_id;

   typedef uint16_t _fixed_type;
  _fixed_type fixed;

   typedef uint16_t _moble_type;
  _moble_type moble;

   typedef uint16_t _left_type;
  _left_type left;

   typedef uint16_t _right_type;
  _right_type right;




  typedef boost::shared_ptr< ::kylinbot_core::Sonar_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kylinbot_core::Sonar_<ContainerAllocator> const> ConstPtr;

}; // struct Sonar_

typedef ::kylinbot_core::Sonar_<std::allocator<void> > Sonar;

typedef boost::shared_ptr< ::kylinbot_core::Sonar > SonarPtr;
typedef boost::shared_ptr< ::kylinbot_core::Sonar const> SonarConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kylinbot_core::Sonar_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kylinbot_core::Sonar_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kylinbot_core

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'kylinbot_core': ['/home/kelfor/Documents/icra2017rm-mmc-ros/catkin_ws/src/kylinbot_core/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kylinbot_core::Sonar_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kylinbot_core::Sonar_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kylinbot_core::Sonar_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kylinbot_core::Sonar_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kylinbot_core::Sonar_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kylinbot_core::Sonar_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kylinbot_core::Sonar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32e3008d8c0744f5206e9f75d97600c9";
  }

  static const char* value(const ::kylinbot_core::Sonar_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32e3008d8c0744f5ULL;
  static const uint64_t static_value2 = 0x206e9f75d97600c9ULL;
};

template<class ContainerAllocator>
struct DataType< ::kylinbot_core::Sonar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kylinbot_core/Sonar";
  }

  static const char* value(const ::kylinbot_core::Sonar_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kylinbot_core::Sonar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 frame_id\n\
uint16 fixed\n\
uint16 moble\n\
uint16 left\n\
uint16 right\n\
";
  }

  static const char* value(const ::kylinbot_core::Sonar_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kylinbot_core::Sonar_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.frame_id);
      stream.next(m.fixed);
      stream.next(m.moble);
      stream.next(m.left);
      stream.next(m.right);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Sonar_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kylinbot_core::Sonar_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kylinbot_core::Sonar_<ContainerAllocator>& v)
  {
    s << indent << "frame_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.frame_id);
    s << indent << "fixed: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.fixed);
    s << indent << "moble: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.moble);
    s << indent << "left: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.left);
    s << indent << "right: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.right);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KYLINBOT_CORE_MESSAGE_SONAR_H
