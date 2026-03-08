#!/bin/bash

REPOSITORY_URL="https://github.com/kosatyi/dotfiles"
SOURCE_DIR="/tmp/dotfiles_$(date +%Y%m%d_%H%M%S)"

echo "Cloning $REPOSITORY_URL into $SOURCE_DIR..."
git clone "$REPOSITORY_URL" "$SOURCE_DIR"

# Check if cloning was successful
if [ $? -eq 0 ]; then
    echo "Cloning successful. Copying files to home directory..."
else
    echo "Error: Git clone failed."
fi

SOURCE_NVIM_DIR="$SOURCE_DIR/nvim"
NVIM_CONFIG_DIR="$HOME/.config/nvim"

if [ ! -d "$SOURCE_NVIM_DIR" ]; then
    echo "Error: folder $SOURCE_NVIM_DIR not found"
    exit 1
fi

if [ -d "$NVIM_CONFIG_DIR" ]; then
    echo "Create backup of existing neovim config"
    mv "$NVIM_CONFIG_DIR" "${NVIM_CONFIG_DIR}_backup_$(date +%Y%m%d_%H%M%S)"
fi

# Move files
mkdir -p "$HOME/.config"
cp -r "$SOURCE_NVIM_DIR" "$NVIM_CONFIG_DIR"

if [ $? -eq 0 ]; then
  echo "Files successfully copied to $NVIM_CONFIG_DIR"
  # Optional: Clean up the temporary directory
  rm -rf "$SOURCE_DIR"
  echo "Temporary directory $SOURCE_DIR removed."
else
  echo "Error: Failed to copy files."
fi

echo "Neovim config updated"