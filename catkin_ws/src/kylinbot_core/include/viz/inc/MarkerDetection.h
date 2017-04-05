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

#include <opencv2/opencv.hpp>

typedef struct
{
	float x;
	float y;
	float z;
}Vec3_t;

typedef struct
{
	Vec3_t t; // Translation
	Vec3_t r; // Rotation
}Viz_t;

class MarkerDetecter
{
public:
	MarkerDetecter();
	~MarkerDetecter();
	bool detectMarker(cv::Mat& img, std::vector<std::vector<cv::Point>> squares);
	bool locateMarker(cv::Mat& img, Viz_t& viz);
	
protected:
	std::vector<std::vector<cv::Point>> squares;
}

#endif



