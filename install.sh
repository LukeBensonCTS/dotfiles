#! /bin/bash

set -e

cd "$(dirname "$0")"

mkdir -p "$HOME/.local/bin"

cp -rp config/* "$HOME/.config/"
mv "$HOME/.config/p10k.zsh" "$HOME/.p10k.zsh"

ZSH_SUGGESTIONS_REPO=https://github.com/zsh-users/zsh-autosuggestions
ZSH_HIGHLIGHTING_REPO=https://github.com/zsh-users/zsh-syntax-highlighting.git
POWERLEVEL10K_REPO=https://github.com/romkatv/powerlevel10k.git
TG_PLUGIN_REPO=https://github.com/jkavan/terragrunt-oh-my-zsh-plugin

git clone $ZSH_SUGGESTIONS_REPO "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
git clone $ZSH_HIGHLIGHTING_REPO "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
git clone $TG_PLUGIN_REPO "$HOME/.oh-my-zsh/custom/plugins/terragrunt"
git clone --depth=1 $POWERLEVEL10K_REPO "$HOME/.oh-my-zsh/custom/themes/powerlevel10k"

cat zshrc >>"$HOME/.zshrc"