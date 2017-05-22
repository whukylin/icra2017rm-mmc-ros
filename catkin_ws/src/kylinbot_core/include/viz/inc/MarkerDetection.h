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

#ifndef __MARKER_DETECTION_H__
#define __MARKER_DETECTION_H__
//Image processing
#include "opencv2/opencv.hpp"
#define DIF_CEN 190
#define PROP 1.5
#define CX   343   //To change to calibration parameter.
#define CY   320;   //the same with cameraMatrix.cx,cy
//#define _SHOW_PHOTO
//#define _SHOW_OUTPUT
//#define Camera_One
using namespace cv;
class MyPoint
{
public:
	MyPoint(Point pnt)
	{
		x=pnt.x;
		y=pnt.y;
	};
	int x;
	int y;
	bool operator<(const MyPoint&p)const
	{
		return x<p.x;
	}
};

void findSquares( Mat src,const Mat& image, vector<vector<Point> >& squares );
void drawSquares( Mat& image, const vector<vector<Point> >& squares );
void LocationMarkes(const vector<vector<Point> >& squares);
void Calcu_attitude(Point3f world_pnt_tl,Point3f world_pnt_tr,Point3f world_pnt_br,Point3f world_pnt_bl,Point2f pnt_tl_src,Point2f pnt_tr_src,Point2f pnt_br_src,Point2f pnt_bl_src);
int Color_judge(Mat &src,int area);
void Sort_rect(vector<Point>& approx);
double angle( Point pt1, Point pt2, Point pt0 );
int Color_detect(Mat frame, int &diff_x, int &diff_y);
#endif



