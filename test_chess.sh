#!/bin/bash

# Load necessary modules (if needed)
module load python/3.10

# Install uv if not already installed
if ! command -v uv &> /dev/null; then
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# Install dependencies using uv
uv add torch numpy transformers datasets tiktoken wandb tqdm

# Login to wandb
export WANDB_API_KEY=7d740cd302ee6998e9f94308a7be0b8c2982ce2e
wandb login

# Run data preparation
python data/lichess_hf_dataset/prepare.py

# Run a small training test
python train.py config/train_shakespeare_char.py 