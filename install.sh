sudo pacman -Syu 
sudo pacman -S --needed - < packages.txt
# Install: sudo pacman -Qqe > packages.txt

# Make config directory
mkdir ~/.config

# Install tmp
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install zsh

# Remove existing configs
rm -rfv ~/.bashrc ~/.zshrc 
rm -rfv ~/.tmux.conf 
rm -rfv ~/.config/nvim

# Initiate submodule 
git submodule init
git submodule update

# Stow dotfiles
stow .
