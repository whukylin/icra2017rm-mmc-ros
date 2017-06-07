// Generated by gencpp from file kylinbot_core/PosCalib.msg
// DO NOT EDIT!


#ifndef KYLINBOT_CORE_MESSAGE_POSCALIB_H
#define KYLINBOT_CORE_MESSAGE_POSCALIB_H


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
struct PosCalib_
{
  typedef PosCalib_<ContainerAllocator> Type;

  PosCalib_()
    : frame_id(0)
    , el(0)
    , eh(0)
    , cl(0)
    , ch(0)  {
    }
  PosCalib_(const ContainerAllocator& _alloc)
    : frame_id(0)
    , el(0)
    , eh(0)
    , cl(0)
    , ch(0)  {
  (void)_alloc;
    }



   typedef uint32_t _frame_id_type;
  _frame_id_type frame_id;

   typedef int16_t _el_type;
  _el_type el;

   typedef int16_t _eh_type;
  _eh_type eh;

   typedef int16_t _cl_type;
  _cl_type cl;

   typedef int16_t _ch_type;
  _ch_type ch;




  typedef boost::shared_ptr< ::kylinbot_core::PosCalib_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kylinbot_core::PosCalib_<ContainerAllocator> const> ConstPtr;

}; // struct PosCalib_

typedef ::kylinbot_core::PosCalib_<std::allocator<void> > PosCalib;

typedef boost::shared_ptr< ::kylinbot_core::PosCalib > PosCalibPtr;
typedef boost::shared_ptr< ::kylinbot_core::PosCalib const> PosCalibConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kylinbot_core::PosCalib_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kylinbot_core::PosCalib_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::kylinbot_core::PosCalib_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kylinbot_core::PosCalib_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kylinbot_core::PosCalib_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kylinbot_core::PosCalib_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kylinbot_core::PosCalib_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kylinbot_core::PosCalib_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kylinbot_core::PosCalib_<ContainerAllocator> >
{
  static const char* value()
  {
    return "908b6b2028673e85c08cdffdd515277c";
  }

  static const char* value(const ::kylinbot_core::PosCalib_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x908b6b2028673e85ULL;
  static const uint64_t static_value2 = 0xc08cdffdd515277cULL;
};

template<class ContainerAllocator>
struct DataType< ::kylinbot_core::PosCalib_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kylinbot_core/PosCalib";
  }

  static const char* value(const ::kylinbot_core::PosCalib_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kylinbot_core::PosCalib_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 frame_id\n\
int16 el\n\
int16 eh\n\
int16 cl\n\
int16 ch\n\
";
  }

  static const char* value(const ::kylinbot_core::PosCalib_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kylinbot_core::PosCalib_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.frame_id);
      stream.next(m.el);
      stream.next(m.eh);
      stream.next(m.cl);
      stream.next(m.ch);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PosCalib_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kylinbot_core::PosCalib_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kylinbot_core::PosCalib_<ContainerAllocator>& v)
  {
    s << indent << "frame_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.frame_id);
    s << indent << "el: ";
    Printer<int16_t>::stream(s, indent + "  ", v.el);
    s << indent << "eh: ";
    Printer<int16_t>::stream(s, indent + "  ", v.eh);
    s << indent << "cl: ";
    Printer<int16_t>::stream(s, indent + "  ", v.cl);
    s << indent << "ch: ";
    Printer<int16_t>::stream(s, indent + "  ", v.ch);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KYLINBOT_CORE_MESSAGE_POSCALIB_H
