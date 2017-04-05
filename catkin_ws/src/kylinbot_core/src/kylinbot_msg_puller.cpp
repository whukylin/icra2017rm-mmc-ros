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

#include "kylinbot_core/CBUS.h"
#include "kylinbot_core/ZGyro.h"
#include "kylinbot_core/Sonar.h"
#include "kylinbot_core/Kylin.h"
#include "kylinbot_core/PosCalib.h"
#include "kylinbot_core/VirtualRC.h"

#define BUF_LEN 256

void publishKylinMsg(ros::Publisher *pub, const KylinMsg_t* kylinMsg)
{
  kylinbot_core::Kylin kylin;
  
  kylin.frame_id = kylinMsg->frame_id;
  kylin.cbus.fs = kylinMsg->cbus.fs;
  kylin.cbus.px = kylinMsg->cbus.cp.x;
  kylin.cbus.py = kylinMsg->cbus.cp.y;
  kylin.cbus.pz = kylinMsg->cbus.cp.z;
  kylin.cbus.pe = kylinMsg->cbus.gp.e;
  kylin.cbus.pc = kylinMsg->cbus.gp.c;
  kylin.cbus.vx = kylinMsg->cbus.cv.x;
  kylin.cbus.vy = kylinMsg->cbus.cv.y;
  kylin.cbus.vz = kylinMsg->cbus.cv.z;
  kylin.cbus.ve = kylinMsg->cbus.gv.e;
  kylin.cbus.vc = kylinMsg->cbus.gv.c;
  
  pub->publish(kylin);
}

void publishZGyroMsg(ros::Publisher *pub, const ZGyroMsg_t* zgyroMsg)
{
  kylinbot_core::ZGyro zgyro;
  
  zgyro.frame_id = zgyroMsg->frame_id;
  zgyro.angle = zgyroMsg->angle;
  zgyro.rate = zgyroMsg->rate;
  
  pub->publish(zgyro);
}

void publishSonarMsg(ros::Publisher *pub, const Sr04sMsg_t* sr04sMsg)
{
  kylinbot_core::Sonar sonar;
  
  sonar.frame_id = sr04sMsg->frame_id;
  sonar.fixed = sr04sMsg->fixed;
  sonar.moble = sr04sMsg->moble;
  sonar.left = sr04sMsg->left;
  sonar.right = sr04sMsg->right;
  
  pub->publish(sonar);
}

void publishCalibMsg(ros::Publisher *pub, const PosCalibMsg_t* calibMsg)
{
  kylinbot_core::PosCalib calib;
  
  calib.frame_id = calibMsg->frame_id;
  calib.ch = calibMsg->data.ch;
  calib.cl = calibMsg->data.cl;
  calib.eh = calibMsg->data.eh;
  calib.el = calibMsg->data.el;
  
  pub->publish(calib);
}

void publishVirtualRC(ros::Publisher *pub, const VirtualRC_t* rcf)
{
  kylinbot_core::VirtualRC virtualRC;
  
  virtualRC.frame_id = rcf->frame_id;
  
  for (int i = 0; i < 6; i++) {
    virtualRC.data[i] = rcf->buf[i];
  }
  
  pub->publish(virtualRC);
}

void publishOdomeMsg(ros::Publisher *pub, const KylinMsg_t* kylinMsg)
{
  float px = kylinMsg->cbus.cp.x / KYLIN_MSG_VALUE_SCALE;
  float py = kylinMsg->cbus.cp.y / KYLIN_MSG_VALUE_SCALE;
  float pz = kylinMsg->cbus.cp.z / KYLIN_MSG_VALUE_SCALE; // rad to deg
  float vx = kylinMsg->cbus.cv.x / KYLIN_MSG_VALUE_SCALE;
  float vy = kylinMsg->cbus.cv.y / KYLIN_MSG_VALUE_SCALE;
  float vz = kylinMsg->cbus.cv.z / KYLIN_MSG_VALUE_SCALE; // rad/s to deg/s
  
  tf::TransformBroadcaster odom_broadcaster;
  
  //since all odometry is 6DOF we'll need a quaternion created from yaw
  geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(pz);

  //first, we'll publish the transform over tf
  geometry_msgs::TransformStamped odom_trans;
  odom_trans.header.stamp = ros::Time::now();
  odom_trans.header.frame_id = "odom";
  odom_trans.child_frame_id = "base_link";

  odom_trans.transform.translation.x = 0.0;
  odom_trans.transform.translation.y = 0.0;
  odom_trans.transform.translation.z = 0.0;
  odom_trans.transform.rotation = odom_quat;

  //send the transform
  odom_broadcaster.sendTransform(odom_trans);

  //next, we'll publish the odometry message over ROS
  nav_msgs::Odometry odom;
  odom.header.stamp = ros::Time::now();
  odom.header.frame_id = "odom";

  //set the position
  odom.pose.pose.position.x = px;
  odom.pose.pose.position.y = py;
  odom.pose.pose.position.z = 0.0;
  odom.pose.pose.orientation = odom_quat;

  //set the velocity
  odom.child_frame_id = "base_link";
  odom.twist.twist.linear.x = vx;
  odom.twist.twist.linear.y = vy;
  odom.twist.twist.angular.z = vz; // To degree/s

  //publish the message
  pub->publish(odom);
}

