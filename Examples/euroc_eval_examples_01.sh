#!/bin/bash
# pathDatasetEuroc='/Datasets/EuRoC' #Example, it is necesary to change it by the dataset path
pathDatasetEuroc='/home/wangc35/桌面/T/ORB_SLAM3-0.4-beta/datasets'
# Single Session Example (Pure visual)
# echo "Launching MH03 with Stereo sensor"
# ./Stereo/stereo_euroc ../Vocabulary/ORBvoc.txt ./Stereo/EuRoC.yaml "$pathDatasetEuroc"/MH03 ./Stereo/ EuRoC_TimeStamps/MH03.txt dataset-MH03_stereo
echo "------------------------------------"
echo "Evaluation of MH03 trajectory with Stereo sensor"
python3 ../evaluation/evaluate_ate_scale.py ../evaluation/Ground_truth/EuRoC_left_cam/MH03_GT.txt f_dataset-MH03_stereo.txt --plot MH03_stereo.pdf
