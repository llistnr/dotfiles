# dotfiles

Personal dotfiles for git, hyprland, kitty, lazygit, nvim, rofi, tmux, waybar, zsh in archlinux.

## installation

```
# install prerequisites
sudo pacman -S ttf-roboto-mono-nerd wget
sudo pacman -S git hyprland hyprpaper kitty lazygit neovim tmux waybar zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://aur.archlinux.org/asdf-vm.git && cd asdf-vm && makepkg -si

# clone and apply dotfiles
git clone git@github.com:llistnr/dotfiles.git ~/.dotfiles
source ~/.dotfiles/zsh/install_plugins.sh
source ~/.dotfiles/create_symlink.sh
```

