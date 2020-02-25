#!bin/bash
k="/media/faleotti/SSD/FULL_KITTI"
proxy_path=
depth_hints_path=
training='ours'
if [ $training == 'ours' ]; then
    # ours
    python train.py
    --data_path $k
    --log_dir  './logs/ours' \
    --model_name stereo_depth_hints \
    --use_depth_hints \
    --disp_to_depth  \
    --depth_hint_path $proxy_path
    --frame_ids 0  --use_stereo \
    --scheduler_step_size 5 \
    --split kitti \
    --disparity_smoothness 0 

else
    # original
    python train.py
    --data_path $k \
    --log_dir './logs/original' \
    --model_name stereo_depth_hints \
    --use_depth_hints \
    --depth_hint_path $depth_hints_path \
    --frame_ids 0  --use_stereo \
    --scheduler_step_size 5 \
    --split kitti \
    --disparity_smoothness 0
  fi