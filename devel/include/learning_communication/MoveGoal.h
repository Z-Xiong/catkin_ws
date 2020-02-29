// Generated by gencpp from file learning_communication/MoveGoal.msg
// DO NOT EDIT!


#ifndef LEARNING_COMMUNICATION_MESSAGE_MOVEGOAL_H
#define LEARNING_COMMUNICATION_MESSAGE_MOVEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace learning_communication
{
template <class ContainerAllocator>
struct MoveGoal_
{
  typedef MoveGoal_<ContainerAllocator> Type;

  MoveGoal_()
    : position(0)  {
    }
  MoveGoal_(const ContainerAllocator& _alloc)
    : position(0)  {
  (void)_alloc;
    }



   typedef uint32_t _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::learning_communication::MoveGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::learning_communication::MoveGoal_<ContainerAllocator> const> ConstPtr;

}; // struct MoveGoal_

typedef ::learning_communication::MoveGoal_<std::allocator<void> > MoveGoal;

typedef boost::shared_ptr< ::learning_communication::MoveGoal > MoveGoalPtr;
typedef boost::shared_ptr< ::learning_communication::MoveGoal const> MoveGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::learning_communication::MoveGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::learning_communication::MoveGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace learning_communication

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'learning_communication': ['/home/shawn/catkin_ws/src/learning_communication/msg', '/home/shawn/catkin_ws/devel/share/learning_communication/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::learning_communication::MoveGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::learning_communication::MoveGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::learning_communication::MoveGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::learning_communication::MoveGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::learning_communication::MoveGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::learning_communication::MoveGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::learning_communication::MoveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ba3153c9be2944c38dc20945bdf4619";
  }

  static const char* value(const ::learning_communication::MoveGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ba3153c9be2944cULL;
  static const uint64_t static_value2 = 0x38dc20945bdf4619ULL;
};

template<class ContainerAllocator>
struct DataType< ::learning_communication::MoveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "learning_communication/MoveGoal";
  }

  static const char* value(const ::learning_communication::MoveGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::learning_communication::MoveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"uint32 position\n"
"\n"
;
  }

  static const char* value(const ::learning_communication::MoveGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::learning_communication::MoveGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::learning_communication::MoveGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::learning_communication::MoveGoal_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEARNING_COMMUNICATION_MESSAGE_MOVEGOAL_H
