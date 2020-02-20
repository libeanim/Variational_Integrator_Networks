#!/bin/bash

for seed in 1
do
  for observations in pixels
  do
    for num_traj in 1 2 3
    do
      for model_name in ResNet VIN_SO2 VIN_VV 
      do
        python run_exp.py ./experiments $model_name pendulum $observations $num_traj 50 $seed
      done
    done
  done
done