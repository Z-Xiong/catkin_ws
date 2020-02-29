#include <ros/ros.h>
#include <learning_communication/AddTwoInts.h>

bool addCallback(learning_communication::AddTwoInts::Request &req, learning_communication::AddTwoInts::Response &res)
{
    res.sum = req.a + req.b;
    ROS_INFO("Request a=%ld, b=%ld", (long int)req.a, (long int)req.b);
    ROS_INFO("Sending back response:%ld", (long int)res.sum);

    return true;
}



int main(int argc, char** argv)
{
    // Initial node
    ros::init(argc, argv, "server");

    // Create handle
    ros::NodeHandle node;

    // Create server and callback
    ros::ServiceServer chatter2 = node.advertiseService("/add", addCallback);

    // Wait service
    ROS_INFO("Ready to receive request.");
    ros::spin();

    return 0;
}
