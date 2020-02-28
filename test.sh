#!bin/bash

#k="/media/faleotti/SSD/KITTI/2015/training/image_2/"
k=
layers=18
ckpt=

python test_simple.py --image_path $k \
                      --model_path $ckpt \
                      --ext png \
                      --dest ./results/$layers