int main(int argc, char **argv)
{
  int uart_fd = -1;
  
  FIFO_t rx_fifo;
  uint8_t rx_buf[2][BUF_LEN];

  KylinMsg_t kylinMsg;
  ZGyroMsg_t zgyroMsg;
  PosCalibMsg_t posCalibMsg;
  Sr04sMsg_t sr04sMsg;
  VirtualRC_t rcf;
  
  FIFO_Init(&rx_fifo, rx_buf[0], BUF_LEN);
  
  ros::init(argc, argv, "kylinbot_msg_puller");

  std::string serial_port;
  int serial_baudrate = 115200;
  int spin_rate = 100;
  
  ros::NodeHandle np("~");
  np.param<std::string>("serial_port", serial_port, "/dev/ttyTHS2"); 
  np.param<int>("serial_baudrate", serial_baudrate, 115200);
  np.param<int>("spin_rate", spin_rate, 100); 

  int ret = uart_open(&uart_fd, serial_port.c_str(), serial_baudrate, UART_OFLAG_RD);
  if (ret < 0) {
    fprintf(stderr, "Error, cannot bind to the specified serial port %s.\n"
            , serial_port.c_str());
    return -1;
  }
  
  ros::NodeHandle n;

  ros::Publisher odo_pub = n.advertise<kylinbot_core::Kylin>("odo", 1000); // Odometry feedback
  ros::Publisher rcf_pub = n.advertise<kylinbot_core::VirtualRC>("rcf", 1000); // Remote controller feedback
  ros::Publisher sonar_pub = n.advertise<kylinbot_core::Sonar>("sonar", 1000); // Sonar feedback
  ros::Publisher zgyro_pub = n.advertise<kylinbot_core::ZGyro>("zgyro", 1000); // ZGyro feedback
  ros::Publisher calib_pub = n.advertise<kylinbot_core::PosCalib>("calib", 1000); // Calib feedback
  
  ros::Publisher odom_pub = n.advertise<nav_msgs::Odometry>("odom", 1000); // Built-in odom

  ros::Rate rate(spin_rate);

  while (ros::ok())
  {
	
    ros::spinOnce();

    // Get fifo free space
    int len = FIFO_GetFree(&rx_fifo);
    
    // If fifo free space insufficient, pop one element out
    if (len < 1) {
      uint8_t b;
      len = FIFO_Pop(&rx_fifo, &b, 1);
    }
    
    // Read input stream according to the fifo free space left
    len = uart_read(uart_fd, rx_buf[1], len);
    
    // Check if there is any new stream
    if (len > 0) {
      // Push new stream into fifo
      FIFO_Push(&rx_fifo, rx_buf[1], len);
    }

    // Check if any message received
    if (Msg_Pop(&rx_fifo, rx_buf[1], &msg_head_kylin, &kylinMsg)) {
      publishKylinMsg(&odo_pub, &kylinMsg);
      publishOdomeMsg(&odom_pub, &kylinMsg);
    }

    if (Msg_Pop(&rx_fifo, rx_buf[1], &msg_head_sr04s, &sr04sMsg)) {
      publishSonarMsg(&sonar_pub, &sr04sMsg);
    }

    if (Msg_Pop(&rx_fifo, rx_buf[1], &msg_head_zgyro, &zgyroMsg)) {
      publishZGyroMsg(&zgyro_pub, &zgyroMsg);
    }

    if (Msg_Pop(&rx_fifo, rx_buf[1], &msg_head_pos_calib, &posCalibMsg)) {
      publishCalibMsg(&calib_pub, &posCalibMsg);
    }

    if (Msg_Pop(&rx_fifo, rx_buf[1], &msg_head_vrc, &rcf)) {
      publishVirtualRC(&rcf_pub, &rcf);
    }

    rate.sleep();
  }

  // Done
  uart_close(uart_fd);

  return 0;
}


