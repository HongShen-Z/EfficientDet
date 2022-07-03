#!/bin/bash
#BSUB -J predict
#BSUB -o %J.out
#BSUB -e %J.err
#BSUB -q gpu_v100
#BSUB -gpu "num=1:mode=exclusive_process:aff=yes"

module load anaconda3
source activate
conda deactivate
conda activate torch1.2
python predict.py --count

#--gpus $CUDA_VISIBLE_DEVICES
#~/.cache/torch/checkpoints/yolov5s.pt
