#!/bin/bash

conda create -y -n `whoami` python=3
conda activate `whoami`
conda install -y -c conda-forge pytorch-lightning einops
conda install -y pip numpy scipy pandas scikit-learn matplotlib torchvision xgboost jupyter ipython h5py
pip install spock
