#!/bin/sh

# remove existing dotfiles
rm ~/.gitconfig
rm -r ~/.config/hypr
rm -r ~/.config/kitty
rm -r ~/.config/lazygit
rm -r ~/.config/nvim
rm -r ~/.config/rofi
rm -r ~/.config/tmux
rm -r ~/.config/waybar
rm ~/.zshrc
rm ~/.oh-my-zsh/themes/seungho.zsh-theme

# create symbolic links
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/hypr ~/.config/hypr
ln -s ~/dotfiles/kitty ~/.config/kitty
ln -s ~/dotfiles/lazygit ~/.config/lazygit
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/rofi ~/.config/rofi
ln -s ~/dotfiles/tmux ~/.config/tmux
ln -s ~/dotfiles/waybar ~/.config/waybar
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/seungho.zsh-theme ~/.oh-my-zsh/themes/seungho.zsh-theme

