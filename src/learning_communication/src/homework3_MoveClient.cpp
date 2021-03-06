#include <actionlib/client/simple_action_client.h>
#include "learning_communication/MoveAction.h"

typedef actionlib::SimpleActionClient<learning_communication::MoveAction> Client;

// 当action完成后会调用该回调函数一次
void doneCb(const actionlib::SimpleClientGoalState& state,
        const learning_communication::MoveResultConstPtr& result)
{
    ROS_INFO("Yay! The position reached");
    ros::shutdown();
}

// 当action激活后会调用该回调函数一次
void activeCb()
{
    ROS_INFO("Goal just went active");
}

// 收到feedback后调用该回调函数
void feedbackCb(const learning_communication::MoveFeedbackConstPtr& feedback)
{
    ROS_INFO(" percent_complete : %f ", feedback->percent_complete);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "move_client");

    // 定义一个客户端
    Client move_client("move", true);

    // 等待服务器端
    ROS_INFO("Waiting for action server to start.");
    move_client.waitForServer();
    ROS_INFO("Action server started, sending goal.");

    // 创建一个action的goal
    learning_communication::MoveGoal goal;
    goal.position = 1;

    // 发送action的goal给服务器端，并且设置回调函数
    move_client.sendGoal(goal,  &doneCb, &activeCb, &feedbackCb);

    ros::spin();

    return 0;
}

