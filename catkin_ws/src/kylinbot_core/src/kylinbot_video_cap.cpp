
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

#include "RMVideoCapture.h"

#include "ros/ros.h"

#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/highgui/highgui.hpp>

using namespace std;
using namespace cv;

RMVideoCapture* cap = NULL;

void on_expTracker(int,void *)
{
    cap->setExposureTime(0, ::exp_time);//settings->exposure_time);
}
void on_gainTracker(int,void *)
{
    cap->setpara(gain,brightness_,whiteness_,saturation_);// cap.setExposureTime(0, ::exp_time);//settings->exposure_time);
}
void on_brightnessTracker(int,void*)
{
    cap->setpara(gain,brightness_,whiteness_,saturation_);//cap.setExposureTime(0, ::exp_time);//settings->exposure_time);
}
void on_whitenessTracker(int,void*)
{
    cap->setpara(gain,brightness_,whiteness_,saturation_);// cap.setExposureTime(0, ::exp_time);//settings->exposure_time);
}
void on_saturationTracker(int,void*)
{
    cap->setpara(gain,brightness_,whiteness_,saturation_);//cap.setExposureTime(0, ::exp_time);//settings->exposure_time);
}

int main(int argc, char *argv[])
{

  ros::init(argc, argv, "kylinbot_video_cap");

  string device = "/dev/video0";
  bool showimg = false;
  string winname = "video_cap";
  int buf_size = 3;
  int exp_time = 62;
  int gain = 30;
  int brightness = 10;
  int whiteness = 86;
  int saturation = 60;
  int spin_rate = 100;
  
  ros::NodeHandle np("~");
  np.param<string>("device", device, "/dev/video0");
  np.param<bool>("showimg", showimg, false);
  np.param<string>("winname", winname, "video_cap");
  np.param<int>("buf_size", buf_size, 3);
  np.param<int>("exp_time", exp_time, 62);
  np.param<int>("gain", gain, 30);
  np.param<int>("brightness", brightness, 10);
  np.param<int>("whiteness", whiteness, 86);
  np.param<int>("saturation", saturation, 60);
  np.param<int>("spin_rate", spin_rate, 100);
  
  RMVideoCapture capture(device, buf_size);
  
  capture.setVideoFormat(800, 600, 1);

  createTrackbar("exposure_time", wndname, &::exp_time, 100, on_expTracker);
  createTrackbar("gain",wndname, &::gain, 100, on_gainTracker);
  createTrackbar("whiteness", wndname,&::whiteness_, 100, on_whitenessTracker);
  createTrackbar("brightness", wndname,&::brightness_, 100, on_brightnessTracker);
  createTrackbar("saturation", wndname,&::saturation_, 100, on_saturationTracker);
  on_brightnessTracker(0,0);
  on_expTracker(0,0);
  on_gainTracker(0,0);
  on_saturationTracker(0,0);
  on_whitenessTracker(0,0);
	
  ros::NodeHandle n;
  
  image_transport::ImageTransport it(n);
  image_transport::Subscriber sub = it.subscribe("camera/img", 1, imageCallback);
  
  ros::Rate rate(spin_rate);

  while (ros::ok())
  {

    ros::spinOnce();

    rate.sleep();
  }

  capture.closeStream();
  cap = NULL;
  
  return 0;
}



