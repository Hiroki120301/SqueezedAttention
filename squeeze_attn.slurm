#!/bin/bash
#SBATCH --job-name="squeezed-attn"
#SBATCH --account=bdiq-delta-gpu
#SBATCH --partition=gpuA100x4
#SBATCH --gres=gpu:a100:1
#SBATCH --cpus-per-task=16
#SBATCH --mem=16G
#SBATCH --time=10:00:00
#SBATCH --output=%x_output.txt
#SBATCH --error=%x_error.txt

# cd transformers
# pip install -e .
# cd ..
# pip install -e .

# conda install triton pytest scikit-learn cupy cuml
# pip install sentencepiece protobuf

# echo "Working directory is: $(pwd)"

./run_offline_clustering.sh
