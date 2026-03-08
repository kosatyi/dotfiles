#!/bin/bash

REPO_URL="https://github.com/kosatyi/dotfiles"
CLONE_DIR="/tmp/temp_clone"

echo "Cloning $REPO_URL into $CLONE_DIR..."
git clone "$REPO_URL" "$CLONE_DIR"

# Check if cloning was successful
if [ $? -eq 0 ]; then
    echo "Cloning successful. Copying files to home directory..."
else
    echo "Error: Git clone failed."
fi

REPO_NVIM_DIR="$CLONE_DIR/nvim"
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

if [ $? -eq 0 ]; then
  echo "Files successfully copied to $HOME_DIR"
  # Optional: Clean up the temporary directory
  rm -rf "$CLONE_DIR"
  echo "Temporary directory $CLONE_DIR removed."
else
  echo "Error: Failed to copy files."
fi

echo "Neovim config updated"