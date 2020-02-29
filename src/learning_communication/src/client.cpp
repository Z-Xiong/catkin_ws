#include <ros/ros.h>
#include <learning_communication/AddTwoInts.h>

int main(int argc, char** argv)
{
    // Initial node
    ros::init(argc, argv, "client");

    // Get two int number
    if (argc!=3)
    {
        ROS_INFO("usage: add_two_ints_client X Y");
        return 1;
    }

    // Create handle
    ros::NodeHandle node;

    // Client
    ros::ServiceClient chatter1 = node.serviceClient<learning_communication::AddTwoInts>("/add");

    // Initial request data
    learning_communication::AddTwoInts data;
    data.request.a = atoll(argv[1]);
    data.request.b = atoll(argv[2]);
    
    // Request service
    ROS_INFO("Compute %ld + %ld", data.request.a, data.request.b);
    
    if (chatter1.call(data))
    {
        // Display response
        ROS_INFO("Result is %ld", data.response.sum);
    }
    else
    {
        ROS_ERROR("Failed to call service add.");
        return 1;
    }
    return 0;
}

