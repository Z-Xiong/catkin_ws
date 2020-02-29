#include <ros/ros.h>
#include <std_msgs/String.h>

int main(int argc, char **argv)
{
    // ROS node init
    ros::init(argc, argv, "talker");

    // Create Handle
    ros::NodeHandle node;

    // Create a Pubblisher, called chatter as a topic, msgs type is string
    ros::Publisher chatter = node.advertise<std_msgs::String>("chatter", 1000);

    // Set loop rate
    ros::Rate loop_rate(10);
    
    int count=0;
    while (ros::ok())
    {
	// Init msgs
    	std_msgs::String msg;
	std::stringstream ss;
        ss << "Hello world!" << count;
        msg.data = ss.str();
	// Pubblisher msgs
        chatter.publish(msg);
        ROS_INFO("Publish msgs: %s", msg.data.c_str());

        // callback
        ros::spinOnce(); //Need while()
        // loop_rate sleep
	loop_rate.sleep();
        count++;
    }
    return 0;
}

€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€ku€ku€ku€ku€ku€ku€ku€ku€ku€ku€ku€ku€ku€ku€ku€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€kd€ku€ku€ku€ku€ku€ku€kd€kd€kd€kd€kd€kd€kd€kd€kd:qheheqqwqqqqqqqqqhei:q