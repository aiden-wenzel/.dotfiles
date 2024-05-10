sudo pacman -S zsh
chsh -s $(which zsh)
rm -rfv ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
