#include <ros/ros.h>
#include <turtlesim/Spawn.h>

int main(int argc, char **argv)
{
    // init node
    ros::init(argc, argv, "turtle_spawn");

    // Create Handle
    ros::NodeHandle node;

    // Create service
    ros::service::waitForService("/spawn");
    ros::ServiceClient add_turtle = node.serviceClient<turtlesim::Spawn>("/spawn");

    // Init position
    turtlesim::Spawn init_position;
    init_position.request.x = 5.0;
    init_position.request.y = 5.0;
    init_position.request.name = "turtle2";
    
    //Request Service
    ROS_INFO("Spawn a turtle named %s,initial position (%.2f, %.2f)", init_position.request.name.c_str(), init_position.request.x, init_position.request.y);
    add_turtle.call(init_position);

    //Repose
    ROS_INFO("Spawn %s successfully!", init_position.response.name.c_str());

    return 0;
}
