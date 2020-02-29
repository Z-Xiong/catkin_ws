# Install script for directory: /home/shawn/catkin_ws/src/learning_communication

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shawn/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/msg" TYPE FILE FILES "/home/shawn/catkin_ws/src/learning_communication/msg/Score.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/srv" TYPE FILE FILES "/home/shawn/catkin_ws/src/learning_communication/srv/AddTwoInts.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/action" TYPE FILE FILES
    "/home/shawn/catkin_ws/src/learning_communication/action/DoDishes.action"
    "/home/shawn/catkin_ws/src/learning_communication/action/Move.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/msg" TYPE FILE FILES
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/DoDishesAction.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/DoDishesActionGoal.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/DoDishesActionResult.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/DoDishesActionFeedback.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/DoDishesGoal.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/DoDishesResult.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/DoDishesFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/msg" TYPE FILE FILES
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/MoveAction.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/MoveActionGoal.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/MoveActionResult.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/MoveActionFeedback.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/MoveGoal.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/MoveResult.msg"
    "/home/shawn/catkin_ws/devel/share/learning_communication/msg/MoveFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/cmake" TYPE FILE FILES "/home/shawn/catkin_ws/build/learning_communication/catkin_generated/installspace/learning_communication-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shawn/catkin_ws/devel/include/learning_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shawn/catkin_ws/devel/share/roseus/ros/learning_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shawn/catkin_ws/devel/share/common-lisp/ros/learning_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shawn/catkin_ws/devel/share/gennodejs/ros/learning_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/shawn/catkin_ws/devel/lib/python2.7/dist-packages/learning_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/shawn/catkin_ws/devel/lib/python2.7/dist-packages/learning_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shawn/catkin_ws/build/learning_communication/catkin_generated/installspace/learning_communication.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/cmake" TYPE FILE FILES "/home/shawn/catkin_ws/build/learning_communication/catkin_generated/installspace/learning_communication-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/cmake" TYPE FILE FILES
    "/home/shawn/catkin_ws/build/learning_communication/catkin_generated/installspace/learning_communicationConfig.cmake"
    "/home/shawn/catkin_ws/build/learning_communication/catkin_generated/installspace/learning_communicationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication" TYPE FILE FILES "/home/shawn/catkin_ws/src/learning_communication/package.xml")
endif()

