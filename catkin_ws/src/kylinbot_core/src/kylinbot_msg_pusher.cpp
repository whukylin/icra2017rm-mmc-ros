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

#define BUF_LEN 256

int uart_fd = -1;
  
FIFO_t tx_fifo;
uint8_t tx_buf[2][BUF_LEN];

KylinMsg_t kylinMsg;
VirtualRC_t vrc;
  
void cmdCallback(const kylinbot_core::Kylin::ConstPtr& kylin)
{
  if (FIFO_GetFree(&tx_fifo) >= msg_head_kylin.attr.length + MSG_LEN_EXT) {
    
    kylinMsg.frame_id++;
    kylinMsg.cbus.cp.x = kylin->cbus.px;
    kylinMsg.cbus.cp.y = kylin->cbus.py;
    kylinMsg.cbus.cp.z = kylin->cbus.pz;
    kylinMsg.cbus.gp.e = kylin->cbus.pe;
    kylinMsg.cbus.gp.c = kylin->cbus.pc;
    kylinMsg.cbus.cv.x = kylin->cbus.vx;
    kylinMsg.cbus.cv.y = kylin->cbus.vy;
    kylinMsg.cbus.cv.z = kylin->cbus.vz;
    kylinMsg.cbus.gv.e = kylin->cbus.ve;
    kylinMsg.cbus.gv.c = kylin->cbus.vc;
    
    uint32_t len = Msg_Push(&tx_fifo, tx_buf[1], & msg_head_kylin, &kylinMsg);
    FIFO_Pop(&tx_fifo, tx_buf[1], len);
    uart_write(uart_fd, tx_buf[1], len);
  }
  
}

void vrcCallback(const kylinbot_core::VirtualRC::ConstPtr& virtualRC)
{
  if (FIFO_GetFree(&tx_fifo) >= msg_head_vrc.attr.length + MSG_LEN_EXT) {
    
    vrc.frame_id++;
    
    for (int i = 0; i < 6; i++) {
      vrc.buf[i] = virtualRC->data[i];
    }
    
    uint32_t len = Msg_Push(&tx_fifo, tx_buf[1], & msg_head_vrc, &vrc);
    FIFO_Pop(&tx_fifo, tx_buf[1], len);
    uart_write(uart_fd, tx_buf[1], len);
  }
}

int main(int argc, char **argv)
{
  
  FIFO_Init(&tx_fifo, tx_buf[0], BUF_LEN);
  
  ros::init(argc, argv, "kylinbot_msg_pusher");

  std::string serial_port;
  int serial_baudrate = 115200;
  int spin_rate = 100;
  
  ros::NodeHandle np("~");
  np.param<std::string>("serial_port", serial_port, "/dev/ttyTHS2"); 
  np.param<int>("serial_baudrate", serial_baudrate, 115200);
  np.param<int>("spin_rate", spin_rate, 100); 
  
  int ret = uart_open(&uart_fd, serial_port.c_str(), serial_baudrate, UART_OFLAG_WR);
  if (ret < 0) {
    fprintf(stderr, "Error, cannot bind to the specified serial port %s.\n"
            , serial_port.c_str());
    return -1;
  }

  ros::NodeHandle n;

  ros::Subscriber kylin_sub = n.subscribe<kylinbot_core::Kylin>("cmd", 1000, cmdCallback); // Command listenner
  ros::Subscriber vrc_sub = n.subscribe<kylinbot_core::VirtualRC>("vrc", 1000, vrcCallback); // Virtual RC listenner

  ros::Rate rate(spin_rate);

  while (ros::ok())
  {
    
    ros::spinOnce();

    // TODO
    
    rate.sleep();
  }

  // Done
  uart_close(uart_fd);

  return 0;
}


