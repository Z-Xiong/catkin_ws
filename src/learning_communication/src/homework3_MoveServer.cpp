#include <actionlib/server/simple_action_server.h>
#include <learning_communication/MoveAction.h>

typedef actionlib::SimpleActionServer<learning_communication::MoveAction> Server;

void execute(const learning_communication::MoveGoalConstPtr& goal, Server* as)
{
    ros::Rate r(1);
    learning_communication::MoveFeedback feedback;

    ROS_INFO("Position %d is reaching.", goal->position);

    for (int i=1;i<=10;i++)
    {
        feedback.percent_complete = i*10;
        as->publishFeedback(feedback);
        r.sleep();
    }

    ROS_INFO("Position %d arrivided.", goal->position);
    as->setSucceeded();
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "move_server");
    ros::NodeHandle node;

    // Define a Server
    Server move_server(node, "move", boost::bind(&execute, _1, &move_server), false);

    // Start server, wait action request
    move_server.start();

    ros::spin();
    
    return 0;
}
