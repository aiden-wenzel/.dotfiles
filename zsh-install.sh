sudo pacman -S zsh
chsh -s /usr/bin/zsh
rm -rfv ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
rm -rfv ~/.oh-my-zsh 
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
