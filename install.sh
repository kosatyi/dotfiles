#!/bin/bash

REPOSITORY_URL="https://github.com/kosatyi/dotfiles"
SOURCE_DIR="/tmp/dotfiles_$(date +%Y%m%d_%H%M%S)"

echo "Cloning $REPOSITORY_URL into $SOURCE_DIR..."
git clone "$REPOSITORY_URL" "$SOURCE_DIR"

# Check if cloning was successful
if [ $? -eq 0 ]; then
    echo "Cloning successful. Copying files to home directory..."
    # Clean git directory
    echo "Clean $SOURCE_DIR/.git directory"
    rm -rf "$SOURCE_DIR/.git"
else
    echo "Error: Git clone failed."
fi

copy_dot_files() {
if [ ! -d "$2" ]; then
    echo "Error: folder $2 not found"
    exit 1
fi
if [ -d "$2" ]; then
    echo "Create backup of existing $1 config"
    mv "$3" "${3}_backup_$(date +%Y%m%d_%H%M%S)"
fi
echo "Copy files from $2 to $3"
mkdir -p "$HOME/.config"
cp -r "$2" "$3"
if [ $? -eq 0 ]; then
  echo "Files successfully copied to $3"
else
  echo "Error: Failed to copy files."
fi
}

remove_source_dir(){
rm -rf "$1"
echo "Temporary directory $1 removed."
}

copy_dot_files "NeoVim" "$SOURCE_DIR/nvim" "$HOME/.config/nvim"
copy_dot_files "Ghostty" "$SOURCE_DIR/ghostty" "$HOME/.config/ghostty"

remove_source_dir $SOURCE_DIR





