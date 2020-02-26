#!bin/bash
k="/media/faleotti/SSD/FULL_KITTI"
proxy_path=
kitti_path=
training='ours'
if [ $training == 'ours' ]; then
    # ours
    python precompute_depth_hints.py --data_path $proxy_path
    --save_path  './proxies/ours' 

else
    # original
    python precompute_depth_hints.py --data_path $kitti_path \
    --save_path './proxies/original' \
    --compute
  fi
