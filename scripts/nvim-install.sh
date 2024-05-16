sudo pacman -S neovim
git submodule update --init
rm -rfv ~/.config/nvim
ln -s ~/.dotfiles/nvim ~/.config/nvim
