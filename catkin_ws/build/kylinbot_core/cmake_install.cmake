# Install script for directory: /home/bj/workspace/ros/KylinROS/catkin_ws/src/kylinbot_core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bj/workspace/ros/KylinROS/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kylinbot_core/msg" TYPE FILE FILES
    "/home/bj/workspace/ros/KylinROS/catkin_ws/src/kylinbot_core/msg/CBUS.msg"
    "/home/bj/workspace/ros/KylinROS/catkin_ws/src/kylinbot_core/msg/Kylin.msg"
    "/home/bj/workspace/ros/KylinROS/catkin_ws/src/kylinbot_core/msg/PosCalib.msg"
    "/home/bj/workspace/ros/KylinROS/catkin_ws/src/kylinbot_core/msg/Sonar.msg"
    "/home/bj/workspace/ros/KylinROS/catkin_ws/src/kylinbot_core/msg/VirtualRC.msg"
    "/home/bj/workspace/ros/KylinROS/catkin_ws/src/kylinbot_core/msg/ZGyro.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kylinbot_core/cmake" TYPE FILE FILES "/home/bj/workspace/ros/KylinROS/catkin_ws/build/kylinbot_core/catkin_generated/installspace/kylinbot_core-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/bj/workspace/ros/KylinROS/catkin_ws/devel/include/kylinbot_core")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/bj/workspace/ros/KylinROS/catkin_ws/devel/share/roseus/ros/kylinbot_core")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/bj/workspace/ros/KylinROS/catkin_ws/devel/share/common-lisp/ros/kylinbot_core")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/bj/workspace/ros/KylinROS/catkin_ws/devel/share/gennodejs/ros/kylinbot_core")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/bj/workspace/ros/KylinROS/catkin_ws/devel/lib/python2.7/dist-packages/kylinbot_core")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/bj/workspace/ros/KylinROS/catkin_ws/devel/lib/python2.7/dist-packages/kylinbot_core")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bj/workspace/ros/KylinROS/catkin_ws/build/kylinbot_core/catkin_generated/installspace/kylinbot_core.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kylinbot_core/cmake" TYPE FILE FILES "/home/bj/workspace/ros/KylinROS/catkin_ws/build/kylinbot_core/catkin_generated/installspace/kylinbot_core-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kylinbot_core/cmake" TYPE FILE FILES
    "/home/bj/workspace/ros/KylinROS/catkin_ws/build/kylinbot_core/catkin_generated/installspace/kylinbot_coreConfig.cmake"
    "/home/bj/workspace/ros/KylinROS/catkin_ws/build/kylinbot_core/catkin_generated/installspace/kylinbot_coreConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kylinbot_core" TYPE FILE FILES "/home/bj/workspace/ros/KylinROS/catkin_ws/src/kylinbot_core/package.xml")
endif()

