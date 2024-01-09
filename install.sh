#!/bin/sh

CONFIG_PATH="$HOME/.config/nvim"
DATA_PATH="$HOME/.local/share/nvim"
REPOSITORY="https://github.com/shelepuginivan/init.lua.git"

# Check if there is an existing configuration
if [ -d "$CONFIG_PATH" ]; then
    echo "Found existing configuration!"
    echo "Backing up to $CONFIG_PATH.bak..."
    mv "$CONFIG_PATH" "$CONFIG_PATH.bak"
    echo "Done!"
fi

# Check if there is a directory with Neovim data
if [ -d "$DATA_PATH" ]; then
    echo "Backing up Neovim data..."
    mv "$DATA_PATH" "$DATA_PATH.bak"
    echo "Done!"
fi

echo "Cloning the repository..."
git clone --depth 1 "$REPOSITORY" "$CONFIG_PATH"

echo "Installation compete!"
