#!bin/bash
k="/media/faleotti/SSD/FULL_KITTI"
proxy_path=
depth_hints_path=
training='ours'
if [ $training == 'ours' ]; then
    # ours
    python precompute_depth_hints.py --data_path $k
    --save_path  './proxies/ours' 

else
    # original
    python precompute_depth_hints.py --data_path $k \
    --save_path './proxies/original' \
    --compute
  fi
