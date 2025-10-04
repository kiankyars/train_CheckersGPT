#!/bin/bash
#SBATCH --account=def-lilimou
#SBATCH --time=1:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1
#SBATCH --job-name=chess_test

# Load necessary modules
module load python/3.10

# Make the test script executable
chmod +x test_chess.sh

# Run the test script
./test_chess.sh 