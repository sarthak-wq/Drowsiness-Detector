# Driver Drowsiness Detection System

## Overview
This project implements an efficient real-time drowsiness detection system to prevent road accidents caused by driver fatigue. The system uses computer vision techniques to monitor driver's facial features and alerts them when signs of drowsiness are detected.

![fatigue](https://github.com/user-attachments/assets/092dc232-8d90-4bc3-aeda-19a5cf51e33a)

## Features
- Real-time face detection and tracking
- Illumination-invariant skin segmentation
- Eye state monitoring (open/closed)
- Yawning detection
- Automated alarm system when drowsiness is detected
- Works under various lighting conditions
- Does not require any wearable devices or sensors

## Technical Details

### System Architecture
The system works in three main phases:
1. Face Detection and Skin Segmentation using Viola-Jones algorithm
2. Eye Tracking using correlation coefficient template matching
3. Yawning Detection using K-means clustering

### Performance Metrics
- Overall Accuracy: 94.58%
- Detection Rate: 94.27%
- False Alarm Rate: 6.87%

### Requirements
- MATLAB 2013 or higher
- Camera with minimum 15fps and 40M pixels
- Required MATLAB toolboxes:
  - Computer Vision Toolbox
  - Image Processing Toolbox

## Installation and Usage

1. Clone this repository:
```bash
git clone https://github.com/sarthak-wq/Drowsiness-Detector.git
```

2. Open MATLAB and navigate to the project directory

3. Run the main script:
```matlab
run main.m
```

## Technical Implementation

### Face Detection and Skin Segmentation
- Uses Viola-Jones algorithm for initial face detection
- Converts image to YCbCr domain for illumination-invariant skin segmentation
- Eliminates luminosity influence by focusing on chromatic components

### Eye Tracking
- Implements Sobel edge detection for precise eye boundary detection
- Uses correlation coefficient template matching for eye state monitoring
- Normalizes eye templates to 12×30 pixels for consistent feature extraction

### Yawning Detection
- Segments mouth region using K-means clustering (K=2)
- Implements template matching with fixed size templates (38x62)
- Tracks mouth state using correlation coefficient template matching

## Limitations
- Accuracy drops by approximately 8% when driver wears spectacles
- System performance decreases when head is tilted left or right
- Head lowering detection not yet implemented

## Future Improvements
- Implementation of rotation-invariant detection
- Enhanced spectacles handling
- Head lowering prediction with threshold
- Improved head tilt detection

## Results
The system has been tested extensively with the following results:
- Tested on 360 frames
- 105 frames with fatigue detected
- 123 frames without fatigue
- 12 false positives
- 5 false negatives


## Contact
For any queries, please open an issue or contact [sarthakd.work@gmail.com]
