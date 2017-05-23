
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
#include<geometry_msgs/Twist.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include<kylinbot_core/DetectionResult.h>
#include<std_msgs/UInt8.h>
using namespace std;
using namespace cv;


MarkerDetector mDetector;
vector<vector<Point> > squares;
unsigned int detection_mode = 1;//FOR TESTING TODO: Change it accordingly.
int lostFlag = false;
int lostCount = 0;
int CountVframe = 0;
int fflage = -1;

kylinbot_core::DetectionResult detectionR;


//Subscribe the detection mode change.

void onDetectionModeChangeCallback(const std_msgs::UInt8ConstPtr detectionModeMsg)
{
    detection_mode = detectionModeMsg->data;
}



//Image Processing Procedure HERE
void imageCallback(const sensor_msgs::ImageConstPtr& msg)

{
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
        cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
        ROS_ERROR("cv_bridge exception: %s", e.what());
        return;
    }

    //Image Processing Procedure HERE!!!
    Mat frame = cv_ptr->image;//Shallow copy
    Mat src = frame.clone();
    vector<vector<Point> > squares;
    squares.clear();
    double t = (double)getTickCount();

    switch (detection_mode)
    {
        case 0: //do nothing
            //TODO:
            break;
        case 1: //detect squares
            //cout << "detection_mode=" << (int)detection_mode << endl;
            mDetector.findSquares(src, frame, squares);
            mDetector.LocationMarkes(squares);
            mDetector.drawSquares(frame, squares);
            if (squares.size() > 0)
            {
                lostCount = 0;
                lostFlag = false;
                detectionR.lost_target = false;
                detectionR.x = mDetector.get_tx();
                detectionR.y =  mDetector.get_ty();
                detectionR.z = mDetector.get_tz();
                detectionR.yaw = mDetector.get_rz();
                detectionR.pitch = mDetector.get_ry();
                detectionR.roll = mDetector.get_rx();
//              CountVframe++; //TODO: Not used yet
            }
            if (squares.size() == 0)
            {
                lostCount++;
                if (lostCount >= 3)
                {
//                    printf("lost frame\n");
                    lostCount = 0;
                    lostFlag = true;
                    detectionR.lost_target =  true;
                    detectionR.x = 0.0;
                    detectionR.y = 0.0;
                    detectionR.z = 0.0;
                    detectionR.yaw = 0.0;
                    detectionR.pitch = 0.0;
                    detectionR.roll = 0.0;
                }
            }
// Assign the detection result components. May need adjustment.

            break;
        case 2: //TODO: detect green area
            ROS_INFO("Detection Mode:2");
            break;
        case 3: //follow line
            ROS_INFO("Detection Mode:3");
            break;
        case 4: //follow line
            ROS_INFO("Detection Mode:4");
            break;
        case 5: //follow line
            ROS_INFO("Detection Mode:5");
            //TODO:
            break;
        default:
            break;
    }


}


void publishresult(ros::Publisher & pub) // Interpolation
{

    pub.publish(detectionR);
    ROS_INFO("Target Lost?%d\tx:%f\ty:%f\tz:%f\tyaw:%f\tpitch:%f\troll:%f\t",detectionR.lost_target,detectionR.x,detectionR.y,detectionR.z,detectionR.yaw,
             detectionR.pitch,detectionR.roll);

}

int main(int argc, char *argv[])
{

    ros::init(argc, argv, "img_deal");

    int spin_rate = 100;

    ros::NodeHandle np("~");
    np.param<int>("spin_rate", spin_rate, 100);
    ros::NodeHandle n;

    image_transport::ImageTransport it(n);
    image_transport::Subscriber sub = it.subscribe("kylinbot/image_raw", 1, imageCallback);

    ros::Subscriber detection_mode_sub = n.subscribe("detection_mode",10,onDetectionModeChangeCallback);
    ros::Publisher detection_res_pub =  n.advertise<kylinbot_core::DetectionResult>("kylinbot/detection_result",10);
//    ros::Publisher pose_pub = it.advertise<geometry_msgs::TWist>();
    ros::Rate rate(spin_rate);
    while (ros::ok())
    {
        ros::spinOnce();
        publishresult(detection_res_pub);
        rate.sleep();
    }

    return 0;
}



// This node handle the image processing task( so far, just marker detection) and publish the detectin result.
// DetectionResult msg:
//float32 x
//float32 y
//float32 z
//float32 yaw
//float32 pitch
//float32 roll