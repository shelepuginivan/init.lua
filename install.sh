#!/usr/bin/env bash
set -e

CONFIG_PATH="$HOME/.config/nvim"
SHARED_PATH="$HOME/.local/share/nvim"

echo "Backing up previous installation..."
if [ -d "$CONFIG_PATH" ]; then
    mv "$CONFIG_PATH" "$CONFIG_PATH.bak"
fi

if [ -d "$SHARED_PATH" ]; then
    mv "$SHARED_PATH" "$SHARED_PATH.bak"
fi

echo "Cloning the repository..."
git clone --depth 1 https://github.com/shelepuginivan/init.lua "$CONFIG_PATH"

echo "Installation compete!"
