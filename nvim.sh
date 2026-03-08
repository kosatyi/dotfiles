#!/bin/bash

REPO_NVIM_DIR="./nvim"
TARGET_DIR="$HOME/.config/nvim"

if [ ! -d "$REPO_NVIM_DIR" ]; then
    echo "Error: folder $REPO_NVIM_DIR not found"
    exit 1
fi

if [ -d "$TARGET_DIR" ]; then
    echo "Create backup of existing neovim config"
    mv "$TARGET_DIR" "${TARGET_DIR}_backup_$(date +%Y%m%d_%H%M%S)"
fi

# Перенесення
mkdir -p "$HOME/.config"
cp -r "$REPO_NVIM_DIR" "$TARGET_DIR"

echo "Neovim config updated"