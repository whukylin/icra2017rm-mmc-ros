
/**
 * Copyright (c) 2016, Jack Mo (mobangjack@foxmail.com).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "ros/ros.h"
#include "std_msgs/String.h"

#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>

#include <sstream>

#include "asp.h"
#include "uart.h"

#include "kylinbot_core/Kylin.h"
#include "kylinbot_core/VirtualRC.h"

void odoCallback(const kylinbot_core::Kylin::ConstPtr& kylin)
{
  
  
}

void rcfCallback(const kylinbot_core::VirtualRC::ConstPtr& virtualRC)
{
  
}

int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "kylinbot_logic_controller");

  int spin_rate = 100;
  
  ros::NodeHandle np("~");
  np.param<int>("spin_rate", spin_rate, 100); 
  
  ros::NodeHandle n;

  ros::Subscriber odo_sub = n.subscribe<kylinbot_core::Kylin>("odo", 1000, odoCallback); // Odometry feedback listenner
  ros::Subscriber rcf_sub = n.subscribe<kylinbot_core::VirtualRC>("rcf", 1000, rcfCallback); // RC feedback listenner
  
  ros::Publisher cmd_pub = n.advertise<kylinbot_core::Kylin>("cmd", 1000); // Command advertiser
  ros::Publisher vrc_pub = n.advertise<kylinbot_core::VirtualRC>("vrc", 1000); // Virtual RC advertiser

  ros::Rate rate(spin_rate);

  while (ros::ok())
  {

    ros::spinOnce();

    rate.sleep();
  }

  return 0;
}



