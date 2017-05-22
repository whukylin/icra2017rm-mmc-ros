
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

using namespace std;
using namespace cv;


#define SHOW_WIN
const int IMG_HEIGHT = 480;
const int IMG_WIDTH = 640;
RMVideoCapture* cap = NULL;
int exp_time;
int gain;
int brightness;
int whiteness;
int saturation;
int spin_rate;

void on_expTracker(int,void *)
{
    cap->setExposureTime(0, ::exp_time);//settings->exposure_time);
}
void on_gainTracker(int,void *)
{
    cap->setpara(gain,brightness,whiteness,saturation);// cap.setExposureTime(0, ::exp_time);//settings->exposure_time);
}
void on_brightnessTracker(int,void*)
{
    cap->setpara(gain,brightness,whiteness,saturation);//cap.setExposureTime(0, ::exp_time);//settings->exposure_time);
}
void on_whitenessTracker(int,void*)
{
    cap->setpara(gain,brightness,whiteness,saturation);// cap.setExposureTime(0, ::exp_time);//settings->exposure_time);
}
void on_saturationTracker(int,void*)
{
    cap->setpara(gain,brightness,whiteness,saturation);//cap.setExposureTime(0, ::exp_time);//settings->exposure_time);
}

int main(int argc, char *argv[])
{

    ros::init(argc, argv, "kylinbot_video_cap");



    string device = "/dev/video0";
    bool showimg = false;
    string winname = "video_cap";
    int buf_size = 3;


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
    np.param<int>("spin_rate", spin_rate, 30);

    cap = new RMVideoCapture(device.c_str(), buf_size);

    namedWindow(winname.c_str());
    cap->setVideoFormat(640, 480, 1);

    createTrackbar("exposure_time", winname.c_str(), &::exp_time, 100, on_expTracker);
    createTrackbar("gain",winname.c_str(), &::gain, 100, on_gainTracker);
    createTrackbar("whiteness", winname.c_str(),&::whiteness, 100, on_whitenessTracker);
    createTrackbar("brightness", winname.c_str(),&::brightness, 100, on_brightnessTracker);
    createTrackbar("saturation", winname.c_str(),&::saturation, 100, on_saturationTracker);


    ros::NodeHandle n;

//  image_transport::ImageTransport it(n);
//  image_transport::Subscriber sub = it.subscribe("camera/img", 1, imageCallback);
    ros::Time time = ros::Time::now();
    cv_bridge::CvImage cvi;
    sensor_msgs::Image im;
    sensor_msgs::CameraInfo cam_info;
    ros::Rate rate(spin_rate);
    Mat frame;


    image_transport::ImageTransport transport ( n );
    image_transport::Publisher image_pub = transport.advertise ( "kylinbot/image_raw", 1 );
    // image_text_pub = transport.advertise("dji_sdk/image_raw_delay", 1);
    ros::Publisher caminfo_pub = n.advertise<sensor_msgs::CameraInfo> ( "kylinbot/camera_info",1 );

    //Set the camera info
    cam_info.header.frame_id = "/camera";
    cam_info.height = IMG_HEIGHT ;
    cam_info.width = IMG_WIDTH ;
    cam_info.distortion_model = "";
    cam_info.D.push_back ( -0.1297646493949856 );
    cam_info.D.push_back ( 0.0946885697670611 );
    cam_info.D.push_back ( -0.0002935002712265514 );
    cam_info.D.push_back ( -0.00022663675362156343 );
    cam_info.D.push_back ( 0.0 );
//    cam_info.K = {388.40923066779754, 0.0, 318.06257844065226, 0.0, 518.1538449374815, 241.17339016626644, 0.0, 0.0, 1.0};
//    cam_info.R = {1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0};
//    cam_info.P = {373.5429992675781, 0.0, 317.51131336952494, 0.0, 0.0, 504.4360656738281, 240.6131009245937, 0.0, 0.0, 0.0, 1.0, 0.0};



    cvi.header.stamp = time;
    cvi.header.frame_id = "image";
    cvi.encoding = "bgr8";

    int ncount = 1;
    if(!cap->startStream())
    {
        ROS_INFO("Open Camera Failure.");
        return -1;
    }
    while (ros::ok())
    {

        ros::spinOnce();

        (*cap)>>frame;
#ifdef  SHOW_WIN
        imshow(winname.c_str(),frame);
        waitKey(1);
#endif
        time=ros::Time::now();
        cvi.image = frame;
        cvi.toImageMsg ( im );
        cam_info.header.seq = ncount;
        cam_info.header.stamp = time;

        caminfo_pub.publish ( cam_info );
        image_pub.publish(im);

        ncount++;

        rate.sleep();
    }

    cap->closeStream();
    cap = NULL;

    return 0;
}



