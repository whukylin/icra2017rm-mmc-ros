
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

#include "MarkerDetection.h"

#include "ros/ros.h"

#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/highgui/highgui.hpp>

using namespace std;
using namespace cv;

int main(int argc, char *argv[])
{
	
  ros::init(argc, argv, "img_deal");

  int spin_rate = 100;
  
  ros::NodeHandle np("~");
  np.param<int>("spin_rate", spin_rate, 100);
  
  ros::NodeHandle n;
  
  image_transport::ImageTransport it(n);
  image_transport::Subscriber sub = it.subscribe("camera/img", 1, imageCallback);
  
  ros::Rate rate(spin_rate);

  while (ros::ok())
  {

    ros::spinOnce();

    rate.sleep();
  }

  return 0;
}



