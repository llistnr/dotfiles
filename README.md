# dotfiles

configs for hyprland, kitty, neovim, tmux, zsh and more.

## installation

```
# install packages
sudo pacman -S ttf-roboto-mono-nerd wget ripgrep
sudo pacman -S dunst git hyprland hyprpaper kitty lazygit neovim rofi-wayland tmux waybar zsh

# install oh-my-zsh and asdf
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://aur.archlinux.org/asdf-vm.git && cd asdf-vm && makepkg -si

# clone and apply dotfiles
git clone git@github.com:llistnr/dotfiles.git ~/.dotfiles
source ~/.dotfiles/install.sh
```

