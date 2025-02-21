#!/bin/bash
#SBATCH --job-name="squeezed-attn"
#SBATCH --account=bdiq-delta-gpu
#SBATCH --partition=gpuA100x4
#SBATCH --gres=gpu:a100:4
#SBATCH --cpus-per-task=32
#SBATCH --mem=32G
#SBATCH --time=10:00:00
#SBATCH --output=%x_output.txt
#SBATCH --error=%x_error.txt

# cd transformers
# pip install -e .
# cd ..
# pip install -e .

# conda install triton
# conda install pytest
# conda install scikit-learn
# conda install cupy

# echo "Working directory is: $(pwd)"

./run_offline_clustering.sh
