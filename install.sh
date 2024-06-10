#! /bin/bash

set -e

cd "$(dirname "$0")"

mkdir -p "$HOME/.local/bin"

cp -rp config/* "$HOME/.config/"
mv "$HOME/.config/.p10k.zsh" "$HOME/.p10k.zsh"

cat .zshrc >>"$HOME/.zshrc"