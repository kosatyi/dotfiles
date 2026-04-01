#!/bin/bash

SCRIPT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

REPOSITORY_URL="https://github.com/kosatyi/dotfiles"
SOURCE_DIR="/tmp/dotfiles_$(date +%Y%m%d_%H%M%S)"

BACKUP_FILES=0
IS_LOCAL=0

# Обробка аргументів
for arg in "$@"; do
  case "$arg" in
  --local) IS_LOCAL=1 ;;
  --backup) BACKUP_FILES=1 ;;
  esac
done

if [ "$IS_LOCAL" = 1 ]; then
  SOURCE_DIR="$SCRIPT_PATH"
else
  echo "Cloning $REPOSITORY_URL into $SOURCE_DIR..."
  git clone "$REPOSITORY_URL" "$SOURCE_DIR"

  if [ $? -eq 0 ]; then
    echo "Cloning successful. Cleaning .git directory..."
    rm -rf "$SOURCE_DIR/.git"
  else
    echo "Error: Git clone failed."
    exit 1
  fi
fi

copy_dot_files() {
  NAME=$1
  SRC=$2
  DST=$3

  if [ ! -d "$SRC" ]; then
    echo "Error: folder $SRC not found"
    return 1 # Використовуємо return замість exit, щоб не вбивати весь скрипт
  fi

  # Виправлено перевірку BACKUP_FILES
  if [ "$BACKUP_FILES" = 1 ]; then
    if [ -d "$DST" ]; then
      echo "Create backup of existing $NAME config"
      mv "$DST" "${DST}_backup_$(date +%Y%m%d_%H%M%S)"
    fi
  fi

  echo "Copying $NAME files to $DST"
  mkdir -p "$(dirname "$DST")"
  cp -r "$SRC" "$DST"

  if [ $? -eq 0 ]; then
    echo "Files successfully copied to $DST"
  else
    echo "Error: Failed to copy files for $NAME."
  fi
}

remove_source_dir() {
  rm -rf "$1"
  echo "Temporary directory $1 removed."
}

# Виклик функцій
copy_dot_files "NeoVim" "$SOURCE_DIR/nvim" "$HOME/.config/nvim"
copy_dot_files "Ghostty" "$SOURCE_DIR/ghostty" "$HOME/.config/ghostty"

if [ "$IS_LOCAL" = 0 ]; then
  remove_source_dir "$SOURCE_DIR"
fi
