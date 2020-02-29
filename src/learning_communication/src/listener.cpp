#include <ros/ros.h>
#include <std_msgs/String.h>

void helloCallback(const std_msgs::String& msg)
{
    ROS_INFO("Listen content is %s", msg.data.c_str());
}

int main(int argc, char **argv)
{
    // Init node
    ros::init(argc, argv, "listener");
    // Create Handle node
    ros::NodeHandle node;

    // Subscriber topic
    ros::Subscriber chatter1 = node.subscribe("chatter", 1000, helloCallback);

    ros::spin();//No need while()
  
    return 0;
}
