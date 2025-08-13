#!/bin/bash

set -e

NVIM_PACK="./pack"

PLUGINS_DIR="$NVIM_PACK/plugins/start"
THEMES_DIR="$NVIM_PACK/themes/start"

mkdir -p "$PLUGINS_DIR"
mkdir -p "$THEMES_DIR"

echo "installing neovim plugins..."

declare -A plugins=(
  ["cmp-nvim-lsp"]="https://github.com/hrsh7th/cmp-nvim-lsp"
  ["lspconfig"]="https://github.com/neovim/nvim-lspconfig"
  ["lualine"]="https://github.com/nvim-lualine/lualine.nvim"
  ["mason"]="https://github.com/williamboman/mason.nvim"
  ["mason-lspconfig"]="https://github.com/williamboman/mason-lspconfig.nvim"
  ["nvim-cmp"]="https://github.com/hrsh7th/nvim-cmp"
  ["nvim-tree"]="https://github.com/nvim-tree/nvim-tree.lua"
  ["nvim-treesitter"]="https://github.com/nvim-treesitter/nvim-treesitter"
  ["nvim-web-devicons"]="https://github.com/nvim-tree/nvim-web-devicons"
  ["plenary"]="https://github.com/nvim-lua/plenary.nvim"
  ["telescope"]="https://github.com/nvim-telescope/telescope.nvim"
)

for name in "${!plugins[@]}"; do
  target="$PLUGINS_DIR/$name"
  repo="${plugins[$name]}"
  if [ -d "$target" ]; then
    echo "$name already installed"
  else
    echo "installing $name..."
    git clone --depth=1 "$repo" "$target"
  fi
done

echo "installing theme..."

THEME_NAME="catppuccin"
THEME_REPO="https://github.com/catppuccin/nvim"
THEME_TARGET="$THEMES_DIR/$THEME_NAME"

if [ -d "$THEME_TARGET" ]; then
  echo "theme $THEME_NAME already installed"
else
  echo "installing theme $THEME_NAME..."
  git clone --depth=1 "$THEME_REPO" "$THEME_TARGET"
fi

echo "all plugins and themes installed!"
