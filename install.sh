#!/bin/bash

set -e

ROOT="$DOTVIM"

symlink_files() {
  echo "Symlinking *.symlink files"
  for file in $(find $DOTVIM -name '*.symlink'); do
    local _symlinked=".$(basename ${file%.symlink})"
    ln -sfv "$file" "$HOME/${_symlinked}"
  done
}

# Backup the ~/.vim directory and link the new one.
if [[ -d "$HOME/.vim" ]]; then
  if [[ -d "$HOME/.vim-whatyouhide-bkp" ]]; then
    rm -rfv "$HOME/.vim"
  else
    mv "$HOME/.vim" "$HOME/.vim-whatyouhide-bkp"
  fi
fi

ln -sfv "$ROOT" "$HOME/.vim"

if [[ ! -e "$HOME/.colors.vim" ]]; then
  echo "Creating ~/.colors.vim for spot-on colors setup in vim"
  cp -v "$ROOT/colors.vim.example" "$HOME/.colors.vim"
fi

# vim-plug
_autoload="$ROOT/autoload"
mkdir -p "$_autoload"

if [[ ! -s "$_autoload/plug.vim" ]]; then
  echo "Installing vim-plug..."
  _url="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  curl --fail --silent "$_url" > "$_autoload/plug.vim"
fi

symlink_files

vim +PlugInstall +qall
