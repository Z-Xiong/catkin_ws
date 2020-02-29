#include <ros/ros.h>
#include <turtlesim/Pose.h>

void poseCallback(const turtlesim::Pose::ConstPtr& msg)
{
    ROS_INFO("Turtle pose: (%.2f, %.2f)", msg->x, msg->y);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pose_subscriber");

    ros::NodeHandle node;

    ros::Subscriber pos_sub = node.subscribe("/turtle2/pose", 10, poseCallback);

    ros::spin();

    return 0;
}
